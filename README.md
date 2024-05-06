# JavaWeb_LCGenome
LCGenome is a user-friendly platform designed for the storage and retrieval of lung cancer genes and targeted therapy information

## Project Run Instructions
### Database Connection Configuration
**Caution**: In the source code where JDBC is used to connect to the database, for privacy reasons, the username and password fields have been replaced with `******`. If you wish to run this project locally and ensure a proper database connection, please update the username and password in the source code according to your own local database information.

### Login Functionality Implementation
To implement the login functionality, `dao.LoginService.java` needs to establish a connection with the local account information database. To do this, you will need to:

1. **Create a Database**: Create a database named `web` on your local MySQL server.
2. **Create a Table**: Within the `web` database, create a table named `login` to store account and password information.
3. **Refer to SQL File**: The specific SQL statements for creating the table can be found in the provided `web.sql` file within the project.

Please ensure you follow these steps so that `LoginService.java` can interact smoothly with your local database.

### Precautions
- When modifying the database connection information in the source code, ensure the accuracy and security of the information.
- When working with databases, it is advisable to back up your data to prevent accidental loss.

![home](https://github.com/guobiao-ye/JavaWeb_LCGenome/assets/127282285/9bfbc97d-127d-4169-a98c-fe5744637ba3)


![logo](https://github.com/guobiao-ye/JavaWeb_LCGenome/assets/127282285/17f1e379-657e-42c3-b876-70f7952491b4)
