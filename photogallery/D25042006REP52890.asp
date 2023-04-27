<html>
<head>
<title>Nepal protests</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--#include file="../includes/substyle.inc"-->

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="760" cellspacing="5" cellpadding="0">
<tr>
<td width="32%">
<font face="arial" color="#486DB4" style="font-size:12pt"><b>Nepal protests</b></font></td>
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

g_ImageTable[g_imax++] = new Array ("../images/originals/20064257.jpg", "Child rights activists are seriously concerned over the closure of schools and the increasing number of children joining the adult demonstrators. &copy Naresh Newar/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20064258.jpg", "Despite the curfew in the capital, tens of thousands have come to the main streets of the city to publicly defy the government ban. &copy Naresh Newar/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20064259.jpg", "Nepalese youth are taking the lead in many of the country’s anti-king protests. &copy Naresh Newar/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2006425.jpg", "Since 5 April, Nepal has come to a standstill following an indefinite general strike organised by the seven main opposition parties. &copy Naresh Newar/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20064250.jpg", "The royal government ordered the police and armed units to use any force necessary to prevent the anti-king protests. &copy Naresh Newar/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20064251.jpg", "Human rights groups and members of the international community, especially the United Nations, have been critical of the excessive use of force against the peaceful demonstrators. According to the Nepali Congress (NC), the country’s largest party, over 5,000 demonstrators were left injured in less than 20 days. &copy Naresh Newar/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20064252.jpg", "Even children, who had joined their parents in the protests, have not escaped the violence on the streets. &copy Naresh Newar/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20064253.jpg", "An injured policeman following clashes between demonstrators and security forces. &copy Naresh Newar/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20064254.jpg", "The indefinite strike by the opposition parties, coupled with a government-imposed a curfew has strongly affected tourism, Nepal’s largest industry and a critical source of revenue. &copy Naresh Newar/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20064255.jpg", "The deteriorating situation has led to heavy price hikes of basic food supplies, including fruit and vegetables. &copy Naresh Newar/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20064256.jpg", "Transportation has halted since 5 April due to the nationwide strikes, preventing many Nepalese migrants from returning to their villages. &copy Naresh Newar/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200642511.jpg", "Nepal’s political crisis has caught the attention of the world press. &copy Naresh Newar/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200642510.jpg", "Many private hospitals and rescue groups are still unable to rescue many injured demonstrators due to a lack of curfew passes. &copy Naresh Newar/IRIN");
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