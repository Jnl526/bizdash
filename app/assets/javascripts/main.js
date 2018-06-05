$(document).on('click', '#card-calendar .day', function() {
  if ($(this).hasClass('has-events')) {
    location.href = '/schedules';
  } 
});