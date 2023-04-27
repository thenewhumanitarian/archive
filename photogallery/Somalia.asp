<html>
<head>
<title>Somalia</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--#include file="../includes/substyle.inc"-->

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="760" cellspacing="5" cellpadding="0">
<tr>
<td width="32%">
<font face="arial" color="#486DB4" style="font-size:12pt"><b>Somalia </b></font></td>
<td width="68%"><b><a href="http://www.irinnews.org/photogallery/iringallery.asp">IRIN Photo Gallery</a>  |  <a HREF='JavaScript:this.close()'>close</a></b></td>
</tr> 

<tr><td valign="top" align="center" colspan="2" style="border-top: 1px solid #000000" > <table width="600" cellspacing="3" cellpadding="3"> 

<tr> <td valign="top" height="550"> <p align="center"> <br> <img src="../images/design/prev.gif" id="btnPrev" onClick="Prev();" width="40"> 
<img src="../images/design/playstop.gif" id="bntPlay" onClick="Play()" width="80"> 
<img src="../images/design/nxt.gif" id="btnNext" onClick="Next();" width="40"></p><div align="center"> 

<table width="450" cellspacing="0" cellspadding="0" border="0"> <tr><td width="303" align="left"> 
<font size="1" face="arial">Please be patient while the images load</font> </td><td width="143" align="right">&nbsp; 
 </td>
</tr> </table>
<img name="_Ath_Slide" width="450" id="_Ath_Slide" onload="OnImgLoad()"></div>
<font size="1" face="arial"> 
<p align="center"><b></b> <SPAN id="_Ath_FileName"> </SPAN> <br> <b>Photo: <SPAN id="_Ath_Img_X"></SPAN> 
&nbsp;of <SPAN id="_Ath_Img_N"></SPAN></b></p></font> <p align="center">

<script language="JavaScript">
<!--
////////////////////////////////////////////////////////////// more info
function toggleDetails(num) 
	{
		if(document.getElementById)
			{ 
				objRef = document.getElementById("descriptionTxt" + num);
				expanderRef = document.getElementById("expander" + num);
	
				if (objRef.style.display=="none")
					{
						objRef.style.display = "block";
						expanderRef.setAttribute("src", "../images/design/minus.gif");
						expanderRef.setAttribute("alt", "Hide links");
					}
				else if (objRef.style.display=="block" || objRef.style.display=="")
					{
						objRef.style.display = "none";
						expanderRef.setAttribute("src", "../images/design/plus.gif");
						expanderRef.setAttribute("alt", "Display links");
					}
			}
	}

// -->
</script>

<script language="JavaScript1.2">

/*
Interactive Image slideshow with text description
By Christian Carlessi Salvadó (cocolinks@c.net.gt). Keep this notice intact.
Visit http://www.dynamicdrive.com for script
*/


g_fPlayMode = 0;
g_iimg = -1;
g_imax = 0;
g_ImageTable = new Array();

function ChangeImage(fFwd)
{
if (fFwd)
{
if (++g_iimg==g_imax)
g_iimg=0;
}
else
{
if (g_iimg==0)
g_iimg=g_imax;
g_iimg--;
}
Update();
}

function getobject(obj){
if (document.getElementById)
return document.getElementById(obj)
else if (document.all)
return document.all[obj]
}

function Update(){
getobject("_Ath_Slide").src = g_ImageTable[g_iimg][0];
getobject("_Ath_FileName").innerHTML = g_ImageTable[g_iimg][1];
getobject("_Ath_Img_X").innerHTML = g_iimg + 1;
getobject("_Ath_Img_N").innerHTML = g_imax;
}


function Play()
{
g_fPlayMode = !g_fPlayMode;
if (g_fPlayMode)
{
getobject("btnPrev").disabled = getobject("btnNext").disabled = true;
Next();
}
else 
{
getobject("btnPrev").disabled = getobject("btnNext").disabled = false;

}
}
function OnImgLoad()
{
if (g_fPlayMode)
window.setTimeout("Tick()", g_dwTimeOutSec*1000);
}
function Tick() 
{
if (g_fPlayMode)
Next();
}
function Prev()
{
ChangeImage(false);
}
function Next()
{
ChangeImage(true);
}


////configure below variables/////////////////////////////

//configure the below images and description to your own. 

g_ImageTable[g_imax++] = new Array ("../images/originals/200662711.jpg", "The crowd at an Islamic Union rally in Mogadishu  &copy Abdimalik Yusuf/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200662710.jpg", "The Islamic court militia easily mingle with civilians  &copy Abdimalik Yusuf/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20066279.jpg", "Since the Islamic courts took control of Mogadishu on 4 June, the streets are calm and people are enjoying relative peace of mind.  &copy Abdimalik Yusuf/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20066278.jpg", "A child who was injured during the fighting for control of Mogadishu  &copy Abdimalik Yusuf/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20066277.jpg", "Infrastructure in Mogadishu has suffered from one and half decades of neglect. In many parts of the once-beautiful city, ruins of buildings stand out as reminders of the problems Somalia has experienced.   &copy Abdimalik Yusuf/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20066276.jpg", "A child who was injured during the fighting for control of Mogadishu lies in a hospital bed.   &copy Abdimalik Yusuf/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20066275.jpg", "Civilians who were displaced by recent fighting between the Islamic Courts militia and armed men loyal to Mogadishu’s faction leaders. The faction leaders have all fled the city.  &copy Abdimalik Yusuf/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20066274.jpg", "The Mogadishu skyline is so serene that it creates the impression that all is well in the capital.   &copy Abdimalik Yusuf/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20066273.jpg", "Internally displaced Somalis in makeshift shelters in Mogadishu. Many complain that since the Islamic Courts took control several weeks ago, their plight has not yet been addressed  &copy Abdimalik Yusuf/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20066272.jpg", "Islamic court militias on street patrol in Mogadishu after assuming full control of the war-ravaged Somali capital. They have brought relative calm to the city, once notorious for insecurity perpetrated by various armed groups loyal to ‘warlords’.   &copy Abdimalik Yusuf/IRIN");
//extend the above list as desired
g_dwTimeOutSec=5

////End configuration//////////////////////////////

if (document.getElementById||document.all)
window.onload=Play

</script> </p>

</td>
</tr>
</table>
<hr color="#000000" size="1"></td>
</tr> 
</table>

<script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-1171245-1";
urchinTracker();
</script>
</body>
</html>