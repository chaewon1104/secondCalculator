<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>chaewon's calculator</title>
	<script type="text/javascript">
	
	var firstNum
	var secondNum
	
	function enterNum(num){
		cal.textfile.value+=num;
	}
	
	
	function plus(){
		firstNum=textfile.value;
		textfile.value="";
		
	}
	function sub(){}
	function div(){}
	function multi(){}
	function equals(){}
	
	</script>
</head>
<body>
	<h1>bit title</h1>
	<h2>middle title</h2>
	<h3>small title</h3>
	<hr/>
	<p>tag</p>
	<p>tag</p>
	
	<form name="cal">
	<br>
	<input type="text" name="textfile" value="">
	<br>
	<input type="button" name="btn7" value="7" onclick="enterNum(7)">
	<input type="button" name="btn8" value="8" onclick="enterNum(8)">
	<input type="button" name="btn9" value="9" onclick="enterNum(9)">
	<input type="button" name="btnmulti" value="*" onclick="enterNum(multi)">
	
	
	<br>
	

	<input type="button" name="btn4" value="4" onclick="enterNum(4)">
	<input type="button" name="btn5" value="5" onclick="enterNum(5)">
	<input type="button" name="btn6" value="6" onclick="enterNum(6)">
	<input type="button" name="btnmultidv" value="/" onclick="enterNum(div)">
	
	<br>
	<input type="button" name="btn1" value="1" onclick="enterNum(1)">
	<input type="button" name="btn2" value="2" onclick="enterNum(2)">
	<input type="button" name="btn3" value="3" onclick="enterNum(3)">
	<input type="button" name="btnmultsub" value="-" onclick="enterNum(sub)">
	
	<br>	
	<input type="button" name="btnPM" value="+-">
	<input type="button" name="btn0" value="0">
	<input type="button" name="btnPoint" value=".">
	<input type="button" name="btnplus" value="+" onclick="enterNum(plus)">
	<br>
	<input type="button" name="btnequals" value="=" onclick="enterNum(equals)">
	
	
	</form>

	<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
