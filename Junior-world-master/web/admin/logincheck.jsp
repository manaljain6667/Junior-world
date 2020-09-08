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
                        ResultSet rs=smt.executeQuery("select * from admin");
                        
                       /* session.setAttribute("username", username);
                        session.setAttribute("password", password);*/
                         while(rs.next())
                        {
                                if(username.equals(rs.getString(1)) && password.equals(rs.getString(3)))
                                {
                                    session.setAttribute("admin",username);
                                    response.sendRedirect("dashboard.jsp");
                                }
                                else
                                {
                                    out.print("<script>alert('Invalid User');window.location.href='index.jsp'</script>");
                                    //response.sendRedirect("index.jsp");
                                }
                        }
                }
                catch(Exception e)
                {
                
                }
        %>
    </body>
</html>
