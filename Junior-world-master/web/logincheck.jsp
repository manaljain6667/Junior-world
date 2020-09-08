<%@include file="DBConnection.jsp"%>
<%@page import="javax.servlet.http.HttpServlet.*" %>

<html>
   
    <body>
        <%
                try
                {
                        String username=request.getParameter("txt1");
                        String password=request.getParameter("txt2");
                        
                        Statement smt=con.createStatement();
                        ResultSet rs=smt.executeQuery("select * from login");
                        
                        /*session.setAttribute("username", username);
                        session.setAttribute("password", password);*/
                         while(rs.next())
                        {
                                if(username.equals(rs.getString(1)) && password.equals(rs.getString(2)))
                                {
                                    session.setAttribute("username",username);
                                    response.sendRedirect("tips.jsp");
                                }
                                else
                                {
                                    out.print("<script>alert('Invalid User');window.location.href='login.jsp'</script>");
                                    //response.sendRedirect("login.jsp");
                                }
                        }
                }
                catch(Exception e)
                {
                
                }
        %>
    </body>
</html>
