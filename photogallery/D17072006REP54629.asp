<html>
<head>
<title>The aftermath of Israeli attacks in Lebanon</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--#include file="../includes/substyle.inc"-->

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="760" cellspacing="5" cellpadding="0">
<tr>
<td width="32%">
<font face="arial" color="#486DB4" style="font-size:12pt"><b>The aftermath of Israeli attacks in Lebanon</b></font></td>
<td width="68%"><b><a href="http://www.irinnews.org/photogallery/iringallery.asp">IRIN Photo Gallery</a> | <a HREF='JavaScript:this.close()'>close</a></b></td>
</tr> 

<tr><td valign="top" align="center" colspan="2" style="border-top: 1px solid #000000" > <table width="600" cellspacing="3" cellpadding="3"> 

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
g_ImageTable[g_imax++] = new Array ("../images/originals/20067162.jpg", "The aftermath of Israeli attacks on Beirut, Lebanon, 16 July 2006. The United Nations has warned of a humanitarian disaster in Lebanon, as Israel intensifies its military offensive after two of its soldiers were captured by Hezbollah militants on 12 July. The Israeli government has demanded the immediate release of the two captured soldiers and that Hezbollah should be disarmed. &copy Peter Speetjens/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20067166.jpg", "People wait in line to buy supplies in fear of continued Israeli attacks, Beirut, Lebanon, 16 July 2006. Israel has launched raids on southern Lebanon after the capture of two of its soldiers by Hezbollah militants on 12 July. &copy Marie Claire Feghali/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200671727.jpg", "Displaced people in Karm al-Zeytun primary school east Beirut. &copy Peter Speetjens/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200671911.jpg", "Displacement from the south is increasing, officials say. &copy Peter Speetjens/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20067211.jpg", "A Lebanese soldier stands guard as women and children in Beirut’s port wait to be evacuated following the clashes between Israel and Lebanon-based Hizbollah, 20 July 2006. At least 306 people have been killed and 500,000 civilians displaced in Lebanon, while 31 Israelis have been reported dead, including 15 civilians killed by rockets fired by Hizbollah into Israel. &copy Haitham Moussawi/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20067214.jpg", "Residents of Hay Madi, a southern suburb of Beirut, salvage what remains of their home and business after an Israeli airstrike. &copy Hugh Macleod/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20067220.jpg", "A young Lebanese boy with his mother try to cope with continuous Israeli air-raids, Beirut, 20 July 2006. At least 306 people have been killed and 500,000 civilians displaced in Lebanon, following the week-long clashes between Israel and Hizbollah. Thirty-one Israelis have been reported dead, including 15 civilians killed by rockets fired into Israel by Hizbollah. &copy Haitham Moussawi/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20067226.jpg", "A doctor at Sahel Hospital inspects the damage inflicted by Israeli airstrikes. &copy Hugh Macleod/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200672211.jpg", "Sudanese workers in Beirut prepare for the dangerous drive to Syria from where they will fly to Khartoum. &copy Hugh Macleod/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2006723.jpg", "Children play in Chatila camp beside burned buildings and growing piles of waste. &copy Hugh Macleod/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20067231.jpg", "Inaam Haidar’s children are suffering from the psychological trauma of war. &copy IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20067233.jpg", "A man stands amidst the ruins of buildings in the aftermath of Israeli bombing raids, Beirut, 21 July 2006. As thousands of people try to leave southern Lebanon, the United Nations has warned of a humanitarian crisis. Jan Egeland, the UN humanitarian chief, said half a million people in the country need assistance and the number is likely to increase. &copy Haitham Moussawi/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20067171.jpg", "Israeli attack on port on 17 July 2006 - reportedly killing two civilians. &copy Peter Speetjens/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20067170.jpg", "Displaced on the way to safety (at Corniche al-Mazra). &copy Peter Speetjens/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20067165.jpg", "The aftermath of attacks by Israel on Lebanon. A crater caused by a bomb next to a Church on the edge of south Beirut. &copy Peter Speetjens/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20067162.jpg", "The aftermath of attacks by Israel on Lebanon. A street littered with debris following the attack in Haret Hreyk. &copy Peter Speetjens/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20067163.jpg", "The aftermath of attacks by Israel on Lebanon. Bridge of Haret Hreyk - above. &copy Peter Speetjens/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20067164.jpg", "The aftermath of attacks by Israel on Lebanon. This office block in Chiah was badly damaged. &copy Peter Speetjens/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20067160.jpg", "A bridge in Ghobery, leading to Lebanon’s international airport was also bombed. &copy Peter Speetjens/IRIN");

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