$(document).ready( function() {
var target="";
		
		var moves= [[0,1],[0,1,2],[1,2,3],[2,3,4],[3,4,5],[2,3,4,5],[1,2,3,4],[0,1,2,3],[0,1,2,3,4],[1,2,3,4,5],[0,1,2,3,4,5],[0,1,2,3,4,5]];				
		var tab=$('#tableBody');//document.getElementById('theTable');
		tab.css('text-align','center');
		for(var it=0; it<moves.length;it++)
		{
			tab.append("<tr class='grid'></tr>");//innerHTML+="<tr class='grid' id='a"+it+"'>test</tr>";
		}
		for(var i=0;i<8;i++)
		{
			$('.grid').append("<td class='col"+i+"'>space</td>");
		}
		
		$('.col7').html('correct position: A Correct letter: B');
		var curRow=0;
		$('.grid').each( function() {
				$(this).children().first().html(curRow+1);
				$(this).children().first().css('color','cyan');
				$(this).children().each( function(){
				var bool=false;
				for(var k=0;k<moves[curRow].length;k++)
				{
				if($(this).attr('class').indexOf(moves[curRow][k]+1)!=-1)
				{
					bool=true;
				}
				}
				if(bool){
			$(this).css("background-color","blue");
			$(this).html('');}
				else
				{$(this).css("background-color","black");}
				});
			curRow++;
			});
		var targArr = ["ZYGOTE","JAGUAR","ERRORS","SEEKER","MUMMED","SYZYGY","JOKERS","JUDGED","XYLENE","ICICLE","APATHY","COCCYX","FASCIA","RUBRIC","MAMMAL","GUINEA","UNGULA","EQUINE","KNOBBY","OCELOT","SETTEE"];
		var target = targArr[Math.round(targArr.length*Math.random())];
		target=target.trim().toUpperCase();
		//for(var runs=0;runs<moves.length;runs++)
		var runs=0;
		$('.grid').each(function(){
		{
			var guess = "";
			var cp=0;
			var cl=0;
			while(guess.length!=moves[runs].length)
			{
				var disp="OOOOOO";
				for(var e=0;e< moves[runs].length;e++) //**
				{
					disp=disp.substring(0,moves[runs][e])+"X"+disp.substring(moves[runs][e]+1);
				}
				guess=prompt("Desired word for:"+disp).trim().toUpperCase();
				
			}
			var tempTarg=target;
			var tempGuess=guess;
			var linetarg = "";
			for(var q=0;q<guess.length;q++)
			{
				var cur =""+guess.charAt(q);
				if(target.indexOf(cur)!=-1)
				{
					if(target.charAt(moves[runs][q])==guess.charAt(q))
					{
						cp++;
						if(tempTarg.indexOf(cur)==-1)
						{
							cl-=1;
						}
					}
					else
					{
						if(tempTarg.indexOf(cur)!=-1)
						{
						cl++;
						}
					}
					tempTarg=tempTarg.substring(0,tempTarg.indexOf(cur))+tempTarg.substring(tempTarg.indexOf(cur)+1);
					linetarg+=tempTarg;
				}
			}
			//alert(linetarg);
			$(this).children().each( function(){
				var bool=false;
				for(var k=0;k<moves[runs].length;k++)
				{
				if($(this).attr('class').indexOf(moves[runs][k]+1)!=-1)
				{
					$(this).html(guess.charAt(k));
					$(this).css('color','white');
				}
				}
				});
			$(this).children().last().html("correct position: "+cp+" Correct letter: "+cl);
			$(this).children().last().css('color','white');
			runs++;
			//alert("correct position: "+Math.round(clevsum/10-.5)+" Correct letter: "+clevsum%10);
		}
		});//for the $grid replacing for

		});