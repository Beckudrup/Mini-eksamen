import de.bezier.data.sql.*;

class Database{

SQLite db;

void setup()
{
  size( 100, 100 );

  db = new SQLite(this, "test.db" );  // open database file

  if ( db.connect() )
  {

    db.query( "SELECT * FROM table_one");

    while (db.next())
    {
      print(db.getString("field_one"));
      println(" ",db.getInt("field_two"));
    }
  }
}

  
}
