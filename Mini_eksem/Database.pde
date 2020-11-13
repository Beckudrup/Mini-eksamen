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
      String test = "you";
      String test1 = "me";
      db.query("INSERT INTO Exercises (question, answer1) VALUES ('"+ test + "', '"+ test1 +"');");

      db.query( "SELECT * FROM Exercises"); // choice of data
      print(db.getString("question"));
      println(" ", db.getString("answer1"));
      db.query("DELETE FROM Exercises");
    }
  }
  void saveExercise(String question, String answer1, String answer2, String answer3, String answer4, int i) {
    /*Teacher key is pressed*/
    db.query("INSERT INTO Exercises (question, answer1, answer2, answer3, answer4) VALUES ('"+ question + "', '"+ answer1 + "', '"+ answer2 + "', '"+ answer3 + "', '"+ answer4 + "');");
    if ( i>0 /*Next key for a new screen for exercises i pressed*/) {
      db.query("UPDATE Exercises SET question = '"+ question + "' , answer1 = '"+ answer1 + "', answer2 = '"+ answer2 + "', answer3 = '"+ answer3 + "', answer4 = '"+ answer4 + "' WHERE questionId = i;"); // I is a golbal int that increases by one every time next is pressed
    }
    //  db.query("INSERT INTO Exercises (question,Answer 1) VALUES ('"+ quest1 + "','2');");
  }
}
