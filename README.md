# Meteorology poc
This is a POC for Meteorology to indicate how the app structured and designed


### Prerequisites
-  Flutter SDK
-  Android Studio / Visual Studio Code (or any preferred IDE with Flutter support)
-  An emulator or physical device to run the app

### Ensure you have Flutter installed by running:
-  flutter doctor

### Installing
A step-by-step series of examples that tell you how to get a development environment running.

-  ### Clone the repository:
    -  git clone https://github.com/MohamedElshatlawy/CNS-Assignment
      
-  ### Navigate to the project directory:
    -  cd repository
    -  Get all the dependencies:
        -  flutter pub get
    
-  ### Run the app:
    -  flutter run
 
### Application Structure
  -  Core
      -  Base (For font style , routes and dependency injection)
      -  Bloc (For handling states)
      -  Common (For app's color , component's style)
      -  Utils (For network layer )
  -  Src
      -  Features (Presentation layer)

