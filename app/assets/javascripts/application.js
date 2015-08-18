// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function() {

// BICEPS ------------------------------------------------
$('.biceps').on('mouseenter', function (e) {
	e.preventDefault();

	$('#quick-view-biceps').show();
	$('#bicep-l').css('opacity', '1')
	$('#bicep-r').css('opacity', '.4')
});
$('.biceps').on('mouseleave', function (e) {
	e.preventDefault();

	$('#quick-view-biceps').hide();
	$('.biceps').css('opacity', '0')
});

// FOREARMS ------------------------------------------------
$('.forearms').on('mouseenter', function (e) {
	e.preventDefault();

	$('#quick-view-forearms').show();
	$('#forearm-l').css('opacity', '1')
	$('#forearm-r').css('opacity', '.5')
});
$('.forearms').on('mouseleave', function (e) {
	e.preventDefault();

	$('#quick-view-forearms').hide();
	$('.forearms').css('opacity', '0')
});

// TIBIAS ------------------------------------------------
$('.tibias').on('mouseenter', function (e) {
	e.preventDefault();

	$('#quick-view-tibias').show();
	$('#tibia-l').css('opacity', '.7')
	$('#tibia-r').css('opacity', '.6')
});
$('.tibias').on('mouseleave', function (e) {
	e.preventDefault();

	$('#quick-view-tibias').hide();
	$('.tibias').css('opacity', '0')
});

// QUADS ------------------------------------------------
$('#quads').on('mouseenter', function (e) {
	e.preventDefault();

	$('#quick-view-quads').show();
});
$('#quads').on('mouseleave', function (e) {
	e.preventDefault();

	$('#quick-view-quads').hide();
});

// DELTOIDS ------------------------------------------------
$('.delts').on('mouseenter', function (e) {
	e.preventDefault();

	$('#quick-view-delts').show();
	$('#delt-l').css('opacity', '1')
	$('#delt-r').css('opacity', '.5')
});
$('.delts').on('mouseleave', function (e) {
	e.preventDefault();

	$('#quick-view-delts').hide();
	$('.delts').css('opacity', '0')
});

// PECTORALS ------------------------------------------------
$('#pecs').on('mouseenter', function (e) {
	e.preventDefault();

	$('#quick-view-pecs').show();
});
$('#pecs').on('mouseleave', function (e) {
	e.preventDefault();

	$('#quick-view-pecs').hide();
});

// OBLIQUES ------------------------------------------------
$('#obliques').on('mouseenter', function (e) {
	e.preventDefault();

	$('#quick-view-obliques').show();
});
$('#obliques').on('mouseleave', function (e) {
	e.preventDefault();

	$('#quick-view-obliques').hide();
});

// ABDOMINALS ------------------------------------------------
$('#abs').on('mouseenter', function (e) {
	e.preventDefault();

	$('#quick-view-abs').show();
});
$('#abs').on('mouseleave', function (e) {
	e.preventDefault();

	$('#quick-view-abs').hide();
});

// TRAPS -----------------------------------------------------
$('#traps').on('mouseenter', function (e) {
	e.preventDefault();

	$('#quick-view-traps').show();
});
$('#traps').on('mouseleave', function (e) {
	e.preventDefault();

	$('#quick-view-traps').hide();
});


})