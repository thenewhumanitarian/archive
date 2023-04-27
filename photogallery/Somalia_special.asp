
<%@ Language=VBScript %>

<% Option Explicit 

Dim objRS, objRS2, objRS3, objConn, SetGraphics, objRSImage, images(10), DispImageOnce
Dim QUOT, x, QuickSearch, ImageAlign, Util, SelectCountry, SelectRegion, i, SelectTheme
Dim ReportID, Title, Location, ReportDate, Body, Image, Teaser, headline
Dim Caption, Region, Country, Sector, sCountry, sSector, Totalrecords, sdate
Dim imagetype, extension, credit, copy, today, IntroDate, Continent, csSyntheticTitle
Dim SelectWeekly, Wregion, Slug, Morestories,  RecordJump


Set objRS = Server.CreateObject("ADODB.RecordSet")
Set objRS2 = Server.CreateObject("ADODB.RecordSet") 
Set objRSImage = Server.CreateObject("ADODB.RecordSet")

Set Util = Server.CreateObject("IXSSO.Util")
Server.ScriptTimeout = 150

%>

<html>
<head>

<!--#include file="./includes/dataconnection.asp"-->
<!--#include file="./includes/tash_style.inc"-->
<!--#include file="./includes/metatags.inc"-->


<meta HTTP-EQUIV="REFRESH" CONTENT="600;URL=./frontpage.asp">
<meta HTTP-EQUIV="CONTENT-Language" CONTENT="en-us">
<meta HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=iso-8859-1">

<script language="JavaScript">
<!--

function OpenNewWindow(WindowPicture,WindowParameters,Contact,Credit)
{NewWindow=window.open("","NewOne", WindowParameters);
NewWindow.document.write("<HTML><HEAD><TITLE>");
NewWindow.document.write("IRINnews");
NewWindow.document.write("</TITLE></HEAD>");
NewWindow.document.write("<BODY Background='/images/originalImgBG.jpg' bgproperties='fixed'>");
NewWindow.document.write("<table border='0' cellpadding='1' cellspacing='0' align='center'>");
NewWindow.document.write("<tr><td>");
NewWindow.document.write("<B><FONT SIZE='1' FACE='Arial' COLOR='#000000'>");
NewWindow.document.write("<b>Click on the image to close this window</b>");
NewWindow.document.write("</FONT>");
NewWindow.document.write("</td></tr>");
NewWindow.document.write("<tr><td align='center'>");
NewWindow.document.write("<A HREF='JavaScript:this.close()'><IMG SRC=");
NewWindow.document.write(WindowPicture);
NewWindow.document.write(" border='1' style='border-color:#000000'></A>");
NewWindow.document.write("</td></tr>");
NewWindow.document.write("<tr><td>");
NewWindow.document.write("</td></tr></table>");
NewWindow.document.write("</BODY></HTML>");
NewWindow.document.close();
return false;
}

function popUp(URL) {
day = new Date();
id = day.getTime();
width = screen.width/2-379
height = screen.height/2-230
eval("page" + id + " = window.open(URL, '" + id + "', 'toolbar=0,scrollbars=0,location=0,statusbar=0,menubar=0,resizable=0,width=700,height=400,left = "+width+",top = "+height+"');");
}

function popUpmap(URL) {
day = new Date();
id = day.getTime();
width = screen.width/2-379
height = screen.height/2-230
eval("page" + id + " = window.open(URL, '" + id + "', 'toolbar=0,scrollbars=1,location=0,statusbar=0,menubar=0,resizable=1,width=700,height=450,left = "+width+",top = "+height+"');");
}

// -->
</script>

<style>
.teaser {font-family: Arial, Helvetica, sans-serif; font-size: 8pt;}
.sectionheading {color: #996600; font-weight: bold; font-size: 11px; }
}
.style15 {font-weight: bold}
.style16 {font-family: Tahoma; font-size: 8pt; font-weight: bold; }
.style19 {
	color: #AF963D;
	font-weight: bold;
	font-size: 11px;
	font-family: Tahoma;
}
.sidebar {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 11px;
	color: #464D2B;
	font-style: normal;
	font-weight: bold;
	text-transform: none;
	list-style-position: outside;
	list-style-type: disc;
	border: 1px none #666633;
	text-decoration: none;
}

</style>

<title>United Nations | OCHA IRIN | Somalia : Uncertain New Future</title>

<% csSyntheticTitle="United Nations | OCHA IRIN | Somalia : Uncertain New Future" %>

<% ' -------------------------------------------------------------------------------------

Sub Navigation()

