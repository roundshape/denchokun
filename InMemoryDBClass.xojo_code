#tag Class
Protected Class InMemoryDBClass
Inherits Database
	#tag Method, Flags = &h0
		Sub AddDealPartner(name As String)
		  var sql As String = "INSERT INTO DealPartners (name) VALUES (?)"
		  var ps As PreparedStatement = me.Prepare(sql)
		  ps.BindType(0, SQLiteTypeMapping.SQLITE_TEXT)
		  ps.Bind(0, name)
		  ps.ExecuteSQL()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ApplyTempTableToMain()
		  try
		    me.ExecuteSQL("DROP TABLE IF EXISTS DealPartners")
		    me.ExecuteSQL("CREATE TABLE DealPartners AS SELECT * FROM TempTable")
		    me.ExecuteSQL("DROP TABLE TempTable")
		  catch e as DatabaseException
		    Raise e
		  end try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Super.Constructor
		  me.DatabaseFile = Nil
		  me.Connect()
		  me.CreateTables()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CreateTables()
		  // DealPartnersテーブル作成
		  try
		    me.ExecuteSQL("CREATE TABLE IF NOT EXISTS DealPartners(name TEXT PRIMARY KEY)")
		  catch e as DatabaseException
		    Raise e
		  end try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CreateTempTable()
		  try
		    me.ExecuteSQL("DROP TABLE IF EXISTS TempTable")
		    me.ExecuteSQL("CREATE TABLE TempTable AS SELECT * FROM DealPartners")
		  catch e as DatabaseException
		    Raise e
		  end try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTempTableData() As String()
		  var result() As String
		  var rows As RowSet = me.SelectSQL("SELECT name FROM TempTable ORDER BY name")
		  
		  For Each row As DatabaseRow In rows
		    result.Add(row.Column("name").StringValue)
		  next
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveDealPartner()
		  var sql As String = "DELETE FROM DealPartners WHERE name = ?"
		  var ps As PreparedStatement = me.Prepare(sql)
		  ps.BindType(0, SQLiteTypeMapping.SQLITE_TEXT)
		  ps.Bind(0, name)
		  ps.ExecuteSQL()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SelectAllDealPartners() As RowSet
		  return me.SelectSQL("SELECT name FROM DealPartners ORDER BY name")
		End Function
	#tag EndMethod


End Class
#tag EndClass
