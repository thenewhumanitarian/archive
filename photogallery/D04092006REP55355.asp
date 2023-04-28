<html>
<head>
<title>NEPAL - Flood crisis</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--#include file="../includes/substyle.inc"-->

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="760" cellspacing="5" cellpadding="0">
<tr>
<td width="32%">
<font face="arial" color="#486DB4" style="font-size:12pt"><b>NEPAL - Flood crisis</b></font></td>
<td width="68%"><b><a href="http://www.irinnews.org/photogallery/iringallery.asp">IRIN Photo Gallery</a>  |  <a HREF='JavaScript:this.close()'>close</a></b></td>
</tr> 

<tr><td valign="top" align="center" colspan="2" style="border-top: 1px solid #000000" > <table width="600" cellspacing="3" cellpadding="3"> 

<tr> <td valign="top" height="550"> <p align="center"> <br> <img src="../images/design/prev.gif" id="btnPrev" onClick="Prev();" width="40"> 
<img src="../images/design/playstop.gif" id="bntPlay" onClick="Play()" width="80"> 
<img src="../images/design/nxt.gif" id="btnNext" onClick="Next();" width="40"></p><div align="center"> 

<table width="450" cellspacing="0" cellspadding="0" border="0"> <tr><td align="left"> 
<font size="1" face="arial">Please be patient while the images load</font> </td><td align="right"> 
<font size="1" face="arial" color="#003399">&copy; Naresh Newar/IRIN</font> </td></tr> </table>
<img name="_Ath_Slide" width="450" id="_Ath_Slide" onload="OnImgLoad()"></div>
<font size="1" face="arial">
<div style="text-align: center;">Banke district, western Nepal, 600 km west of Kathmandu.</div>
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

g_ImageTable[g_imax++] = new Array ("../images/originals/2006940.jpg", "Heavy monsoon rains have severely affected western Nepal, killing at least 50 people and destroying food stocks for tens of thousands of families. &copy Naresh Newar/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2006941.jpg", "As a result of heavy flooding and landslides, most of the roads to remote areas have been destroyed. &copy Naresh Newar/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2006942.jpg", "A handful of boats in Banke district are the only means of transportation for the villagers. &copy Naresh Newar/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2006943.jpg", "Desperate for food, thousands of people cross the river everyday to get their food supplies from relief organisations. &copy Naresh Newar/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2006944.jpg", "Both children and their parents walk for hours to get the food supplied by the Nepal Red Cross Society and the few aid agencies on the ground. &copy Naresh Newar/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2006945.jpg", "Many villagers are running out of food since the supplies from the government and aid agencies hardly last a few days. &copy Naresh Newar/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2006946.jpg", "Women and children wait a whole day for their male relatives to come back with food. &copy Naresh Newar/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2006947.jpg", "Scores of children have become sick due to water-borne diseases and unhygienic conditions as a result of the floods.  Many suffer from eye-borne diseases, fever, diarrhea, cholera and scabies. There is still a lack of enough medical provisions. &copy Naresh Newar/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2006948.jpg", "Marra Goriya and her daughters live under a plastic roof after their house was completely destroyed by the flood. Housing is a major problem for thousands of flood victims. &copy Naresh Newar/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2006949.jpg", "Due to hunger, many families are digging out the wheat stocks from the wet ground and grinding the mud-filled wheat for food. &copy Naresh Newar/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20069410.jpg", "With an acute shortage of food supplies, local communities from urban areas have taken to raise funds to help the villagers. Here young students provide rice, sugar, salt and lentils, as well as clothes for over 550 families in Banke district. &copy Naresh Newar/IRIN");
//extend the above list as desired
g_dwTimeOutSec=10

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