%> <!--#include file="./includes/Africa_navigation.inc"--> <%

End Sub

'---------------------------------------------------------------------------
Sub newslink()

if len(SelectCountry)>0 or Len(SelectRegion)>0 then

if region="Central_Asia" Then %>

<!--#include file="./includes/asianews.inc"-->

<% else %>

<!--#include file="./includes/africanews.inc"-->

<% end if
 end if

End Sub


Sub IntroStatement()

' This sub writes the correct introducing statement and select the reports 
' according to region/ sector/ no criteria/ freetext search

' -------------------------------------------------------------------------------------

' Country

SelectCountry = Request("SelectCountry")
SelectRegion = Request("SelectRegion")
QuickSearch = Request("QuickSearch")
SelectTheme = Request("SelectTheme")
MoreStories = Request("MoreStories")
RecordJump = Request("RecordJump")
today = dateadd("H",5,now())

if weekday(today)=1 then
Introdate = "Sunday "
elseif weekday(today)=2 then
Introdate= "Monday "
elseif weekday(today)=3 then
Introdate= "Tuesday "
elseif weekday(today)=4 then
Introdate= "Wednesday "
elseif weekday(today)=5 then
Introdate= "Thursday "
elseif weekday(today)=6 then
Introdate= "Friday "
elseif weekday(today)=7 then
Introdate= "Saturday "
end if

'Introdate = IntroDate & monthname(month(today),True)&" " & day(today) &", "
Introdate = IntroDate &day(today)&" "& monthname(month(today)) &  " "
IntroDate = Introdate & year(today)



If Len(SelectCountry) > 1 Then

Caption = Replace(SelectCountry,"_"," ")

headline = "Latest news from "& Caption 
Response.Write(IntroDate)
if selectCountry="Guinea" then

Set objRS = objConn.Execute("SELECT TOP 10 * " & _
"FROM tbReports WHERE fStatus = 'Live' AND " & _
"fCountry = '"&_
SelectCountry &_
"'AND FReportType <> 'Weekly' ORDER BY fReportDate DESC, fPriority DESC")

else
Set objRS = objConn.Execute("SELECT TOP 10 * " & _
"FROM tbReports WHERE fStatus = 'Live' AND " & _
"fCountry LIKE '%"&_
SelectCountry &_
"%' AND FReportType <> 'Weekly' ORDER BY fReportDate DESC, fPriority DESC")
end if		
' -------------------------------------------------------------------------------------

ElseIf Len(SelectRegion) > 1 Then

if SelectRegion = "Great_Lakes" then

Caption = "Great Lakes and Central Africa"
else
Caption = Replace(SelectRegion,"_"," ")
end if

headline = "Latest news from "& Caption 
Response.Write(IntroDate)

Set objRS = objConn.Execute("SELECT TOP 10 * " & _
"FROM tbReports WHERE fStatus = 'Live' AND " & _
"fRegion = '"&_
SelectRegion &_
"' AND FReportType <> 'Weekly' ORDER BY fReportDate DESC, fPriority DESC")
		
' -------------------------------------------------------------------------------------

' No criteria

ElseIf Len(SelectTheme) > 1 then

Caption = Replace(SelectTheme,"_"," ")

headline = "Latest news on "& Caption 
Response.Write(IntroDate)

Set objRS = objConn.Execute("SELECT TOP 10 * " & _
"FROM tbReports WHERE fStatus = 'Live' AND " & _
"fSector LIKE '%"&_
SelectTheme &_
"%'AND fRegion <> 'Central_Asia' AND FReportType <> 'Weekly' ORDER BY fReportDate DESC, fPriority DESC")


ElseIf len(MoreStories)>1 then

headline = "Latest news from IRIN Africa" 
Response.Write(IntroDate)
objRS.Open "SELECT * " & _
"FROM tbReports WHERE FReportType <> 'Weekly' AND fPriority <> 'Top' AND fStatus = 'Live'" & _
" AND fRegion <> 'Central_Asia' And fReportDate > " &_
"'"&dateadd("D",-2,date)&"' ORDER BY fReportDate DESC", objConn, 3, ,1
		  
		  TotalRecords = objRS.RecordCount
	
	

ElseIf QuickSearch = "" Then

'Response.Write("---- Latest news from IRIN Africa: " & IntroDate & " ----")


headline = "Latest news from IRIN Africa" 
Response.Write(IntroDate)
Set objRS = objConn.Execute("SELECT TOP 10 * " & _
"FROM tbReports WHERE FReportType <> 'Weekly' AND fPriority = 'Top' AND fStatus = 'Live'" & _
" AND fRegion <> 'Central_Asia'  ORDER BY fReportDate DESC")

