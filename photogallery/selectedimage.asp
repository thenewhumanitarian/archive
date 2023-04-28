 <%@ Language=VBScript %>


<% Dim words,i, searchterm,  TotalRecords, SelectCountry, SelectTheme, SelectRegion, csSyntheticTitle
   Dim QuickSearch, numberofpages, RecordJump, objRS, fextention, fImageID, fcredit, fcountry, fdesc,fregion, ftheme,fdate,fcontact,fImage
   
Set objRS = Server.CreateObject("ADODB.RecordSet")
%>
<HTML>

<HEAD>

<%

fImageID=Request("fImageID")
fextention=Request("fextention")
fcredit=Request("fcredit")
fcountry=Request("fcountry")
fregion=Request("fregion")
fTheme=Request("ftheme")
fdesc=Request("fdesc")
fdate=Request("fdate")
fcontact=Request("fcontact")
fImage=fImageID&"."&fextention

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
<!--#include file="../includes/dataconnection.asp"-->

<title>United Nations - OCHA IRIN | Photo Gallery | Image details</title>

<% csSyntheticTitle="United Nations - OCHA IRIN | Photo Gallery | Image details"%>

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

<SCRIPT LANGUAGE="JAVASCRIPT" TYPE="TEXT/JAVASCRIPT">
<!-- Hide script from old browsers

function OpenNewWindow(WindowPicture,WindowParameters)
{NewWindow=window.open("","NewOne", WindowParameters);
NewWindow.document.write("<HTML><HEAD><TITLE>");
NewWindow.document.write("IRINnews.org - Photo Gallery");
NewWindow.document.write("</TITLE></HEAD>");
NewWindow.document.write("<BODY bgproperties='fixed' background='images/design/watermarkirin.jpg' style='background-repeat:no-repeat;'>");

NewWindow.document.write("<b><FONT SIZE='1' FACE='Arial' COLOR='#000000'>");
NewWindow.document.write("To download this image:</b><br>");
NewWindow.document.write("<font color='#003399'>MSIE:</font> Right click on the image and select 'Save Picture As...'");
NewWindow.document.write("<br><font color='#003399'>Netscape:</font> Right click on the image and select 'Save Image()...'");
NewWindow.document.write("</FONT><br>");

NewWindow.document.write("<P ALIGN=CENTER>");
NewWindow.document.write("<A HREF='JavaScript:this.close()'><IMG SRC=");
NewWindow.document.write(WindowPicture);
NewWindow.document.write(" border='1'></A><br>");
NewWindow.document.write("<FONT SIZE='1' FACE='Arial' COLOR='#000000'>");
NewWindow.document.write("Click the image to close this window");
NewWindow.document.write("</FONT>");
NewWindow.document.write("</P>");
NewWindow.document.write("</BODY></HTML>");
NewWindow.document.close();
return false;
}

// end hiding from old browsers -->
</SCRIPT>

</HEAD>

<body leftmargin="4" topmargin="4" marginwidth="4" marginheight="4">

<table border="0" cellspacing="0" cellpadding="0" width="790">
  <tr> 
    <td colspan="2" valign="top" align="center"> 
      <table width="790" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td colspan="3" background="photogallerybanner1.jpg" height="57" valign="bottom">
&nbsp;&nbsp;<strong><em><font face="Arial" color="#ffffff"><< <a href="javascript:history.back(1)" style="color:#ffffff">Return to search results</a></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="iringallery.asp"><font face="Arial" color="#ffffff">New search</font></a></em></strong></td><!--<img src="photogallerybanner1.jpg" width="790" height="57">-->
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
  <td bgcolor="#ffffff" width="30%"><strong><em><font face="Arial">&nbsp;&nbsp;&nbsp;Image details</font></em></strong></td>
  <td bgcolor="#ffffff" class="smalltxt" width="30%">&nbsp;</td>
  <td bgcolor="#ffffff" class="smalltxt" width="20%">&nbsp;</td>
  <td bgcolor="#ffffff" class="smalltxt" width="20%">&nbsp;</td>
  <td bgcolor="#ffffff" class="smalltxt" width="30%">&nbsp;</td>
</tr>
<tr bgcolor="#003366">
  <td colspan="5" height="5">
  </td>
</tr>
</table>

