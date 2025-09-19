#tag Class
Protected Class ZipCompressClass
	#tag Method, Flags = &h0
		Sub CompressFolder(inF as FolderItem, zF as FolderItem)
		  var z as new ZipMBS(zF,0)
		  
		  var i, c as integer
		  
		  var cf as FolderItem
		  c = inF.Count
		  for i=0 to c-1
		    cf=inF.ChildAt(i,false)
		    if cf=nil then
		      'ignore
		    elseif cf.Directory then
		      ZipFolder z, cf, ""
		    else
		      ZipFile z, cf, ""
		    end if
		  next
		  
		  z.Close("global comment")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ZipFile(z as ZipMBS, f as FolderItem, path as string)
		  dim b as BinaryStream
		  dim info as ZipFileInfoMBS
		  
		  b=f.OpenAsBinaryFile(false)
		  
		  if b = nil then
		    Break // failed to open? Ignore?
		    return
		  end if
		  
		  info=new ZipFileInfoMBS
		  info.SetDate f.ModificationDate
		  info.ExternalFileAttributes=0
		  info.InternalFileAttributes=0
		  info.DosDate=0
		  var sjisPath as string = path+f.name
		  sjisPath = sjisPath.ConvertEncoding(Encodings.ShiftJIS)
		  z.CreateFile sjisPath, info, "", "", "", z.MethodDeflated, z.CompressionBestCompression
		  while not b.EOF
		    z.Write b.Read(1024*1024) //1MB
		  wend
		  z.CloseFile
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ZipFolder(z as ZipMBS, source as FolderItem, path as string)
		  dim f as FolderItem
		  dim i,c as integer
		  
		  path=path+source.Name+"/"
		  
		  c=source.Count
		  for i=1 to c
		    f=source.TrueItem(i)
		    if f=nil then
		      'ignore
		    elseif f.Directory then
		      ZipFolder z, f, path
		    else
		      ZipFile z, f, path
		    end if
		  next
		  
		End Sub
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
End Class
#tag EndClass
