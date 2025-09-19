#tag Class
Protected Class XmlPrefClass
Inherits XmlDocument
	#tag Method, Flags = &h0
		Function GetAPIServerURL() As String
		  var apiNode as XmlNode = me.GetNode("APIServer")
		  if apiNode = nil then
		    // デフォルト値
		    return "http://localhost:8080"
		  end if
		  return apiNode.GetAttribute("url")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetMBSLicense() As Dictionary
		  var mbsNode as XmlNode = me.GetNode("MBSLicense")
		  if mbsNode = nil then
		    return nil
		  end if
		  
		  var name as string = mbsNode.GetAttribute("Name")
		  var product as string = mbsNode.GetAttribute("Product")
		  var yearMonth as string = mbsNode.GetAttribute("YearMonth")
		  var serialKey as string = mbsNode.GetAttribute("SerialKey")
		  
		  var result as new Dictionary
		  result.Value("Name") = name
		  result.Value("Product") = product
		  result.Value("YearMonth") = yearMonth
		  result.Value("SerialKey") = serialKey
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetNode(nodename as string) As XmlNode
		  var child as XmlNode
		  var childname as string
		  child = me.FirstChild // root
		  child = child.FirstChild
		  while child <> nil
		    childname = child.Name
		    if childname = nodename then
		      return child
		    end if
		    child = child.NextSibling
		  wend
		  return nil
		  Exception err as XmlException
		    return nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InitializeByDefaultSetting() As integer
		  var root, node as XmlNode
		  var elem as XmlElement
		  
		  root = me.FirstChild
		  
		  // Default Setting
		  elem = me.CreateElement("MainWindow")
		  elem.SetAttribute( "Left", DEFAULT_MAIN_LEFT.ToString )
		  elem.SetAttribute( "Top", DEFAULT_MAIN_TOP.ToString )
		  elem.SetAttribute( "Width", DEFAULT_MAIN_WIDTH.ToString )
		  elem.SetAttribute( "Height", DEFAULT_MAIN_HEIGHT.ToString )
		  node = root.AppendChild(elem)
		  
		  elem = me.CreateElement("DealPeriodWindow")
		  elem.SetAttribute( "Left", DEFAULT_DEALPERIOD_LEFT.ToString )
		  elem.SetAttribute( "Top", DEFAULT_DEALPERIOD_TOP.ToString )
		  elem.SetAttribute( "Width", DEFAULT_DEALPERIOD_WIDTH.ToString )
		  elem.SetAttribute( "Height", DEFAULT_DEALPERIOD_HEIGHT.ToString )
		  elem.SetAttribute( "SearchOrder", "asc")
		  elem.SetAttribute( "Startup", "off")
		  node = root.AppendChild(elem)
		  
		  elem = me.CreateElement("AllPeriodsWindow")
		  elem.SetAttribute( "Left", DEFAULT_ALLPERIODS_LEFT.ToString )
		  elem.SetAttribute( "Top", DEFAULT_ALLPERIODS_TOP.ToString )
		  elem.SetAttribute( "Width", DEFAULT_ALLPERIODS_WIDTH.ToString )
		  elem.SetAttribute( "Height", DEFAULT_ALLPERIODS_HEIGHT.ToString )
		  elem.SetAttribute( "SearchOrder", "asc")
		  node = root.AppendChild(elem)
		  
		  elem = me.CreateElement("APIServer")
		  elem.SetAttribute( "url", "http://localhost:8080" )
		  elem.SetAttribute( "CurrentPeriod", "" )
		  node = root.AppendChild( elem )
		  
		  elem = me.CreateElement("InputLimit")
		  elem.SetAttribute( "pricebytes", "13" )
		  elem.SetAttribute( "namebytes", "80" )
		  elem.SetAttribute( "partnerbytes", "80" )
		  elem.SetAttribute( "remarkbytes", "80" )
		  node = root.AppendChild( elem )
		  
		  elem = me.CreateElement("DocType")
		  node = root.AppendChild(elem)
		  
		  Var xt As XmlTextNode
		  Var typeNode As XmlNode
		  xt = App.XmlPref.CreateTextNode("")
		  xt.Value = "領収書"
		  typeNode = node.AppendChild(App.XmlPref.CreateElement("Type"))
		  typeNode.AppendChild(xt)
		  
		  xt = App.XmlPref.CreateTextNode("")
		  xt.Value = "納品書"
		  typeNode = node.AppendChild(App.XmlPref.CreateElement("Type"))
		  typeNode.AppendChild(xt)
		  
		  xt = App.XmlPref.CreateTextNode("")
		  xt.Value = "請求書"
		  typeNode = node.AppendChild(App.XmlPref.CreateElement("Type"))
		  typeNode.AppendChild(xt)
		  
		  xt = App.XmlPref.CreateTextNode("")
		  xt.Value = "その他"
		  typeNode = node.AppendChild(App.XmlPref.CreateElement("Type"))
		  typeNode.AppendChild(xt)
		  
		  return 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InitializeOCR(afterNode as XmlNode) As integer
		  // OCRノードが既に存在するかチェック
		  var existingOCR as XmlNode = me.GetNode("OCR")
		  if existingOCR <> nil then
		    return 0  // 既に存在する場合は何もしない
		  end if
		  
		  // OCRノード作成
		  var ocrNode as XmlNode = me.CreateElement("OCR")
		  
		  // Setupノード作成
		  var ocrSetupNode as XmlNode = me.CreateElement("Setup")
		  ocrSetupNode.SetAttribute("workingDirectory","C:\Program Files\Tesseract-OCR")
		  ocrSetupNode.SetAttribute("processLib","liblept-5.dll")
		  ocrSetupNode.SetAttribute("mainLib","libtesseract-5.dll")
		  ocrSetupNode.SetAttribute("tessdata","C:\Program Files\Tesseract-OCR\tessdata")
		  ocrSetupNode.SetAttribute("languages","eng+jpn")
		  var node as XmlNode = ocrNode.AppendChild(ocrSetupNode)
		  
		  // Outputノード作成
		  var ocrOutputNode as XmlNode = me.CreateElement("Output")
		  ocrOutputNode.SetAttribute("filename", "OCRout.txt")
		  ocrOutputNode.SetAttribute("encoding", "UTF8")
		  node = ocrNode.AppendChild(ocrOutputNode)
		  
		  // afterNodeの次に挿入
		  var nextNode as XmlNode = afterNode.NextSibling
		  if nextNode = nil then
		    // afterNodeが最後の要素の場合は末尾に追加
		    node = afterNode.Parent.AppendChild(ocrNode)
		  else
		    // afterNodeの次の位置に挿入
		    node = afterNode.Parent.Insert(ocrNode, nextNode)
		  end if
		  
		  return 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LoadPreference() As Integer
		  var pref as folderItem
		  var prefPath as string
		  prefPath = SpecialFolder.preferences.ShellPath+"\Denchokun.pref" 
		  pref = new FolderItem(prefPath, FolderItem.PathModes.Native)
		  if pref = nil then
		    return -1
		  end if
		  
		  var ret as integer = 0
		  var fp as TextOutputStream
		  var root as XmlNode
		  var elem as XmlElement
		  if not pref.exists then
		    App.firstBoot = true
		    elem = me.CreateElement("Denchokun")
		    elem.SetAttribute( "version", App.Version )
		    root = me.AppendChild(elem)
		    ret = InitializeByDefaultSetting()
		    if ret < 0 then
		      return ret
		    end if
		    fp = pref.CreateTextFile
		    if fp = nil then
		      return -1
		    end if
		    fp.Write me.ToString
		    fp.close
		  else //pref exists. However could be old version
		    me.LoadXml pref
		    root = me.FirstChild
		    if root.GetAttribute( "version") <> App.version then
		      root.SetAttribute( "version", App.version)
		      
		      // From here, set default values of updated versions above 1-0-1
		      //OCR
		      var inputLimitNode as XmlNode = me.GetNode("InputLimit")
		      ret = me.InitializeOCR(inputLimitNode)
		      if ret < 0 then
		        return ret
		      end if
		      
		      me.SavePreference()
		    end if
		  end if
		  
		  
		  return 0
		  
		  Exception err as XmlException
		    return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SavePreference()
		  var pref as folderItem
		  var fp as TextOutputStream
		  var content as string
		  pref = new FolderItem(SpecialFolder.preferences.ShellPath+"\Denchokun.pref", FolderItem.PathModes.Native)
		  if pref <> nil then
		    if pref.exists then
		      pref.Delete
		    end if
		    fp = pref.CreateTextFile()
		    content = me.Transform(me.kPrettyPrintXS)
		    
		    fp.write content
		    fp.close
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetAPIServerURL(url as String)
		  var root as XmlNode = me.FirstChild
		  var apiNode as XmlNode = me.GetNode("APIServer")
		  
		  if apiNode = nil then
		    var elem as XmlElement = me.CreateElement("APIServer")
		    apiNode = root.AppendChild(elem)
		  end if
		  
		  apiNode.SetAttribute("url", url)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetMBSLicense(name as string, product as string, yearMonth as string, serialKey as string)
		  var root as XmlNode = me.FirstChild
		  var mbsNode as XmlNode = me.GetNode("MBSLicense")
		  
		  if mbsNode = nil then
		    // MBSLicenseノードがない場合は新規作成
		    var elem as XmlElement = me.CreateElement("MBSLicense")
		    mbsNode = root.AppendChild(elem)
		  end if
		  
		  mbsNode.SetAttribute("Name", name)
		  mbsNode.SetAttribute("Product", product)
		  mbsNode.SetAttribute("YearMonth", yearMonth)
		  mbsNode.SetAttribute("SerialKey", serialKey)
		End Sub
	#tag EndMethod


	#tag Constant, Name = DEFAULT_ALLPERIODS_HEIGHT, Type = Double, Dynamic = False, Default = \"400", Scope = Public
	#tag EndConstant

	#tag Constant, Name = DEFAULT_ALLPERIODS_LEFT, Type = Double, Dynamic = False, Default = \"100", Scope = Public
	#tag EndConstant

	#tag Constant, Name = DEFAULT_ALLPERIODS_TOP, Type = Double, Dynamic = False, Default = \"100", Scope = Public
	#tag EndConstant

	#tag Constant, Name = DEFAULT_ALLPERIODS_WIDTH, Type = Double, Dynamic = False, Default = \"750", Scope = Public
	#tag EndConstant

	#tag Constant, Name = DEFAULT_DEALPERIOD_HEIGHT, Type = Double, Dynamic = False, Default = \"400", Scope = Public
	#tag EndConstant

	#tag Constant, Name = DEFAULT_DEALPERIOD_LEFT, Type = Double, Dynamic = False, Default = \"100", Scope = Public
	#tag EndConstant

	#tag Constant, Name = DEFAULT_DEALPERIOD_TOP, Type = Double, Dynamic = False, Default = \"100", Scope = Public
	#tag EndConstant

	#tag Constant, Name = DEFAULT_DEALPERIOD_WIDTH, Type = Double, Dynamic = False, Default = \"750", Scope = Public
	#tag EndConstant

	#tag Constant, Name = DEFAULT_MAIN_HEIGHT, Type = Double, Dynamic = False, Default = \"436", Scope = Public
	#tag EndConstant

	#tag Constant, Name = DEFAULT_MAIN_LEFT, Type = Double, Dynamic = False, Default = \"100", Scope = Public
	#tag EndConstant

	#tag Constant, Name = DEFAULT_MAIN_TOP, Type = Double, Dynamic = False, Default = \"100", Scope = Public
	#tag EndConstant

	#tag Constant, Name = DEFAULT_MAIN_WIDTH, Type = Double, Dynamic = False, Default = \"482", Scope = Public
	#tag EndConstant

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
	#tag EndViewBehavior
End Class
#tag EndClass
