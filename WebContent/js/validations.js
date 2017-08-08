/**
 * validations.js provides restrictions on input values
 * validateForm()  will be called on form submit
 */

function check_pass() {
	if (document.getElementById("password").value == document.getElementById("confirm_password").value) {
    document.getElementById("submit").disabled = false;
	} else {
    document.getElementById("submit").disabled = true;
	}
}

function check_null() {
	if (document.getElementById("select").checked == false) {
    alert("Please choose any item");
    return false;
	}
}