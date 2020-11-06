import de.bezier.data.sql.*;

class Database {

  SQLite db;

  PApplet p;

  Database(PApplet p) {
    this.p = p;
  }

  void setups()
  {
    size(100, 100 );


    db = new SQLite(p, "test.db" );  // open database file

    if ( db.connect() )
    {

      db.query( "SELECT * FROM table_one");

      while (db.next())
      {
        print(db.getString("field_one"));
        println(" ", db.getInt("field_two"));
      }
    }
  }
}
