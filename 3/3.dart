
void main() {
 ToDoList myToDoList = ToDoList();
  myToDoList.addTask("finish home work", "2025-02-16");
  myToDoList.addTask("Complete project", "2025-02-25");
}

class Task {
  String? description;
  String? date;
  bool isDone = false;

}
class ToDoList {
    List<Task> tasks = [];
    
  void addTask(String text, String dueDate) {
     Task newTask = Task();
     newTask.description = text;
    newTask.date = dueDate;
    tasks.add(newTask);
    print(" Task added sucs $text ,, $dueDate");
    tasks.remove(newTask);
     print(" Task removed sucs $text ,, $dueDate");

  }
}