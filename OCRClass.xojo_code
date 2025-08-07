#tag Class
Protected Class OCRClass
	#tag Method, Flags = &h0
		Function Analyze(ImageFile As FolderItem) As String
		  var TesseractOCRFolder as FolderItem = SpecialFolder.Applications.Child("Tesseract-OCR")
		  If Not TessEngineMBS.LibraryLoaded Then
		    return "need to load TessEngine Library"
		  End If
		  
		  Dim p As Picture = Picture.Open(ImageFile)
		  //Dim p As Picture = ImageFile.OpenAsPicture
		  if p = nil then
		    return "画像を開くことができません"
		  end if
		  
		  // pass iamge file
		  'ocr.SetImageFile(f)
		  
		  // pass picture object
		  me.TessOCR.SetImage(p)
		  
		  // optional set page segmentation mode
		  'OCR.PageSegMode = OCR.kPageSegModeAuto
		  
		  // you can query a copy of the image it got to inspect
		  'Dim debugPicture As Picture = OCR.InputImage
		  
		  // optional call Recognize here
		  'Call OCR.Recognize
		  
		  // get the text
		  //Dim OCRText As String = OCR.GetText
		  me.OCRText = me.TessOCR.GetText
		  
		  // now let's add some more details
		  OCRText = OCRText.ReplaceLineEndings(EndOfLine.Windows)
		  //OCRText = ReplaceLineEndings(OCRText, EndOfLine)
		  //OCRText = OCRText + EndOfLine + "MeanTextConf: "+Str(ocr.MeanTextConf)
		  //OCRText = OCRText + EndOfLine + "Version: "+Str(ocr.Version)
		  
		  me.pic = p
		  
		  return "OK"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DoOCR(imageFilePath as string, runWheel as DesktopProgressWheel, messageLabel as DesktopLabel) As String
		  var ocrNode as XmlNode = App.XmlPref.GetNode("OCR")
		  //var ocrSetupNode as XmlNode = ocrNode.FirstChild
		  //while ocrSetupNode <> nil
		  //if ocrSetupNode.Name = "Setup" then
		  //exit
		  //end if
		  //ocrSetupNode = ocrSetupNode.NextSibling
		  //wend
		  var ocrOutputNode as XmlNode = ocrNode.FirstChild
		  while ocrOutputNode <> nil
		    if ocrOutputNode.Name = "Output" then
		      exit
		    end if
		    ocrOutputNode = ocrOutputNode.NextSibling
		  wend
		  
		  if imageFilePath = "" then
		    return "画像ファイルを設定してください"
		  end if
		  
		  var filename as String = ocrOutputNode.GetAttribute("filename")
		  var ocrEncode as String = ocrOutputNode.GetAttribute("encoding")
		  var path as string = SpecialFolder.Applications.NativePath+"RoundShape\Denchokun"+App.Version+"\temp\"+filename
		  var outF as new FolderItem(path, FolderItem.PathModes.Native)
		  if outF = nil then
		    return "OCR output file access error"
		  end if
		  if outF.IsFolder then
		    return "OCR output file access error "
		  end if
		  if outF.Exists then
		    outF.Delete
		  end if
		  
		  var imageFile as new FolderItem(imageFilePath, FolderItem.PathModes.Native)
		  if imageFile = nil then
		    return imageFilePath+" access error"
		  end if
		  
		  runWheel.Visible = true
		  runWheel.Refresh(True)
		  messageLabel.Text = "文字を認識中..."
		  messageLabel.Refresh(true)
		  App.DoEvents(100)
		  var ret as string = me.Initialize()
		  if ret <> "OK" then
		    runWheel.Visible = false
		    messageLabel.Text = ""
		    messageLabel.Refresh(true)
		    return ret
		  end if
		  ret = me.Analyze(imageFile)
		  if ret <> "OK" then
		    runWheel.Visible = false
		    messageLabel.Text = ""
		    messageLabel.Refresh(true)
		    return ret
		  end if
		  
		  
		  Try
		    Var t As TextOutputStream = TextOutputStream.Create(outF)
		    if ocrEncode = "ShiftJIS" then
		      t.Encoding = Encodings.ShiftJIS
		    else
		      t.Encoding = Encodings.UTF8
		    end if
		    t.WriteLine(me.OCRText)
		    t.Close
		  catch 
		  Catch e As IOException
		    // handle error
		    runWheel.Visible = false
		    messageLabel.Text = ""
		    messageLabel.Refresh(true)
		    return e.Message
		  End Try
		  runWheel.Visible = false
		  messageLabel.Text = ""
		  messageLabel.Refresh(true)
		  
		  outF.Open(true)
		  
		  
		  Return "OK"
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Initialize() As String
		  var ocrNode as XmlNode = App.XmlPref.GetNode("OCR")
		  var ocrSetupNode as XmlNode = ocrNode.FirstChild
		  while ocrSetupNode <> nil
		    if ocrSetupNode.Name = "Setup" then
		      exit
		    end if
		    ocrSetupNode = ocrSetupNode.NextSibling
		  wend
		  var ocrOutputNode as XmlNode = ocrNode.FirstChild
		  while ocrOutputNode <> nil
		    if ocrOutputNode.Name = "Output" then
		      exit
		    end if
		    ocrOutputNode = ocrOutputNode.NextSibling
		  wend
		  If Not TessEngineMBS.LibraryLoaded Then
		    // load on first try
		    
		    // get Windows DLL somewhere
		    // e.g. https://github.com/UB-Mannheim/tesseract/wiki
		    
		    // change directory so DLLs find their dependencies
		    var workingDirectory as string = ocrSetupNode.GetAttribute("workingDirectory")
		    Call TessEngineMBS.SetCurrentWorkingDirectory(workingDirectory)
		    //Call TessEngineMBS.SetCurrentWorkingDirectory("C:\Program Files\Tesseract-OCR")
		    
		    // first load image processing library
		    var processLibrary as string = ocrSetupNode.GetAttribute("processLib")
		    Call TessEngineMBS.LoadLibrary(processLibrary) 
		    
		    // and load the main DLL
		    var mainLibrary as String = ocrSetupNode.GetAttribute("mainLib")
		    If TessEngineMBS.LoadLibrary(mainLibrary) Then
		      'MsgBox "OK"
		    Else
		      //MsgBox TessEngineMBS.LibraryLoadErrorMessage
		      Return TessEngineMBS.LibraryLoadErrorMessage
		    End If
		    
		  End If
		  
		  // search tessdata folder
		  
		  Dim tessdataFolder As FolderItem
		  dim tessdataPath as string
		  
		  tessdataPath = ocrSetupNode.GetAttribute("tessdata")
		  //tessdataPath = "C:\Program Files\Tesseract-OCR\tessdata"
		  
		  
		  me.TessOCR = New TessEngineMBS
		  
		  var languages as string = ocrSetupNode.GetAttribute("languages")
		  If Not TessOCR.Initialize(tessdataPath, languages) Then
		    //MsgBox "failed to initialize"
		    return "failed to initialize"
		  End If
		  
		  //Dim AvailableLanguages() As String = me.GetAvailableLanguages
		  //Dim LoadedLanguages() As String = me.GetLoadedLanguages
		  
		  return "OK"
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		OCRText As String
	#tag EndProperty

	#tag Property, Flags = &h0
		pic As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		TessOCR As TessEngineMBS
	#tag EndProperty


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
		#tag ViewProperty
			Name="OCRText"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="pic"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
