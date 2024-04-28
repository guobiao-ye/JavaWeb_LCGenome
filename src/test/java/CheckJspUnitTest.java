import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.junit.MockitoJUnitRunner;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import static org.mockito.Mockito.*;

@RunWith(MockitoJUnitRunner.class)
public class CheckJspUnitTest {

    @Mock
    private LoginService loginService;

    @Mock
    private HttpServletRequest request;

    @Mock
    private HttpServletResponse response;

    @InjectMocks
    private CheckJsp checkJsp;

    @Before
    public void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    public void testValidLogin() throws Exception {
        // Mock request parameters
        when(request.getParameter("username")).thenReturn("validUser");
        when(request.getParameter("password")).thenReturn("validPassword");

        // Mock loginService behavior
        when(loginService.validateLogin("validUser", "validPassword")).thenReturn(true);

        // Call the method to be tested
        checkJsp.doPost(request, response);

        // Verify that the response is redirected to services.jsp
        verify(response).sendRedirect("services.jsp");
    }

    @Test
    public void testInvalidLogin() throws Exception {
        // Mock request parameters
        when(request.getParameter("username")).thenReturn("invalidUser");
        when(request.getParameter("password")).thenReturn("invalidPassword");

        // Mock loginService behavior
        when(loginService.validateLogin("invalidUser", "invalidPassword")).thenReturn(false);

        // Call the method to be tested
        checkJsp.doPost(request, response);

        // Verify that the response includes an error message and redirects back to login.jsp
        verify(response, never()).sendRedirect(anyString());
        verify(response).getWriter();
        verify(response.getWriter()).println("<script>showError('Invalid username or password. Please try again.');</script>");
    }
}

