$(document).ready(function () {

	$('#submit').click(verif);

})

function verif(event) {
	console.log('ooooo')
	

	var error = 0;
	var tous_les_inputs_type_text = $('input:not([type="submit"])');

	for(var index=0; index < tous_les_inputs_type_text.length; index++){
		if(tous_les_inputs_type_text[index].value == ''){
			tous_les_inputs_type_text[index].focus();
			tous_les_inputs_type_text[index].style.background = '#f2dede';

			error++;
		}else{
			tous_les_inputs_type_text[index].style.background = 'white';

		}
	}

	if(error > 0){
		console.log(error)
		$('.error').html("<div class='alert alert-danger' role='alert'>Les champs sont obligatoires</div>")
		event.preventDefault();
	}
}
