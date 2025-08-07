#tag Class
Protected Class TSAXmlClass
Inherits XmlDocument
	#tag Method, Flags = &h0
		Function CreateXml(cert as Chilkat.Cert) As integer
		  var root, node, oldnode as XmlNode
		  var elem, oldelem as XmlElement
		  
		  elem = me.CreateElement("DTSA")
		  root = me.AppendChild(elem)
		  
		  elem = me.CreateElement("File")
		  elem.SetAttribute( "name", me.name)
		  elem.SetAttribute( "size", me.size.ToString)
		  elem.SetAttribute( "hash", me.hash)
		  node = root.AppendChild(elem)
		  
		  elem = me.CreateElement("SigningTime")
		  elem.SetAttribute( "dt", me.signing_dt)
		  node = root.AppendChild(elem)
		  
		  elem = me.CreateElement("Tsa")
		  elem.SetAttribute( "url", me.tsaurl)
		  node = root.AppendChild(elem)
		  
		  var certXmlContent as string = cert.ExportCertXml
		  var certXml as new XmlDocument
		  certXml.LoadXml(certXmlContent)
		  var importNode as XmlNode = me.ImportNode(certXml.DocumentElement.FirstChild, true)
		  
		  elem = me.CreateElement("Cert")
		  node = root.AppendChild(elem)
		  
		  node.AppendChild(importNode)
		  
		  return 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveXml(saveF as FolderItem)
		  var fp as TextOutputStream
		  var content as string
		  if saveF <> nil then
		    if saveF.exists then
		      saveF.Delete
		    end if
		    fp = saveF.CreateTextFile()
		    content = me.Transform(me.kPrettyPrintXS)
		    
		    fp.write content
		    fp.close
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		hash As String
	#tag EndProperty

	#tag Property, Flags = &h0
		name As String
	#tag EndProperty

	#tag Property, Flags = &h0
		signing_dt As String
	#tag EndProperty

	#tag Property, Flags = &h0
		size As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		tsaUrl As String
	#tag EndProperty


	#tag Constant, Name = kPrettyPrintXS, Type = String, Dynamic = False, Default = \"<\?xml version\x3D\"1.0\" encoding\x3D\"UTF-8\"\?>\r<xsl:transform version\x3D\"1.0\" xmlns:xsl\x3D\"http://www.w3.org/1999/XSL/Transform\">\r\t<xsl:output method\x3D\"xml\" indent\x3D\"yes\" />\r\t<xsl:template match\x3D\"/\">\r\t\t<xsl:copy-of select\x3D\"/\" />\r\t</xsl:template>\r</xsl:transform>", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="LastError"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Type"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NamespaceUri"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Prefix"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LocalName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Value"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ChildCount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ToString"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AttributeCount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreserveWhitespace"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Encoding"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="name"
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
			Name="size"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="hash"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="signing_dt"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="tsaUrl"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
