import static org.junit.Assert.*;
import org.junit.Test;

public class LoginServiceTest {
    
    // 模拟一个 LoginService 实例
    private LoginService loginService = new LoginService();

    @Test
    public void testValidLogin() {
        // 测试有效的登录
        String username = "validUser";
        String password = "validPassword";
        assertTrue(loginService.validateLogin(username, password));
    }

    @Test
    public void testInvalidLogin() {
        // 测试无效的登录
        String username = "invalidUser";
        String password = "invalidPassword";
        assertFalse(loginService.validateLogin(username, password));
    }

    @Test
    public void testEmptyUsername() {
        // 测试空用户名
        String username = "";
        String password = "password";
        assertFalse(loginService.validateLogin(username, password));
    }

    @Test
    public void testEmptyPassword() {
        // 测试空密码
        String username = "user";
        String password = "";
        assertFalse(loginService.validateLogin(username, password));
    }
}
