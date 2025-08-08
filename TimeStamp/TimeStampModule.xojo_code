#tag Module
Protected Module TimeStampModule
	#tag Method, Flags = &h0
		Function AttachFiletoPDF(basePDF as FolderItem, attachFs() as FolderItem, outPDF as FolderItem) As boolean
		  // Load the signing certificate. (Use your own certificate.)
		  dim pdf as new TSADynaPDFMBS
		  pdf.SetLicenseKey "Pro" // For this example you can use a Pro or Enterprise License
		  dim folder as FolderItem = TimeStampModule.FindFile("CMap")
		  
		  if folder<> nil then
		    call pdf.SetCMapDir(folder, pdf.klcmRecursive)
		  end if
		  
		  
		  
		  // This is older example
		  // for new projects, please check the code in the "edit text" project.
		  // the new DynaPDFEditTextMBS class works on higher level.
		  
		  dim outfile as FolderItem = outPDF
		  if outfile.Exists then
		    outfile.Remove
		  end if
		  
		  call pdf.CreateNewPDF outfile 
		  
		  dim filepath as FolderItem = basePDF
		  
		  // We import the contents only without conversion of pages to templates
		  call pdf.SetImportFlags(BitwiseOr(pdf.kifImportAll, pdf.kifImportAsPage))
		  if pdf.OpenImportFile(filePath, pdf.kptOpen, "")<>0 then
		    MsgBox "Input file """+ filePath.name+""" not found!"
		    return false
		  end if
		  
		  call pdf.ImportPDFFile(1, 1.0, 1.0)
		  call pdf.CloseImportFile
		  
		  dim result as Boolean
		  
		  //dim pageCount as integer = pdf.GetPageCount
		  // DynaPDF error messages are already handled in the error callback function!
		  call pdf.EditPage(1)
		  
		  //dim w as Double = pdf.GetPageWidth()
		  //dim h as Double = pdf.GetPageHeight()
		  
		  //call pdf.SetPageCoords pdf.kpcTopDown
		  
		  //call pdf.SetFont "MS Gothic", pdf.kfsNone, 11.0, true, pdf.kcpUnicode
		  
		  var success as Integer
		  for each aF as FolderItem in attachFs
		    success = pdf.AttachFile(aF, aF.Name, false)
		    if success < 0 then
		      call pdf.EndPage
		      call pdf.CloseFile
		      MessageBox "failed to attach a file("+aF.Name+")"
		      return false
		    end if
		  next
		  
		  
		  call pdf.EndPage
		  
		  call pdf.CloseFile
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreateCert(pfxF as FolderItem, pfxPasswd as string) As Chilkat.Cert
		  // Load the signing certificate. (Use your own certificate.)
		  Dim cert As New Chilkat.Cert
		  var pfxPath as string = pfxF.NativePath
		  var success as boolean = cert.LoadPfxFile(pfxPath, pfxPasswd)
		  If (success = False) Then
		    System.DebugLog(cert.LastErrorText)
		    Return nil
		  End If
		  return cert
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreatePdf(basePDF as FolderItem, cert as Chilkat.Cert, hashF as FolderItem, hash as String, tsaURL as string, outPDF as FolderItem) As boolean
		  // Load the signing certificate. (Use your own certificate.)
		  dim pdf as new TSADynaPDFMBS
		  pdf.SetLicenseKey "Pro" // For this example you can use a Pro or Enterprise License
		  dim folder as FolderItem = TimeStampModule.FindFile("CMap")
		  
		  if folder<> nil then
		    call pdf.SetCMapDir(folder, pdf.klcmRecursive)
		  end if
		  
		  
		  
		  // This is older example
		  // for new projects, please check the code in the "edit text" project.
		  // the new DynaPDFEditTextMBS class works on higher level.
		  
		  dim outfile as FolderItem = outPDF
		  if outfile.Exists then
		    outfile.Remove
		  end if
		  
		  call pdf.CreateNewPDF outfile
		  
		  
		  dim filepath as FolderItem = basePDF
		  
		  // We import the contents only without conversion of pages to templates
		  call pdf.SetImportFlags(BitwiseOr(pdf.kifImportAll, pdf.kifImportAsPage))
		  if pdf.OpenImportFile(filePath, pdf.kptOpen, "")<>0 then
		    MsgBox "Input file """+ filePath.name+""" not found!"
		    return false
		  end if
		  
		  call pdf.ImportPDFFile(1, 1.0, 1.0)
		  call pdf.CloseImportFile
		  
		  dim result as Boolean
		  
		  //dim pageCount as integer = pdf.GetPageCount
		  
		  dim w as Double = pdf.GetPageWidth()
		  dim h as Double = pdf.GetPageHeight()
		  
		  call pdf.SetPageCoords pdf.kpcTopDown
		  call pdf.EditPage(1)
		  //call pdf.Append
		  
		  call pdf.SetFont "MS Gothic", pdf.kfsNone, 11.0, true, pdf.kcpUnicode
		  
		  var success as Boolean
		  
		  //Call pdf.SetColorSpace(pdf.kcsDeviceRGB)
		  //Call pdf.SetColorSpace(pdf.kictRGB)
		  //Call pdf.FillColor(0) // black
		  call pdf.SetFillColor pdf.RGB(1,1,1)
		  
		  //call pdf.WriteText 80.0, 200.0, "ファイル名："+hashF.Name
		  success = pdf.WriteFTextEx( 125.0, 350.0, 400.0, 40.0, pdf.ktaLeft, hashF.Name )
		  success = pdf.WriteFTextEx( 125.0, 380.0, 400.0, 40.0, pdf.ktaLeft, hashF.Length.ToString+" bytes" )
		  //call pdf.WriteText 83.0, 420.0, "ハッシュ："+App.GetSHA256(hashF)
		  success = pdf.WriteFTextEx( 125.0, 410.0, 400.0, 40.0, pdf.ktaLeft, hash )
		  
		  ///call pdf.WriteText 80.0, 320.0, "証明書発行者："+cert.IssuerO
		  success = pdf.WriteFTextEx( 125.0, 600.0, 400.0, 40.0, pdf.ktaLeft, cert.IssuerO )
		  //call pdf.WriteText 80.0, 350.0, "TSA URL："+tsaURL
		  success = pdf.WriteFTextEx( 125.0, 630.0, 400.0, 40.0, pdf.ktaLeft, tsaURL )
		  
		  call pdf.EndPage
		  
		  call pdf.CloseFile
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreateSignedPdfWithTimestamp(cert as Chilkat.Cert, inPDF as FolderItem, tsaURL as string, tsaUser as string, tsaPassword as string, outPDF as FolderItem) As Boolean
		  // This example requires the Chilkat API to have been previously unlocked.
		  // See Global Unlock Sample for sample code.
		  
		  Dim pdf As New Chilkat.Pdf
		  
		  // Load a PDF to be signed.
		  // The "hello.pdf" is available at https://chilkatsoft.com/hello.pdf
		  var pdfPath as string = inPDF.NativePath
		  Dim success As Boolean
		  success = pdf.LoadFile(pdfPath)
		  If (success = False) Then
		    System.DebugLog(pdf.LastErrorText)
		    Return false
		  End If
		  
		  // Options for signing are specified in JSON.
		  Dim json As New Chilkat.JsonObject
		  
		  // In most cases, the signingCertificateV2 and signingTime attributes are required.
		  success = json.UpdateInt("signingCertificateV2",1)
		  success = json.UpdateInt("signingTime",1)
		  
		  // Tell Chilkat to create an LTV-enabled (long term validation) signature.
		  // See PDF Long-Term Validation (LTV) Signature Example for more detailed comments about "ltvOcsp".
		  //success = json.UpdateBool("ltvOcsp",True)
		  success = json.UpdateBool("ltvOcsp",false)
		  
		  // Tell Chilkat to request a timestamp from a TSA server and include the timestamp token (1.2.840.113549.1.9.16.2.14)
		  // in the CMS signature's authentication attributes
		  success = json.UpdateBool("timestampToken.enabled",True)
		  
		  // In this example, we'll use a free TSA server (timestamp.digicert.com), but you may want to use your own timestamp authority server.
		  
		  //success = json.UpdateString("timestampToken.tsaUrl","ntp://ats1.e-timing.ne.jp:123")
		  //success = json.UpdateString("timestampToken.tsaUrl","http://ts.ssl.com")
		  success = json.UpdateString("timestampToken.tsaUrl", tsaURL)
		  
		  // If the timestamp server requires a username/password, do the following.  Otherwise omit the following few lines of code.
		  //success = json.UpdateString("timestampToken.tsaUsername","the_tsa_username")
		  //success = json.UpdateString("timestampToken.tsaPassword","the_tsa_password")
		  if tsaUser <> "" then
		    success = json.UpdateString("timestampToken.tsaUsername",tsaUser)
		    success = json.UpdateString("timestampToken.tsaPassword",tsaPassword)
		  end if
		  
		  // When requesting the timestamp token, ask the server to include its certificate in the timestamp token response.
		  // This allows for the timestamp server's certificate to be included in the LTV validation (i.e. if the timestamp server
		  // has an OCSP URL, then Chilkat will also do the OCSP request for the timestamp server's certificate.)
		  success = json.UpdateBool("timestampToken.requestTsaCert",True)
		  
		  //success = json.UpdateBool("invisibleSignature",True)
		  
		  // Define the appearance of the signature.
		  success = json.UpdateInt("page",1)
		  success = json.UpdateString("appearance.y","179")
		  success = json.UpdateString("appearance.x","125.0")
		  success = json.UpdateString("appearance.fontScale","11.0")
		  //success = json.UpdateString("appearance.text[0]","Digitally signed by: RoundShape K.K.")
		  //success = json.UpdateString("appearance.text[0]","cert_country")
		  //success = json.UpdateString("appearance.text[1]","cert_cn ")
		  //success = json.UpdateString("appearance.text[2]","cert_organization")
		  success = json.UpdateString("appearance.text[15]","current_dt")
		  //success = json.UpdateString("appearance.text[18]","current_timestamp_gmt")
		  //success = json.UpdateString("appearance.text[19]","current_timestamp_local")
		  
		  //success = json.WriteFile(SpecialFolder.Desktop.Child("jsonOut.txt").NativePath)
		  
		  
		  // Tell the pdf object to use the certificate for signing.
		  success = pdf.SetSigningCert(cert)
		  If (success = False) Then
		    System.DebugLog(pdf.LastErrorText)
		    Return false
		  End If
		  
		  pdfPath = outPDF.NativePath
		  success = pdf.SignPdf(json,pdfPath)
		  If (success = False) Then
		    System.DebugLog(pdf.LastErrorText)
		    MessageBox "SignPdf error"
		    Return false
		  End If
		  
		  //var siginfo as New Chilkat.JsonObject
		  //success = pdf.VerifySignature(0, sigInfo)
		  
		  System.DebugLog("The PDF has been successfully cryptographically signed with TSA timestamp and long-term validation.")
		  
		  // If you open the Signature Panel in Adobe Acrobat, it will indicate that the signature is LTV enabled
		  // and contains an embedded timestamp:
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DoTimeStamp(hashF as FolderItem) As FolderItem
		  var pfxPath as string = App.XmlPref.GetNodeAttribute("TimeStamp", "pfxpath")
		  var pfxF as FolderItem = new FolderItem(pfxPath,FolderItem.PathModes.Native)
		  var cryptedPasswd as string = App.XmlPref.GetNodeAttribute("TimeStamp","pfxpassword")
		  var decryptedPasswd as string = EncryptionModule.Decrypt("773ykkmti",cryptedPasswd)
		  var pfxpasswd as string = decryptedPasswd
		  var basePDF as FolderItem = SpecialFolder.Resources.Child("TSForm.pdf")
		  var newPDF as FolderItem = SpecialFolder.Temporary.Child("out.pdf")
		  var attachedPDF as FolderItem = SpecialFolder.Temporary.Child("attached.pdf")
		  var tsaPDF as FolderItem = SpecialFolder.Temporary.Child("TSA.pdf") // Final OutPut
		  var tsaURL as string = "http://timestamp.digicert.com"
		  
		  
		  
		  
		  var cert as Chilkat.Cert = CreateCert(pfxF, pfxpasswd)
		  
		  var xml as new TSAXmlClass
		  xml.name = hashF.name
		  xml.size = hashF.Length
		  xml.hash = GetSHA256(hashF)
		  xml.tsaUrl = tsaURL
		  xml.signing_dt = DateTime.Now.ToString
		  var ret as integer = xml.CreateXml(cert)
		  var xmlF as FolderItem = SpecialFolder.Temporary.Child("tsaInfo.xml")
		  xml.SaveXml(xmlF)
		  
		  var success as Boolean = CreatePdf(basePDF, cert, hashF, xml.hash, tsaURL, newPDF)
		  
		  var attachFs(-1) as FolderItem
		  attachFs.Add hashF
		  attachFs.Add xmlF
		  success = AttachFiletoPDF(newPDF, attachFs, attachedPDF)
		  if not success then
		    return nil
		  end if
		  
		  success = CreateSignedPdfWithTimestamp(cert, attachedPDF, tsaURL, "","", tsaPDF)
		  if not success then
		    return nil
		  end if
		  
		  return tsaPDF
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FindFile(name as string) As FolderItem
		  // Look for file in parent folders from executable on
		  
		  dim parent as FolderItem = app.ExecutableFile.Parent
		  
		  while parent<>Nil
		    
		    dim file as FolderItem = parent.Child(name)
		    
		    if file<>Nil and file.Exists then
		      Return file
		    end if
		    
		    parent = parent.Parent
		  wend
		  
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
