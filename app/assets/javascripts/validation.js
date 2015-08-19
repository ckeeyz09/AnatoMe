$(document).ready(function () {
  $("#new_user").validate({
      rules: {
        "user[first_name]": {
          required: true, 
          maxlength: 255 
        },
        "user[last_name]": {
          required: true, 
          maxlength: 255 
        },
        "user[location]": {
          required: true,
          maxlength: 255 
        },
        "user[weight]": {
          required: true, 
          maxlength: 5,
          number: true
        },
        "user[height]": {
          required: true, 
          maxlength: 5,
          number: true
        },
        "user[bfp]": {
          required: true, 
          maxlength: 5,
          number: true
        },
        "user[bmi]": {
          required: true, 
          maxlength: 5,
          number: true
        },
        "user[username]": {
          required: true, 
          minlength: 2,
          maxlength: 25 
        },
        "user[email]": {
          required: true, 
          email: true
        }, 
        "user[password]": {
          required: true, 
          minlength: 6, 
          maxlength: 30 
        }
      },
      messages: {
        "user[first_name]": {
         required: "Please enter your first name", 
         maxlength: "Must be less than 255 characters" 
        },
        "user[last_name]": {
         required: "Please enter your last name", 
         maxlength: "Must be less than 255 characters" 
        },
        "user[location]": {
         required: "Please enter your location", 
         maxlength: "Must be less than 255 characters" 
        },
        "user[weight]": {
         required: "Please enter your weight", 
         maxlength: "Must be no more than 5 digits",
         number: "Please enter a number"
        },
        "user[height]": {
         required: "Please enter your height", 
         maxlength: "Must be no more than 5 digits",
         number: "Please enter a number"
        },
        "user[bfp]": {
         required: "Please enter your body fat percentage", 
         maxlength: "Must be no more than 5 digits",
         number: "Please enter a number"
        },
        "user[bmi]": {
         required: "Please enter your body mass index", 
         maxlength: "Must be no more than 5 digits",
         number: "Please enter a number"
        },
        "user[username]": {
         required: "Please enter your username", 
         minlength: "Username must be 2 characters or longer",
         maxlength: "Username must be 25 characters or less" 
        },
        "user[email]": {
         required: "Please enter your email", 
         email: "Not a valid email address"
        }, 
        "user[password]": {
         required: "Please enter your password", 
         minlength: "Password must be between 6 and 30 characters", 
         maxlength: "Password must be between 6 and 30 characters" 
        }
      }
    });

  $("#new_login").validate({
      rules: {
        "user[email]": {
          required: true, 
          email: true, 
      },
        "user[password]": {
          required: true, 
          maxlength: 30 }
      },
      messages: {
        "user[email]": {
          required: "Please enter your email",
          email: "Please enter a valid email"
        },
        "user[password]": {
          required: "Please enter your password",
          maxlength: "Password must be between 6 and 30 characters"
        }
      }
    });

  $("#edit_user").validate({
    rules: {
      "user[first_name]": {
        maxlength: 255 
      },
      "user[last_name]": {
        maxlength: 255 
      },
      "user[location]": {
        maxlength: 255 
      },
      "user[weight]": {
        maxlength: 5,
        number: true
      },
      "user[height]": {
        maxlength: 5,
        number: true
      },
      "user[bfp]": {
        maxlength: 5,
        number: true
      },
      "user[bmi]": {
        maxlength: 5,
        number: true
      },
      "user[username]": {
        minlength: 2,
        maxlength: 25 
      },
      "user[email]": {
        email: true
      }, 
      "user[password]": {
        minlength: 6, 
        maxlength: 30 
      }
    },
    messages: {
      "user[first_name]": {
       maxlength: "Must be less than 255 characters" 
      },
      "user[last_name]": {
       maxlength: "Must be less than 255 characters" 
      },
      "user[location]": {
       maxlength: "Must be less than 255 characters" 
      },
      "user[weight]": {
       maxlength: "Must be no more than 5 digits",
       number: "Please enter a number"
      },
      "user[height]": {
       maxlength: "Must be no more than 5 digits",
       number: "Please enter a number"
      },
      "user[bfp]": {
       maxlength: "Must be no more than 5 digits",
       number: "Please enter a number"
      },
      "user[bmi]": {
       maxlength: "Must be no more than 5 digits",
       number: "Please enter a number"
      },
      "user[username]": {
       minlength: "Username must be 2 characters or longer",
       maxlength: "Username must be 25 characters or less" 
      },
      "user[email]": {
       email: "Not a valid email address"
      }, 
      "user[password]": {
       minlength: "Password must be between 6 and 30 characters", 
       maxlength: "Password must be between 6 and 30 characters" 
      }
    }
  });
});
