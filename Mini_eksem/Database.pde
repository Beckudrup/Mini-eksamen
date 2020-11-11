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

    if ( db.connect() )
    {

      db.query( "SELECT * FROM table_one"); // choice of data

      while (db.next())
      {
        print(db.getString("field_one"));
        println(" ", db.getInt("field_two"));
      }
    }
  }
}
