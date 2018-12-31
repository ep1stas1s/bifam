<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<!DOCTYPE html>
<html>
<head>
	<c:import url="../main/header.jsp"/>
	<style>
		input[type=text] {
			background-color: #111; 
			color: "#FFF";
		}
		input[type=password] {
			background-color: #111; 
			color: "#FFF";
		}
	</style>
</head>
<body>

<c:if test="${ not empty sessionScope.member }">
	<script>
		history.back();
	</script>
</c:if>

<div class="wrap">
	<div class="container">
		<form action="memberRegister.bf" method="post">
			*<input type="text" name="member_id" placeholder="id" maxlength="20" class="form-control" required autofocus><br>
			*<input type="password" name="member_pwd" placeholder="password" maxlength="20" class="form-control" required><br>
			*<input type="password" name="member_pwd2" placeholder="password confirm" class="form-control" required><br>
			*<input type="text" name="member_name" placeholder="name" class="form-control" required><br>
			<input type="date" name="birth" placeholder="birth day" class="form-control" ><br>
			<input type="text" name="phone" placeholder="phone" class="form-control" ><br>
			*<input type="text" name="email" placeholder="e-mail" class="form-control" required><br>
			<input type="text" name="address" placeholder="address" class="form-control" ><br>
			<button type="submit" class="btn btn-dark">Sign up</button>
		</form>	
	</div>
</div>

<%-- 네아로 

<%
    String clientId = "2VqQsYhBIuet4sBOze_e";//애플리케이션 클라이언트 아이디값";
    String clientSecret = "xumtb_d3SM";//애플리케이션 클라이언트 시크릿값";
    String code = request.getParameter("code");
    String state = request.getParameter("state");
    String redirectURI = URLEncoder.encode("YOUR_CALLBACK_URL", "UTF-8");
    String apiURL;
    apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code&";
    apiURL += "client_id=" + clientId;
    apiURL += "&client_secret=" + clientSecret;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&code=" + code;
    apiURL += "&state=" + state;
    String access_token = "";
    String refresh_token = "";
    System.out.println("apiURL="+apiURL);
    try {
      URL url = new URL(apiURL);
      HttpURLConnection con = (HttpURLConnection)url.openConnection();
      con.setRequestMethod("GET");
      int responseCode = con.getResponseCode();
      BufferedReader br;
      System.out.print("responseCode="+responseCode);
      if(responseCode==200) { // 정상 호출
        br = new BufferedReader(new InputStreamReader(con.getInputStream()));
      } else {  // 에러 발생
        br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
      }
      String inputLine;
      StringBuffer res = new StringBuffer();
      while ((inputLine = br.readLine()) != null) {
        res.append(inputLine);
      }
      br.close();
      if(responseCode==200) {
        out.println(res.toString());
      }
    } catch (Exception e) {
      System.out.println(e);
    }
  %> --%>
  <c:import url="../main/footer.jsp"/>
</body>
</html>