' -------------------------------------------------------------------------------------

' Or a freetext search
		
Else


headline = "Search results for: "& QuickSearch 
Response.Write(IntroDate)
Set objRS = objConn.Execute("SELECT TOP 10 * " & _
"FROM tbReports WHERE fStatus = 'Live' AND " & _
" fBody LIKE '%" & QuickSearch &"%' AND ORDER BY fReportDate DESC")
		
End If

End Sub

'-----------------------------------------------------------------------

Sub WriteTeasers()

' This sub writes the records in ReportDate order
' Error control is built in as will not attempt to write more records than actually exist
if TotalRecords >=10 then
ObjRS.MoveFirst


For x = 1 to RecordJump

		If Not objRS.BOF And Not objRS.EOF Then

		objRS.MoveNext

		End If
	   
	   Next

end if


For x = 1 to 10

If Not objRS.EOF Then


ReportID = objRS("fReportID")
Title = objRS("fTitle")
Location = objRS("fLocation")
ReportDate = objRS("fReportDate")
Body = objRS("fBody")
Image = objRS("fImage")
Country = objRS("fCountry")
Region = objRS("fRegion")
Sector = objRS("fSector")
Teaser = objrs("fTeaser")
Slug = objRS("fSlug")

if len(Slug)>1 then
country = Slug
end if
sCountry = Replace(Country,"_"," ")
' -------------------------------------------------------------------------------------

' Check there is an image
' Response.Write("<HR>")


With Response
		.Write("<tr>") 
        .Write("<td HEIGHT="& quot & "1" & quot & ">") 
        .Write("<hr WIDTH="& quot & "100%" & quot & "SIZE="& quot & "1"& quot & ">")
        .Write("</td>")
        .Write("</tr>")
        
End with



With Response
.Write("<tr><td><P ALIGN=" & quot &"JUSTIFY"& quot & " size=" &quot& "2" &quot&"><B>")
.Write("<A HREF="&QUOT&"report.asp?ReportID="&ReportID&"&SelectRegion="&Region&"&SelectCountry="&Country& quot&">"& UCase(sCountry) & ": " & Title&"</A>")
.Write("</B>")
'.Write("<BR>")
End With

SetGraphics = Request.Cookies("Graphics")

Response.Write("<TABLE BORDER=""0"" cellspacing=""0"" cellpadding=""3""><TR><TD VALIGN=MIDDLE>")

'If Image > 1 and SetGraphics= "Yes" Then

If Image > 1 Then



for i = 1 to Ubound(images)

if images(i) = image then
DispImageOnce="NO"
end if

Next

' Extract the correct image credit and contact details for this report

Set objRSImage = objConn.Execute("SELECT * FROM tbImageBank WHERE fImageID = '"&_
Image &_
"'")


imagetype = objRSImage("fimagetype")
extension = objRSImage("fextension")
credit = objRSImage("fcredit")
credit = copy & credit
'-----------------------------------------------------------------------
if imagetype="Photo" AND DispImageOnce <> "NO" then

		' Write the twocell table image in...

		If ImageAlign = "Left" Then
		ImageAlign = "Right"
		Else
		ImageAlign = "Left"
		End If
   
		With Response
		.Write("<TABLE WIDTH="&QUOT&"85"&QUOT&" ALIGN="&QUOT&ImageAlign&QUOT)
		.Write("><TR><TD><IMG vspace="&QUOT&"0"&QUOT&" BORDER="&QUOT&"0"&QUOT)
		.Write(" ALIGN="&QUOT&"CENTER"&QUOT)
		'.Write(" WIDTH="&QUOT&"90"&QUOT&" height="&QUOT&"90"&QUOT)
		.Write(" src="&QUOT&"./images/")
		.Write(Image)
		.Write("t."& extension &QUOT)
		.Write(" ALT="&QUOT&"Photo: "&credit&QUOT)
		.Write("></td></TR></table>")
	
		End With

		images((x-1)) = image
DispImageOnce = "yes"
elseif imagetype="Logo" AND DispImageOnce <> "NO" Then



		With Response
		.Write("<TABLE WIDTH="&QUOT&"85"&QUOT&" ALIGN="&QUOT&"LEFT"&QUOT)
		.Write("><TR><TD><IMG vspace="&QUOT&"0"&QUOT&" BORDER="&QUOT&"0"&QUOT)
		.Write(" ALIGN="&QUOT&"CENTER"&QUOT)
		.Write(" WIDTH="&QUOT&"70"&QUOT&" height="&QUOT&"70"&QUOT)
		.Write(" src="&QUOT&"./images/")
		.Write(Image)
		.Write("."& extension &QUOT)
		.Write("></td></TR></table>")
	
		End With
