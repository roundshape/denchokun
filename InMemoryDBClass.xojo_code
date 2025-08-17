#tag Class
Protected Class InMemoryDBClass
Inherits SQLiteDatabase
	#tag Method, Flags = &h0
		Sub AddDealPartner(name As String)
		  var sql As String = "INSERT INTO TempTable (name) VALUES (?)"
		  var ps as SQLitePreparedStatement = me.Prepare(sql)
		  ps.BindType(0, SQLitePreparedStatement.SQLITE_TEXT)
		  ps.Bind(0, name)
		  ps.ExecuteSQL()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Super.Constructor
		  Super.Constructor
		  // DatabaseFile を設定しない（Nilのまま）でConnectするとIn-memoryになる
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
		    me.ExecuteSQL("CREATE TABLE IF NOT EXISTS TempTable (name TEXT PRIMARY KEY)")
		  catch e as DatabaseException
		    Raise e
		  end
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
		Sub RemoveDealPartner(name as string)
		  var sql As String = "DELETE FROM DealPartners WHERE name = ?"
		  var ps As SQLitePreparedStatement = me.Prepare(sql)
		  ps.BindType(0, SQLitePreparedStatement.SQLITE_TEXT)
		  ps.Bind(0, name)
		  ps.ExecuteSQL()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SelectAllDealPartners() As RowSet
		  return me.SelectSQL("SELECT name FROM DealPartners ORDER BY name")
		End Function
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="DatabaseName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Host"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Password"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="EncryptionKey"
			Visible=true
			Group=""
			InitialValue=""
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Timeout"
			Visible=true
			Group=""
			InitialValue=""
			Type="Double"
			EditorType="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugMode"
			Visible=true
			Group=""
			InitialValue=""
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThreadYieldInterval"
			Visible=true
			Group=""
			InitialValue=""
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WriteAheadLogging"
			Visible=true
			Group=""
			InitialValue=""
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LoadExtensions"
			Visible=true
			Group=""
			InitialValue=""
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LibraryVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
