| welcome to myLeo |
	Interested in a healthy lifestyle? myLeo is the perfect way to stay on track and get the full benefit of all of the hard work that you put in. From tracking your workouts, nutriton suggestions and even supplement suggestions, myLeo has everything you'll need to have a successful healthy lifestyle. 


| link to heroku |

	http://myleo.herokuapp.com/


| site flow |

	User lands on the splash page where Leo stands, they're able to click on the desired muscle and see the most benefical workouts, supplements and foods. If the user wanted to add a workout to their routine, they would then need to login and access their calender, leading them back to the splash page where they would then have the ability to add a specific muscle group to their calendar. The user would then choose to sign out, continue adding workouts to their calendar, or edit their profile which requires a password confirmation.


| entity relationship diagram |

	Appointment - belongs_to :user belongs_to :workout
	Food - belongs_to :musclegroup
	Musclegroup - has_many :foods, has_many :supps, has_many :workouts 
	Supplement - belongs_to :musclegroup
	User - has_many :appts, has_many :workouts
	Workout - has_many :appointments, has_many :users, through: :appointments, belongs_to :musclegroup


| libraries used |
	Ruby on Rails, Javascript, Bootstrap, jQuery, PostgreSQL


| wish list | future development |

	If given more time, our team would have worked on the rear side of the body given each rear muscle group attention. Also, we would've liked to add a female version (Lea) and let the user chose their gender depending on if they were a Leo or Lea and the 'doors' of the site would then allow access to theirLeo. 
	We also would have liked to have added a feature where the user is able to have friends or followers so users could get and give advice depending on their goals.


| contributors |

Ian Civgin - https://github.com/icivgin
Sean Hill - https://github.com/ckeeyz09
Rakesh Shrestha - https://github.com/rakeshshr
Monika Chumber - https://github.com/xmonmon


