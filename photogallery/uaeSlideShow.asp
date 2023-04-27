<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--#include file="../includes/substyle.inc"-->

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="760" cellspacing="5" cellpadding="0">
<tr>
<td width="32%">&nbsp;
</td>
<td width="68%"><b><a href="http://www.irinnews.org/photogallery/iringallery.asp">IRIN Photo Gallery</a> | <a HREF='JavaScript:this.close()'>close</a></b></td>
</tr> 

<tr><td valign="top" align="center" colspan="2" style="border-top: 1px solid #000000" > <table width="600" cellspacing="3" cellpadding="3"> 

<tr> <td valign="top" height="550"> <p align="center"> <br> <img src="../images/design/prev.gif" id="btnPrev" onClick="Prev();" width="40"> 
<img src="../images/design/playstop.gif" id="bntPlay" onClick="Play()" width="80"> 
<img src="../images/design/nxt.gif" id="btnNext" onClick="Next();" width="40"></p><div align="center"> 

<table width="450" cellspacing="0" cellspadding="0" border="0"> <tr><td align="left"> 
<font size="1" face="arial">Please be patient while the images load</font> </td><td align="right"> 
<font size="1" face="arial" color="#003399">&copy; IRIN</font> </td></tr> </table>
<img name="_Ath_Slide" width="550" id="_Ath_Slide" onload="OnImgLoad()"></div>
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
window.setTimeout("Tick()", g_dwTimeOutSec*450);
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
g_ImageTable[g_imax++] = new Array ("../images/originals/200611227.jpg", "Many workers say they are glad their accommodation comes free. [Date picture taken: 11/2006]. &copy Serene Assir/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200611226.jpg", "Human rights organisations including HRW criticised the cramped conditions in which expat workers live. [Date picture taken: 11/2006]. &copy Serene Assir/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200611225.jpg", "Expat workers live in accommodation known as 'labour camps', and six to 10 men may share a single room. [Date picture taken: 11/2006]. &copy Serene Assir/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200611224.jpg", "Expat workers live in accommodation known as 'labour camps', and six to 10 men may share a single room. [Date picture taken: 11/2006]. &copy Serene Assir/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200611223.jpg", "Though Gangaram (centre) works long hours and is paid little, he is thankful to have found better work opportunities than he would in his native India. [Date picture taken: 11/2006]. &copy Serene Assir/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200611222.jpg", "Expat construction workers often work long hours. [Date picture taken: 11/2006]. &copy Serene Assir/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200611221.jpg", "A sign marks the entrance into one of the UAE's larger construction sites. [Date picture taken: 11/2006] &copy Serene Assir/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200611220.jpg", "Still, the contrast between the living conditions of the construction workers and those inhabiting the buildings they have built is astounding. [Date picture taken: 11/2006]. &copy Serene Assir/IRIN");
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