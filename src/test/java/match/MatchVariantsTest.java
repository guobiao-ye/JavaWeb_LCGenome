import match.MatchVariants;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.runners.MockitoJUnitRunner;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import static org.mockito.Mockito.*;

@RunWith(MockitoJUnitRunner.class)
public class MatchVariantsTest {

    @Mock
    private HttpServletRequest request;

    @Mock
    private HttpServletResponse response;

    @Mock
    private Part part;

    @Mock
    private InputStream inputStream;

    @InjectMocks
    private MatchVariants matchVariants;

    @Before
    public void setUp() {
        MockitoAnnotations.initMocks(this);
    }

    @Test
    public void testDoPost() throws Exception {
        // Mock request
        when(request.getPart("variantFile")).thenReturn(part);
        when(part.getInputStream()).thenReturn(inputStream);

        // Mock methods called within doPost()
        List<String> variantGenes = new ArrayList<>();
        variantGenes.add("variantGene1");
        variantGenes.add("variantGene2");
        when(matchVariants.readVariantGenes(inputStream)).thenReturn(variantGenes);

        // Call doPost method
        matchVariants.doPost(request, response);

        // Verify that the appropriate request attributes are set and that the appropriate dispatch occurs
        verify(request).setAttribute("matchedInfo", anyList());
        verify(request).getRequestDispatcher("display_matched_info.jsp");
        verify(request.getRequestDispatcher("display_matched_info.jsp")).forward(request, response);
    }

    // You can write more tests for other methods if needed
}
