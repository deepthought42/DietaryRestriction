
function remove_fields(link){
  alert($(link).prev("input[type=hidden]").value);
  alert("practice");
  $(link).prev("input[type=hidden]").value = '1';
	$(link).parent(".fields").hide();
}

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