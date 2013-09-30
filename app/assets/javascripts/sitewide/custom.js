$(document).ready( function() {	
	$("input.newInputField").on("focus", function() {
		this.value=""; this.style.color="#000";
	});
	
	$("input.newInputField").on("blur", function() {
		this.value=this.defaultValue; this.style.color="#C9C9C9";
	});
	
	$("existingInput").on("focus", function() {
		$(this).select();
	});
});