<table width="750" border="0" cellspacing="0" cellpadding="4">
<tr>
	<td align="center">
<table width="180" border="0" cellspacing="1"><tr><td class="smalltxt" align="center" colspan="2">Click on the image to view the original<br>
                  <%
                  Response.Write("<A HREF=# ONCLICK="&QUOT&"OpenNewWindow('../images/Originals/"&fImage&"','width=680,height=500, resizable, scrollbars=yes, menubar=yes');return false;"&QUOT&">")
                  %><img src="../images/<%=fImageID%>.<%=fextention%>"></a></td></tr><tr bgcolor="#eeeeee"><td class="smalltxt" valign="middle" align="left">&nbsp;<b>Image code</b> [<%=fImageID%>]</td><td align="right">
				  <%
                  Response.Write("<A HREF=# ONCLICK="&QUOT&"OpenNewWindow('../images/Originals/"&fImage&"','width=680,height=500, resizable, scrollbars=yes, menubar=yes');return false;"&QUOT&">")
                  %><img src="magnify.gif" border=""0 alt="Magnify" width="16" height="16" valign="absmiddle"></a></td></tr></table></td>
	<td valign="top">

<table width="460" cellpadding="2" cellspacing="2" border="0">
<tr> 
	<td class="smalltxt" width="130">&nbsp;</td>
	<td class="smalltxt">&nbsp;</td>
</tr>
<tr> 
	<td class="smalltxt" width="130">&nbsp;</td>
	<td class="smalltxt">&nbsp;</td>
</tr>
<tr> 
	<td class="smalltxt"><b>Image date:</b></td>
	<td class="smalltxt"><%=fdate%></td>
</tr>
<tr>
	<td class="smalltxt"><b>Country:</b></td>
	<td class="smalltxt"><%=replace(fcountry,"_"," ")%></td>
</tr>
<tr>
	<td class="smalltxt"><b>Region:</b></td>
	<td class="smalltxt"><%=replace(fregion,"_"," ")%></td>
</tr> 
<tr>
	<td class="smalltxt" valign="top"><b>Description:</b></td>
	<td class="smalltxt" style="text-align:justify"><%=replace(fdesc,"_"," ")%></td>
</tr>
<tr> 
	<td class="smalltxt" valign="top"><b>Themes:</b></td>
	<td class="smalltxt"><%=replace(ftheme,"_"," ")%></td>
</tr>
<tr>
	<td class="smalltxt"><b>Credit:</b></td>
	<td class="smalltxt">© <%=replace(fcredit,"_"," ")%></td>
</tr> 
<tr>
	<td class="smalltxt"><b>Credit contact:</b></td>
	<td class="smalltxt"><%=fcontact%></td>
</tr>
<tr> 
	<td>&nbsp;</td>
	<td>&nbsp;</td>
</tr>
</table>
	</td>

</tr>

<tr> 
	<td>&nbsp;</td>
	<td>&nbsp;</td>
</tr>
<tr>
	<td class="smalltxt" colspan="2"><font color="#003399">To save a copy of the:<br>
&middot; Thumbnail Image:</font> right click on the above image to save it to your hard drive 
(good for Web and pdf reports).<br>
<font color="#003399">&middot; Full-sized Image:</font> Click on the above image to open it in a
separate window, then right click on the larger image to save it to your hard drive (print quality image for publications, posters, etc).<br>
<br>
<font color="#003399">MSIE:</font> Right click on the image and select 'Save Picture As...'<br>
<font color="#003399">Netscape:</font><font color="#003399">Netscape:</font> Right click on the image and select 'Save Image()...'
       </td>

</tr>
</table>

<table width="100%" border="0" cellspacing="1" cellpadding="1" align="center" style="border: solid #003399 1px; background-color: #F9F9F9;"> 
<tr>
  <td bgcolor="#ffffff" class="smalltxt" width="15%">&nbsp;</td>
  <td bgcolor="#ffffff" class="smalltxt" width="30%" align="right">&nbsp;</td>
  <td bgcolor="#ffffff" class="smalltxt" width="10%" align="left">&nbsp;</td>
  <td bgcolor="#ffffff" class="smalltxt" width="30%" align="left">&nbsp;</td>
  <td bgcolor="#ffffff" class="smalltxt" width="15%">&nbsp;</td>
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
          <td>


		  </td>
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