package dao;

import org.junit.Test;
import static org.junit.Assert.*;

public class LoginServiceTest {

    @Test
    public void testValidateLogin_ValidCredentials_ReturnsTrue() {
        // Arrange
        LoginService loginService = new LoginService();

        // Act
        boolean isValid = loginService.validateLogin("validUsername", "validPassword");

        // Assert
        assertTrue(isValid);
    }

    @Test
    public void testValidateLogin_InvalidCredentials_ReturnsFalse() {
        // Arrange
        LoginService loginService = new LoginService();

        // Act
        boolean isValid = loginService.validateLogin("invalidUsername", "invalidPassword");

        // Assert
        assertFalse(isValid);
    }
}
