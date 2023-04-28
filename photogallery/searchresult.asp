 <%@ Language=VBScript %>


<% Dim words,i, searchterm,  TotalRecords, SelectCountry, SelectTheme, SelectRegion
   Dim QuickSearch, numberofpages, RecordJump, objRS, imageID, csSyntheticTitle

Set objRS = Server.CreateObject("ADODB.RecordSet")
%>
<HTML>

<HEAD>

<%


if len(Request("SelectTheme"))>1 then
SelectTheme = Request("SelectTheme")
elseif len(Request.form("SelectTheme"))>1 then
 SelectTheme = Request.Form("SelectTheme")
else
 SelectTheme = ""
end if

if len(Request("SelectCountry"))>1 then
SelectCountry = Request("SelectCountry")
elseif len(Request.form("SelectCountry"))>1 then
 SelectCountry = Request.Form("SelectCountry")
else
 SelectCountry = ""
end if


if len(Request("SelectRegion"))>1 then
SelectRegion = Request("SelectRegion")
elseif len(Request.Form("SelectRegion"))>1 then
SelectRegion = Request.Form("SelectRegion")
else
SelectRegion = ""
end if


if len(Request("QuickSearch"))>1 then
QuickSearch = replace(Request("QuickSearch"),"_"," ")
elseif len(Request.Form("QuickSearch"))>1 then
QuickSearch =Request.Form("QuickSearch")
end if


if len(Request("imageid"))>1 then
imageid = replace(Request("imageid"),"_"," ")
elseif len(Request.Form("imageid"))>1 then
imageid =Request.Form("imageid")
end if


QuickSearch = Replace(quickSearch,"'","''")

RecordJump = Request("RecordJump")

%>

<!--#include file="../includes/substyle.inc"-->
<!--#include file="../includes/dataconnection.asp"-->

<title>United Nations - OCHA IRIN | Photo Gallery | Search result</title>

<% csSyntheticTitle="United Nations - OCHA IRIN | Photo Gallery | Search result"%>

