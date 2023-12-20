<html lang="en">
<head>
  <meta charset="UTF-8">
  <style>
    /* CSS code for styling the widget */
    .widget {
      width: 300px;
      height: 200px;
      background-color: red;
      color: white;
      font-family: Arial, sans-serif;
      font-size: 20px;
      text-align: center;
      border: 5px solid black;
    }

    .widget button {
      margin: 10px;
      padding: 10px;
      background-color: white;
      color: black;
      font-size: 18px;
      border: 2px solid black;
      cursor: pointer;
    }

    .widget button:focus {
      outline: 3px solid yellow;
    }
  </style>
  <script>
    // JavaScript code for adding interactivity to the widget
    // Get the elements from the HTML document
    var widget = document.getElementById("widget");
    var message = document.getElementById("message");
    var english = document.getElementById("english");
    var spanish = document.getElementById("spanish");

    // Define the greeting messages in both languages
    var greetings = {
      en: "Hello, welcome to my website!",
      es: "Hola, bienvenido a mi sitio web!"
    };

    // Define a function to change the language and message of the widget
    function changeLanguage(lang) {
      // Set the lang attribute of the widget element
      widget.setAttribute("lang", lang);
      // Set the message text to the corresponding greeting
      message.textContent = greetings[lang];
    }

    // Add event listeners to the buttons to call the changeLanguage function
    english.addEventListener("click", function() {
      changeLanguage("en");
    });

    spanish.addEventListener("click", function() {
      changeLanguage("es");
    });

    // Call the changeLanguage function with the default language (English)
    changeLanguage("en");
  </script>
</head>
<body>
  <!-- HTML code for creating the widget -->
  <div id="widget" class="widget" role="application" aria-label="Greeting widget">
    <p id="message" aria-live="polite"></p>
    <button id="english" aria-label="Change language to English">English</button>
    <button id="spanish" aria-label="Change language to Spanish">Español</button>
  </div>
</body>
</html>
