Guild:
Note: Remember unblock file *resx before you start

1. Use SE.sql to create Database in your MSSQL Sever.
2. Open Final Project -> Open DAL -> Open Connection.cs
	at this function, you must to change parameter "admin" to your MSSQL Sever name. 
	  public static void connect()
        {
            string s = "initial catalog = SE; data source = admin; integrated security = true";
            cn = new SqlConnection(s);
            cn.Open();

        }
3. Run project

4.Login
	Account admin: Username: admin (You are not allowed to delete admin)
		   	   Password: 123456
	Account staff: Username: User01 (You are not allowed to delete User01)
			   Password: 123456
Link Demo Mockup: https://youtu.be/RjDCL51skWk
Link Demo Winform: https://youtu.be/A4FiLbZh8mk
Link github: https://github.com/DucAnhchuate/SE
