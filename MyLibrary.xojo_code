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
		Function bytesToMKbytesString(bytes as integer) As String
		  var size as double
		  var Dbytes as double
		  var sizeString as string
		  
		  size = bytes
		  if (size\(1024*1024)) > 0 then
		    Dbytes = round( (size/(1024*1024))*100 )
		    Dbytes = Dbytes / 100
		    sizeString = format( Dbytes, "#.00" ) + " Mbytes"
		  elseIf (size\1024) > 0 then
		    Dbytes = round( (size/1024)*100 )
		    Dbytes = Dbytes / 100
		    sizeString = format( Dbytes, "#.00" ) + " Kbytes"
		  else
		    sizeString = str(bytes)+"  bytes"
		  end if
		  return sizeString
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
		Function DesktopFolderPath() As String
		  var list(0) as folderItem
		  var n as integer
		  var i as integer
		  var par as folderItem
		  var path as string
		  
		  list.Append SpecialFolder.Desktop
		  par = SpecialFolder.Desktop.parent
		  while par <> nil
		    list.Append par
		    par = par.parent
		  wend
		  path = ""
		  n = Ubound(list)
		  for i=n downTo 2
		    if i=n then
		      path = list(i).name
		    else
		      path = path+"\"+list(i).name
		    end if
		  next
		  path = path+"\"+AllToUtf8(list(1).name,Encodings.ShiftJIS)+"\"
		  return path
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawPictOnCanvas(aCanvas as canvas, pict as picture)
		  if pict = nil then
		    aCanvas.backdrop = nil
		    return
		  end if
		  var canvasW, canvasH as integer
		  canvasW = aCanvas.Width
		  canvasH = aCanvas.Height
		  var pictScaleW, pictScaleH, pictScale as double
		  pictScaleW = canvasW/pict.Width
		  pictScaleH = canvasH/pict.Height
		  if pictScaleW < pictScaleH then
		    pictScale = pictScaleW
		  else
		    pictScale = pictScaleH
		  end if
		  var newDrawW, newDrawH as integer
		  newDrawW = pict.Width*pictScale
		  newDrawH = pict.Height*pictScale
		  var x, y as integer
		  x = (canvasW-newDrawW) / 2
		  y = (canvasH-newDrawH) / 2
		  
		  aCanvas.backdrop = new picture( canvasW, canvasH, 16 )
		  aCanvas.backdrop.graphics.drawpicture pict, x, y, newDrawW, newDrawH, 0, 0, pict.Width, pict.Height
		  //return pictScale
		End Sub
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
		Function EucToSjis(euc as string) As String
		  var cToSjis as textConverter
		  cToSjis=GetTextConverter(GetTextEncoding(&h0920),GetTextEncoding(1))
		  return cToSjis.convert(euc)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FolderPath(fullpath as string) As String
		  var i, n as integer
		  var s as string
		  //n = CountFields( fullpath, ":" )
		  n = CountFields( fullpath, "\" )
		  s=""
		  for i=1 to n-1
		    if s="" then
		      //s=NthField( fullpath, ":", i )
		      s=NthField( fullpath, "\", i )
		    else
		      //s=s+":"+NthField( fullpath, ":", i )
		      s=s+"\"+NthField( fullpath, "\", i )
		    end if
		  next
		  s = s+ "\"
		  return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFilenameExtension(FileName as string) As string
		  var items() as string = FileName.Split(".")
		  if items.Count = 1 then
		    return ""
		  end if
		  
		  return items(items.LastIndex)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFilenameWithoutExtension(FileName as string) As string
		  var items() as string = FileName.Split(".")
		  if items.Count = 1 then
		    return items(0)
		  end if
		  var i as integer = items.LastIndex
		  items.RemoveAt(i)
		  var name as string = String.FromArray(items)
		  
		  return name
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFolderItemFromAbsolutePath(path as string) As FolderItem
		  var f as folderitem
		  var sep as integer
		  var name as string
		  var childPath as string
		  name = nthField(path, "\", 1)
		  var i,n as Integer
		  n = VolumeCount-1
		  For i=0 to n
		    if Volume(i).Name = name then
		      sep = InStr( path, "\")
		      if sep > 0 then
		        childPath = mid(path, sep+1)
		        f = GetFolderItemFromChildPath( Volume(i), childPath )
		        return f
		      else
		        return Volume(i)
		      end if
		    end if
		  Next
		  return nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFolderItemFromChildPath(parentF as folderitem, path as string) As FolderItem
		  var f as folderitem
		  var sep as integer
		  var name as string
		  var childPath as string
		  name = nthField(path, "\", 1)
		  f = parentF.child(name)
		  if f = nil then
		    return nil
		  else
		    sep = InStr( path, "\")
		    if sep > 0 then
		      childPath = mid(path, sep+1)
		      f = GetFolderItemfromChildPath(f, childPath)
		    end if
		  end if
		  return f
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFullPath(f as folderItem) As String
		  var list(0) as folderItem
		  var n as integer
		  var i as integer
		  var par as folderItem
		  var path as string
		  
		  list.Append f
		  par = f.parent
		  while par <> nil
		    list.Append par
		    par = par.parent
		  wend
		  path = ""
		  n = Ubound(list)
		  for i=n downTo 1
		    if i=n then
		      path = list(i).name
		    else
		      path = path+"\"+list(i).name
		    end if
		  next
		  if list(1).Directory then
		    path = path + "\"
		  end if
		  return path
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetIcon(f as folderitem) As picture
		  var r,p,m as Picture
		  p=f.IconImageMBS(128)
		  m=f.IconMaskMBS(128)
		  if p<>nil and m<>nil then
		    r=New Picture(128,128,32)
		     r.Graphics.DrawPicture p,0,0
		    r.Mask.Graphics.DrawPicture m,0,0 
		    Return r 
		  end if
		  return nil
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
		Function GetUrl(urlPath as string) As String
		  var i, n as integer
		  n = CountFields( urlPath, "/" )
		  if n = 0 then
		    return "/"
		  end if
		  var url as string
		  url = ""
		  for i=1 to n-1
		    if url = "" then
		      url = NthField( urlPath, "/", i )
		    else
		      url = url + "/" + NthField( urlPath, "/", i )
		    end if
		  next
		  return url+"/"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function htmlspecialchars(s as string) As string
		  var ret as string
		  ret = s.ReplaceAll( "&", "&amp;")
		  ret = ret.ReplaceAll( """", "&quot;" )
		  ret = ret.ReplaceAll( "'", "&#039;" )
		  ret = ret.ReplaceAll( "<", "&lt;" )
		  ret = ret.ReplaceAll( ">", "&gt;" )
		  return ret
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

	#tag Method, Flags = &h0
		Function MakeFormat(n as integer) As String
		  var digits as integer
		  var i as integer
		  var f as string
		  digits = lenb(str(n))
		  f= ""
		  for i=1 to digits
		    f = f+"0"
		  next
		  return f
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PreviewOpen(f as folderitem) As String
		  var obj as OLEObject
		  var parms(1) as Variant
		  obj = new OLEObject( "Shell.Application", true )
		  parms(1) = GetFullPath(f)
		  obj.invoke( "open", parms )
		  return "OK"
		  Exception err as OLEException
		    return err.Message
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SjisToEuc(sjis as string) As String
		  var cToEuc as textConverter
		  cToEuc=GetTextConverter(GetTextEncoding(1),GetTextEncoding(&h0920))
		  return cToEuc.convert(sjis)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function uniqID(prefix as string) As String
		  var s as double
		  var f as string
		  s = floor(microseconds/1000) // 1/1000 seconds
		  if ( s > 9999999999 ) then
		    s = s mod 10000000000
		    f = format( s, "##########" )
		  else
		    f = format( s, "##########" )
		  end if
		  return prefix+f
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Utf8ToSjis(u as string) As String
		  var c As TextConverter
		  var sysVersion as integer
		  #If TargetCarbon then
		    If System.Gestalt("sysv", sysVersion) and sysVersion >= &h0A00 then
		      if RBVersion>4.1 and RBVersion<5 then
		        c=GetTextConverter(GetTextEncoding(&h0101,0,2),GetTextEncoding(1))
		        return c.convert(u)
		      else
		        return u
		      end if
		    else
		      return u
		    end if
		  #Else
		    If System.Gestalt("sysv", sysVersion) and sysVersion < &h0A00 then
		      if RBVersion>4.1 and RBVersion<5 then
		        c=GetTextConverter(GetTextEncoding(&h0101,0,2),GetTextEncoding(1))
		        return c.convert(u)
		      else
		        return u
		      end if
		    else
		      return u
		    end if
		  #Endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Zen2Han(source as string) As string
		  var r, m as string
		  r = ""
		  for i as Integer = 0 to source.Length-1
		    m = source.Middle(i,1)
		    if m >= "０" and m <= "９" then
		      r = r + Zen2HanForNumber( m )
		    ElseIf m >= "ａ" and m <= "ｚ" then
		      r = r + Zen2HanForLowerCase( m )
		    ElseIf m >= "Ａ" and m <= "Ｚ" then
		      r = r + Zen2HanForUpperCase( m )
		    ElseIf m >= "！" and m <= "／" then
		      r = r + Zen2HanForSymbol( m )
		    ElseIf m >= "：" and m <= "＠" then
		      r = r + Zen2HanForSymbol( m )
		    else
		      r = r + m
		    end if
		  next
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Zen2HanForLowerCase(moji As String) As String
		  var ZenkakuLowerCase() As String = Array("ａ","ｂ","ｃ","ｄ","ｅ","ｆ","ｇ","ｈ","ｉ","ｊ","ｋ","ｌ","ｍ","ｎ","ｏ","ｐ","ｑ","ｒ","ｓ","ｔ","ｕ","ｖ","ｗ","ｘ","ｙ","ｇｚ")
		  var HankakuLowerCase() As String = Array("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z")
		  
		  If moji.Len <> 1 Then
		    //MsgBox "??????????1?????"
		    Return moji
		  End If
		  
		  For i As Integer = 0 To ZenkakuLowerCase.Ubound
		    If ZenkakuLowerCase(i) = moji Then
		      Return HankakuLowerCase(i)
		    End If
		  Next
		  
		  Return moji
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Zen2HanForNumber(moji As String) As String
		  var ZenkakuNumber() As String = Array("０","１","２","３","４","５","６","７","８","９")
		  var HankakuNumber() As String = Array("0","1","2","3","4","5","6","7","8","9")
		  
		  If moji.Len <> 1 Then
		    //MsgBox "??????????1?????"
		    Return moji
		  End If
		  
		  For i As Integer = 0 To ZenkakuNumber.Ubound
		    If ZenkakuNumber(i) = moji Then
		      Return HankakuNumber(i)
		    End If
		  Next
		  
		  Return moji
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Zen2HanForSymbol(moji As String) As String
		  var ZenkakuSymbol() As String = Array("．","，","、","　","！","”","＃","＄","％","＆","’","（","）","＠","＜","＞","？","／")
		  var HankakuSymbol() As String = Array(".",",",","," ","!","""","#","$","%","&","'","(",")","@","<",">","?","/")
		  
		  If moji.Len <> 1 Then
		    //MsgBox "??????????1?????"
		    Return moji
		  End If
		  
		  For i As Integer = 0 To ZenkakuSymbol.Ubound
		    If ZenkakuSymbol(i) = moji Then
		      Return HankakuSymbol(i)
		    End If
		  Next
		  
		  Return moji
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Zen2HanForUpperCase(moji As String) As String
		  var ZenkakuUpperCase() As String = Array("Ａ","Ｂ","Ｃ","Ｄ","Ｅ","Ｆ","Ｇ","Ｈ","Ｉ","Ｊ","Ｋ","Ｌ","Ｍ","Ｎ","Ｏ","Ｐ","Ｑ","Ｒ","Ｓ","Ｔ","Ｕ","Ｖ","Ｗ","Ｘ","Ｙ","Ｚ")
		  var HankakuUpperCase() As String = Array("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z")
		  
		  If moji.Len <> 1 Then
		    //MsgBox "??????????1?????"
		    Return moji
		  End If
		  
		  For i As Integer = 0 To ZenkakuUpperCase.Ubound
		    If ZenkakuUpperCase(i) = moji Then
		      Return HankakuUpperCase(i)
		    End If
		  Next
		  
		  Return moji
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
