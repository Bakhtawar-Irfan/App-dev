import 'dart:io';

void main() {
  List<String> toDoList = [];

  while (true) {
    print("\nTo-Do List Menu:");
    print("1. Add Task");
    print("2. View Tasks");
    print("3. Remove Task");
    print("4. Exit");
    stdout.write("Choose an option: ");
    
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write("Enter task: ");
        String? task = stdin.readLineSync();
        if (task != null && task.isNotEmpty) {
          toDoList.add(task);
          print("Task added successfully!");
        } else {
          print("Task cannot be empty!");
        }
        break;

      case '2':
        if (toDoList.isEmpty) {
          print("No tasks available.");
        } else {
          print("\nYour To-Do List:");
          for (int i = 0; i < toDoList.length; i++) {
            print("${i + 1}. ${toDoList[i]}");
          }
        }
        break;

      case '3':
        if (toDoList.isEmpty) {
          print("No tasks to remove.");
          break;
        }
        stdout.write("Enter task number to remove: ");
        String? indexInput = stdin.readLineSync();
        int? index = int.tryParse(indexInput ?? '');

        if (index != null && index > 0 && index <= toDoList.length) {
          print("Removed: ${toDoList.removeAt(index - 1)}");
        } else {
          print("Invalid task number!");
        }
        break;

      case '4':
        print("Exiting... Goodbye!");
        return;

      default:
        print("Invalid choice! Please enter 1, 2, 3, or 4.");
    }
  }
}
