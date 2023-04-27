<%@ Language=VBScript %>

<% Dim words,i, searchterm,  TotalRecords, SelectCountry, SelectTheme, SelectRegion
   Dim QuickSearch, numberofpages, RecordJump, objRS, sString

Set objRS = Server.CreateObject("ADODB.RecordSet")
%>
<HTML>

<HEAD>

<%
dim recJump
recJump=Request("recJump")
dim imgplace
imgplace=Request("imgplace")
'if(imgplace=null) or (imgplace=0)then
'imgplace=1
'end if

dim inc
inc=10

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

QuickSearch = Replace(quickSearch,"'","''")


RecordJump = Request("RecordJump")


%>

<!--#include file="../includes/substyle.inc"-->

<title>United Nations Integrated Regional Information Networks - OCHA IRIN</title>

<!--#include file="../includes/dataconnection.asp"-->

<style>
.sectionBlue
{font: bold 9pt Verdana, Arial, Helvetica, sans-serif; color:#ffffff; text-align:center; background:#4d4dc9; border-bottom:1px solid #d7d7fa;}
.frameBlue
{border-top:1px solid #4d4dc9; border-bottom:1px solid #4d4dc9; border-left:1px solid #4d4dc9; border-right:1px solid #4d4dc9; background:#d7d7fa;}

.dropmenu
{background-color:#f0f0f0; height:17px; width:180; font-size: 10px; font-family: verdana, arial, sans-serif; color: #003399;}
.search
{width:180; height:17px; font-size: 10px; font-family: verdana, arial, sans-serif; color: #003399;}

.smalltxt
{font-family:Arial, Helvetica, sans-serif; font-size:8pt}

</style>

</HEAD>

<body leftmargin="4" topmargin="4" marginwidth="4" marginheight="4">

<table border="0" cellspacing="0" cellpadding="0" width="790">
	<tr>
		<td><!--#include file="../includes/subs_header.inc"--></td>
	</tr>
</table>

<br clear="all">
<table border="0" cellspacing="0" cellpadding="0" width="790">
	<tr> 
		<td colspan="2" valign="top" align="center"> 

<table width="790" border="0" cellspacing="0" cellpadding="0">
	<tr> 
		<td colspan="3"><img src="photogallerybanner.jpg" width="790" height="70"></td>
    </tr>
    <tr> 
		<td width="200" valign="top"> 
            <FORM action = "searchresult.asp" method="post" id=form name=form>
              <table width="200" cellpadding="4" cellspacing="0" class="frameBlue" align="left">
              	<TR> 
              		<TD class="sectionblue">Photo Search:</TD>
              	</TR>
              	<TR> 
              		<TD class="smalltxt">Country:</TD>
              	</TR>
              	<TR> 
              		<TD> 
                    <SELECT ID="SelectCountry" TYPE="TEXT" NAME="SelectCountry" SIZE="1" class="dropmenu">
                      <option Value="<%=SelectCountry%>"> <% 
if SelectCountry=""  then

Response.Write("Any Country")
else
Response.Write(SelectCountry)
end if %> </Option>
                      <OPTION value="">- - - - - - -</option>
                      <OPTION value="AFGHANISTAN">AFGHANISTAN</OPTION>
                      <OPTION value="AFRICA">AFRICA</OPTION>
                      <OPTION value="ANGOLA">ANGOLA</OPTION>
                      <OPTION value="ASIA">ASIA</OPTION>
                      <OPTION value="AZERBAIJAN">AZERBAIJAN</OPTION>
                      <OPTION value="BENIN">BENIN</OPTION>
                      <OPTION value="BOTSWANA">BOTSWANA</OPTION>
                      <OPTION value="BURKINA_FASO">BURKINA FASO</OPTION>
                      <OPTION value="BURUNDI">BURUNDI</OPTION>
                      <OPTION value="CAMEROON">CAMEROON</OPTION>
                      <OPTION value="CAPE_VERDE">CAPE VERDE</OPTION>
                      <OPTION value="CENTRAL_AFRICAN_REPUBLIC">CENTRAL AFRICAN REPUBLIC</OPTION>
                      <OPTION value="CENTRAL_AFRICA">CENTRAL AFRICA</OPTION>
                      <OPTION value="CENTRAL_ASIA">CENTRAL ASIA</OPTION>
                      <OPTION value="CHAD">CHAD</OPTION>
                      <OPTION value="CHILE">CHILE</OPTION>
                      <OPTION value="CHINA">CHINA</OPTION>
                      <OPTION value="COMOROS">COMOROS</OPTION>
                      <OPTION value="CONGO">CONGO</OPTION>
                      <OPTION value="COTE_D_IVOIRE">COTE D'IVOIRE</OPTION>
                      <OPTION value="CROATIA">CROATIA</OPTION>
                      <OPTION value="DJIBOUTI">DJIBOUTI</OPTION>
                      <OPTION value="DRC">DRC</OPTION>
                      <OPTION value="EAST_AFRICA">EAST AFRICA</OPTION>
                      <OPTION value="EQUATORIAL_GUINEA">EQUATORIAL GUINEA</OPTION>
                      <OPTION value="ERITREA">ERITREA</OPTION>
                      <OPTION value="ETHIOPIA">ETHIOPIA</OPTION>
                      <OPTION value="GABON">GABON</OPTION>
                      <OPTION value="GAMBIA">GAMBIA</OPTION>
                      <OPTION value="GLOBAL">GLOBAL</OPTION>
                      <OPTION value="GHANA">GHANA</OPTION>
                      <OPTION value="GUINEA">GUINEA</OPTION>
                      <OPTION value="GUINEA-BISSAU">GUINEA-BISSAU</OPTION>
                      <OPTION value="HORN_OF_AFRICA">HORN OF AFRICA</OPTION>
                      <OPTION value="INDIA">INDIA</OPTION>
                      <OPTION value="INDONESIA">INDONESIA</OPTION>
                      <OPTION value="IRAN">IRAN</OPTION>
                      <OPTION value="IRAQ">IRAQ</OPTION>
                      <OPTION value="KAZAKSTAN">KAZAKSTAN</OPTION>
                      <OPTION value="KENYA">KENYA</OPTION>
                      <OPTION value="KOREA">KOREA</OPTION>
                      <OPTION value="KYRGYZSTAN">KYRGYZSTAN</OPTION>
                      <OPTION value="LESOTHO">LESOTHO</OPTION>
                      <OPTION value="LIBERIA">LIBERIA</OPTION>
                      <OPTION value="LIBYA">LIBYA</OPTION>
                      <OPTION value="MACEDONIA">MACEDONIA</OPTION>
                      <OPTION value="MADAGASCAR">MADAGASCAR</OPTION>
                      <OPTION value="MALAWI">MALAWI</OPTION>
                      <OPTION value="MALAYSIA">MALAYSIA</OPTION>
                      <OPTION value="MALI">MALI</OPTION>
                      <OPTION value="MAURITANIA">MAURITANIA</OPTION>
                      <OPTION value="MAURITIUS">MAURITIUS</OPTION>
                      <OPTION value="MAYOTTE">MAYOTTE</OPTION>
                      <OPTION value="MOLDOVA">MOLDOVA</OPTION>
                      <OPTION value="MONGOLIA">MONGOLIA</OPTION>
                      <OPTION value="MOROCCO">MOROCCO</OPTION>
                      <OPTION value="MOZAMBIQUE">MOZAMBIQUE</OPTION>
                      <OPTION value="MYANMAR">MYANMAR</OPTION>
                      <OPTION value="NAMIBIA">NAMIBIA</OPTION>
                      <OPTION value="NAURU">NAURU</OPTION>
                      <OPTION value="NEPAL">NEPAL</OPTION>
                      <OPTION value="NIGER">NIGER</OPTION>
                      <OPTION value="NIGERIA">NIGERIA</OPTION>
                      <OPTION value="PAKISTAN">PAKISTAN</OPTION>
                      <OPTION value="RUSSIA">RUSSIA</OPTION>
                      <OPTION value="RWANDA">RWANDA</OPTION>
                      <OPTION value="SAO_TOME_AND_PRINCIPE">SAO TOME AND PRINCIPE</OPTION>
                      <OPTION value="SENEGAL">SENEGAL</OPTION>
                      <OPTION value="SEYCHELLES">SEYCHELLES</OPTION>
                      <OPTION value="SIERRA_LEONE">SIERRA LEONE</OPTION>
                      <OPTION value="SINGAPORE">SINGAPORE</OPTION>
                      <OPTION value="SLOVENIA">SLOVENIA</OPTION>
                      <OPTION value="SOMALIA">SOMALIA</OPTION>
                      <OPTION value="SOUTH_AFRICA">SOUTH AFRICA</OPTION>
                      <OPTION value="SOUTHERN_AFRICA">SOUTHERN AFRICA</OPTION>
                      <OPTION value="SRI_LANKA">SRI LANKA</OPTION>
                      <OPTION value="SUDAN">SUDAN</OPTION>
                      <OPTION value="SWAZILAND">SWAZILAND</OPTION>
                      <OPTION value="TAIWAN">TAIWAN</OPTION>
                      <OPTION value="TAJIKISTAN">TAJIKISTAN</OPTION>
                      <OPTION value="TANZANIA">TANZANIA</OPTION>
                      <OPTION value="THAILAND">THAILAND</OPTION>
                      <OPTION value="TOGO">TOGO</OPTION>
                      <OPTION value="TURKEY">TURKEY</OPTION>
                      <OPTION value="TURKMENISTAN">TURKMENISTAN</OPTION>
                      <OPTION value="UGANDA">UGANDA</OPTION>
                      <OPTION value="UNITED_NATIONS">UNITED NATIONS</OPTION>
                      <OPTION value="UZBEKISTAN">UZBEKISTAN</OPTION>
                      <OPTION value="VIETNAM">VIETNAM</OPTION>
                      <OPTION value="WEST_AFRICA">WEST AFRICA</OPTION>
                      <OPTION value="WESTERN_SAHARA">WESTERN SAHARA</OPTION>
                      <OPTION value="YUGOSLAVIA">YUGOSLAVIA</OPTION>
                      <OPTION value="ZAMBIA">ZAMBIA</OPTION>
                      <OPTION value="ZIMBABWE">ZIMBABWE</OPTION>
                    </SELECT>
                  </TD>
                </TR>
                <TR> 
                  <TD class="smalltxt">Region:</TD>
                </TR>
                <TR> 
                  <TD> 
                    <SELECT ID="SelectRegion" TYPE="TEXT" NAME="SelectRegion" SIZE="1" class="dropmenu">
                      <option Value="<%=SelectRegion%>"> <% 
if SelectRegion=""  then

Response.Write("Any Region")
else
Response.Write(SelectRegion)
end if %> </Option>
                      <option value="">- - - - - - -</option>
                      <OPTION VALUE="Africa">All Africa</OPTION>
                      <OPTION VALUE="Asia">All Asia</OPTION>
                      <OPTION VALUE="Central_Asia">Central Asia</OPTION>
                      <OPTION VALUE="Global">Global</OPTION>
                      <OPTION VALUE="East_Africa">East Africa</OPTION>
                      <OPTION VALUE="Great_Lakes">Great Lakes</OPTION>
                      <OPTION VALUE="Horn_of_Africa">Horn of Africa</OPTION>
                      <OPTION VALUE="Southern_Africa">Southern Africa</OPTION>
                      <OPTION VALUE="West_Africa">West Africa</OPTION>
                    </SELECT>
                  </TD>
                </TR>
                <TR> 
                  <TD class="smalltxt">Themes:</TD>
                </TR>
                <TR> 
                  <TD> 
                    <SELECT ID="SelectTheme" TYPE="TEXT" NAME="SelectTheme" SIZE="1" class="dropmenu">
                      <option Value="<%=SelectTheme%>"> <% 
if SelectTheme=""  then

Response.Write("Any Theme")
else
Response.Write(SelectTheme)
end if %> </Option>
                      <option value="">- - - - - - -</option>
                      <OPTION VALUE="Children">Children</OPTION>
                      <OPTION VALUE="Democracy">Democracy and Governance</OPTION>
                      <OPTION VALUE="Economy">Economy</OPTION>
                      <OPTION VALUE="Environment">Environment</OPTION>
                      <OPTION VALUE="Food_Security">Food Security</OPTION>
                      <OPTION VALUE="Gender_issues">Gender Issues</OPTION>
                      <OPTION VALUE="Health">Health and Nutrition</OPTION>
                      <OPTION VALUE="HIV_AIDS">HIV/AIDS</OPTION>
                      <OPTION VALUE="Human_Rights">Human Rights</OPTION>
                      <OPTION VALUE="Natural_Disasters">Natural Disasters</OPTION>
                      <OPTION VALUE="Peace_Security">Peace and Security</OPTION>
                      <OPTION VALUE="Refugees_IDPs">Refugees/IDPs</OPTION>
                      <OPTION VALUE="Other">Other</OPTION>
                    </SELECT>
                  </TD>
                </TR>
                <tr> 
                  <td>&nbsp;</td>
                </tr>
                <tr> 
                  <td class="smalltxt"> <b>Use the search box below to refine your Search...</b> </td>
                </tr>
                <tr> 
                  <td class="smalltxt">Search Keywords:</td>
                </tr>
                <tr> 
                  <td> 
                    <INPUT NAME=QuickSearch value="<%=QuickSearch%>" class="search">
                  </td>
                </tr>
                <tr> 
                  <td align="right"> 
                    <INPUT TYPE="submit" value="Search" id=submit name="submit">
                  </td>
                </tr>
              </table>
            </FORM>
		  </td>
          <td width="580">

<table cellpadding="4" cellspacing="0" width="240" align="left"> 
<tr>
<td>
An introductory text will go here, describing the photo gallery and how to make use of it.<br>
[Terms of use]..........
</td>
</tr>
</table>

<table width="310" border="0" cellspacing="0" cellpadding="2" align="right" style="border-right:1 solid #cccccc;">
	<tr bgcolor="#f0f0f0"> 
		<td colspan="2" class="smalltxt">&nbsp;Photo's recently added - Click on an image to view the details</td>
	</tr>

<%

QUOT = Chr(34)

if Len(SelectCountry) > 1 Then

	if len(selectTheme)>1 then 

		objRS.Open "SELECT * FROM tbImageBank Where fCountry = '"&_
             SelectCountry &"'  AND "&_
             " fSector like'%" & SelectTheme & "%' AND fimagetype like 'Photo' AND (fCredit like '%IRIN%' or fCredit like 'PlusNews%') ORDER BY fImageDate DESC", objConn, 3, ,1

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
             SelectCountry &"' AND fimagetype like 'Photo' AND (fCredit like '%IRIN%' or fCredit like 'PlusNews%') ", objConn, 3, ,1

		TotalRecords = objRS.RecordCount

Else objRS.Open "SELECT * FROM tbImageBank Where fCountry = '"&_
             SelectCountry &"' AND fimagetype like 'Photo' AND (fCredit like '%IRIN%' or fCredit like 'PlusNews%')  ORDER BY fImageDate DESC", objConn, 3, ,1

        TotalRecords = objRS.RecordCount
End if

elseif len(SelectRegion)>1 then

	if len(selectTheme)>1 then 

		objRS.Open "SELECT * FROM tbImageBank Where fRegion = '"&_
             SelectRegion &"' AND "&_
             " fSector like '%" & SelectTheme & "%' AND fimagetype like 'Photo' AND (fCredit like '%IRIN%' or fCredit like 'PlusNews%')  ORDER BY fImageDate DESC", objConn, 3, ,1

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
             SelectRegion &"' AND fimagetype like 'Photo' AND (fCredit like '%IRIN%' or fCredit like 'PlusNews%') OR fDescription LIKE '%" & LEFT(SelectRegion,5)&"%') AND fimagetype like 'Photo' AND (fCredit like '%IRIN%' or fCredit like 'PlusNews%')", objConn, 3, ,1

		TotalRecords = objRS.RecordCount


	Else objRS.Open "SELECT  * FROM tbImageBank Where fRegion = '"&_
             SelectRegion &"' AND fimagetype like 'Photo' AND (fCredit like '%IRIN%' or fCredit like 'PlusNews%') OR fDescription LIKE '%" & LEFT(SelectRegion,5) &"%' AND fimagetype like 'Photo' AND (fCredit like '%IRIN%' or fCredit like 'PlusNews%') ORDER BY fImageDate DESC", objConn, 3, ,1

		TotalRecords = objRS.RecordCount


	End if


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
             SelectTheme &"' AND fimagetype like 'Photo' AND (fCredit like '%IRIN%' or fCredit like 'PlusNews%') OR fDescription LIKE '%"& LEFT(SelectTheme,6)&"%') AND fimagetype like 'Photo' AND (fCredit like '%IRIN%' or fCredit like 'PlusNews%')", objConn, 3, ,1

TotalRecords = objRS.RecordCount

Else objRS.Open "SELECT * FROM tbImageBank Where fSector = '"&_
             SelectTheme &"' AND fimagetype like 'Photo' AND (fCredit like '%IRIN%' or fCredit like 'PlusNews%') OR fDescription LIKE '%" & LEFT(SelectTheme,6)&"%' AND fimagetype like 'Photo' AND (fCredit like '%IRIN%' or fCredit like 'PlusNews%')' ORDER BY fImageDate DESC", objConn, 3, ,1

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

	objRS.Open "SELECT * FROM tbImageBank WHERE " & SQLSearch&" AND fimagetype like 'Photo' AND fCredit like '%IRIN%'", objConn, 3, ,1
	TotalRecords = objRS.RecordCount

Else objRS.Open "SELECT * FROM tbImageBank WHERE fimagetype like 'Photo' AND (fCredit like '%IRIN%' or fCredit like 'PlusNews%') ORDER BY fImageDate DESC", objConn, 3, ,1
	
	TotalRecords = objRS.RecordCount

End If

		
dim v
dim cc
dim q
q=chr(34)
dim desc
v=1
cc=1
dim rj
rj=1*recJump
'if rj=0 then 
'rj=rj+1
'end if
Response.Write("<tr bgcolor="&QUOT&"#f0f0f0"&QUOT&">") 
Response.Write("<td width="&QUOT&"155"&QUOT&"></td>")
Response.Write("<td width="&QUOT&"155"&QUOT&"></td>")
Response.Write("</tr>")

For y = 1 to rj
 If Not objRS.EOF Then 
  objRS.MoveNext
 end if  
next 

For x = imgplace+1 to (imgplace+inc)

	If Not objRS.EOF Then
		
			if v=1 then
				Response.Write("<tr bgcolor="&QUOT&"#f0f0f0"&QUOT&">")
				Response.Write("<td width="&QUOT&"155"&QUOT&"")
				Response.Write("class="&QUOT&"smalltxt"&QUOT&" align="&QUOT&"center"&QUOT&">")
				Response.Write(x)
				Response.Write("<br><a href="&QUOT&"../photogallery/selectedimage.asp?fImageID="&objRS.Fields("fImageID")&"&fextention="&objRS.fields("fextension")&"&fcredit="&objRS.fields("fcredit")&"&fcountry="&objRS.fields("fcountry")&"&ftheme="&objRS.fields("fsector")&"&fregion="&objRS.fields("fregion")&"&fdesc="&objRS.fields("fdescription")&"&fdate="&objRS.Fields("fImageDate")&"&fcontact="&objRS.Fields("fcontact")&QUOT&"><img src="&QUOT&"../images/")
				Response.Write(objRS.Fields("fImageID"))
				Response.Write("." & objRS.fields("fextension")&Quot&" height="&QUOT&"100"&QUOT&" border="&QUOT&"1"&QUOT&" alt="&QUOT&"Photo: "&objRS.fields("fcredit")&QUOT&">")
				Response.Write("</td>")
				v=v+1
			else
				Response.Write("<td width="&QUOT&"155"&QUOT&"")
				Response.Write("class="&QUOT&"smalltxt"&QUOT&" align="&QUOT&"center"&QUOT&">")
				Response.Write(x)
				
				desc = objRS.fields("fdescription")
				desc = replace(desc,q," ")
				Response.Write("<br><a href="&QUOT&"../photogallery/selectedimage.asp?fImageID="&objRS.Fields("fImageID")&"&fextention="&objRS.fields("fextension")&"&fcredit="&objRS.fields("fcredit")&"&fcountry="&objRS.fields("fcountry")&"&ftheme="&objRS.fields("fsector")&"&fregion="&objRS.fields("fregion")&"&fdesc="&desc&"&fdate="&objRS.Fields("fImageDate")&"&fcontact="&objRS.Fields("fcontact")&QUOT&"><img src="&QUOT&"../images/")
				Response.Write(objRS.Fields("fImageID"))
				Response.Write("." & objRS.fields("fextension")&Quot&" height="&QUOT&"100"&QUOT&" border="&QUOT&"1"&QUOT&" alt="&QUOT&"Photo: "&objRS.fields("fcredit")&QUOT&"></td>")
				v=v-1
				Response.Write("</tr>")
				Response.Write("<tr bgcolor="&QUOT&"#f0f0f0"&QUOT&">") 
				Response.Write("<td width="&QUOT&"155"&QUOT&"></td>")
				Response.Write("<td width="&QUOT&"155"&QUOT&"></td>")
				Response.Write("</tr>")
			end if
			
		'Response.Write("<TR><TD>")
		'Response.Write("<IMG vspace="&QUOT&"0"&QUOT&" BORDER="&QUOT&"1"&QUOT&" src="&QUOT&"../images/")
		'Response.Write(objRS.Fields("fImageID"))
		'Response.Write("." & objRS.fields("fextension")&Quot&">")
		'Response.Write("</TD><TD>")
		'Response.Write("</TD></TR>")
		objRS.MoveNext
		cc=cc+1
	End If

Next

%>
<tr align="center" bgcolor="#f0f0f0">
<td colspan="2" class="smalltxt">
    <%
if(Not imgplace=null)or(imgplace>0)then    
Response.Write("<b>Total No of images "&TotalRecords&"</b> Displaying images <b>"&imgplace+1&"</b> to <b>"&imgplace+inc&"</b><br>")
else 
 Response.Write("<b>Total No of images "&TotalRecords&"</b> Displaying images <b>1</b> to <b>"&imgplace+inc&"</b><br>")
end if 
%>

</td>
</tr>
<tr align="center" bgcolor="#f0f0f0">
<td colspan="2" class="smalltxt">
<%
if TotalRecords > 0 then
		
			
		With Response
				
			if RecJump >= 11 then
				'.Write("<td bgcolor="&QUOT&"#ffffff"&QUOT&" class="&QUOT&"smalltxt"&QUOT&" width="&QUOT&"30%"&QUOT&" align="&QUOT&"right"&QUOT&">")
				.Write("<img src="&quot&"less.gif"&quot&" border="&quot&"0"&quot&"> <A HREF="&quot&"iringalleryTest.asp?RecJump="&RecJump-11&"&imgplace="&imgplace-inc&"&QuickSearch=")
				.Write(replace(QuickSearch," ","_")&"&SelectRegion="&SelectRegion&"&SelectCountry="&SelectCountry)
				.write("&SelectTheme="&SelectTheme&quot&">")
				.Write("Previous</a>&nbsp;&nbsp;&nbsp;")
			end if
			if Not (RecJump+11>TotalRecords) then
			'.Write<"td bgcolor="&QUOT&"#ffffff"&QUOT&" class="&QUOT&"smalltxt"&QUOT&" width="&QUOT&"15"&QUOT&">&nbsp;</td>")
			'.Write("<td bgcolor="&QUOT&"#ffffff"&QUOT&" class="&QUOT&"smalltxt"&QUOT&" width="&QUOT&"10%"&QUOT&" align="&QUOT&"left"&QUOT&">&nbsp;</td>")
			'.Write("<td bgcolor="&QUOT&"#ffffff"&QUOT&" class="&QUOT&"smalltxt"&QUOT&" width="&QUOT&"30%"&QUOT&" align="&QUOT&"left"&QUOT&">")
			''if  TotalRecords > Recordjump then			
			.Write("<A HREF="&quot&"iringalleryTest.asp?recJump="&recJump+11&"&imgplace="&imgplace+inc&"&QuickSearch=")
			.Write(replace(QuickSearch," ","_")&"&SelectRegion="&SelectRegion&"&SelectCountry="&SelectCountry)
			.write("&SelectTheme="&SelectTheme&quot&">")
			.Write("Next</a> <img src="&quot&"more.gif"&quot&" border="&quot&"0"&quot&">")
			''end if
	        end if
	   end with

end if
%>
</td>
</tr>

             </table>

         </td>
         <td width="10" bgcolor="#ffffff">&nbsp;</td>
        </tr>
        <tr> 
          <td width="200">&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr> 
          <td width="200">&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </table>
    </td>
  </tr>

<tr> 
    <td colspan="2"> <!-- #include virtual ="../includes/footer.inc"--> </td>
</tr>
 
</table>
<%
Set objRS = nothing
Set objConn = nothing

%>
<script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-1171245-1";
urchinTracker();
</script>
</body>
</html>