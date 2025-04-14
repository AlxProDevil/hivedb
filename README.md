# HiveDB Independent Learning

Reference: https://www.youtube.com/watch?v=FB9GpmL0Qe0

## Programming/Development Process

### Dependencies
  <br>
  
  Before we start anything, first we must set up the dependencies required by HiveDB. Go to the `pubspec.yaml` and add the following on the dependencies
  ```
  hive: ^2.2.3
  hive_flutter: ^1.1.0
  ```
  And the following on the dev_dependencies
  ```
  hive_generator: ^1.1.3
  build_runner: ^2.1.11
  ```
  You to also make sure that the Android SDK you use matches the requirement of the HiveDB. If you're using Android Studio, you can check the SDK version on setting, down the SDK Tools menu
  
  ![image](https://github.com/user-attachments/assets/a1a6c3c6-791e-43c7-ab6b-a4088b8faecf)

  After completing all the steps, Android Studio will update the dependencies accordingly after closing `pubspec.yaml`

### Initialization
  <br>
  
  To initiate the HiveDB we can use the following line
  ```
  await Hive.initFlutter();
  ```

  We can then proceed to create `box`, which will store/contain all of our data. To create a `box`,
  ```
  var box = await Hive.openBox('newBox');
  ```
  You will also need to import library, either by clicking the lamp sign on Android Studio or manually inputting
  ```
  import 'package:hive_flutter/hive_flutter.dart';
  ```
  
### Using CRUD
  <br>
  
  We then create a couple of buttons to show that the HiveDB is working. For the CRUD, we will refer to the previously created box with `_newBox`. In this example there will be 3 buttons:
  * Write
    ```
    // Write data method
    void writeData() {
      _newBox.put(1, 'Jacobi');
    }
    ```
    We use the `put` function to insert value 'Jacobi' into the box with the key being '1'.
    
  * Read
    ```
    // Read data method
    void readData() {
      print(_newBox.get(1));
    }
    ```
    We use the `get` function to retrieve the value box with the '1' key and then print it on the console.
  * Delete
    ```
    // Delete data method
    void deleteData() {
      _newBox.delete(1);
    }
    ```
    We use the `delete` function to remove the value inside the box with the key being '1'.

    Before writing or after deleting:
 
    ![image](https://github.com/user-attachments/assets/a6e5250e-da5b-4532-8624-70aa28f0be55)

    After writing:
    
    ![image](https://github.com/user-attachments/assets/4f8a8824-f2a3-4054-ab13-b20d3bcfcb23)
