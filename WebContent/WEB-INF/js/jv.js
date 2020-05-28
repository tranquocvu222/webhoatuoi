
function sayHello() {
  alert("Hello World!")
}

function sum(a, b)
{
	return a+b;
}
function say() {
  confirm("Hello thang ngu")
}
function prom(){
prompt("oc cho bi lua roi")
}

var newPage;
function openPage(){
	newPage = window.open("https://www.facebook.com/")
}
function closePage() {
        newPage.close();
    }
   function msg() {
        setTimeout(function() {
            alert("Welcome to me after 10 seconds")
        }, 10000);
   }
 

function printValue()
{
	var a = document.form1.f.value;
	var b = document.form2.b.value;
	var x 
	x = a*b ;
        alert("a*b = " +b);
    }
	function getById(){
		 var c = document.getElementById("c").value;
		  var d = document.getElementById("d").value;
        alert(c*d);
	}


