<html>
<head>
<title>DRC Elections</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--#include file="../includes/substyle.inc"-->

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" cellspacing="5" cellpadding="0">
<tr>
<td width="32%">
<font face="arial" color="#486DB4" style="font-size:12pt"><b>DRC Elections </b></font></td>
<td width="68%"><b><a href="http://www.irinnews.org/photogallery/iringallery.asp">IRIN Photo Gallery</a>  |  <a HREF='JavaScript:this.close()'>IRIN home page</a></b></td>
</tr> 

<tr><td valign="top" colspan="2"  style="border-top: 1px solid #000000"> <table width="600" cellspacing="3" cellpadding="3" align="left" style="border-right:1 dotted #CCCCCC"> 

<tr> <td valign="top" height="550"> <p align="center"> <br> <img src="../images/design/prev.gif" id="btnPrev" onClick="Prev();" width="40"> 
<img src="../images/design/playstop.gif" id="bntPlay" onClick="Play()" width="80"> 
<img src="../images/design/nxt.gif" id="btnNext" onClick="Next();" width="40"></p><div align="center"> 

<table width="450" cellspacing="0" cellspadding="0" border="0"> <tr><td align="left"> 
<font size="1" face="arial">Please be patient while the images load</font> </td><td align="right"> 
<font size="1" face="arial" color="#003399">&copy; IRIN</font> </td></tr> </table>
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



g_ImageTable[g_imax++] = new Array ("../images/originals/200662815.jpg", "A smile of hope: Girl in the forest of Isangi Territory on her way to school.  &copy Eddy Isango/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20066196.jpg", "	Elections amid decay: A rusting barge and the flag of president Joseph Kabila's party on the banks of the Congo.  &copy Hugo Rami/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20066283.jpg", "	AIDS patient: The poorest people can expect little help in the public hospital of Kisangani.   &copy Hugo Rami/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20066289.jpg", "Preventable diseases return with a vengeance: Patient with broken hospital equipment in Kisangani public hospital.   &copy Hugo Rami/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200662811.jpg", "No money for medicine: The health system is in a state of total collapse. Father and child in Isangi hospital.   &copy Hugo Rami/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200662814.jpg", "No money, no school: Many parents cannot afford school fees. Children without books and pens in a primary school in Oriental province.   &copy Stuart Price/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200662816.jpg", "Forgotten killer: An injection of arsenic medicine for a toddler suffering from sleeping sickness. &copy Hugo Rami/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20053223.jpg", "Conflict and violence: Camp with internally displaced people in Ituri.  &copy Hugo Rami/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20053225.jpg", "Protective cover: MONUC soldiers watching over a camp of internally displaced people in Ituri. &copy Hugo Rami/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200662818.jpg", "Crumbling justice system: The director of prisons for Oriental province in front of his dilapidated office.  &copy Hugo Rami/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200662819.jpg", "Waiting for justice: Prisoners in Osio prison in Kisangani get a second chance by the court of appeals.  &copy Hugo Rami/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200662831.jpg", "Free to go: Prisoners in Osio prison, Kisangani, broke the locks on their cells when they were left starving.  &copy Hugo Rami/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200662833.jpg", "Cook your own: Prison food - roots and leaves of cassava grown by the inmates of Osio prison, Kisangani.  &copy Hugo Rami/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200662832.jpg", "Total collapse: The roofs in Kisangani’s Central prison caved in.");
g_ImageTable[g_imax++] = new Array ("../images/originals/200662834.jpg", "Left to rot: Prisoner in Central prison, Kisangani, waiting to be judged.");
g_ImageTable[g_imax++] = new Array ("../images/originals/200662835.jpg", "Needs intensive care: The director of Kisangani public hospital in a decaying ward.");
g_ImageTable[g_imax++] = new Array ("../images/originals/20066191.jpg", "Floating on the Congo River: News in the interior of the country travels slowly. &copy Hugo Rami/IRIN");

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
<script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-1171245-1";
urchinTracker();
</script></body>
</html>