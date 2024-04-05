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
  void addTask() {}

  // View all tasks
  void viewAllTask() {}

  // View all completed tasks
  void viewCompletedTasks() {}

  // View all pending tasks
  void viewPendingTasks() {}

  // Edit task method
  void editTask() {}

  // Delete task
  void deleteTask() {}
}

void main() {}