images((x-1)) = image
DispImageOnce = "yes"
end if

End If

' -------------------------------------------------------------------------------------

' Next cell

body = util.TruncateToWhitespace(Body, 150)



With Response
.Write("<P ALIGN=" & quot &"JUSTIFY"& quot & " size=" &quot& "2" &quot&">")
.Write(UCase(Location)&", "& day(ReportDate)&" "& monthname(month(reportdate),True)&" "& year(ReportDate) & " (IRIN) - ")
if len(Teaser)>50 then 
.Write(Teaser)
Else
.Write(Body)
.Write("...")
end if
End With

If Request.Cookies("Language") = "French" Then

Response.Write("<A HREF="&QUOT&"report.asp?ReportID="&ReportID&QUOT&"><B>Plus d'informations</B></A>")

Else

Response.Write("<A HREF="&QUOT&"report.asp?ReportID="&ReportID&"&SelectRegion="&Region&"&SelectCountry="&Country&quot&"><B>Full report</B></A><BR><BR>")

End If

' -------------------------------------------------------------------------------------

' If the end of the recordset

objRS.MoveNext



Response.Write("</TD></TR></TABLE>")

End If

Next



if Len(MoreStories)>1 and RecordJump+10 < TotalRecords+10 then

with Response
.Write("<P ALIGN=" & quot &"Center"& quot & " size=" &quot& "3" &quot&">")
.Write("<A Href=" & quot & "./frontpage.asp?Morestories=Yes&RecordJump="&RecordJump+10&quot&">")
.Write("MORE NEWS</a></p>")
end With
else 

if recordJump <= TotalRecords then
with Response
.Write("<P ALIGN=" & quot &"Center"& quot & " size=" &quot& "3" &quot&">")
.Write("<A Href=" & quot & "./frontpage.asp?Morestories=Yes&RecordJump="&"0"&quot&">")
.Write("MORE NEWS</a></p>")
end With

end if

end if

End Sub

'-----------------------------------------------------------------------



' -----------------------------------------------------------------------------

Sub EditorsChoice()


' This sub writes in relevant Editor's Choice links

If Len(SelectTheme) > 1 Then

Set objRS2 = objConn.Execute("SELECT TOP 4 * FROM tbReports WHERE fReportType <> 'Weekly'  AND fCountry = 'Somalia' AND fStatus = 'Live' ORDER BY fReportDate DESC")

If not objRS2.EOF then 

	
	
	With Response
         
         .Write("<TR>")
         .Write("<TD BGCOLOR=" & Quot &"#0F2C16"& Quot&" CLASS=" & Quot&"rightheaders"& Quot&">IRIN Focuses & Interviews on " & Replace(SelectTheme,"_"," ")&"</TD>")
         .Write("</TR>")
         .Write("<TR>")
         .Write("<TD BGCOLOR="& Quot&"#DEEFDE" & Quot&"HEIGHT="& Quot&"22"& Quot&" VALIGN="& Quot&"top"& Quot&">") 
         .Write("<TABLE WIDTH="& Quot&"150"& Quot&" BORDER="& Quot&"0"& Quot&" CELLSPACING="& Quot&"6"& Quot&" CELLPADDING="& Quot&"0"& Quot&">")
         .Write("<TR> ")
         .Write("<TD> ")
         
    End With   
	
		
else 
Response.Write("&nbsp;")
End if

Else

Set objRS2 = objConn.Execute("SELECT TOP 5 * FROM tbReports WHERE fReportType <> 'Weekly' AND fCountry = 'Somalia' AND fStatus = 'Live' ORDER BY  fReportdate DESC")




If not objRS2.EOF then 


With Response
        
         .Write("<TR>")
         .Write("<TD BGCOLOR=" & Quot &"#096a02"& Quot&" CLASS=" & Quot&"rightheaders"& Quot&">&nbsp;Latest news on Somalia</TD>")
         .Write("</TR>")
         .Write("<TR>")
         .Write("<TD BGCOLOR="& Quot&"#ddf0d4" & Quot&"HEIGHT="& Quot&"22"& Quot&" VALIGN="& Quot&"top"& Quot&">") 
         .Write("<TABLE WIDTH="& Quot&"150"& Quot&" BORDER="& Quot&"0"& Quot&" CELLSPACING="& Quot&"6"& Quot&" CELLPADDING="& Quot&"0"& Quot&">")
         .Write("<TR> ")
         .Write("<TD> ")
         
    End With   


