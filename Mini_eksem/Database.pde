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

    if (db.connect() )
    {
      db.query( "SELECT * FROM Exercises1"); // choice of data
    }
  }
  void saveExerciseFractions(String question, String answer1, String answer2, String answer3, String answer4) {
    /*Teacher key is pressed*/
    db.query("INSERT INTO Exercises1 (question, answer1, answer2, answer3, answer4) VALUES ('"+ question + "', '"+ answer1 + "', '"+ answer2 + "', '"+ answer3 + "', '"+ answer4 + "');");
  }
  void saveExerciseTrigonometry(String question, String answer1, String answer2, String answer3, String answer4) {
    /*Teacher key is pressed*/
    db.query("INSERT INTO Exercises2 (question, answer1, answer2, answer3, answer4) VALUES ('"+ question + "', '"+ answer1 + "', '"+ answer2 + "', '"+ answer3 + "', '"+ answer4 + "');");
  }
  void saveExerciseVectors(String question, String answer1, String answer2, String answer3, String answer4) {
    /*Teacher key is pressed*/
    db.query("INSERT INTO Exercises3 (question, answer1, answer2, answer3, answer4) VALUES ('"+ question + "', '"+ answer1 + "', '"+ answer2 + "', '"+ answer3 + "', '"+ answer4 + "');");
  }

  void showExerciseFractions() {
    db.query("SELECT  * FROM Exercises1");
    int lastQuestionID = 1;
    Exercise exercise = new Exercise();
    db.query("SELECT  * FROM Exercises1 where questionID = "+ 2);
    exercise.id = db.getInt("questionId");
    exercise.q = db.getString("question");
    exercise.a1 = db.getString("answer1");
    exercise.a2 = db.getString("answer2");
    exercise.a3 = db.getString("answer3");
    exercise.a4 = db.getString("answer4");
    lastQuestionID++;
    list.add(exercise);
  }

  void showExerciseTrigonometry() {
    db.query("SELECT  * FROM Exercises2");
    int lastQuestionID = 1;
    Exercise exercise = new Exercise();
    db.query("SELECT  * FROM Exercises2 where questionID = "+ 1);
    exercise.id = db.getInt("questionId");
    exercise.q = db.getString("question");
    exercise.a1 = db.getString("answer1");
    exercise.a2 = db.getString("answer2");
    exercise.a3 = db.getString("answer3");
    exercise.a4 = db.getString("answer4");
    lastQuestionID++;
    list.add(exercise);
  }

  void showExerciseVectors() {
    db.query("SELECT  * FROM Exercises3");
    int lastQuestionID = 1;
    Exercise exercise = new Exercise();
    db.query("SELECT  * FROM Exercises3 where questionID = "+ 2);
    exercise.id = db.getInt("questionId");
    exercise.q = db.getString("question");
    exercise.a1 = db.getString("answer1");
    exercise.a2 = db.getString("answer2");
    exercise.a3 = db.getString("answer3");
    exercise.a4 = db.getString("answer4");
    lastQuestionID++;
    list.add(exercise);
  }

  void Delete() {
    db.query("DELETE FROM Exercises1");
    db.query("DELETE FROM Exercises2");
    db.query("DELETE FROM Exercises3");
  }
}
