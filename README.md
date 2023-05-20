
# Bajaj Finserv Health Internship Submission Task

This Flutter app allows you to render data from a JSON source and display it with an appealing UI. It provides a search/filter functionality to easily find and display specific data entries. Additionally, it offers an optional table view to showcase project details.

## Technology Used

- Flutter framework: A cross-platform framework for building mobile applications.
- Dart: The programming language used by Flutter.
- JSON: The data format used for storing and retrieving data.
- HTTP package: Used for making API calls and retrieving JSON data from a remote server.
- Lottie pakcgae: Used for adding beautiful animations in the app.

## Screenshots

Including relevant screenshots of my app here to give an overview of its UI and functionality.

<div style="display: grid; grid-template-columns: repeat(2, 1fr); gap: 40px;">
  <img src="/screenshots/ss1.png" alt="App Screenshot 1" style="width: 300px; height: 600px;">
  <img src="/screenshots/ss2.png" alt="App Screenshot 2" style="width: 300px; height: 600px;">
  <img src="/screenshots/ss3.png" alt="App Screenshot 3" style="width: 300px; height: 600px;">
  <img src="/screenshots/ss4.png" alt="App Screenshot 4" style="width: 300px; height: 600px;">
  <img src="/screenshots/ss5.png" alt="App Screenshot 5" style="width: 300px; height: 600px;">
  <img src="/screenshots/ss6.png" alt="App Screenshot 6" style="width: 300px; height: 600px;">
  <img src="/screenshots/ss7.png" alt="App Screenshot 7" style="width: 300px; height: 600px;">
</div>


## Build Procedure

To build and run the app locally, follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/AbhivanshBhatnagar/BajajHealthFrontendChallenge.git
   ```

2. Change to the app directory:

   ```bash
   cd BajajHealthFrontendChallenge
   ```

3. Fetch dependencies:

   ```bash
   flutter pub get
   ```

4. Run the app:

   ```bash
   flutter run
   ```

## Features

1. **JSON Data Rendering**: The app retrieves JSON data from the provided source and renders it on the screen. It displays various fields from the JSON, presenting the data in a visually appealing UI.

2. **Search Functionality**: The app includes a search functionality that allows users to search for data entries by name. As the user types in the search field, the app dynamically filters and displays the matching results.

3. **Filter by Designation/Skills**: In addition to the search functionality, the app provides the ability to filter developers by their designation or skills. Users can select specific designations or skills from a dropdown or checkbox list, and the app will display the filtered results accordingly.

4. **Optional Project Table**: The app offers an optional table view that showcases all the projects along with their respective team sizes and the number of completed tasks. This table provides a concise summary of the projects' key details.
JSON Data Source

## The JSON data is sourced from the following URL:
https://raw.githubusercontent.com/dixitsoham7/dixitsoham7.github.io/main/index.json

## Conclusion

With this Flutter app, you can easily render and display JSON data with an appealing UI. The search and filter functionalities enhance the user experience, making it convenient to find and view specific data entries. The optional project table provides a comprehensive overview of the projects' details. Feel free to explore and customize the app further to meet your specific requirements.
