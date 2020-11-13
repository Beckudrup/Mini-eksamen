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

      while (db.next())
      {
        print(db.getString("questions"));
        println(" ", db.getInt("answer1"));
      }
      db.query("DELETE FROM Exercises");
    }
  }
  void saveExercise(String question, String answer1, String answer2, String answer3, String answer4, int i) {
    /* if (Teacher key is pressed){
    db.query("INSERT INTO table_one (questions, answer1, answer2, answer3, answer4)
    VALUES ('"+ question + "', '"+ answer1 + "', '"+ answer2 + "', '"+ answer3 + "', '"+ answer4 + "');");
    }*/
    /* if (Next key for a new screen for exercises i pressed) {
    db.query("UPDATE table_one 
    SET questions = '"+ question + "' , answer1 = '"+ answer1 + "', answer2 = '"+ answer2 + "', answer3 = '"+ answer3 + "', answer4 = '"+ answer4 + "'
    WHERE questionId = i;"); // I is a golbal int that increases by one every time next is pressed
    }
    */
    //  db.query("INSERT INTO table_one (Questions,Answer 1) VALUES ('"+ quest1 + "','2');");
  }
}
