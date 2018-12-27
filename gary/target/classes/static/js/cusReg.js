function validateEmail(emailField){
    var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

    if (reg.test(emailField.value) == false) 
    {
        alert('Invalid Email Address');
        return false;
    }

    return true;

}
function validatename(nameField){
    var reg = /^[A-Za-z\s.\(\)0-9]{3,}$/;

    if (reg.test(nameField.value) == false) 
    {
        alert('Invalid name');
        return false;
    }
	return true;

}
function validatepincode(pinField){
    var reg = /^(\d{4}|^\d{6})$/;

    if (reg.test(pinField.value) == false) 
    {
        alert('Invalid pincode');
        return false;
    }
	return true;

}