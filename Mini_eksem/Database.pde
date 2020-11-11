import de.bezier.data.sql.*;

class Database {

  SQLite db;

  PApplet p;

  //Table table;

  //TableRow row = table.addRow();

  //Giver en golbal this
  Database(PApplet p) {
    this.p = p;
  }

  void setups()
  {
    db = new SQLite(p, "test.db" );  // open database file

    if ( db.connect() )
    {
      for (int i; db.next() == true; i++) {
      // Iterate over all the rows in a table.
      //row = table.getRow(i);
      if (i>0) {
      println("gay");
      }
      }
    }
    db.query( "SELECT * FROM table_one"); // choice of data

    while (db.next())
    {
      print(db.getString("field_one"));
      println(" ", db.getInt("field_two"));
    }
  }
}
