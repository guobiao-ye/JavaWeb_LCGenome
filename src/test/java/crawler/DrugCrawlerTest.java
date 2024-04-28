import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.junit.MockitoJUnitRunner;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.nio.charset.StandardCharsets;
import java.util.HashSet;
import java.util.Set;

import static org.mockito.Mockito.*;

@RunWith(MockitoJUnitRunner.class)
public class DrugCrawlerTest {

    @Mock
    private HttpClient httpClient;

    @Mock
    private HttpResponse<String> httpResponse;

    @Mock
    private BufferedWriter writer;

    @InjectMocks
    private DrugCrawler drugCrawler;

    @Before
    public void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    public void testProcessApiResponse() throws Exception {
        // Mock API response
        String responseBody = "{\"data\": [{\"relatedChemicals\": [{\"id\": \"1\", \"name\": \"Drug1\"}], " +
                "\"relatedGenes\": [{\"id\": \"1\", \"symbol\": \"Gene1\", \"name\": \"Gene1Name\"}]}]}";
        when(httpResponse.body()).thenReturn(responseBody);
        when(httpResponse.statusCode()).thenReturn(200);

        // Mock writer
        Set<String> writtenDrugs = new HashSet<>();
        drugCrawler.processApiResponse(writer, "Gene1", responseBody, writtenDrugs);

        // Verify that writer is called with correct arguments
        verify(writer).write("1\tDrug1\t1\tGene1\tGene1Name\t");
    }

    @Test
    public void testUpdateGeneTsvWithStatus() throws Exception {
        // Mock geneLineNumbers map
        DrugCrawler.geneLineNumbers.put("Gene1", 1);

        // Mock gene.tsv content
        String geneTsvContent = "1\tGene1\tno\n2\tGene2\tno";
        ByteArrayInputStream inputStream = new ByteArrayInputStream(geneTsvContent.getBytes(StandardCharsets.UTF_8));
        BufferedReader reader = new BufferedReader(new java.io.InputStreamReader(inputStream));

        // Mock Files.newBufferedReader
        doReturn(reader).when(drugCrawler).newBufferedReader(any());

        // Mock writer
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        BufferedWriter writer = new BufferedWriter(new java.io.OutputStreamWriter(outputStream));

        // Mock Files.newBufferedWriter
        doReturn(writer).when(drugCrawler).newBufferedWriter(any(), any());

        // Call the method to be tested
        drugCrawler.updateGeneTsvWithStatus("Gene1", "yes");

        // Verify updated content
        verify(writer).write("1\tGene1\tyes\n");
    }
}
