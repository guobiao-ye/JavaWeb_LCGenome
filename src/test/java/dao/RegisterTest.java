package dao;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class RegisterTest {

    // 测试插入新用户的情况
    @Test
    public void testRegisterInserted_NewUser() {
        Register register = new Register();
        boolean result = register.RegisterInserted("newuser", "password");
        assertTrue(result, "Expected true for inserting new user");
    }

    // 测试插入已存在用户的情况
    @Test
    public void testRegisterInserted_ExistingUser() {
        Register register = new Register();
        boolean result = register.RegisterInserted("existinguser", "password");
        assertFalse(result, "Expected false for inserting existing user");
    }

    // 测试空用户名和密码的情况
    @Test
    public void testRegisterInserted_EmptyUsernameAndPassword() {
        Register register = new Register();
        boolean result = register.RegisterInserted("", "");
        assertFalse(result, "Expected false for empty username and password");
    }

    // 测试空用户名的情况
    @Test
    public void testRegisterInserted_EmptyUsername() {
        Register register = new Register();
        boolean result = register.RegisterInserted("", "password");
        assertFalse(result, "Expected false for empty username");
    }

    // 测试空密码的情况
    @Test
    public void testRegisterInserted_EmptyPassword() {
        Register register = new Register();
        boolean result = register.RegisterInserted("username", "");
        assertFalse(result, "Expected false for empty password");
    }
}
