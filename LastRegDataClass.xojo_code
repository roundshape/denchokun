#tag Class
Protected Class LastRegDataClass
	#tag Method, Flags = &h0
		Function IsSameAsNewData(BaseFolderPath as string, DealPeriod as string, DealType as string, DealDate as String, DealPrice as integer, DealName as string, DealPartner as string, DealRemark as string, DropF as FolderItem) As Boolean
		  if me.BaseFolderPath <> BaseFolderPath then
		    return false
		  end if
		  if me.DealPeriod <> DealPeriod then
		    return false
		  end if
		  if me.DealType <> DealType then
		    return false
		  end if
		  if me.DealPrice <> DealPrice then
		    return false
		  end if
		  if me.DealName <> DealName then
		    return false
		  end if
		  if me.DealPartner <> DealPartner then
		    return false
		  end if
		  if me.DealRemark <> DealRemark then
		    return false
		  end if
		  if me.DropF.NativePath <> DropF.NativePath then
		    return false
		  end if
		  return true
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		BaseFolderPath As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DealDate As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DealName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DealPartner As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DealPeriod As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DealPrice As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		DealRemark As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DealType As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DropF As FolderItem
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
			Name="BaseFolderPath"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DealPeriod"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DealDate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DealType"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DealPrice"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DealName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DealPartner"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DealRemark"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
