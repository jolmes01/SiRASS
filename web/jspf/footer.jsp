<%  
    String dpickerParam = request.getParameter("datepicker");
    String tpickerParam = request.getParameter("timepicker");
    String navParam = request.getParameter("nav");
    boolean datepicker = (dpickerParam != null && dpickerParam.equals("true")) ? true : false;
    boolean timepicker = (tpickerParam != null && tpickerParam.equals("true")) ? true : false;
    boolean nav = (navParam != null && navParam.equals("true")) ? true : false;
%>

        <footer>
		<div class="container">
	  		<hr />
			<div class="row">
				<div class="span4">
					<h6>Skyforge - 2012</h6>
				</div>
				<div class="span4 offset4 right">
					<h6><a href="http://www.uacm.edu.mx/">UACM - "Nada humano me es ajeno</a></h6>
				</div>
			</div>
	  	</div>
	</footer>
	<!-- Bibliotecas Javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>-->
    <script src="/SiRASS/js/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="/SiRASS/bootstrap/js/bootstrap.min.js"></script>
    <% if (datepicker) { %>
    <script src="/SiRASS/js/jquery-ui-1.8.19.custom.min.js" type="text/javascript"></script>
    <% } %>
    <% if (timepicker) { %>
    <script src="/SiRASS/js/jquery-ui-timepicker-addon.js" type="text/javascript"></script>
    <% } %>
    <% if (nav) { %>
    <script src="/SiRASS/js/navigate.js" type="text/javascript"></script>
    <% } %>