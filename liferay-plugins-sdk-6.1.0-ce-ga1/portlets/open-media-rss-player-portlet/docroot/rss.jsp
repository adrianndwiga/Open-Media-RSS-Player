<%@ page import="java.io.*,java.util.*,java.net.*" %>
<%
URL url = new URL("http://" + request.getParameter("feed"));
HttpURLConnection connection = (HttpURLConnection) url.openConnection();
connection.setRequestMethod("GET");
connection.connect();
InputStream stream = connection.getInputStream();

BufferedReader reader = new BufferedReader(new InputStreamReader(stream));

String line = null;

while ((line = reader.readLine()) != null) {
	out.println(line);
}

stream.close();
%>

