<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>chaewon's calculator</title>
<script type="text/javascript">
	
	var result="";
	var num1="";
	var num2="";
	var cal1="#";
	var cal2="#";
	var result;
	var inno='n';
	
	
	
	
	// 1. eval을 이용하여 만든 간단한 계산기

	/* function enterNum(num){
		cal.textfile.value+=num;		
	}
	
	function equals(){		
		result=eval(cal.textfile.value);
		cal.textfile.value=result;		
	} */
	
	
	
	
	//초기화 시키는 함수
	function makeInnoStatus(){
		
		result = "";
		num1 = "";
		num2 = "";
		cal1 = "#";
		cal2 = "#";
		result="";
		inno = 'n';
	}

	//사칙연산 버튼을 클릭했을때 발생하는 함수	

	function calc(bh) {
		cal2 = bh;
		num1 = result;
		num2 = cal.textfile.value;
		cal.textfile.value = "";
		oper();
	}

	function oper() {		

		if (cal1 == "+") {
			cal.textfile.value = "";
			result = parseInt(num1) + parseInt(num2)
			cal.textfile.value = result;
			cal1 = cal2;
		}

		else if (cal1 == "-") {
			result = parseInt(num1) - parseInt(num2)
			cal.textfile.value = result;
			cal1 = cal2;
		}

		else if (cal1 == "*") {
			result = parseInt(num1) * parseInt(num2)
			cal.textfile.value = result;
			cal1 = cal2;
		}
		
		else if (cal1=="/"){			
			if (num2==0){
				alert('bed index to div');
			}
			else{				
		 	result=parseInt(num1)/parseInt(num2)
			cal.textfile.value=result;
			cal1=cal2;
			}
			} 
		 

		else if (cal1 == "#") {
			result = num2;
			cal.textfile.value = "";
			cal1 = cal2;
		} 
		else if (cal1 == "=") {
			cal.textfile.value = result;
		} 
		else {
		}

		inno = 'y'
	}

	function enterNum(num) {
		if (inno == "y") {
			cal.textfile.value = num;
			inno = "n"
		}

		else if (inno == "n") {
			cal.textfile.value += num;
		}

	}
</script>
</head>
<body>
	<h1>bit title</h1>
	<h2>middle title</h2>
	<h3>small title</h3>
	<hr />
	<p>tag</p>
	<p>tag</p>

	<form name="cal">
		<br> <input type="text" name="calculationLog" value="">
		<br> <input type="text" name="textfile" value=""> <br>
		<input type="button" name="btn7" value="7" onclick="enterNum(7)">
		<input type="button" name="btn8" value="8" onclick="enterNum(8)">
		<input type="button" name="btn9" value="9" onclick="enterNum(9)">
		<input type="button" name="btnmulti" value="*" onclick='calc("*")'>

 		
		<br>
		<input type="button" name="btn4" value="4" onclick="enterNum(4)"> 
		<input type="button" name="btn5" value="5" onclick="enterNum(5)">
		<input type="button" name="btn6" value="6" onclick="enterNum(6)">
		<input type="button" name="btnmultidv" value="/" >

		<br> 
		<input type="button" name="btn1" value="1" onclick="enterNum(1)">
		<input type="button" name="btn2" value="2" onclick="enterNum(2)">
		<input type="button" name="btn3" value="3" onclick="enterNum(3)">
		<input type="button" name="btnmultsub" value="-" onclick='calc("-")'>

		<br>
		<input type="button" name="btnPM" value="+-">
		<input type="button" name="btn0" value="0" onclick="enterNum(0)">
		<input type="button" name="btnPoint" value=".">
		<input type="button" name="btnplus" value="+" onclick='calc("+")'> 
		<br>
	    <input type="button" name="btnequals" value="=" onclick='calc("=")'>


	</form>

	<P>The time on the server is ${serverTime}.</P>
</body>
</html>
