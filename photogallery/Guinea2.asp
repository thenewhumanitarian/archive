<html>
<head>
<title>GUINEA BISSAU &ndash; Hunger in a land of plenty</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--#include file="../includes/substyle.inc"-->

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" cellspacing="5" cellpadding="0">
<tr>
<td width="64%">
<font color="#486DB4" size="2" face="Tahoma"><b>GUINEA BISSAU – Hunger in a land of plenty </b></font></td>
<td width="36%"><font size="2" face="Tahoma"><b><a href="http://www.irinnews.org/photo.aspx">IRIN Photo Gallery</a>  |  <a HREF='JavaScript:this.close()'>IRIN home page</a></b></font></td>
</tr> 

<tr><td valign="top" colspan="2"  style="border-top: 1px solid #000000"> <table width="600" cellspacing="3" cellpadding="3" align="left" style="border-right:1 dotted #CCCCCC"> 

<tr> <td valign="top" height="550"> <p align="center"> <br> <img src="../images/design/prev.gif" id="btnPrev" onClick="Prev();" width="40"> 
<img src="../images/design/playstop.gif" id="bntPlay" onClick="Play()" width="80"> 
<img src="../images/design/nxt.gif" id="btnNext" onClick="Next();" width="40"></p><div align="center"> 

<table width="450" cellspacing="0" cellspadding="0" border="0"> <tr><td align="left"> 
<font size="-2" face="Tahoma">Please be patient while the images load</font> </td>
<td align="right">&nbsp;</td>
</tr> </table>
<img name="_Ath_Slide"  id="_Ath_Slide" onload="OnImgLoad()"></div>
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
window.setTimeout("Tick()", g_dwTimeOutSec*2000);
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



g_ImageTable[g_imax++] = new Array ("../images/2007/200702207.jpg", "Fatou Nasanha and her two sons threshing rice at Bedanda in southern Guinea Bissau, 25 January 2007  &copy David Hecht/IRIN");

g_ImageTable[g_imax++] = new Array ("../images/2007/200702208.jpg", "The land is perfect for rice growing as long as the sea water doesn’t spill over the traditional dyke system, Quinara Region in southern Guinea Bissau 25 January 2005.  &copy David Hecht/IRIN");

g_ImageTable[g_imax++] = new Array ("../images/2007/2007022010.jpg","West African rice varieties are indigenous and farmers have developed farming techniques over hundreds, possibly thousands of years. Buba, capital of Quinara Region in southern Guinea Bissau, 26 January 2007,   &copy David Hecht/IRIN");

g_ImageTable[g_imax++] = new Array ("../images/2007/200702203.jpg", "Domingo Embana, a rice farmer in front to his harvest, ready to start threshing the rice  between the towns of Bafata and Bissau, Guinea Bissau, 26 January 2007.   &copy David Hecht/IRIN");

g_ImageTable[g_imax++] = new Array ("../images/2007/200702204.jpg", "With cashew buyers not buying the 2006 crop, tens of thousands of tons sit piled up in warehouses and much of the harvest is now rotting, Buba, capital of Quinara Region in southern Guinea Bissau, 26 Jan 2007.   &copy David Hecht/IRIN");

g_ImageTable[g_imax++] = new Array ("../images/2007/200702218.jpg", "Acting chief of the village of Bedanda Nhinna na N’tchama said. “To get rice we sold our tools, our clothes and all our domestic animals. Quinara Region in southern Guinea Bissau , 25 January 2007.   &copy David Hecht/IRIN");

g_ImageTable[g_imax++] = new Array ("../images/2007/200702211.jpg", "Roads are bad in southern Guinea Bissau both in the dry season and the wet season, Quinara Region in southern Guinea Bissau, 26 January 2006   &copy David Hecht/IRIN");

g_ImageTable[g_imax++] = new Array ("../images/2007/200702212.jpg", "Local and imported rice is now readily available in Babu market, Buba, capital of Quinara Region in southern Guinea Bissau, 26 January 2007  &copy David Hecht/IRIN");

g_ImageTable[g_imax++] = new Array ("../images/2007/200702215.jpg", "Yams and sweet potatoes are plentiful but people prefer to eat rice, regional capital Bafata road, Guinea Bissau, 26 January 2007  &copy David Hecht/IRIN");

//extend the above list as desired
g_dwTimeOutSec=10

////End configuration//////////////////////////////

if (document.getElementById||document.all)
window.onload=Play

</script> </p>

</td>
</tr>
</table>
<br></td>
</tr> 
</table>

<hr color="#000000" size="1"> 
</body>
</html>