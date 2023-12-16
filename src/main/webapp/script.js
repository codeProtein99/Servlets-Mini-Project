/**
 * This script will be used to capture the event od on sibmit
 * 
 */


//console.log(formElement);
//formElement.add('d-none');
//console.log(document.getElementsByClassName("form")[0].classList);



document.addEventListener('DOMContentLoaded', function() {
    console.log('Page is ready....');

    // Assuming you have a form with id "myForm"
    var myForm = document.getElementById('myForm');

    myForm.addEventListener('submit', function(event) {
        event.preventDefault();

        // Serialize the form data
        var formData = new FormData(myForm);
        var serializedForm = [];

        formData.forEach(function(value, key) {
            serializedForm.push(encodeURIComponent(key) + '=' + encodeURIComponent(value));
        });

        // Join the serialized form data with "&"
        var serializedData = serializedForm.join('&');

        console.log(serializedData);

		let loaderElement = document.getElementsByClassName("loader")[0].children[0].classList;
		let loaderElement2 = document.getElementsByClassName("loader")[0].children[1].classList.remove('visually-hidden');
		loaderElement.remove('visually-hidden');
		let formElement = document.getElementsByClassName("form")[0].classList;
		formElement.add('d-none');
		
        // Now you can use serializedData in your AJAX request or any other logic
        // For example, using the Fetch API:
        fetch('register', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
            },
            body: serializedData,
        })
        .then((response) =>{
			if(response.ok){
				document.getElementsByClassName("loader")[0].children[0].classList.add('visually-hidden');
				document.getElementsByClassName("loader")[0].children[1].classList.add('visually-hidden');
				document.getElementById("msg").innerText = "Successfully Registered";
				document.getElementById("msg").classList.add('text-success');
				return response.json();
			}
			
		})
        .then(data => {
            console.log('Response from server:', data);
        })
        .catch(error => {
			document.getElementById("msg").innerText = "Error ..!!";
            console.error('Error during fetch:', error);
        });
    });
});


