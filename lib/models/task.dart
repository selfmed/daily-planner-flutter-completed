class Task {

  String name;
  bool isCompleted;

  Task({required this.name, this.isCompleted=false});

  void isCompletedToggle(){
    isCompleted = !isCompleted;
  }

}