﻿# CoffeeScript
window.dateChanged = (selected) ->
	$("input[id='dateTo']").data("DateTimePicker").minDate(selected.date);
	$("input[id='alarm']").data("DateTimePicker").maxDate(selected.date);

$(document).ready(
	dateInput = "input[id='dateFrom']"
	if $(dateInput).val() != ""
		curDate = $(dateInput).val()
	else 
		curDate = new moment()
		
	
	minDate = new moment()
	
	$(dateInput).datetimepicker(
		format: "L LT"
		minDate: minDate
	).on('dp.change', dateChanged)
	
	$("input[id='dateFrom']").data("DateTimePicker").date(curDate)
		
	dateInput = "input[id='dateTo']"	
	if $(dateInput).val() != ""
		curDate = $(dateInput).val()		
	else 
		curDate = new moment()
	
	
		
	minDate = new moment()

	$(dateInput).datetimepicker(
		format: "L LT"
		minDate: minDate
	)
	$("input[id='dateTo']").data("DateTimePicker").date(curDate)
	
	
	dateInput = "input[id='alarm']"
	startDate = $("input[id='dateFrom']").data("DateTimePicker").date()
	
	if $(dateInput).val() != ""
		curDate = $(dateInput).val()
		empty = false
	else 
		curDate = startDate

		empty = true
	
	$(dateInput).datetimepicker(
		format: "L LT"
		minDate: curDate
		maxDate: startDate
	)

	if empty then $(dateInput).val("")
	
)