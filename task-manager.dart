enum Status { completed, pending }

class Task {
  // class properties
  int _id;
  String _title;
  String _description;
  Status _status;
  DateTime _date;

  Task(this._id, this._title, this._description, this._date)
      : _status = Status.pending;

  int getId() => _id;

  String getTitle() => _title;

  String getDescription() => _description;

  Status getStatus() => _status;

  DateTime getDate() => _date;

  void setTitle(String title) {
    this._title = title;
  }

  void setDescription(String description) {
    this._description = description;
  }

  void setStatus(Status status) {
    this._status = status;
  }

  void setDate(DateTime date) {
    this._date = date;
  }

  // class constructor
  @override
  String toString() {
    return "id: ${_id} \ntitle: ${_title} \ndescription: ${_description} \nstatus: ${_status} \ndate: ${_date} \n\n";
  }
}

class TaskManager {
  // Add task method
  List<Task> tasks= [];

  void addTask(int id,String name, String description,DateTime dueDate){
    Task newTask = new Task(id,name,description,dueDate);
    tasks.add(newTask);
    
    print("${name} Added");
  }
  

  // View all tasks
  void viewAllTask() {
    for(int i=0;i<tasks.length;i++){
      print(tasks[i]);
    }
  }

  // View all completed tasks
  void viewCompletedTasks() {}

  // View all pending tasks
  void viewPendingTasks() {}

  // Edit task method
  void editTask() {}

  // Delete task
  void deleteTask() {}
}

void main() {
  TaskManager taskManager = new TaskManager();
  taskManager.addTask(1,"Task 1", "Description 1", DateTime.now());
  taskManager.addTask(2,"Task 2", "Description 2", DateTime.now());
  taskManager.addTask(3,"Task 3", "Description 3", DateTime.now());
  taskManager.viewAllTask();
}
