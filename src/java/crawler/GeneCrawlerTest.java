import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.junit.MockitoJUnitRunner;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;

import static org.mockito.Mockito.*;

@RunWith(MockitoJUnitRunner.class)
public class GeneCrawlerTest {

    @Mock
    private HttpURLConnection connection;

    @InjectMocks
    private GeneCrawler geneCrawler;

    @Before
    public void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    public void testFetchGeneDescription() throws Exception {
        // Mock API response
        String jsonResponse = "{\"data\":{\"description\":\"Test description\"}}";
        InputStream inputStream = new ByteArrayInputStream(jsonResponse.getBytes(StandardCharsets.UTF_8));
        when(connection.getInputStream()).thenReturn(inputStream);
        when(connection.getResponseCode()).thenReturn(HttpURLConnection.HTTP_OK);

        // Call the method to be tested
        String description = geneCrawler.fetchGeneDescription("test_gene");

        // Verify the behavior
        verify(connection).connect();
        verify(connection).disconnect();
        verify(connection).getInputStream();
    }

    @Test
    public void testUpdateGeneTsvWithDescription() throws Exception {
        // Mock geneLineNumbers map
        Map<String, Integer> geneLineNumbers = new HashMap<>();
        geneLineNumbers.put("test_gene", 1);

        // Mock gene.tsv content
        String geneTsvContent = "test_gene\tGene1";
        ByteArrayInputStream inputStream = new ByteArrayInputStream(geneTsvContent.getBytes(StandardCharsets.UTF_8));
        BufferedReader reader = new BufferedReader(new java.io.InputStreamReader(inputStream));

        // Mock FileReader
        doReturn(reader).when(geneCrawler).newBufferedReader(any());

        // Call the method to be tested
        geneCrawler.updateGeneTsvWithDescription("gene.tsv", "test_gene", "Test description", 1);

        // Verify updated content
        verify(geneCrawler).newBufferedReader(any());
    }
}
