<%-- 
    Document   : dataForm
    Created on : 16-abr-2012, 21:13:40
    Author     : gomezhyuuga
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/jspf/head.jsp">
            <jsp:param name="title" value="Datos enviados" />
        </jsp:include>
    </head>
    <body>
        <div class="container bg">
            <div class="row">
                <div class="hero-unit">
                    <h1>Datos enviados:</h1>
                    <p>Los datos que se enviarán son:</p>
                </div>
            </div>
            <div class="row">
                <div class="span12">
                    <?php include($path); ?>
                </div>
                <div class="span12">
                    <table class="table table-striped table-bordered">
                        <thead>
                        <th>name</th>
                        <th>value</th>
                        </thead>
                        <tbody>
                            <%
                                int numValores = 0;
                                Enumeration<String> paramNames = request.getParameterNames();
                                while (paramNames.hasMoreElements()) {
                                    numValores += 1;
                                    String name = paramNames.nextElement();
                                    String values[] = request.getParameterValues(name);
                                    //String value = request.getParameter(name);
                            %>
                            <tr>
                                <td><%= name%></td>
                                <td><%
                                        for(String s : values) {
                                            out.print("[" + s + "]");
                                        }
                                    %></td>
                            </tr>
                            <% }%>
                        </tbody>
                        <tfoot>
                            <tr>
                                <td># valores:</td>
                                <td><%= numValores%></td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
        <!-- Footer
    ================================================== -->
        <%@include file="/jspf/footer.jsp" %>
    </body>
</html>