<style>
.sectionBlue
{font: bold 8pt Verdana, Arial, Helvetica, sans-serif; color:#ffffff; text-align:center; background:#4d4dc9; border-bottom:1px solid #d7d7fa;}
.frameBlue
{border-top:1px solid #4d4dc9; border-bottom:1px solid #4d4dc9; border-left:1px solid #4d4dc9; border-right:1px solid #4d4dc9; background:#d7d7fa;}

.dropmenu
{background-color:#f0f0f0; height:17px; width:180; font-size: 10px; font-family: verdana, arial, sans-serif; color: #003399;}
.search
{width:180; height:17px; font-size: 10px; font-family: verdana, arial, sans-serif; color: #003399;}

.imginfo
{font: bold 7pt Verdana, Arial, Helvetica, sans-serif; color:#000000; background:#cccccc;}
.smalltxt
{font-family:Arial, Helvetica, sans-serif; font-size:8pt}

</style>

</HEAD>

<body leftmargin="4" topmargin="4" marginwidth="4" marginheight="4">
<%

QUOT = Chr(34)

if Len(SelectCountry) > 1 Then

if len(selectTheme)>1 then 

'if(objRS("fimagetype")="Photo")AND(objRS("fCredit")="%IRIN%") then
objRS.Open "SELECT * FROM tbImageBank Where fCountry = '"&_
             SelectCountry &"'  AND "&_
             " fSector like'%" & SelectTheme & "%' AND fimagetype like 'Photo' AND fStatus = 'Public' AND (fCredit like '%IRIN%' or fCredit like '%Plusnews%'  or fCredit like '%OCHA%' ) and fcredit <> 'IRIN/Anthony Mitchell'  ORDER BY fImageDate DESC", objConn, 3, ,1

        TotalRecords = objRS.RecordCount



elseIf Len(QuickSearch) > 1 Then

SQLSearch = QuickSearch

if instr(SQLSearch,",")<> 0 then 
				   words = split(SQLSearch,",")
				   For i = 0 to ubound(words)
				   
					  searchterm = searchterm & " fDescription LIKE '%" & words(i) & "%' AND "
					  
				   Next
				   SQLSearch = Left(searchterm,(len(searchterm)-4))
				else 
			
					words = split(SQLSearch," ")
					   For i = 0 to ubound(words)
					   
						  searchterm = searchterm & " fDescription LIKE '%" & words(i) & "%' AND "
						  
					   Next
						SQLSearch = Left(searchterm,(len(searchterm)-4))
				end if 





objRS.Open "SELECT * FROM tbImageBank WHERE " & SQLSearch & " AND fCountry = '"&_
             SelectCountry &"' AND fimagetype like 'Photo' AND fStatus = 'Public' AND (fCredit like '%IRIN%' or fCredit like '%Plusnews%'  or fCredit like '%OCHA%' ) and fcredit <> 'IRIN/Anthony Mitchell' ", objConn, 3, ,1

TotalRecords = objRS.RecordCount


Else objRS.Open "SELECT * FROM tbImageBank Where fCountry = '"&_
             SelectCountry &"' AND fimagetype like 'Photo' AND fStatus = 'Public' AND (fCredit like '%IRIN%' or fCredit like '%Plusnews%'  or fCredit like '%OCHA%' ) and fcredit <> 'IRIN/Anthony Mitchell'   ORDER BY fImageDate DESC", objConn, 3, ,1

        TotalRecords = objRS.RecordCount
End if

elseif len(SelectRegion)>1 then

if SelectRegion = "Africa" then 











if len(selectTheme)>1 then 


objRS.Open "SELECT * FROM tbImageBank Where fRegion <> 'Central_Asia' "&_
             " AND "&_
             " fSector like '%" & SelectTheme & "%' AND fimagetype like 'Photo' AND fStatus = 'Public' AND (fCredit like '%IRIN%' or fCredit like '%Plusnews%'  or fCredit like '%OCHA%' ) and fcredit <> 'IRIN/Anthony Mitchell'  ORDER BY fImageDate DESC", objConn, 3, ,1

        TotalRecords = objRS.RecordCount



elseIf Len(QuickSearch) > 1 Then

SQLSearch = QuickSearch


if instr(SQLSearch,",")<> 0 then 
				   words = split(SQLSearch,",")
				   For i = 0 to ubound(words)
				   
					  searchterm = searchterm & " fDescription LIKE '%" & words(i) & "%' AND "
					  
				   Next
				   SQLSearch = Left(searchterm,(len(searchterm)-4))
				else 
			
					words = split(SQLSearch," ")
					   For i = 0 to ubound(words)
					   
						  searchterm = searchterm & " fDescription LIKE '%" & words(i) & "%' AND "
						  
					   Next
						SQLSearch = Left(searchterm,(len(searchterm)-4))
				end if 



objRS.Open "SELECT * FROM tbImageBank WHERE " & SQLSearch & " AND( fRegion <> ' "&_
             "Central_asia' AND fimagetype like 'Photo' AND fStatus = 'Public' AND (fCredit like '%IRIN%' or fCredit like '%Plusnews%'  or fCredit like '%OCHA%' ) and fcredit <> 'IRIN/Anthony Mitchell'  OR fDescription LIKE '%" & LEFT(SelectRegion,5)&"%') AND fimagetype like 'Photo' AND fStatus = 'Public' AND (fCredit like '%IRIN%' or fCredit like '%Plusnews%'  or fCredit like '%OCHA%' ) and fcredit <> 'IRIN/Anthony Mitchell' ", objConn, 3, ,1

TotalRecords = objRS.RecordCount


Else objRS.Open "SELECT  * FROM tbImageBank Where fRegion <> '"&_
             "Central_Asia' AND fimagetype like 'Photo' AND fStatus = 'Public' AND (fCredit like '%IRIN%' or fCredit like '%Plusnews%'  or fCredit like '%OCHA%' ) and fcredit <> 'IRIN/Anthony Mitchell' OR fDescription LIKE '%" & LEFT(SelectRegion,5) & "%' AND fimagetype like 'Photo' AND fStatus = 'Public' AND (fCredit like '%IRIN%' or fCredit like '%Plusnews%'  or fCredit like '%OCHA%' ) and fcredit <> 'IRIN/Anthony Mitchell'  ORDER BY fImageDate DESC", objConn, 3, ,1

TotalRecords = objRS.RecordCount


End if







else



if len(selectTheme)>1 then 


objRS.Open "SELECT * FROM tbImageBank Where fRegion = '"&_
             SelectRegion &"' AND "&_
             " fSector like '%" & SelectTheme & "%' AND fimagetype like 'Photo' AND fStatus = 'Public' AND (fCredit like '%IRIN%' or fCredit like '%Plusnews%'  or fCredit like '%OCHA%' ) and fcredit <> 'IRIN/Anthony Mitchell'  ORDER BY fImageDate DESC", objConn, 3, ,1

        TotalRecords = objRS.RecordCount



elseIf Len(QuickSearch) > 1 Then

SQLSearch = QuickSearch


if instr(SQLSearch,",")<> 0 then 
				   words = split(SQLSearch,",")
				   For i = 0 to ubound(words)
				   
					  searchterm = searchterm & " fDescription LIKE '%" & words(i) & "%' AND "
					  
				   Next
				   SQLSearch = Left(searchterm,(len(searchterm)-4))
				else 
			
					words = split(SQLSearch," ")
					   For i = 0 to ubound(words)
					   
						  searchterm = searchterm & " fDescription LIKE '%" & words(i) & "%' AND "
						  
					   Next
						SQLSearch = Left(searchterm,(len(searchterm)-4))
				end if 



objRS.Open "SELECT * FROM tbImageBank WHERE " & SQLSearch & " AND( fRegion = '"&_
             SelectRegion &"' AND fimagetype like 'Photo' AND fStatus = 'Public' AND (fCredit like '%IRIN%' or fCredit like '%Plusnews%'  or fCredit like '%OCHA%' ) and fcredit <> 'IRIN/Anthony Mitchell'  OR fDescription LIKE '%" & LEFT(SelectRegion,5)&"%') AND fimagetype like 'Photo' AND fStatus = 'Public' AND (fCredit like '%IRIN%' or fCredit like '%Plusnews%'  or fCredit like '%OCHA%' ) and fcredit <> 'IRIN/Anthony Mitchell' ", objConn, 3, ,1

TotalRecords = objRS.RecordCount


Else objRS.Open "SELECT  * FROM tbImageBank Where fRegion = '"&_
             SelectRegion &"' AND fimagetype like 'Photo' AND fStatus = 'Public' AND (fCredit like '%IRIN%' or fCredit like '%Plusnews%'  or fCredit like '%OCHA%' ) and fcredit <> 'IRIN/Anthony Mitchell' OR fDescription LIKE '%" & LEFT(SelectRegion,5) & "%' AND fimagetype like 'Photo' AND fStatus = 'Public' AND (fCredit like '%IRIN%' or fCredit like '%Plusnews%'  or fCredit like '%OCHA%' ) and fcredit <> 'IRIN/Anthony Mitchell'  ORDER BY fImageDate DESC", objConn, 3, ,1

TotalRecords = objRS.RecordCount


End if






end if





elseif Len(SelectTheme)>1 then

If Len(QuickSearch) > 1 Then

SQLSearch = QuickSearch


if instr(SQLSearch,",")<> 0 then 
				   words = split(SQLSearch,",")
				   For i = 0 to ubound(words)
				   
					  searchterm = searchterm & " fDescription LIKE '%" & words(i) & "%' AND "
					  
				   Next
				   SQLSearch = Left(searchterm,(len(searchterm)-4))
				else 
			
					words = split(SQLSearch," ")
					   For i = 0 to ubound(words)
					   
						  searchterm = searchterm & " fDescription LIKE '%" & words(i) & "%' AND "
						  
					   Next
						SQLSearch = Left(searchterm,(len(searchterm)-4))
				end if 



objRS.Open "SELECT * FROM tbImageBank WHERE " & SQLSearch & " AND ( fSector = '"&_
             SelectTheme &"'AND fimagetype like 'Photo' AND fStatus = 'Public' AND (fCredit like '%IRIN%' or fCredit like '%Plusnews%'  or fCredit like '%OCHA%' ) and fcredit <> 'IRIN/Anthony Mitchell'  OR fDescription LIKE '%"& LEFT(SelectTheme,6)&"%') AND fimagetype like 'Photo' AND fStatus = 'Public' AND (fCredit like '%IRIN%' or fCredit like '%Plusnews%'  or fCredit like '%OCHA%' ) and fcredit <> 'IRIN/Anthony Mitchell' " , objConn, 3, ,1

TotalRecords = objRS.RecordCount


Else objRS.Open "SELECT * FROM tbImageBank Where fSector = '"&_
             SelectTheme &"' AND fimagetype like 'Photo' AND fStatus = 'Public' AND (fCredit like '%IRIN%' or fCredit like '%Plusnews%'  or fCredit like '%OCHA%' ) and fcredit <> 'IRIN/Anthony Mitchell'  OR fDescription LIKE '%" & LEFT(SelectTheme,6)&"%' AND fimagetype like 'Photo' AND fStatus = 'Public' AND (fCredit like '%IRIN%' or fCredit like '%Plusnews%'  or fCredit like '%OCHA%' ) and fcredit <> 'IRIN/Anthony Mitchell'  ORDER BY fImageDate DESC", objConn, 3, ,1

TotalRecords = objRS.RecordCount


End if

elseIf Len(QuickSearch) > 1 Then

SQLSearch = QuickSearch


if instr(SQLSearch,",")<> 0 then 
				   words = split(SQLSearch,",")
				   For i = 0 to ubound(words)
				   
					  searchterm = searchterm & " fDescription LIKE '%" & words(i) & "%' AND "
					  
				   Next
				   SQLSearch = Left(searchterm,(len(searchterm)-4))
				else 
			
					words = split(SQLSearch," ")
					   For i = 0 to ubound(words)
					   
						  searchterm = searchterm & " fDescription LIKE '%" & words(i) & "%' AND "
						  
					   Next
						SQLSearch = Left(searchterm,(len(searchterm)-4))
				end if 



objRS.Open "SELECT * FROM tbImageBank WHERE " & SQLSearch & "AND fimagetype like 'Photo' AND fStatus = 'Public' AND (fCredit like '%IRIN%' or fCredit like '%Plusnews%'  or fCredit like '%OCHA%' ) and fcredit <> 'IRIN/Anthony Mitchell' ", objConn, 3, ,1

TotalRecords = objRS.RecordCount


elseif len(imageID)>0 then

objRS.Open "SELECT * FROM tbImageBank where fimageid = '" & imageID & "' AND fStatus = 'Public' AND (fCredit like '%IRIN%' or fCredit like '%Plusnews%'  or fCredit like '%OCHA%' ) "  , objConn, 3, ,1


Else objRS.Open "SELECT * FROM tbImageBank where fimagetype like 'Photo' AND fStatus = 'Public' AND (fCredit like '%IRIN%' or fCredit like '%Plusnews%'  or fCredit like '%OCHA%' ) and fcredit <> 'IRIN/Anthony Mitchell'  ORDER BY fImageDate DESC", objConn, 3, ,1

TotalRecords = objRS.RecordCount

End If


		if objRS.EOF or objRS.BOF then
			'WITH RESPONSE
			'.WRITE("<i class=smalltxt>Sorry there are no records according to your search</i><BR>")
			'.WRITE("<i class=smalltxt>Please Try Again...</i>")
			'END WITH
		else
			objRS.moveFirst
		end if
 	
	   
	   numberofpages = totalRecords \ 11
	   
	   if totalRecords mod 11 = 0 then
		   numberofpages = numberofpages-1
	   end if
	   
	      
	   For x = 1 to RecordJump
	   
		If Not objRS.BOF And Not objRS.EOF Then
			objRS.MoveNext
		End If
	   
	   Next
	   	   
       
%>

<table border="0" cellspacing="0" cellpadding="0" width="790">
  <tr> 
    <td colspan="2" valign="top" align="center"> 
      <table width="790" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td colspan="3" background="photogallerybanner1.jpg" height="57" valign="bottom"><strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="iringallery.asp"><font face="Arial" color="#ffffff">New search</font></a></em></strong></td><!--<img src="photogallerybanner1.jpg" width="790" height="57">-->
        </tr>
        <tr> 
          <td width="200" class="SectionBlue"></td>
          <td width="300"></td>
          <td width="290"></td>
        </tr>
        <tr> 
          <td colspan="3" valign="top">

<table width="100%" border="0" cellspacing="1" cellpadding="1" align="center" style="border: solid #003399 1px; background-color: #F9F9F9;"> 
  <tr>
 <td bgcolor="#ffffff" class="smalltxt" width="15%"><%=replace(SelectCountry,"_"," ")%></td>

<%  
if TotalRecords > 0 then
		
			
		With Response
				
			if RecordJump+11 > 11 then
				.Write("<td bgcolor="&QUOT&"#ffffff"&QUOT&" class="&QUOT&"smalltxt"&QUOT&" width="&QUOT&"30%"&QUOT&" align="&QUOT&"right"&QUOT&">")
				.Write("<img src="&quot&"less.gif"&quot&" border="&quot&"0"&quot&"> <A HREF="&quot&"searchresult.asp?RecordJump="&RecordJump-11& "&QuickSearch=")
				.Write(replace(QuickSearch," ","_")&"&SelectRegion="&SelectRegion&"&SelectCountry="&SelectCountry)
				.write("&SelectTheme="&SelectTheme&quot&">")
				.Write("Previous</a>&nbsp;&nbsp;&nbsp;")
			end if
				'.Write<"td bgcolor="&QUOT&"#ffffff"&QUOT&" class="&QUOT&"smalltxt"&QUOT&" width="&QUOT&"15"&QUOT&">&nbsp;</td>")
				.Write("<td bgcolor="&QUOT&"#ffffff"&QUOT&" class="&QUOT&"smalltxt"&QUOT&" width="&QUOT&"10%"&QUOT&" align="&QUOT&"left"&QUOT&">&nbsp;</td>")
				.Write("<td bgcolor="&QUOT&"#ffffff"&QUOT&" class="&QUOT&"smalltxt"&QUOT&" width="&QUOT&"30%"&QUOT&" align="&QUOT&"left"&QUOT&">")
				'if  TotalRecords > Recordjump then			
				if Not (RecordJump+11>TotalRecords) then			
				.Write("<A HREF="&quot&"searchresult.asp?RecordJump="&RecordJump+11& "&QuickSearch=")
				.Write(replace(QuickSearch," ","_")&"&SelectRegion="&SelectRegion&"&SelectCountry="&SelectCountry)
				.write("&SelectTheme="&SelectTheme&quot&">")
				.Write("Next</a> <img src="&quot&"more.gif"&quot&" border="&quot&"0"&quot&">")
				end if
				.Write("<td bgcolor="&QUOT&"#ffffff"&QUOT&" class="&QUOT&"smalltxt"&QUOT&" width="&QUOT&"15%"&QUOT&"><b>Image(s) found:</b> "&TotalRecords&"</td>")
	        
	   end with
	  
        
	   
 end if
  %>     

   
</tr>
<tr bgcolor="#003366">
  <td colspan="5" height="5">
  </td>
</tr>
</table>
 
<TABLE WIDTH="100%" BORDER="0" CELLSPACING="2" CELLPADDING="2">
<TR>
<%
dim img
dim v
dim desc
dim q
q=chr(34)
v=1
if objRS.EOF or objRS.BOF then
		 
		WITH RESPONSE
			.WRITE("Sorry there are no records according to your search <BR>")
			.WRITE("Please Try Again...")
		END WITH

		
end if		
For x = 1 to 12

	If Not objRS.EOF Then
 		if v=1 then
			Response.Write("<TR align="&QUOT&"center"&QUOT&">")
		end if

		img=objRS.Fields("fImageID")&"."&objRS.fields("fextension")
		Response.Write("<TD>")
		'Response.Write("<A HREF=# ONCLICK="&QUOT&"OpenNewWindow('../images/Originals/"&Img&"','width=680,height=500, resizable, scrollbars=yes');return false;"&QUOT&"><IMG src="&QUOT&"../images/") 
		'Response.Write(objRS.Fields("fImageID"))
		'Response.Write("." & objRS.fields("fextension")&Quot&"")
		desc = objRS.fields("fdescription")
		desc = replace(desc,q," ")
		Response.Write("<a href="&QUOT&"../photogallery/selectedimage.asp?fImageID="&objRS.Fields("fImageID")&"&fextention="&objRS.fields("fextension")&"&fcredit="&objRS.fields("fcredit")&"&fcountry="&objRS.fields("fcountry")&"&ftheme="&objRS.fields("fsector")&"&fregion="&objRS.fields("fregion")&"&fdesc="&desc&"&fdate="&objRS.Fields("fImageDate")&"&fcontact="&objRS.Fields("fcontact")&QUOT&"><img src="&QUOT&"../images/")
		Response.Write(objRS.Fields("fImageID"))
		Response.Write("." & objRS.fields("fextension")&Quot&" height="&QUOT&"100"&QUOT&" border="&QUOT&"1"&QUOT&" alt="&QUOT&"Photo: "&objRS.fields("fcredit")&QUOT&"")
		Response.Write("height="&QUOT&"100"&QUOT&" border="&QUOT&"0"&QUOT&">")
		Response.Write("</TD>")
		v=v+1

		if v=5 then
			Response.Write("</TR>")
			v=1
		end if
		objRS.MoveNext

	End If

Next
%>
</TABLE>

<table width="100%" border="0" cellspacing="1" cellpadding="1" align="center" style="border: solid #003399 1px; background-color: #F9F9F9;"> 
<tr>
  <td bgcolor="#ffffff" class="smalltxt" width="15%">&nbsp;</td>
<%
if TotalRecords > 0 then
		
		
		
		With Response
				
			''if RecordJump >= 11 then
			if RecordJump+11 > 11 then
				.Write("<td bgcolor="&QUOT&"#ffffff"&QUOT&" class="&QUOT&"smalltxt"&QUOT&" width="&QUOT&"30%"&QUOT&" align="&QUOT&"right"&QUOT&">")
				.Write("<img src="&quot&"less.gif"&quot&" border="&quot&"0"&quot&"> <A HREF="&quot&"searchresult.asp?RecordJump="&RecordJump-11& "&QuickSearch=")
				.Write(replace(QuickSearch," ","_")&"&SelectRegion="&SelectRegion&"&SelectCountry="&SelectCountry)
				.write("&SelectTheme="&SelectTheme&quot&">")
				.Write("Previous</a>&nbsp;&nbsp;&nbsp;")
			end if
			
			'.Write<"td bgcolor="&QUOT&"#ffffff"&QUOT&" class="&QUOT&"smalltxt"&QUOT&" width="&QUOT&"15"&QUOT&">&nbsp;</td>")
			.Write("<td bgcolor="&QUOT&"#ffffff"&QUOT&" class="&QUOT&"smalltxt"&QUOT&" width="&QUOT&"10%"&QUOT&" align="&QUOT&"left"&QUOT&">&nbsp;</td>")
			.Write("<td bgcolor="&QUOT&"#ffffff"&QUOT&" class="&QUOT&"smalltxt"&QUOT&" width="&QUOT&"30%"&QUOT&" align="&QUOT&"left"&QUOT&">")
			'if  TotalRecords > Recordjump then			
			if Not (RecordJump+11>TotalRecords) then			
			.Write("<A HREF="&quot&"searchresult.asp?RecordJump="&RecordJump+11& "&QuickSearch=")
			.Write(replace(QuickSearch," ","_")&"&SelectRegion="&SelectRegion&"&SelectCountry="&SelectCountry)
			.write("&SelectTheme="&SelectTheme&quot&">")
			.Write("Next</a> <img src="&quot&"more.gif"&quot&" border="&quot&"0"&quot&">")
			end if
	    
	   end with
	  
end if
  %>     
   
  <td bgcolor="#ffffff" class="smalltxt" width="15%">&nbsp;</td>
</tr>
<tr>
                <td bgcolor="#ffffff" class="smalltxt" colspan="5" align="center"> <%
       for page=0 to numberofpages
	    with Response
			.Write("<A HREF="&quot&"searchresult.asp?RecordJump="&page*11& "&QuickSearch=")
			.Write(replace(QuickSearch," ","_")&"&SelectRegion="&SelectRegion&"&SelectCountry="&SelectCountry)
			.write("&SelectTheme="&SelectTheme&quot&">")
			.Write(page+1 & "</a>" & ", ")
		end with
	   next
%> </td>
</tr>
<tr>
  <td bgcolor="#ffffff" class="smalltxt" colspan="5" align="right">&nbsp;</td>
</tr>
<tr>
  <td bgcolor="#ffffff" class="smalltxt" colspan="5" align="right">For assistance please contact the <a href="http://www.irinnews.org/Feedback/EmailWebmaster.asp" style="color:#0000ff">webmaster</a></td>
</tr>
<tr bgcolor="#003366">
  <td colspan="5" height="5">
  </td>
</tr>
</table>

	  </td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </table>
    </td>
  </tr>
  <tr> 
    <td colspan="3"> <!-- #include file ="../includes/footer.inc"--> </td>
  </tr>
</table>

<!--#include file="../instadia/irin_content.inc"-->
<script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-1171245-1";
urchinTracker();
</script></body>

</html>