#tag Module
Protected Module MyLibrary
	#tag Method, Flags = &h0
		Function AllToSjis(str as string, hint as TextEncoding) As String
		  var c as TextConverter
		  var ec as TextEncoding
		  ec = Encoding(str)
		  if ec = nil then
		    if hint <> Encodings.ShiftJIS then
		      //c = GetTextConverter( hint, Encodings.ShiftJIS )
		      c = GetTextConverter( hint, Encodings.ShiftJIS )
		    else
		      return str
		    end if
		  else
		    if ec.internetName = "Shift_JIS" then
		      return str
		    else
		      //c = GetTextConverter( hint, Encodings.ShiftJIS )
		      c = GetTextConverter( hint, Encodings.ShiftJIS )
		    end if
		  end if
		  return c.convert( str )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AllToUtf8(str as string, hint as TextEncoding) As String
		  var c as TextConverter
		  var ec as TextEncoding
		  ec = Encoding(str)
		  if ec = nil then
		    if hint <> Encodings.UTF8 then
		      c = GetTextConverter( hint, Encodings.UTF8 )
		    else
		      return str
		    end if
		  else
		    if ec.internetName = "UTF8" then
		      return str
		    else
		      c = GetTextConverter( hint, Encodings.UTF8 )
		    end if
		  end if
		  return c.convert( str )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DecodeSqlString(s as string) As String
		  var sjis as string
		  var normal as string
		  var utf8 as string
		  if s = "" then
		    return s
		  end if
		  sjis = AllToSjis(s, Encodings.UTF8)
		  normal = DefineEncoding(sjis.ReplaceAll("^047", "'"), Encodings.ShiftJIS) // for '
		  normal = DefineEncoding(normal.ReplaceAll(chr(10)+chr(13), chr(13)), Encodings.ShiftJIS) // for '\r'
		  normal = DefineEncoding(normal.ReplaceAll(chr(10), chr(13)), Encodings.ShiftJIS) // for '\r'
		  normal = DefineEncoding(normal.ReplaceAll("^r", chr(13)), Encodings.ShiftJIS) // for '\r'
		  normal = DefineEncoding(normal.ReplaceAll("^134", "\"), Encodings.ShiftJIS) // for '\'
		  normal = DefineEncoding(normal.ReplaceAll("^136", "^"), Encodings.ShiftJIS) // for ^
		  utf8 = AllToUtf8(normal, Encodings.ShiftJIS)
		  return utf8
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function EncodeSqlString(s as string) As String
		  var sjis as string
		  var utf8 as string
		  var sql as string
		  if s = "" then
		    return s
		  end if
		  sjis = AllToSjis(s, Encodings.UTF8)
		  sql = DefineEncoding(sjis.ReplaceAll("^", "^136"), Encodings.ShiftJIS) // for ^
		  sql = DefineEncoding(sql.ReplaceAll("\", "^134"), Encodings.ShiftJIS)
		  sql = DefineEncoding(sql.ReplaceAll(chr(13)+chr(10), "^r"), Encodings.ShiftJIS)
		  sql = DefineEncoding(sql.ReplaceAll(chr(13), "^r" ), Encodings.ShiftJIS)
		  sql = DefineEncoding(sql.ReplaceAll(chr(10), "^r" ), Encodings.ShiftJIS)
		  sql = DefineEncoding(sql.ReplaceAll("'", "^047"), Encodings.ShiftJIS)
		  utf8 = AllToUtf8(sql, Encodings.ShiftJIS)
		  return utf8
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetNextDateString(sqlDateText as String) As String
		  var y as Integer = sqldateText.left(4).ToInteger
		  var m as Integer = sqldateText.NthField("-",2).ToInteger
		  var d as Integer = sqldateText.NthField("-",3).ToInteger
		  
		  Var aDay As New DateInterval
		  aDay.Days = 1
		  
		  Var dt As New DateTime(y, m, d)
		  dt = dt + aDay
		  
		  return dt.SQLDate
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPrevDateString(sqlDateText as String) As String
		  var y as Integer = sqldateText.left(4).ToInteger
		  var m as Integer = sqldateText.NthField("-",2).ToInteger
		  var d as Integer = sqldateText.NthField("-",3).ToInteger
		  
		  Var aDay As New DateInterval
		  aDay.Days = 1
		  
		  Var dt As New DateTime(y, m, d)
		  dt = dt - aDay
		  
		  return dt.SQLDate
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetSHA256(inF as FolderItem) As string
		  Var ReadStream As BinaryStream = BinaryStream.Open(inF, False)
		  ReadStream.LittleEndian = True
		  var buf as string = ReadStream.Read(inF.Length)
		  readStream.Close
		  
		  var binaryHash as string = Crypto.Hash(buf,Crypto.HashAlgorithms.SHA256)
		  var hashData as string = EncodeHex(binaryHash).Lowercase()
		  
		  Return "SHA256="+hashData
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsFileNameValid(filename as string) As Boolean
		  if filename.IndexOf("\") >= 0 then
		    return false
		  end if
		  if filename.IndexOf("/") >= 0 then
		    return false
		  end if
		  if filename.IndexOf(":") >= 0 then
		    return false
		  end if
		  if filename.IndexOf("*") >= 0 then
		    return false
		  end if
		  if filename.IndexOf("?") >= 0 then
		    return false
		  end if
		  if filename.IndexOf("""") >= 0 then
		    return false
		  end if
		  if filename.IndexOf("<") >= 0 then
		    return false
		  end if
		  if filename.IndexOf(">") >= 0 then
		    return false
		  end if
		  if filename.IndexOf("|") >= 0 then
		    return false
		  end if
		  if filename.IndexOf("_") >= 0 then
		    return false
		  end if
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsPriceNumber(s as string) As Boolean
		  //var p as string = "^¥(0|[1-9]\d*|[1-9]\d{0,2}(,\d{3})+)$"
		  //var p as string = "(0|[1-9]\d*|[1-9]\d{0,2}(,\d{3})+)$"
		  var p as string = "^((([1-9]\d*)(,\d{3})*)|0)$"
		  Var rg As New RegEx
		  Var myMatch As RegExMatch
		  rg.SearchPattern = p
		  myMatch = rg.Search(s)
		  If myMatch <> Nil Then
		    return true
		  Else
		    return false
		  End If
		  
		  Exception err As RegExException
		    MessageBox(err.Message)
		    return false
		End Function
	#tag EndMethod


	#tag ViewBehavior
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
			InitialValue="-2147483648"
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
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
