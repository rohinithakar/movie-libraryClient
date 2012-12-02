function validateLogin()
{
	var email = document.forms["loginForm"]["email"].value;
	var password = document.forms["loginForm"]["password"].value; 
	
	var atpos = email.indexOf("@");
	var dotpos= email.lastIndexOf(".");

	if (atpos < 1 || dotpos < atpos+2 || dotpos+2 >= email.length || password.length < 6 || password == null) {
		alert("Please enter your login details ");
		return false; 
	}	
	
}

function validateAd () {
	
	
	var title = document.forms["newAdForm"]["title"].value;	
	var description = document.forms["newAdForm"]["description"].value; 
	var price = document.forms["newAdForm"]["price"].value;
	var qty = document.forms["newAdForm"]["qty"].value; 	
	
	if (title == null || title.length < 6 || title == "") {
		alert("Please enter a title for your product");
		return false;			
	}
	
	if (price == " " || price < 1 || price == null) {
		alert("Please input a real price");
		return false;		
	}
	
	if (qty < 0 || qty > 10 || qty == "" || qty == null || qty == " ") {
		alert("Please input a quantity betweem 1 and 10");
		return false;
	}
	

	
	if (description == null || description.length < 12) {
		alert("Please enter a longer description for your product");
		return false;			
	}
	
}

function validateSignUp()
{
	var email = document.forms["signUpForm"]["email"].value;	
	var password = document.forms["signUpForm"]["password"].value; 
	var confirm = document.forms["signUpForm"]["confirmation"].value;
	var fName = document.forms["signUpForm"]["firstName"].value; 
	var lName = document.forms["signUpForm"]["lastName"].value; 
		
	var atpos = email.indexOf("@");
	var dotpos= email.lastIndexOf(".");
	
	if (fName == null || fName == "" || lName == "" || lName == null) {
		alert("Please enter your name details correctly");
		return false; 
	}
	
	if (atpos < 1 || dotpos < atpos+2 || dotpos+2 >= email.length) {
		alert("Not a valid e-mail address");
		return false; 
	}
	
	if (password.length < 6) {
		alert("Minimun password length is 6");
		return false; 
	}
	
	if (password != confirm || password == "" || password == null) {
		alert("Passowrds missmatch");
		return false; 
	}	
}

function get_form( element )
{
    while( element )
    {
        element = element.parentNode;
        if( element.tagName.toLowerCase() == "form" )
        {
            //alert( element ) //debug/test
            return element;
        }
    }
    return 0; //error: no form found in ancestors
}

function getUrlVars() {
    var vars = {};
    var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(m,key,value) {
        vars[key] = value;
    });
    return vars;
}