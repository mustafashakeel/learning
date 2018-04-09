var flag = false;

function zoom()
{
	var svg = document.getElementById("svg_img");
	var bmp = parent.document.getElementById("bmp");

	if(!flag)
	{
		svg.setAttribute("transform", "translate(74,57),scale(0.4)");
		bmp.width="200";
		bmp.height="206";
		flag = !flag;
	}
	else
	{
		svg.setAttribute("transform", "translate(35,29),scale(0.2)");
		bmp.width="100";
		bmp.height="103";
		flag = !flag;
	}
}

function fixBtn(id,n)
{
	
	var obj = document.getElementById(id);
	var num = id.charAt(id.length-1);
	var blb = document.getElementById("blb-"+num);
	var lbl = document.getElementById("lbl-"+num);
	var glo = document.getElementById("glo-"+num);

	if(n==1)
	{
		blb.setAttribute("fill","url(#RG2)");
		lbl.setAttribute("fill","orange");	
	}

	if(n==2)
	{
		glo.setAttribute("visibility","visible");
		obj.setAttribute("stroke","orange");
		zoom();
	}

	if(n==3)
	{
		glo.setAttribute("visibility","hidden");
		obj.setAttribute("stroke","none");
	}

	if(n==4)
	{
		blb.setAttribute("fill","url(#RG1)");
		lbl.setAttribute("fill","white");	
	}
}
