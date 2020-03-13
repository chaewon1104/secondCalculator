<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>chaewon's calculator</title>
<script type="text/javascript">
	
result = "";//계산 결과가 담기는 값
num1 = "";//이전 누른 숫자 or 기존 계산 값이 담김
num2 = "";//연산자 이후 누른 숫자
cal1 = "#";//이전 계산된 사칙연산값. default=#
cal2 = "#";// 이후 계산될 사칙연산값. default='#'		
inno = 'n';// y: 
log="" //이전 계산된 정보를 담는 값


//로그 확인: 		console.log('num1:'+num1+'	/num2:'+num2+'	/result:'+result+'	/cal1:'+cal1+'	/cal2:'+cal2+'	/cal.textfile.value:'+cal.textfile.value+'	/cal.calculationLog.value:'+cal.calculationLog.value);

	
	
	// 1. eval을 이용하여 만든 간단한 계산기

	/* function enterNum(num){
		cal.textfile.value+=num;		
	}
	
	function equals(){		
		result=eval(cal.textfile.value);
		cal.textfile.value=result;		
	} */

	

	

	//사칙연산 버튼을 클릭했을때 발생하는 함수	
	// bh: 클릭된 버튼
	function calc(bh) {
		
		console.log('**calc start**'+'num1:'+num1+'	/num2:'+num2+'	/result:'+result+'	/cal1:'+cal1+'	/cal2:'+cal2+'	/cal.textfile.value:'+cal.textfile.value+'	/cal.calculationLog.value:'+cal.calculationLog.value);

		
		cal.calculationLog.value+=bh;
		cal2 = bh;		
		num1 = result;
		num2 = cal.textfile.value;
		cal.textfile.value = "";		
		oper(bh);
	}

	
	
	
	// '+-'버튼클릭시 구현되는 함수
	function reverseMark(){
		cal.textfile.value=cal.textfile.value*(-1);
		cal.calculationLog.value=cal.textfile.value
		result=cal.textfile.value;
	}
	
	
	
	
	
	// 초기화 시켜주는 함수
	function initialization(){
		result = "";
		num1 = "";
		num2 = "";
		cal1 = "#";
		cal2 = "#";		
		inno = 'n';
		cal.textfile.value = "";
		cal.calculationLog.value="";
		alert("complete to initailize");
	}
	
	
	function oper(bh) {		
		console.log('**oper start**'+'num1:'+num1+'	/num2:'+num2+'	/result:'+result+'	/cal1:'+cal1+'	/cal2:'+cal2+'	/cal.textfile.value:'+cal.textfile.value+'	/cal.calculationLog.value:'+cal.calculationLog.value);

		
		if (cal1 == "+") {
			cal.textfile.value = "";
			result = parseInt(num1) + parseInt(num2)
			cal.textfile.value = result;
			cal1 = cal2;
			if(bh=="=")
			{
			cal.calculationLog.value+=result;
			}
		}

		else if (cal1 == "-") {
			result = parseInt(num1) - parseInt(num2)
			cal.textfile.value = result;
			cal1 = cal2;
			if(bh=="=")
			{
			cal.calculationLog.value+=result;
			}
		}

		else if (cal1 == "*") {
			result = parseInt(num1) * parseInt(num2)
			cal.textfile.value = result;
			cal1 = cal2;
			if(bh=="=")
			{
			cal.calculationLog.value+=result;
			}
		}
		
		else if (cal1=="/"){			
			if (num2==0){
				alert('bed index to div');
				initialization();
			}
			else{				
		 	result=parseInt(num1)/parseInt(num2)
			cal.textfile.value=result;
			cal1=cal2;
			if(bh=="=")
			{
			cal.calculationLog.value+=result;
			}
			}
			} 
		 

		else if (cal1 == "#") {
			result = num2;
			cal.textfile.value = "";
			cal1 = cal2;
		} 
		else if (cal1 == "=") {
			cal.textfile.value = result;
			cal.calculationLog.value = result
			
			if(cal2!="="){			
			cal.textfile.value = "";
			cal.calculationLog.value = result+bh;
			}
			cal1 = cal2;		
		} 
		
		inno = 'y';//계산한 후
		console.log('**oper function over**'+'num1:'+num1+'	/num2:'+num2+'	/result:'+result+'	/cal1:'+cal1+'	/cal2:'+cal2+'	/cal.textfile.value:'+cal.textfile.value+'	/cal.calculationLog.value:'+cal.calculationLog.value+ '	/bh: '+bh);

	}

	
	
	function enterNum(num) {
		cal.calculationLog.value +=num;		
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
		<input type="button" name="btnmultidv" value="/" onclick ='calc("/")' >

		<br> 
		<input type="button" name="btn1" value="1" onclick="enterNum(1)">
		<input type="button" name="btn2" value="2" onclick="enterNum(2)">
		<input type="button" name="btn3" value="3" onclick="enterNum(3)">
		<input type="button" name="btnmultsub" value="-" onclick='calc("-")'>

		<br>
		<input type="button" name="btnPM" value="+-" onclick="reverseMark()">
		<input type="button" name="btn0" value="0" onclick="enterNum(0)">
		<input type="button" name="btnPoint" value=".">
		<input type="button" name="btnplus" value="+" onclick='calc("+")'> 
		<br>
	    <input type="button" name="btnequals" value="=" onclick='calc("=")'>
	    <input type="button" name="btninit" value="c" onclick="initialization()">
	    


	</form>

	<P>The time on the server is ${serverTime}.</P>
</body>
</html>
