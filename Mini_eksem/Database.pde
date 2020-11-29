import de.bezier.data.sql.*;

class Database {

  SQLite db;

  PApplet p;

  //Giver en golbal this
  Database(PApplet p) {
    this.p = p;
  }

  void setups()
  {
    db = new SQLite(p, "test.db" );  // open database file
    if (db.connect()) {
    }
  }

  void saveExerciseFractions(String question, String answer1, String answer2, String answer3, String answer4) {
    /*Teacher key is pressed*/    if (question != "" && answer1 != "" && answer2 != "" && answer3 != "" && answer4 != "")
      db.query("INSERT INTO Exercises1 (question, answer1, answer2, answer3, answer4) VALUES ('"+ question + "', '"+ answer1 + "', '"+ answer2 + "', '"+ answer3 + "', '"+ answer4 + "');");
  }
  void saveExerciseTrigonometry(String question, String answer1, String answer2, String answer3, String answer4) {
    /*Teacher key is pressed*/    if (question != "" && answer1 != "" && answer2 != "" && answer3 != "" && answer4 != "")
      db.query("INSERT INTO Exercises2 (question, answer1, answer2, answer3, answer4) VALUES ('"+ question + "', '"+ answer1 + "', '"+ answer2 + "', '"+ answer3 + "', '"+ answer4 + "');");
  }
  void saveExerciseVectors(String question, String answer1, String answer2, String answer3, String answer4) {
    /*Teacher key is pressed*/    if (question != "" && answer1 != "" && answer2 != "" && answer3 != "" && answer4 != "")
      db.query("INSERT INTO Exercises3 (question, answer1, answer2, answer3, answer4) VALUES ('"+ question + "', '"+ answer1 + "', '"+ answer2 + "', '"+ answer3 + "', '"+ answer4 + "');");
  }


  void showExerciseFractions(int k) {
    Exercise1 exercise1 = new Exercise1();
    db.query("SELECT * FROM Exercises1 where ROWID =" + k);
    exercise1.id = db.getInt("questionId");
    exercise1.q = db.getString("question");
    exercise1.a1 = db.getString("answer1");
    exercise1.a2 = db.getString("answer2");
    exercise1.a3 = db.getString("answer3");
    exercise1.a4 = db.getString("answer4");
    list1.add(exercise1);
  }

  void showExerciseTrigonometry(int k) {
    db.query("SELECT * FROM Exercises2");
    Exercise2 exercise2 = new Exercise2();
    db.query("SELECT * FROM Exercises2 where ROWID ="+ k);
    exercise2.id = db.getInt("questionId");
    exercise2.q = db.getString("question");
    exercise2.a1 = db.getString("answer1");
    exercise2.a2 = db.getString("answer2");
    exercise2.a3 = db.getString("answer3");
    exercise2.a4 = db.getString("answer4");
    list2.add(exercise2);
  }

  void showExerciseVectors(int k) {
    db.query("SELECT * FROM Exercises3");
    Exercise3 exercise3 = new Exercise3();
    db.query("SELECT * FROM Exercises3 where ROWID = "+ k);
    exercise3.id = db.getInt("questionId");
    exercise3.q = db.getString("question");
    exercise3.a1 = db.getString("answer1");
    exercise3.a2 = db.getString("answer2");
    exercise3.a3 = db.getString("answer3");
    exercise3.a4 = db.getString("answer4");
    list3.add(exercise3);
  }

  void ShowStudentList() {
    db.query("SELECT * FROM Students");
    while (db.next()) {
      AClass aclass = new AClass();
      aclass.id = db.getInt("studentID");
      aclass.fname = db.getString("firstname");
      aclass.lname = db.getString("lastname");
      aclass.c = db.getString("class");
      acList.add(aclass);
    }
  }

  void Delete() {
    db.query("DELETE FROM Exercises1");
    db.query("DELETE FROM Exercises2");
    db.query("DELETE FROM Exercises3");
  }
}
