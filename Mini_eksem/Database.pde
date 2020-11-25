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
      db.query( "SELECT * FROM Exercises"); // choice of data
    }
  }
  void saveExercise(String question, String answer1, String answer2, String answer3, String answer4) {
    /*Teacher key is pressed*/
    db.query("INSERT INTO Exercises (question, answer1, answer2, answer3, answer4) VALUES ('"+ question + "', '"+ answer1 + "', '"+ answer2 + "', '"+ answer3 + "', '"+ answer4 + "');");
  }

  void showExercise() {
    db.query("SELECT  * FROM Exercises");
    //list.clear();
    //for (int i = 0; i > )
    while (db.next()) {
      Exercise exercise = new Exercise();
      exercise.id = db.getInt("questionId");
      exercise.q = db.getString("question");
      exercise.a1 = db.getString("answer1");
      exercise.a2 = db.getString("answer2");
      exercise.a3 = db.getString("answer3");
      exercise.a4 = db.getString("answer4");
      list.add(exercise);
    }
  }

  void Delete() {
    db.query("DELETE FROM Exercises");
  }
}