else 
Response.Write("&nbsp;")
End if


End If

if not objRS2.EOF then
'Response.write("<tr><td>")
While Not objRS2.EOF

sdate=objRS2("fReportDate")
sdate=day(sdate)&"/"& monthname(month(sdate), True) & "/" & right(year(sdate),2)

With Response
    
               .Write("<P><A class=teaserlinks HREF="&QUOT&"report.asp?ReportID="&objRS2("fReportID"))
               .Write("&SelectRegion="&objRS2("fRegion")&quot&"><b>"&UCase(Replace(objRS2("fCountry"),"_"," "))&": </b>")
               .Write(Trim(objRS2("fTitle")) & "</A></P>")
         End With

objRS2.MoveNext

Wend
Response.write("</td></tr></table>")
'Response.Write("<BR>")
End if

End Sub 

' ----------------------------------------------------------------------------------
%>

<link href="links.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.teaser2 {
	font-size: 10pt;
	font-family: Tahoma, Helvetica, sans-serif;
}
.style21 {color: #333300}
.sidebar1 {	font-family: Arial, Helvetica, sans-serif;
	font-size: 11px;
	color: #2C6B01;
	font-style: normal;
	font-weight: bold;
	text-transform: capitalize;
	list-style-position: outside;
	list-style-type: disc;
	border: 1px none #666633;
	text-decoration: none;
}
-->
</style>
</head>

<body topmargin="4" marginheight="4" marginwidth="4" leftmargin="4">

<table BORDER="0" CELLSPACING="0" CELLPADDING="0">

<tr>
<td><!--#include file="./includes/header_dropmenu_v5.inc"--></td>
</tr>

<tr>
<td VALIGN="top">

<table BORDER="0" CELLSPACING="0" CELLPADDING="3" WIDTH="675">
<tr>
	<td VALIGN="top" WIDTH="17">
		<% Navigation %>
	</td>
	
	<td VALIGN="top" width="1">&nbsp;</td>

	<td WIDTH="457" VALIGN="top">

		    <table WIDTH="450" BORDER="0" CELLSPACING="0" CELLPADDING="0">
              <tr valign="top"> 
		   	<td>

<div align="center">
  
</div>
<table border="0" cellpadding ="2" cellspacing="2" width="447" style="width: 100%; border: solid 1px #EEE3D1">
<tr>
  <td width="437" bgcolor="#EEE3D1" class="teaser"><img src="images/design/Somalipgh.jpg" width="447" height="76"></td>
</tr>
<tr>
  <td bgcolor="#EFE8D1" class="teaser"><div align="justify">
    Ever since the Islamic Courts Union took over control of the Somali capital, Mogadishu , on 6 June, a relative calm has returned to the city, heralding a new sense of hope for the war-ravaged Horn of Africa country.  On this  page, IRIN explores what is at stake and reports on the situation as it develops.<br>
  
    </div></td>
</tr>
</table>
<br>
<table width="100%" border="0" cellpadding="2" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#FFFFFF" style="width: 100%; border: solid 1px #EEE3D1">
  
  <tr >
    <td colspan="2" style="padding-bottom:3px"><a href="http://www.irinnews.org/report.asp?ReportID=54045&SelectRegion=Horn_of_Africa"><strong>Arms galore despite sanctions </strong><br>
    </a>
      
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td scope="row">
        <table width="100%" border="0" align="center" cellpadding="1" cellspacing="2">
          <tr>
            <th width="50%" valign="top" ><div align="center"><img src="images/20066272.jpg" width="200" align="left"></span></div> </th>
            <td width="50%" valign="top" ><div align="left">Fourteen years of arms embargoes and sanctions against Somalia have done nothing to stem the unending flow of arms into the country, fuelling the internecine conflicts that have caused so much destruction and humanitarian agony.<br> 
              <a href="http://www.irinnews.org/report.asp?ReportID=54158&SelectRegion=Horn_of_Africa" class="style22">Full report</a> </span></div></td>
          </tr>
        </table></td>
      </tr>
  </table></td>
    </tr>
    <tr>
    <td colspan="2">&nbsp;</td>
    </tr>
    <tr >
      <td valign="top" style="padding-bottom:3px"><span class="teaser"><img src="images/20066823t.jpg" width="65" align="left">Tragic Cargo - Part One</span>.<br>        
        <a href="http://www.irinnews.org/S_report.asp?ReportID=53806&SelectRegion=Horn_of_Africa" class="teaser"><b>Full report</b></a><br></td>
      <td width="50%" valign="top" style="padding-bottom:3px"><b><img src="images/20066150t.jpg" width="65" align="left"></b><span class="teaser"><span style="padding-bottom:3px; font-size: 8pt; font-family: Arial, Helvetica, sans-serif;">The grass is always greener: migrant life in Yemen<a href="http://www.irinnews.org/report.asp?ReportID=53922&SelectRegion=Middle_East" class="teaser"><b><br>
  </b>Full report</a></span></span><span class="teaser" style="padding-bottom:3px; font-size: 8pt; font-family: Arial, Helvetica, sans-serif;"><span style="padding-bottom:3px; font-size: 8pt; font-family: Arial, Helvetica, sans-serif;"> 
      </span><img height=16 src="../images/design/real.gif" width=17 align=middle border=0></span><span class="teaser"><a href="http://www.irinnews.org/film/ram/IRIN_Yemen.ram">Realplayer</a><br> 
      <span style="padding-bottom:3px; font-size: 8pt; font-family: Arial, Helvetica, sans-serif;"><img height=17 src="../images/design/mediaplayer.jpg" width=17 align=middle border=0></span><a href="http://www.irinnews.org/film/video/IRIN_Yemen.wmv">Media player</a> (05:02 min)</span></td>
    </tr>
    <tr >
    <td width="50%" style="padding-bottom:3px"><strong class="teaser"><b><img src="images/20066146t.jpg" width="65" align="left"></b></strong><span class="teaser">Tragic Cargo, Part Two.<br> 
      </span><a href="http://www.irinnews.org/S_report.asp?ReportID=53918&SelectRegion=Horn_of_Africa" class="teaser">Full report</a> 
      <span class="teaser"> <span style="padding-bottom:3px; font-size: 8pt; font-family: Arial, Helvetica, sans-serif;"><img height=16 src="../images/design/real.gif" width=17 align=middle border=0></span><a href="film/ram/TragicCargo.ram">Realplayer<br> 
      </a>      <span style="padding-bottom:3px; font-size: 8pt; font-family: Arial, Helvetica, sans-serif;"><img height=17 src="../images/design/mediaplayer.jpg" width=17 align=middle border=0></span><a href="film/video/TragicCargo.wmv">Media player </a> (02:50 min) </span></td>
    <td style="padding-bottom:3px; 
	"><img src="images/20066201t.jpg" width="65" align="left"> <span class="teaser"> UN to send humanitarian mission to Mogadishu</span><span class="style16"><br>
        <a href="http://www.irinnews.org/report.asp?ReportID=54045&SelectRegion=Horn_of_Africa" class="teaser">Full Report </a></span></td>
  </tr>
</table>
      
<span class="style15"><br>
</span><table width="447" style="width: 100%; border: solid 1px #C9C4B6">
    <tr>
    <td colspan="2" class="style15">
<span class="style19"> AUDIO PROGRAMMES</span></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td width="50%" valign="top" class="teaser" style="teaser font-weight: bold;"><strong>Children out of School <br></strong>Large numbers of children among the Somali refugee community in Kenya do not attend school. IRIN Radio finds out what these children do with their time, and why their parents don't send them to school.<br>
      <em>HALKAN KA DHAGEYSO BARNAAMIJKA<br>
      </em> <span style="padding-bottom:3px; font-size: 8pt; font-family: Arial, Helvetica, sans-serif;"><img height=17 src="../images/design/mediaplayer.jpg" width=17 align=middle border=0></span><a href="http://www.irinnews.org/radio/audio/so240506so.mp3">MediaPlayer  
      </a><a href="http://www.irinnews.org/radio/so240506so.ram"><span style="padding-bottom:3px; font-size: 8pt; font-family: Arial, Helvetica, sans-serif;"><img height=16 src="../images/design/real.gif" width=17 align=middle border=0></span>Realplayer</a></p>        </td>
      </tr>
    <tr bgcolor="#FFFFFF">
      <td valign="top" class="teaser" style="teaser font-weight: bold;"><strong>Fighting TB </strong><br>
Tuberculosis is a source of stigma among Somalis. This programme reveals the facts about the disease.<br>
<em>HALKAN KA DHAGEYSO BARNAAMIJKA</em> <a href="http://www.irinnews.org/radio/audio/so030506so.mp3"><br>
</a><a href="http://www.irinnews.org/radio/audio/so140406so.mp3"><span style="padding-bottom:3px; font-size: 8pt; font-family: Arial, Helvetica, sans-serif;"><img height=17 src="../images/design/mediaplayer.jpg" width=17 align=middle border=0></span></a><a href="http://www.irinnews.org/radio/audio/so030506so.mp3">Mediaplayer</a><a href="http://www.irinnews.org/radio/so240506so.ram"><img height=16 src="../images/design/real.gif" width=17 align=middle border=0></a><a href="http://www.irinnews.org/radio/so030506so.ram">Realplayer</a> </td>
      </tr>
    <tr bgcolor="#FFFFFF">
      <td valign="top" class="teaser" style="teaser font-weight: bold;"><strong>Somalia: Bird Flu </strong><br>
IRIN Radio looks at the threat of Bird Flu and what precautions should be taken to prevent its spread among poultry.<br>
<em>HALKAN KA DHAGEYSO BARNAAMIJKA</em><br>
<a href="http://www.irinnews.org/radio/audio/so140406so.mp3"><span style="padding-bottom:3px; font-size: 8pt; font-family: Arial, Helvetica, sans-serif;"><img height=17 src="../images/design/mediaplayer.jpg" width=17 align=middle border=0></span>Mediaplayer</a><a href="http://www.irinnews.org/radio/so240506so.ram"><span style="padding-bottom:3px; font-size: 8pt; font-family: Arial, Helvetica, sans-serif;"><img height=16 src="../images/design/real.gif" width=17 align=middle border=0></span></a><a href="http://www.irinnews.org/radio/so140406so.ram">Realplayer</a></td>
      </tr>
    <tr bgcolor="#FFFFFF">
      <td valign="top" class="teaser" style="teaser font-weight: bold;"><strong>Nomads congregate in Kenyan towns</strong><br>
Somali pastoralists hit by the drought are being forced to camp around small towns hoping for food and water.<br>
<em>HALKAN KA DHAGEYSO BARNAAMIJKA </em><br>
<a href="http://www.irinnews.org/radio/audio/so140406so.mp3"><span style="padding-bottom:3px; font-size: 8pt; font-family: Arial, Helvetica, sans-serif;"><img height=17 src="../images/design/mediaplayer.jpg" width=17 align=middle border=0></span></a><a href="http://www.irinnews.org/radio/audio/so290306so0.mp3">Media Player </a><a href="http://www.irinnews.org/radio/so240506so.ram"><span style="padding-bottom:3px; font-size: 8pt; font-family: Arial, Helvetica, sans-serif;"><img height=16 src="../images/design/real.gif" width=17 align=middle border=0></span></a><a href="http://www.irinnews.org/radio/so290306so0.ram">Realplayer </a></td>
      </tr>
    <tr>
      <td valign="top" bgcolor="#FFFFFF" style="teaser font-weight: bold;">&nbsp;</td>
      </tr>
    <tr>
      <td valign="top" bgcolor="#EEEEEE" style="teaser font-weight: bold;"><div align="center"><a href="/Feedback/EmailFeedback.asp" target="_blank">Send IRIN Feedback </a></div></td>
      </tr>
</table>		</td>
	</tr>
</table>

</td>

	<td WIDTH="176" VALIGN="top" class="style15"> 


<table WIDTH="165" BORDER="0" CELLPADDING="0" CELLSPACING="0">
	<tr>
	  <td VALIGN="top"><table width="100%"  border="0" cellpadding="2" cellspacing="0" style="width: 100%; border: solid 1px #ddf0d4">
        <tr>
          <td><table width="102" height="303"  border="0" cellpadding="2" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#FFFFFF">
            <tr>
              <td height="168" colspan="2" bgcolor="#ddf0d4"><a href="images/pdf/Somalimap.pdf"><img src="images/design/somalimap.JPG" width="164" border="0"></a></td>
            </tr>
            <tr bgcolor="#6B7A3F">
              <td height="32" colspan="2" bgcolor="#ddf0d4" class="sidebar1"><a href="javascript:slidesWindow('photogallery/Somalia.asp')"class="sidebar1">Photo Slideshow</a> </td>
            </tr>
            <tr bgcolor="#6B7A3F">
              <td width="142" height="32" colspan="2" bgcolor="#ddf0d4"><a href="http://www.irinnews.org/report.asp?ReportID=54159&SelectRegion=Horn_of_Africa"><span class="sidebar1">The Challenges at a glance</span ></a></td>
            </tr>
            <tr bgcolor="#6B7A3F">
              <td height="23" colspan="2" bgcolor="#ddf0d4"><a href="http://www.irinnews.org/report.asp?ReportID=54157&SelectRegion=Horn_of_Africa"><span class="sidebar1">The Somali Joint Needs Assessment </span ></a></td>
            </tr>
            <tr bgcolor="#6B7A3F">
              <td height="18" colspan="2" bgcolor="#ddf0d4" class="sidebar1"><a href="http://www.irinnews.org/report.asp?ReportID=54152&SelectRegion=Horn_of_Africa" class="sidebar1">Who's Who</a></td>
            </tr>
            <tr bgcolor="#6B7A3F">
              <td height="23" colspan="2" bgcolor="#ddf0d4" class="sidebar1"><a href="http://www.irinnews.org/report.asp?ReportID=54155&SelectRegion=Horn_of_Africa" class="sidebar1">Chronology of Recent Events </a></td>
            </tr>
          </table></td>
        </tr>
      </table>	  </td>
	</tr>
	<tr>
	  <td VALIGN="top" bgcolor="#FFFFFF">&nbsp;</td>
	  </tr>
	<tr>
	  <td VALIGN="top" bgcolor="#ddf0d4"><% EditorsChoice %></td>
	  </tr>
	<tr>
	  <td VALIGN="top" bgcolor="#ddf0d4"><div align="center"><a href="http://www.irinnews.org/frontpage.asp?SelectTheme=Democracy" class="teaser">More Related Reports</a> </div></td>
	  </tr>
	<tr>
		<td VALIGN="top">

          <p align="center"><img name="" src="" width="32" height="2" alt="">           
             </p>          </td>
	</tr>

	<tr>
		<td>

<table WIDTH="100%" BORDER="0" CELLSPACING="0" CELLPADDING="2">
			<tr>	   
				<td width="100%" BGCOLOR="#4d4dc9" CLASS="rightheaders">Related Internet Links</td>
			</tr>
			<tr> 
				<td BGCOLOR="#d7d7fa" VALIGN="top"> 
               
	              <table WIDTH="100%" BORDER="0" CELLPADDING="0" CELLSPACING="5">
		<tr> 
			<td width="100%"> 
				<p> <a href="http://www.bbc.co.uk/somali/index.shtml">BBC Somali service </a><br>
				  <a href="http://www.hornafrik.com">Horn Afrik&nbsp; </a><br>
				  <a href="http://www.hiiraan.com">Hiiran</a> <br>
				  <a href="http://www.shabelle.net">Radio Shebelle</a> <a href="http://www.icg.org%20">International Crisis Group</a> <BR><a href="http/www.reliefweb.int">Reliefweb</a> </p>
				</td>
		</tr>
	</table>			</td>
		</tr>
	</table>

		
<% 

objRS.Close
'objRS2.Close
objConn.Close
'objRSImage.close
Set objRS = nothing
Set objRS2 = nothing
Set objConn = nothing 
'set objRSImage = nothing 

%>		</td>
	</tr>
	<tr>
		<td>

<!--		<table WIDTH="145" BORDER="0" CELLSPACING="0" CELLPADDING="2">
			<tr>	   
				<td BGCOLOR="#096a02" CLASS="rightheaders">&nbsp;Audio and Video &nbsp;Reports from IRIN</td>
			</tr>
			<tr> 
				<td BGCOLOR="#ddf0d4" VALIGN="top"> 
               
	<table WIDTH="145" BORDER="0" CELLSPACING="5" CELLPADDING="0">
		<tr> 
			<td> 
				<p><img border="0" hspace="2" src="images/design/video.gif"> 
				<a class="teaserlinks" href="http://www.irinnews.org/film/ram/Malaria-Killer-Number-One.ram">Malaria - Killer Number One</a></p>
				<p><img border="0" hspace="2" src="images/design/video.gif"> 
				<a class="teaserlinks" href="http://www.irinnews.org/film/ram/Deadly-catch.ram">Deadly Catch</a></p>
				<p><img border="0" hspace="2" src="images/design/video.gif">
				<a class="teaserlinks" href="http://www.irinnews.org/film/ram/Niger-Hungry-for-Help.ram">Hungry For Help - Food Crisis in Niger</a></p>
                       </td>
		</tr>
	</table>
				
			</td>
		</tr>
	</table>-->		</td>
			</tr>
			<tr>
		<td>		</td>
	</tr>
</table>

          </td>

</tr>

</table>

</td>
</tr>
<tr>
<td VALIGN="top"><!-- #include file ="./includes/footer.inc"--></td>
</tr>
</table>

<span class="style15"><!--#include file="./instadia/irin_content.inc"-->
</span><script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-1171245-1";
urchinTracker();
</script></body>
</html>