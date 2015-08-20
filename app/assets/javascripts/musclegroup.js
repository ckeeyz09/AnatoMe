$(function () {
	$('.add-toggle').on('click', function(e) {
		e.preventDefault();
		var field = $('.add-field' + $(this).attr('data-id'));

		if (field.attr('data-toggle') == 0) {
			field.show();
			field.attr('data-toggle', 1);
		} else {
			field.hide();
			field.attr('data-toggle', 0);
		}
	});

	$('.appt-submit').on('click', function (e) {
		e.preventDefault();
		var field = $('.add-field' + $(this).attr('data-workout'));

		$.ajax({
			method: "POST",
	  	url: '/users/' + $(this).attr('data-id') + '/appointments',
	  	data: { appointment: {day: $('#status-' + $(this).attr('data-workout')).val(), workout_id: $(this).attr('data-workout'), user_id: $(this).attr('data-id'), description: "test" } }
	  })
		  .done(function (msg) {
		  	field.hide();	
		  	field.attr('data-toggle', 0);
		  	alert('This workout has been added to your schedule!');		  
		  })
		});

})