/* myscript.js test
function test1(){
	alert("버튼1클릭!!");
}//test1() end

function test2(a, b){
	alert(a+b);
}//test2() end

function test3(str){
	alert(str);
}//test3() end
*/


/* myscript.js */
/*
function sungjukCheck(f){	//f → 성적<form>
	// 성적 폼에 대해서 유효성 검사
	// 이름 글자 갯수가 1개 이상인지?
	var uname = f.uname.value;
	uname = uname.trim();
	if(uname.length==0){
		alert("이름 입력하세요!!");
		f.uname.focus();
		return false;	//서버로 전송안됨
	}
	return true;		//서버 전송(onsubmit 이벤트)
}//sungjukCheck() end
*/
	
function sungjukCheck(f){	//f → 성적<form>
	// 성적 폼에 대해서 유효성 검사
	// 이름 글자 갯수가 2~5개 인지?
	var uname = f.uname.value;
	uname = uname.trim();
	if(uname.length<2 || uname.length>=6){
		alert("이름 입력하세요!!");
		f.uname.focus();
		return false;	//서버로 전송안됨
	}
		
	return true;		//서버 전송(onsubmit 이벤트)
	
}//sungjukCheck() end

