<html>
<head>
<title>Zimbabwe's displaced</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--#include file="../includes/substyle.inc"-->

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="730" cellspacing="5" cellpadding="0">
<tr>
<td width="32%">
<font face="arial" color="#486DB4" style="font-size:12pt"><b>Zimbabwe's displaced</b></font></td>
<td width="68%" align="right"><b><a HREF='JavaScript:this.close()'>close</a></b></td>
</tr> 

<tr><td valign="top" align="center" colspan="2" style="border-top: 1px solid #000000" > <table width="600" cellspacing="3" cellpadding="3"> 

<tr> <td valign="top" height="550"> <p align="center"> <br> <img src="../images/design/prev.gif" id="btnPrev" onClick="Prev();" width="40"> 
<img src="../images/design/playstop.gif" id="bntPlay" onClick="Play()" width="80"> 
<img src="../images/design/nxt.gif" id="btnNext" onClick="Next();" width="40"></p><div align="center"> 

<table width="450" cellspacing="0" cellspadding="0" border="0"> <tr><td align="left"> 
<font size="1" face="arial">Please be patient while the images load</font> </td><td align="right"> 
<font size="1" face="arial" color="#003399">&copy; IRIN</font> </td></tr> </table>
<img name="_Ath_Slide" width="500" id="_Ath_Slide" onload="OnImgLoad()"></div>
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



g_ImageTable[g_imax++] = new Array ("../images/originals/20065822.jpg", "<b>Epworth:</b>  A year after operation Murambatsvina  ('Drive out Filth'), an urban purge of unlicensed dwellings, several hundred displaced residents in the Epworth township are struggling to make ends meet. They have even sought refuge around the the unique rock formations outside the  capital, Harare. The Zimbabwean government has maintained that the operation was aimed at clearing slums and flushing out criminals, but left more than 700,000 people homeless or without a livelihood in the winter of 2005.  &copy IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20065819.jpg", "<b>Hopely Farm:</b> Many of those made homeless by Murambatsvina, who didn't return to their rural homes, moved to resettlement sites on the outskirts of Harare. The government promised that those who qualified would eventually be provided with housing. This demonstration model for a temporary shelter was built by the UN in Hopely farm resettlement camp - the model was rejected by the Zimbabwean government as ''sub-standard.'' Hopely farm is home to at least 2,000 families.  &copy IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20065818.jpg", "<b>Hopely Farm:</b> Families yet to be allocated either a government-constructed home or a temporary shelter put by the International Organisation for Migration (IOM) make do as best they can.  &copy IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20065817.jpg", "<b>Hopely Farm:</b> Visitors and aid supplies to the resettlement camp have to be cleared by security at the entrance. The government says it is to prevent interlopers from accessing relief.  &copy IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20065816.jpg", "<b>Hopely:</b> IOM is busy constructing temporary shelters. The thick plastic sheets, which function as walls of the shelter, are sunk 3m into the ground to ensure rigidity.  &copy IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20065813.jpg", "<b>Hopely:</b> Only a few families identified as vulnerable have access to food aid in Hopley. The majority, most of whom are unemployed, have to find their own provisions.  &copy IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20065811.jpg", "<b>Hatfield:</b> Several hundred families affected by Murambatsvina are struggling to make ends meet in Hatfield. People typically collect firewood for sale or grow vegetables.  &copy IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2006588.jpg", "<b>Hatfield:</b> A woman tries to sell maize outside her government-constructed house in Hatfield. The government has built some 100-odd houses in the settlement.  &copy IRIN");
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