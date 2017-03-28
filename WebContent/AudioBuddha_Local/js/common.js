var myObj, i, x = "";
var myObj = {
	"a1": ["2.1.1.네 가지 진리", "2.1.2.계·정·혜를 닦아라", "2.1.3.고행과 바른 수행", "2.1.4.신통을 금하다", "2.1.5.적을 막는 길", "2.1.6.마음의 주인이 되라", "2.1.7.법이 쇠퇴하지 않으려면", "2.1.8.악인은 침묵으로 대하라", "2.1.9.수행자와 여인", "2.1.10.사성에서 뛰어난 사람", "2.1.11.사문의 과보", "2.1.12.청정한 계행의 과보", "2.1.13.계행과 정진으로 얻은 자유", "2.1.14.허물어진 탑에는 흙을 바를 수 없다"],
	"a2": ["2.2.1.탐욕의 재앙", "2.2.2.세속에서 뛰어나는 법", "2.2.3.백골로 돌아갈 육신", "2.2.4.최상의 법륜", "2.2.5.정견과 사견", "2.2.6.뗏목의 비유", "2.2.7.네 것이 아닌 것은 버려라", "2.2.8.욕심이 없는 사람이 얻는 도", "2.2.9.검은 업과 흰 업", "2.2.10.설법과 침묵", "2.2.11.독 묻은 화살", "2.2.12.길을 가리킬 뿐이다"],
	"a3": ["2.3.1.괴로움을 없애려면", "2.3.2.너무 조이거나 늦추지 마라", "2.3.3.법을 보는 이는 여래를 본다", "2.3.4.복짓는 사람", "2.3.5.바다의 진리", "2.3.6.법다운 보시", "2.3.7.피할 수 없는 죽음", "2.3.8.강물에 떠내려가는 통나무처럼"],
	"a4": ["2.4.1.비를 뿌리려거든", "2.4.2.무소의 뿔처럼", "2.4.3.나도 갈고 뿌린 후에 먹는다", "2.4.4.천한 사람", "2.4.5.평안한 사람", "2.4.6.성인의 길", "2.4.7.인간의 육체", "2.4.8.출가는 안온한 길", "2.4.9.번뇌의 화살", "2.4.10.흔들리는 평안", "2.4.11.무엇이 최고인가", "2.4.12.연꽃처럼", "2.4.13.수행자"],
	"a5": ["2.5.1.잠 못 드는 사람에게", "2.5.2.무엇을 웃고 무엇을 기뻐하리", "2.5.3.음욕보다 더한 불길은 없다"],
	"a6": ["2.6.1.니그로다 사슴", "2.6.2.가난한 여인의 등불", "2.6.3.시 한 편과 바꾼 목숨", "2.6.4.죽은 소에게 풀을 먹이다", "2.6.5.왕위를 보시하다", "2.6.6.말 많은 임금님", "2.6.7.배은망덕", "2.6.8.원망을 원망으로 갚지 말라", "2.6.9.비둘기 대신 자기 몸을 주다"],
	"a7": ["2.7.1.화 잘 내는 사람", "2.7.2.옹기장이 대신 나귀를 사오다", "2.7.3.물이 보기 싫거든 물가를 떠나라", "2.7.4.연주의 대가를 못 받은 악사", "2.7.5.누각의 삼층만 지으려는 부자", "2.7.6.가난한 아이의 욕심", "2.7.7.귀한 목재로 숯을 굽다", "2.7.8.나귀의 젖을 짜려는 사람들", "2.7.9.과일을 따려고 나무를 베다", "2.7.10.재산은 놓아두고 문만 지키다", "2.7.11.참깨를 볶아 심다", "2.7.12.머리를 끌고 가는 꼬리", "2.7.13.떡 한 개로 입을 봉한 부부", "2.7.14.입을 걷어차다", "2.7.15.한꺼번에 짜려던 우유", "2.7.16.물속에 비친 금덩이", "2.7.17.거울 속의 사람"],
	"a8": ["2.8.1.번뇌의 업과 악행", "2.8.2.대인 관계", "2.8.3.어진 아내의 길"],
	"a9": ["2.9.1.출가 생활", "2.9.2.열 가지 선악", "2.9.3.허공에 침 뱉기", "2.9.4.큰 공덕", "2.9.5.스무 가지 어려움", "2.9.6.전생 일을 알려면", "2.9.7.힘세고 밝은 것", "2.9.8.도를 얻으려면", "2.9.9.칼날에 묻은 꿀", "2.9.10.진흙에 더럽혀지지 않는 연꽃", "2.9.11.사람으로 태어나기 어렵다", "2.9.12.목숨은 호흡 사이에", "2.9.13.문틈에 비친 먼지처럼"],
	"a10": ["2.10.1.계율은 스승이다", "2.10.2.마음의 임자가 되라", "2.10.3.빛깔과 향기를 다치지 않게", "2.10.4.독사가 방안에서 자고 있는데", "2.10.5.부끄러워할 줄 알아라", "2.10.6.참는 덕", "2.10.7.순박하고 정직하라", "2.10.8.욕심이 적으면 근심도 적다", "2.10.9.무리를 좋아하면 무리의 괴로움을 받는다", "2.10.10.낙숫물이 돌을 뚫는다", "2.10.11.무명속의 밝은 등불", "2.10.12.여래는 길잡이"],
	"a11": ["2.11.1.현자의 대론 제왕의 대론", "2.11.2.이름에 대한 문답", "2.11.3.나이에 대한 문답", "2.11.4.영혼에 대한 문답", "2.11.5.윤회에서 벗어남에 대한 문답", "2.11.6.지혜의 특징", "2.11.7.무아사상과 윤회", "2.11.8.명칭과 형태", "2.11.9.부처님의 실재", "2.11.10.부처님은 가장 높으신 분인가", "2.11.11.부처님의 증명", "2.11.12.출가한 자에게 육신은 소중한가", "2.11.13.계율은 어떻게 제정하였는가", "2.11.14.지혜가 있는 곳", "2.11.15.수행의 목적", "2.11.16.염불에 의한 구제", "2.11.17.모르고 짓는 악행", "2.11.18.해탈하면 지식은 없어지는가", "2.11.19.여러 가지 정신 작용", "2.11.20.업의 증명", "2.11.21.윤회의 주체", "2.11.22.사후의 시간", "2.11.23.열반의 즐거움", "2.11.24.해탈을 얻은 사람", "2.11.25.윤회란 무엇인가"]
	};

$(document).bind("pagebeforeshow",function(event, data) {
		console.log("main_no = " + main_no);
		if (main_no != 0) {
			var ll = eval("myObj." + main_no);
			x = "";
			for (i in ll) {
				x += "<li><a href='#' onclick=go_pagethree('" + ll[i] + "')>" + ll[i] + "</a></li>";
				console.log("i = " + i);
			}
			document.getElementById("list_sub").innerHTML = x;
			$("#list_sub").listview("refresh");
		}
});


function go_pagetwo(arg_main_no) {
	main_no = arg_main_no;
	$.mobile.changePage( "#pagetwo", { transition: "slide", changeHash: false });
}

function go_pagethree(arg_mp3_name) {
	mp3_name = arg_mp3_name;
	$.mobile.changePage( "#pagethree", { transition: "slide", changeHash: false });
}

