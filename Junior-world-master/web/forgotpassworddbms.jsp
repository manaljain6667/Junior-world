<%@include file="DBConnection.jsp"%>
<%@page import="javax.servlet.http.HttpServlet.*" %>
<html>
    <body>
            
           <%
                try
                {
                    String nwpass=request.getParameter("nwpass");
                    String cpass=request.getParameter("cnpass");
                    String email=request.getParameter("e-mail");
                     String user=request.getParameter("username");
                    if(!nwpass.equals(cpass))
                    {
                        out.println("new password & confirm password does not match ");
                    }
                    
                    else
                    {
                       
                          String resetquery="update login set password='"+nwpass+"'where email='"+email+"'AND username='"+user+"'" ;  
                          PreparedStatement ps=con.prepareStatement(resetquery);
                          ps.executeUpdate();
                          
                          out.println("new password updated successfully.. ");
                          
                           session.invalidate();
                          response.setHeader("Cache-Control","no-store");
                          response.setHeader("Pragma","no-cache");
                          response.setHeader("Expires","0");
                          
                          out.println("To Login again <a href=login.jsp>Click here</a>");
                        }
                           
                }
                
                catch(Exception e)
                {
                    out.println("password not changed ..To Reset Password again <a href=forgotpassword.jsp>Click here</a> ");
                }
                
           
           %>
    </body>
</html>