#tag Class
Protected Class APIClient
	#tag Method, Flags = &h0
		Function BuildURL(endpoint As String) As String
		   // BaseURL + endpoint の組み立て
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ConnectToPeriod(dealPeriod as String)
		  // /api/v1/periods/{dealPeriod}/connect
		  // 指定期間のDBに接続（既存のConnectDBの代替）
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreatePeriod(periodName As String) As Dictionary
		   // POST /api/v1/periods
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DeleteDeal(dealNo As String, reason As String) As Dictionary
		  // DELETE /api/v1/deals/{dealNo}
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDeal(dealNo As String) As Dictionary
		  // GET /api/v1/deals/{dealNo}
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDealsByPeriod(period As String) As Dictionary
		  // GET /api/v1/deals?period={period}
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPeriods() As Dictionary
		  // GET /api/v1/periods
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HandleHTTPError(statusCode As Integer, responseBody As String) As Dictionary
		   // HTTPエラーの統一処理
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InsertDeal(dealData as Dictionary) As Dictionary
		  // POST /api/v1/deals
		  // 戻り値: {"success": true, "dealNo": "xxxxx", "message": ""}
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SearchDeals(period As String, searchKey As String, fromDate As String, toDate As String) As Dictionary
		  // GET /api/v1/deals/search?period={period}&q={searchKey}&from={fromDate}&to={toDate}
		  // 戻り値: {"success": true, "deals": [array], "count": number}
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SendRequest(method As String, endpoint As String, data As Dictionary = Nil)
		  // HTTP通信の共通処理
		  // URLConnection または HTTPSocketを使用
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TestConnection() As Boolean
		  // /api/v1/health
		  // サーバーの生存確認
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateDeal(dealNo As String, dealData As Dictionary)
		  // PUT /api/v1/deals/{dealNo}
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		BaseURL As String = "http://localhost:8080"
	#tag EndProperty

	#tag Property, Flags = &h0
		IsConnected As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		LastError As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TimeoutSeconds As Integer = 30
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
			Name="BaseURL"
			Visible=false
			Group="Behavior"
			InitialValue="http://localhost:8080"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TimeoutSeconds"
			Visible=false
			Group="Behavior"
			InitialValue="30"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastError"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsConnected"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
