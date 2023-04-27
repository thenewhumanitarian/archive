<html>
<head>
<title>NEPAL – Protests in the Terai, south east Nepal</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--#include file="../includes/substyle.inc"-->

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" cellspacing="5" cellpadding="0">
<tr>
<td width="64%">
<font face="arial" color="#486DB4" style="font-size:12pt"><b>NEPAL – Protests in the Terai, south east Nepal </b></font></td>
<td width="36%"><b><a href="http://www.irinnews.org/photogallery/iringallery.asp">IRIN Photo Gallery</a>  |  <a HREF='JavaScript:this.close()'>IRIN home page</a></b></td>
</tr> 

<tr><td valign="top" colspan="2"  style="border-top: 1px solid #000000"> <table width="600" cellspacing="3" cellpadding="3" align="left" style="border-right:1 dotted #CCCCCC"> 

<tr> <td valign="top" height="550"> <p align="center"> <br> <img src="../images/design/prev.gif" id="btnPrev" onClick="Prev();" width="40"> 
<img src="../images/design/playstop.gif" id="bntPlay" onClick="Play()" width="80"> 
<img src="../images/design/nxt.gif" id="btnNext" onClick="Next();" width="40"></p><div align="center"> 

<table width="450" cellspacing="0" cellspadding="0" border="0"> <tr><td align="left"> 
<font size="1" face="arial">Please be patient while the images load</font> </td><td align="right">&nbsp;</td>
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



g_ImageTable[g_imax++] = new Array ("../images/2007263.jpg", "The Madhesi community in the south east of Nepal’s terai region has been organising political demonstrations for the last 22 days with demands for greater autonomy and more political rights to the Madhesi people, 3 February 2007.  &copy Subodh Singh/IRIN");

g_ImageTable[g_imax++] = new Array ("../images/2007264.jpg", "There are concerns among human rights groups and civilians that the protests are becoming too violent resulting in the casualties and deaths of both the protestors and police personnel. A demonstrator is being carried away by friends to hospital in Birgunj city, 300 km southeast of the capital, 3 February 2007.  &copy Subodh Singh/IRIN");

g_ImageTable[g_imax++] = new Array ("../images/2007267.jpg", "Journalists are being caught in between the violent protestors and brutal police. A journalist shows his wounds after getting thrashed by both sides while covering the violent demonstrations, 3 February 2007.  &copy Subodh Singh/IRIN");

g_ImageTable[g_imax++] = new Array ("../images/2007266.jpg", "An innocent civilian also got hit on his neck by a police bullet in Birgunj, 3 February 2007.  &copy Subodh Singh/IRIN");

g_ImageTable[g_imax++] = new Array ("../images/2007265.jpg", "A protestor shows an M-80 bullet used by the police against the unarmed protestors, 3 February 2007.  &copy Subodh Singh/IRIN");

g_ImageTable[g_imax++] = new Array ("../images/2007268.jpg", "Human rights groups say that the political leaders of the party Madhesi People's Rights Forum (MPRF) have no control over the violent protestors. A group of Madhesi youth protestors destroying a police post in Birganj, 3 February 2007.  &copy Subodh Singh/IRIN");

g_ImageTable[g_imax++] = new Array ("../images/2007269.jpg", "Many local residents coming to a health centre in Birganj to look for their injured and dead relatives, 3 February 2007.  &copy Subodh Singh/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/20072611.jpg", "The violence, strikes and curfews have brought all of south east Nepal to a standstill and causing food shortages, medical and fuel supplies, 4 February 2007.  &copy Subodh Singh/IRIN");

g_ImageTable[g_imax++] = new Array ("../images/20072610.jpg", "Blockades like this are seen all over east Nepal's Terai region to prevent any public or commercial vehicle to pass through. Even the UN trucks with food supplies have been blocked by violent protestors, 4 February 2007.  &copy Subodh Singh/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/20072613.jpg", "Local people in Birgunj organising a blood donation camp in the middle of violence to supply blood to hospitals which are running short of blood supplies, 4 February 2007,  &copy Subodh Singh/IRIN");

g_ImageTable[g_imax++] = new Array ("../images/20072612.jpg", "Civilians suffer the most due to the violence in terai and the government curfew. A sick patient in Birganj city of east Nepal—300 km south of capital--needing emergency medical attention is transported on a bicycle due to lack of ambulance as the transportation comes to a standstill, 4 February 2007.  &copy Subodh Singh/IRIN");

//extend the above list as desired
g_dwTimeOutSec=5

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