{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 11,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 100.0, 100.0, 900.0, 650.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Lato",
		"gridonopen" : 1,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "SDTpackage",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 835.5, 620.0, 54.0, 23.0 ],
					"text" : "onecopy"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-110",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 361.9375, 32.0, 89.0, 22.0 ],
					"style" : "SDT-comments",
					"text" : "look inside --> ",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"fontface" : 3,
					"id" : "obj-109",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 11,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 200.0, 91.0, 746.0, 668.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 13.0,
						"default_fontface" : 0,
						"default_fontname" : "Lato",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "SDT-comments",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-8",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.0, 603.0, 718.0, 38.0 ],
									"style" : "SDT-comments",
									"text" : "Block diagram of the explosion sound model: the blast wave waveform is also applied as amplitude envelope to a band limited noise generator to simulate the blast wind."
								}

							}
, 							{
								"box" : 								{
									"autofit" : 1,
									"data" : [ 44039, "png", "IBkSG0fBZn....PCIgDQRA..D7I..L.ZHX....fa8tjW....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6cmGlbUUm2.+W0c5NIc1IKDHAHIHlvRhYQ4kkPP1jUGAQDPQwAH5LChnf53HJ75B3qJhCJyquifNxHKtLHv.Jxtx9nFBD.IHZyZPL.grumbe+iNcmpqt5tqt65101mOOO0Cot04dtm68V0s47sNmaEA.................................................................................................TNHSQrtFaDwEDQr2QD0WDqW.pjskHhmJh3hiHdsRbaA...neWwJ7owFQrvHhITjpO.p1rjHhYEBfB...pwLfhT8bAgfm.nqLgnkqU9IK0MD..5TlMG.zQ84YyQwJ7o8tHUO.TMy0JA.JeY1b.Pm6viHdeQub1bTWQpQ3aE.ftmqUB.T9xr4.ftVqylidrhU3S....UxLBkAn60qtVYwZZ20YdiHhEkxaC.J2LiHhQWpaD..ziXDJCP2qWcsxzN7oEEQbno71.fxM2SDwgTpaD....kCR6vm....pjY1b.TKpnNaND9D...Pmyr4.nVTQc1bTrtgia5k......cfes6....5b9h1AnOpXE9z8VjpG.....nJhQ9D...PmyWzN.8QBeB.....RMBeB.....RMBeB.....RMCnT2......REI477LkjVA07Lxm.....fTivm.....fTiocWgwPUD...pzkD5KCPIfQ9TgI2KPmaXT....UBRx4A.oNgOA...TavndBnjP3S....P0GirMJaH7odOePF....ftgvm....pc4KUGH0I7I.....H0H7I.....H0H7o9FCQU.....5BBeB...n1luTcfTkvm....fZCBZjRBgOA.....oFgOA.....oFgOA.....oFgOA....UWbuchxJBepuyGpA..fJc5WCPpQ3S.....PpQ3S.....PpQ3SEGFhp.....jGBeB...fH7kpCjRFPotA..zOYrQDWPDwdGQTeIts.PDQrkHhmJh3hiHdsRbaA.H0H7oduLguY..pTL1HhEFQLgRcCAfbb3QDuuHhYEBfhRiBseMIaqrT9K2ym56Jkbl1c.PsfKHD7DP4qIDsbcJnbSRVO.nWS3SEOtfL.ku16RcC.ftgqSA.UsD9D.TKv83IfxctNEkK7kpCTzI7I....JDBlpxi6SWTVvMb79F231.nx1aDQrnRci.nlxLhHFcotQ.4P+Zps3lGO86D9TwkODCPkkEEQbnk5FAPMk6Ih3PJ0MB.f9Sl1c.....PpQ3S....jMSAuJWN2QYIgOA.....oFgOA....8LFgQPOfvm56bCFG...pzUn8qQnK.8XBep3yEiA..fJc5WS2qb+XjAJAkMD9D.....jZD9D....TcynfhRJgOUb3Cx...PkN8qomqbep2AkED9T5vEf...fpU5uCPOhvm.....fTivm.....fTivmJdL+nA..fJc5WSOW4xzPrboc.cfvmRO9fO....PMOgOA...POkur81ywCnKH7I.....H0H7ohKyOZ....5uk6HuReSorhvmRWF5k....0Fz+OnSH7I....xlQMCPQkvm....fhCi9IHOD9D.....jZD9D....8FFkO.EDgOU7Y9QC...U5zulBmiUP2P3SoOea.....0NpD5CXkPajpHBeB...fBkQ4S4evMNGQYGgOA....8MB7A5BBeJc3BO...Pktb6WS95mS49n.pTwwEHKBeB....56JUCBAAcQYOgO0+vEC...fpEloGEF8CD1FgOA.....oFgOkd7sA....0BLBe1N8CDxCgO0+wEjA..fJQYBgpTov4IJKI7I....5LBynuobZPH3bIkLBeJc4C2...P0H80oENN.E.gOA....EOBjBxgvm5eUNMjKA...JVzWmNWZdrwwcpHH7I.....H0H7I....n3J2odmQnD0zD9D.....jZD9T5yMaN...fZO5KHrMBep+mgaI...TMP3J8Lka8Erbq8PULgOA.....oFgOA..U49YmvNbBQLxyNh3rhQdnm8drvjITpaS.UkpEFIMky6iFIZT1Z.k5FPMhLQ48Eo..5SN8HF4U2yWsFFwH9G27JVw26MK9sHxVSiowubDu59DQDwJWdr4Uu4mIhXIk1VE.0DxsufIgPhnFjQ9Togfn.pk7IhHleDwvJ0MDRGIMOyCt4L08lQD8zGKcEq36sr5lxrRxrKGxOdHenevgWR1ApAjr5s9Js9uyjYnQxFS1Xor8.4w3iHFdotQ..oCgOA.osCMh36GQ7pQD2YDwYFQLjRZKhhtg1GV2s17BijW5dOs07iOy6r9Y7Qdtw+sW57JZMLfJEu6Hh+VDwuMZ4KsXLk1lC8.FEOcOGinlmvm5+3BN.0pZcJd2TDwgGQbUQDKMh31iH9621xgHhH1xh9QS5UOu862N9+8W9zK0sEf9cCJhXdQDWdzxzB8QhH9miH14RYiBRAEqYBiYTCULD9ToiKT.TKqoHh2UDwOLZ4a59WEQ7giHFborQQwQcSZ9wPOiK3fmRLkoGQrOc3wtrK6SDwTOk2ViG26duGvUNkb+9YRZNV5E+M+QyHIYx82scfxFMFQ7+Jh3+SDwKEQ7nQDWTDwTJkMJJH5mCPGH7I.HsUe275CMh3niHt5nkQD0sFQ7AiV9FvoBz.lvjiI+C9pOQyQyOYDwS0gGuzK8TQD+oexiuwe4s7Ta9i9WdlYLwu5gO7GL65Xqu3kGO+Y8aur9+VOPYn5hHlUDw+6Hh+bzx0R9ZQD6UIrMA8T4NSXJUgzYF4PIgvm.fzV2E9T1FZDwwFQbMQKiHpaMh3TiV9FvoBQxp5YkOyTe7kbA+Wy3ceYGyHZ2x27x9yyYNIIMTH0wMeZ63jOjwW+wDQbxQDGeDi93icZ1Gz.OoataG8TWzEsSMEsLZ7ZJhKpGMMPun1Vunoc5h590suzNaURxbZX6ayj11lIek25jm6nq+3iHN9XbS+vl3OJYBcVcjowLs8Ypa9z1wIe3iq9Cqk1Sb7w32miogC9h2mBs8.8yxDsD5zmKZIDpmMh3aGQL6RYiBAZTFv4.pIbOQKI2l6i6oT1nJxxceqTWO.kupEtlXOwcG4+3QO4wJhHt4nkNrWPgQjCmSRQIMOyC9nyTWaGWaXFWRxzSRFUOsdV52YO9BQVmeFva6KlLyjjw1UqyybQSZdej8twEFcw6exL58u4AcbW94ku0eiO6r1+ra6QcyNY2toMcBER6cS26debyJSlsucFvwj7Vd70reoQ6LaW6INlWts0ogSLYFaHYet0Oz39t4Vei4qt3uYqqysbpi61aacpedI64xRl2JtnIebu6IUem1lpaxGSxv+HW6GuPNVPOhqGkeyO56+shWHh36EQL2dYanV4bSZ0ejZk93zWN9UrO1WLZGPmor7ZhkkMphLgOATnpEtlXOQmc7n29X4QD2XDw6KJ7fnbNIEUrBep4uyTZW3ScW87yO8NF3RW8nwi7xdwbCyJIYNMckm3NztxMxy92biER68A9TS35xd8FzQdEIyIIoCi9ohQ6LasKHoFNwj24GZHme9pmw90dpubmsNGvGno4OkHSA0dF5YbKWagb7fBlqGkeEivmx9wqDQ7eDQbDQgOhPpUN2jV8GoVoeN808wh4wndacUKbdh9th50DGP2WD.nHYZQDWeDwV5gORhH1TNKay8v+c1OOe+2tZY4a4apGre2Sl1cEhQDsN8fZIHp6IZYZ5cKaqsQEpgzPl0m6xpuS9+U45+fi4FOoqdoGetKOytru+hjk+zOv9NhUumaZIw7WXx1++qdi294sKO6oMlkNmjjgrfLYVaDQjIyBV6B+b6x2Jhkc9sVt09XOzwO8jjQ8DYx7lcVaMY4ycTe628hN0rWVSy3.uzVq2hc6rSaGa5FhW5gp6Ry6qsk5y6Mv+jMcCwCccw2e6MloDYF5.uggjr3Wd5iqt+tGt4szto.3p+gu6Ov39NO6itzOwd7s5p1BTlYmhH9Ha6wqEQbWQD+zHheY3uUP4ijvzkiZDBeBf9O6TDwoTpaDEQIQDaM1dvTacaORx5eu0HhgkhsgQFQ7d21i2LZoyEWazx8JpsjhaWRAK3QWS6lpLYF9fhsjmNItxqcperg+Ael1EnSCGwE9Bi8XN+i7U9Ti3YhHhe2phHY4y8e9a82+DWwm9FWwGn0xslq8CGO+jdGetHhKr0ks2m4XtgS7q+Jm+MjzxaY13C+eEq7l+LuynkQXWds4G3MOjq3929M2pLMbhw39Ly75W12b6koX2N6fLSIhjli+xeYqQDQLvi5BiFF2nN3ieq+ueoG9ZFynRNjo9xudmtxsXfG6E+.65W8yeJO6rxrjUGQ7vqdKexe472wuxwdk+suP1kak+xa+RmSRx2q6BCi9j8Ip9FgM8D6XJV2iMZ49G3oFs72J9MQKAQciQDaLE2tPZxnVhZR0BCQ0h0vHsVY3nB0xJ1SyLO54OdiHheRDwwEsLxqpE96TkL4aZ20c2qlx0xuh83Ty99mTDQxvOy7O82x9ddTDsLM0x2zcqU+p4O9aJ6xmuoG2+wwuCOQ1ko6l5ccnNO1e7i2ezNin8Sgtrq6tZJJlu0YHm7O6W2Ykegetc4RytrYpedIS992zg2YkmdD+MhxmGqHZYjP8QhHFRWbtoZ6uUj69WZU2UqJF6iEiyA8k5nV37D8ckkWSrrrQUjULuHsOrCU2zwhxqGudDwR5jWqZ5uSUxja3SMN2KKuglj20c4ycTe2iZDe4bu+Cko94kLo6diyK2xuoacueusKjp5lcxtcWc8MH7MjreS+zpa.aecxLkjc95VwomcYd1KYRe5r29cU.ZII6+3tvY0T6Zu63k92Nm9i1YDcLHot5FcdmsN003okLiMjzo+h1kjreS3yly93vNq6x89ohC+MhxyGqIhXocxqUs82Jxc+Ksp6pUEi8whw4f9Rcjlm+o5QQMmm5JdsK5k7AT.RWiNhX7k5FQsjM9PWSrfgsKWRDwWuKd7k2ygm4+Z2G4Ctry4WuhuXy47mCG1e+m+pd9Cqw6K259kZdc6U12ejF3QbNu7XNrAbqcU6YfYdjm33N1Q7Pssfjli0uvlaWvKuk+kc5Vmeca+9W+ldhqJV5OdKGV9puU9Cd8i4KuvsO6ypa29rwNe9i6F5OZm4yfe2u2W5O+1FxizckKaMdDG4hVz.y7jc1qmIyirj4Lslti1srjMLidx1.pvzTzxzyCnuQ+aIuD9Togapb.j9VYzxzo3rhHdfRbao1xVezHV8KetQDe1t3wW7oWYxIlanSQDwPOsa46txq5nle9p5+xSt18J6mOfQriu3BxjoauA3OyCbXOb1OeyK6UNpredlLO7hO1yXG1dYRZNV08dmmb9pq66tWQ6tQiOri4Ht8ElIyqzezNymllyb+ocWYx0Pl4a+l6tx7N1+ge+Y+7slroU1S2NPEhliH9tQDKnT2PnlQt8GruFXSeo+kBKh9EtgiCP+mUDQ7RQKA+WeN+2rej6xxjmxTWDQCgvry0eKZ4lN9OOh3WEa+WkuOXIqEQAq9Y7Ad9QbnWz7W1+5TuqNqLaZqwjx94q4mcLGPc6PlEt0kkr0NacxL7gGS6y87yN6ksk0roUka4Nj8a3e+3p9a6eqOecO5Cc7yLIYrOVlLuVqKKIYem74N4G+c01JU2riQdjuy+8U785+ZmcX8Fv.6vuRfcm5FZm1L5Ta7O07Azc+J.BUPVbzxuRpWSDwh11xp1ldc.T1P3SkGRBcfDpE7nQDGZJTuCXaOpOq+c1Out7rr56hkk6+stbVVW8uy2xN8Hc+UL5YiH90QK+xE8fo31gBUloDYlvFugjW9kei78xG9rFv65tV3lmT1ke7++tuOxq9wl3UurEcccYUuk0r0NDFyVWVxL6p0IYkE1.1Y3m4X9UW3+1RhVmRcadQWarze74eXQK275iHh3U+Qu469677ans0YPGwYDi48Lfa+E5GamcbEWaO9asttFFyq0skYCwf5cMH5kdsHhNcpPVCXGiH1qtsT8daMZ436MGQ7iiV9aGjtzGmtVlvnNhZHBeBfJeaNxyOG8kQN1n3F9zVhHdrnkuw5qOh3OUDqaJBZ7.+3wzu+O0GdAYxr178524i9Nl1Gs9+vSekacaCLsjlik+Ku8yKh3p6uZi0Oj510bWVlLO7RuyO53u9Xgq8Tascspeyu+LhrBe5guiUztoh2f2mC561Y6moU6ruJy.NlXXGwP+8+stobqakad2y94CXrCKZLhMzYkm9rmLRmufhJEyOh36WjqysDs7E+bSQKAN8RE45mZOkKgEUtzN5LBdjNv87oRGeXDnVQw3u0r1nkoCwmHhXmhHd6QDeoPvSkkRV45iszxOa44UlLO7h+W9RS3Kl8xV++8YNiw90dpubOca0zob0W69tuCbJwzl1TiHlbA9Xpa5AV59lu56cdpi95lUls+mnW2Btuin0e06RR1+oca+z27.Za+ngSL1gScF+nRQ6ruHYquZr1GeSSp6J2.Fbcs69eyFa9E6xyqPYhMDsLJXOuHhIDQruQDWRH3o9K5iSuW4dfRPehQ9T4CoCCTsp9d458FQD+lHhaHZ4asdcEqFDouszMiFuI+EF8W+Jevk+Qm+ud46RqK6Mtnu1WbZKM4lV73x7nE51otAN1I+69ca34Z412RgacOyYk2kOf24ftm+o26nh4eCKKhnkod2q98+zGSDwU+m+Z+0iqsQqUDwPd+mxK8Wd6EVasX2N6S15iFaZIKoamdSiXnMztocWiSclKJ66+UPYj0FQ7HQD+WQKiH1kWZaN.PtLxm.fzVOIX8WNh3phHNhnkexqeeQKcjPvSUYxjYAa5r9JS7LOnLa++UjstwqId4y655xeE1168po18Kv1VV6xFZQtcs129dLjuUaKHo4XcO1u6TiHhG42spOb1kcn+udmWdopc1Ws4WeUir6Jyq9Jqe7Y+7L0U+ZRuVDzispnkeXI96iHFWDwgEQ78BAOUtwn4oqUr+UuCJaI7oRKizIfZAc0Hep0a.reiHhYEQrKQK22Otqv+CXU8x7Ndx67q9OLteX1Ka0WyGbhi4+8e4B5r0YH0Gs6W1s0eS23Ll1RSlcmU9VkbqSeTCdpW0NWHsq89LGyMbzYEJ15dhm3Hu4j8cx22+8JmdqKqtc8biwcNi4WTJam8Ea7U+SmybRRZnSaGIyogG3wW46I6kkYfM5yjTps7HhaLh3TiVBb5XiH9QQDBFkZYkK8ozeif9E2Szxa1x8Q0zOWo4tukF0KP0gZgqI1S7bQ6ONr9HhGJh3yFsD1T+AmSRQIMOyC9nyTWaGWaXFWRxzSRFUAstI6+3tjCZXs67RcMdZIS6ES1m7W98aBW3rZpckeXm0ccsc214me5iaIQDI0M48u452mO72XOVXxD5pxesm3Xd4Vq+LMbhIuy26PN+oDY1917Lty6nq2uRu14sbpi61ytdKj6UV4tNQcyNYWusMcrcV423yNq8O6yoQlojL9+8Ub5c21gBhqGkeyOx+wkWOZYDv9dhz+VFRsx4lzpeM8W0eoT4ReBKFsgh89Q99rCU1JKulXYYipHq+3BM9.JTcnV3Zh8DuPDwJhHt0HhyLhXDkf1fyIon9R3SQDwJtp83ijcvNQDIC9jtlGuyJ+C7olv0E4btb3y+t5zQK0set6zklcYyLfiI4s73qY+5p1Tyemo7Excaz1i5lcxtcSa5D5t8qzpc1aBe5mbpi4Ayssz3A8YSlZyISM2xlr74NpK6nF9KlcYqa29rIyJII0GQV0Hb8n7K6vm9qQD+GQKSA69yQ0Qsx4l9i9eTs1+lxk9DJ7I5OTVdMwxxFUQV4xEZ.J+UKbMwdhCJhnSmdO8SbNIE0WCeJhHtoyZGenHmyOi9he1yOuauj8eZmScM1gymC3s+ObaM89+tydtQL1YMqXm+TmvPNk2+9z3BysbExHPJIY+m17qqg7F9zfNxqHYNIIMUH0QZzN6ogOkr74NpbGcYs9Hy.NljlNouy7GwoeiiLhngexYLl48YO5NV1QbNOP2dLiBlqGkeGazx8ro4VBaC0JmaD9TuW4ReBE9D8GJKulXYYipHKM+fjOfBUWpEtlXkFmSRQEivmxWXO0Mn4mL802wQlSDQro+yocDsaZgUfOFzQdEEbaKeAhEQjLpy+Q9NE59UZzN6MgOcYGzv2d8mYJI65jp6QKz1x.OpKKYlIIisP2moa45QkupUN2zeG9T0TebRy8odxwLgOQ+gh50DcCGu7iOjB.UVdiM23ql0e9ZqqXCQ88v6MKYx7vK9e4KMguX1Kaqq+Jim6rtt6JekugO7huya9Vdqu8O9LG7KTnaiALmO8uXZ+5ydbOQlLuYgT9C8PF4U2g14.NlXze3oecE51LMZmYFZcsa5ukrk5Gb2UmqeUaY6qecSLp6putO4kcTC+k5t0afG8kD61+5mZJOVlLuVAzzA.xl91RaR6aZe..Tsa30+GG+nxbAwxRV2HGYLnUOr0sg56E+bmO4uvn+5e1q5UW62XECZfwxW95G4HiAs5G6w2PmU9FOtEufHhIcE+cibd2ziupiawqbq62K+lsbC5dxYlxTd9cXEOWLvcawYF+z+ki8n+W9U+sKdZO2ik4RK31yvN1w9yN4Q7WFxOcEaNIhHF4HiAs5IeHq5O+1FxizS1uJ1syjsjbwQLxIGwxWecwtM3FZZX+5tZ6mYjOvadUG9H9nwHG4Xhku70mLhgL3QMuS9OedG7orqW2oLli8Jev27Tdt0r0C3EdycHyHG4xVwxW9NLhXhSegC7scb+r89VN+ewBxjYS8j8W.nliPlneSsvPTMsGBgFdhP0iZgqIVow4DfxEtdT4qZkyM8WSMp9io1W+s9yoqXgTlxkocWWM8soxkocWM.eHE...n1k9DRUEgOA...PZpXGjhfYJtR6Q.GH7oxHYJ0M.....JYpF5SX0v9.o.gOU9RBw....ctp89LUsu+QMDgOA....UdJGFkQ4Kfrxg1EkYD9D....z05uFER4FbS0vnepZXef9HgOUdQBw...P0.8sAnMBep7lDhA...5bUi8YpyBtqbeeUfizoD9D....osx8fS.RQBep7S03b7E...fdmJw9DZTPQ6H7I....RC8WAPTIFNS0.G2ofI7oxSRIF...n1U2MiXpz5ynfppwI7oJC9fJ....PEIgOU9pRKIa...fthuT8dlJ89DVo29oHR3SUNbgZ....fJNBeB...fzhQ+Bsx.pnFlvm....nRW0ZvFkqg2UoeCPm9YBep7lO.C...USpVCIh7SeZIhP3SUZbgZ....5qDJD8qD9T4OWT....fVUI2GQCnhZTBepxiOrB...UR5uBKoZsuRUxgMAQDBeB....H8H7LD9TEhb+vZ0Zh9....zQkyA3TN21nLgvm....fBmvVfdHgOU4vneB...pFTL6Ki9I0+qudL14nZPBeB....J+YDWQEKgOA....01LZjHUI7oJKFRo...PknzbT6TKMhfpT2WqTa2TjH7I....pT3Kfu7RuMTImGqwH7oJORLF...pzI7AnFhvmp74h1....am9Hkd5KGaMPJpgI7oJSt2OA....TQP3S....zenRcju3K6Oc33ZMDgOU4xneB...pjUL6CSkZvVPMAgOA...P0Fe47cu9Zfc8l0WHg0nD9D.....jZD9TkMS8N...nRRZNxWLpZp7nOr0HD9D....Ps.gcUhH7oJeF8S...Pkpzr+K5aDTlP3SUmbQV....JlzOS50D9T0AysY...fzuuQ56UeWo5XnvyJgD9T0KevB...fxc828cUekKAD9T0CIvC...0RJj9.IngzQkV+O89fRrATpa.jpRhJuKJ.P+oYDQbOk5FAPMkYTpa.PYfLgv.JGo+ijZD9T0EWDGfdlQGQbHk5FA..Tio+ruq5ibY.S6tpO4lTsOnA...kyzmkxeo84HuGnJmvmpM3Cx.051RotA.P2v0ofhGScLnLivmpN4hs.zdOUotA.P2v0ofziuLdnDS3SUuL86.X6t3HhkTpaD.zIVRzx0ofZI9ByqbUrN20e7d.8CtLga33.PsfWKhXVQDWPDwdGQTeos4.PDQKS0tmJZI3oWqD2V.xOgWz+wu1dUwD9TsEeXFnV1qEQ7IK0MB..xqhceU7KANc04e8MtelocW0s78gIW.F...p0neP4WgD.iiczmI7opeRyE...JGouJjVuGH2.yJ1aGAx0CI7oZS9fB....P+BgOUav2n....TqQ+fJ9pDOlVI1lq5H7oZG49ANi9I...nbR20Gk9ZeXzGnxeEiyQcVcXp2UBI7oZa9vB....T3R5j+McAgOUawu9c...P4DSIpxa8G8Wz6ApAH7oZOBfB...pUTLC1PHIk+R6ek6nWR3S0l7AP....xU4v.Sn+pMza1N4acJGNlU1S3SzJefA...fJUF0SkwD9TsKS+N...nVi97TdpRHnnt58NdeU2P3S01D.E...TNQ+QnXnRHLqZJBeBAPA...UyDDQwQ+4wwdZeR6u6CalniGOzO5tfvmHBWLF...JczeDJlRi2O0YAKI.pBjvmny3CM...P0H80o7jPHqhI7IZUmMrAcgY...n+T4RePJWZGkJk58+Bc6WpamT.D9DEBeXF....53f1vTuq.H7Ixkg5H...TtS+VJdpjOVlaPOc29RuYesVKLoTYFPMfhcERUgV+.Y1ugKImWCnycHk5F...EMGRTc24yx08stqc0Wa28l0ub8XUwVmseVJ1+S6e06Rq2GTM7dkhZeZLxmnqjuflpF9PD....P+jzdjOUM+sDTsteUHpk22A..fJK4alczSdcpcj8.vnPe+PldPYqYYZ2Q2wEpomxErA.fJCka2RM5t6eOIcwqUHx8+myd5MN5xsS6dtUf...H.jDQAQkWES4dboTtuWna6d66GJz5u6d+RmUG8j1U95CTo98Ys1lt2nHN06D9TOWo9MBkJcV3.Ia60pUOtP90SBRJSN+2pABRC.n5w8FQbnk5FQQVq++vWqywgJW8G++am1aixwfmhX6sg6oXVoo887o6M1dvDUCOhn1tSkERhyT6JIqG...kuJG5fa9Tt1tp00eedoZ58A8jad6US62cfa338LFgOc9w.gNT6HoSdTH5rPcq1buk5F...PQU05+eqje8kocX2M8MKj0opiocG8Vc0zvq0WmpC80PE8dA..fdCSKtRixsAUPtuOnR+dwUkd6uWwHeh9ht5CIkaWvhdl9xTnqVXjMA..TYx++oze7dfNazOUSF7TDF4Sz20U2KrLJnJ+YTMA..TKynqp7Tg9qgckz4tZ1fmhP3ST7zUWbPHTkW5KAN4bH...TpTJ9Utq21GnBM.sZBBehhot6WDPgPUZXzMA..ToPG1KuTtzWf7MB0JWZa8FUxs8dEgOQZnPCgJ6xRemPl...n6IfqJSo04rtZpWlF8QplreWBehzT2EBU1uVM4G.6CJFW30wb...nbUoHjvh81K28gZ19fI7I5OzSBgJ6xy1UrtHnis...UR5Otgf6lNdkmJoyWsF.UkTatnS3SzeJ6OrUnAQku0sZTZjvN....8N5SUQjvmnToPChpqJSk1ECRygLZk1wB...5L8GS2J22mHW5uVJR3STNnPlVd4S4VfT8W+wqZ9KbA..PQVM+zhpBRw37jvG6mI7IJmjuKhTLBjpRj+vG...sPvPj1pV5GYYKgOQ4td5zyqRj+PJ...8+L5WJ+Up90hSezJxD9DURJFiLpREW7B..fduJk++9qlnOLTzH7IpzkcR3cW3T8kuYibqaC8W...ROFURTpnedo.gOQ0ft5hC49ZEqKj3BR....ouVChTevpfUWotA.....kApkGoUB1gTkvm....f1qVNHpZYBgKkH7I....JG0eDDfvFpL37TENgOA....jsZgvdRq6OvjGBeB....ZgoaGjB7qcG....fQ9CoFi7I....pkIzEHkI7I....fZYBfLkI7I....X6beeBJxD9D....kqLhTfp.BeB...fZccUHWB.q5lyu8CD9D....URDV.TgQ3S.....0hDjY+DgOA...P4LAD.U3D9D....k6xjy+EnBhvm.....fTivm....nRPZOpmLppfThvm.....fTy.R45eFQD2SJuM.nbyLJ0M....fxEoc3SiNh3PR4sA.....TlJsCeB...nRlYyQsk6M53.nv4epEUTmMGEqvm1RQpd.nZlqUB.T4wr4.m+g9nh0Mb7mpHUO.TMy0JA..fZNEqvmt3HhkTjpK.pFsjnkqUB.P4IiPY.5d8pqUVrl1cuVDwrhHtfHh8Nhn9hT8BPktsDsLhmt3nkqUB.P4omJh3vK0MB.Jy0qlMGYJ1sB...fJPiMhXgQDSnT2P.nL0RhVF3Q83uTcgOA...zhwFlMGz+aFQK2X6y0aDQrn941BjOlMG....PEr6IhHIOOtmRYiBJlJV2vwA.....5.gOA.....oFgOA.....oFgOA.....oFgOA.....oFgOA.....oFgOA.....oFgOA.....oFgOA.....oFgOA.....oFgOA.....oFgOA.....oFgOA.....oFgOA.....oFgOA.....oFgOA.....oFgOA.....oFgOA.....oFgOA.....oFgOA.....oFgOA.....oFgOA.....oFgOA.....oFgOA.....oFgOA.....oFgOA.....oFgOA.....oFgOA.....oFgOA.....olLk5F.....TE5vhH94EP4ZJhXf4Y4aHhXscw5cRQD2cuncA.....UApOh30iHRRgGu91penhfocG....T7skHhaKkp6aaa0O.....TC6vizYjOc38m6D.....P4q+ZTbCd5u1+17g9NS6N....H8bqk40G.....TA6.ih6He5.6ea9.....P4tWJJNAO8R82MbnXvztC....RW2TYV8......UQlUTbF4Syp+tgC.....UF9KQeK3o+R+eSFJNLs6....fz2unDu9.....PUr8L5ai7o8r+uIC.....URdpn2E7zerTzXghES6N....n+QucpyYJ2A.....cqIEQrknmMpm1x1VO.....ft0BidV3SOVooYBEOl1c....P+medJWd.....nF1NEQr4nvF0SaNhXmKMMS.....nR0+STXgO8+TpZfPwjocG....z+5mUjKG.....PaFcDw5itdTOs9HhwTpZf.....Pks6K55vmtuRWSCJtLs6....f9e+j93qC.....zoFdDwZh7OpmVy1dc.....fds6Lxe3S2YorQAEal1c....Pow00CWN.....PAavQDqJZ+ndZUaa4PUCi7I....nzXcQD+1bV1ucaKG.....nO6Th1OxmN0RayA.....plzPDwxiVBdZ4a64PUES6N....nzYSQD20192281dNTUY.k5F....PUhwFQbAQD6cDQ8k31BUVF819uukHh6oT1PnpzVhHdpHhKNh30JEMfLkhMJ...PUlwFQrvHhITpaH.zIVRDwrhRP.TRiG...nu6RhHNhRci.ftvviHZLh3W2eugcOeB...nuauK0M..J.kjqUI7I...f9NypDfJAkjqUI7I.....H03W6N...fzyaDQrnRci.nlyLhs+qnXImvm....ROKJh3PK0MBfZN2SDwgTpaDsxztC.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB.....RMBeB....HUk7XyXbum8rwiOh3rhH9vQLlSdfG4W4va80+Wm6vOkHF4YGQbVwHOzydOVXxDxsN9YmvNbBcWY....fpU2SDQRddbO8Ga7SOhQFa6wHN8abj8GaSnPcSevwcASIxzgOeT+tcQIyLIYrIKeti5Bmzf29qU2rSl78uoCO254Vm+3ehtqLzlR50jxkQ9D...PErjlm4A2bl5dyHh2Lh3MW8u4wdyomjLpRc6BhHhU981iO1wesK8q1bjzgWqtQLv192ibWZns+clLCMR1XxFys7IqdquR2UFJOI7I...fJbCMq+c8SbfcZ4f9SIIyoge9csruPtKutcYNKbhCOyMjrkMbi0GwZhHh0upsj05s5HSiYZr2tcW1+9a4f2gXG97QDepgdV20IzaqGJdFPotA....PwSxpJ0s.XaVwfG5eaoabhYungeV+5qZkW0QM+WNhHdpuTrfLeoHSDqcgerINwO+islVF9SMrWY1g4NfW945ka1E+GW2mZYwxdOQDQcIqcIQD2XeXufh.i7I....fTwfhLs8uyT+7hc7Scn+37UtY8u+xKIh34iHd9XCWyysfLY1TuY6kjLmFd5Wd8yo0muk0r0Wr2TOTbI7I....fTWl520XqqqgUmtak5m3y7nqYhce4n+jvm....nf7i9X6vD96dGCXdidzwwGQb7QL5iOF2geXC6j9+N0tacunHZJZ8wbRZnqJaRxbZHxp76zEcQM0aq+rqqbqmqZVidmO7wU+gEQbLQDGS80OyCuP1W5L+eOoQO0CY70eLQz5wm3jiQO2iuuTmQDwMeZ63jm8NEGTDi+XhHNrHhCK1oi8fF3o8Ulbort5LsbL+hZJ9aqpoku5M21xqaOmbL74Du5E0Mmmhn6Oe2Yayk+KWyrtymeCss7srpUMj4zVc2006MeZ63j214uSNZ8826zrOnAdR2bO5XS6eOWRaayjuxacxycz02x6MF2zOrI9iRlPOodA...n1VI6m07jlm4AezYpqssYCy3RRJ1+Z28i9.i4idXSt9li7uOlDQjT2TlWRC664c4yLIYr4t9q76sGerrK6P+f+7tbpP86+zS3Gzt5toyMYFIIcZ..a5d26iaVYxzV4a5D9OShHhjj4zzUdh6PaKOS8yKYZudx985W5jOh289LfE1Y6K0OqSLYDm0cO+B4XSxxm6n9hGvP9xG8TFPmdrIhHo9YdZIM8A+omdgTms11u32yHN+8aGpqKOtW+rN5jFOfK5y2UmyKl0Ugztuhidjc4whVez56UyccxT+7Rlzcuw4kaceKm53t8NqL+pyZ7OT2s8xT+7Rl78uoCO258YtnIMuOxd2Xm99gHhjLid+adPG2kedExwfq8DGyK2150vIlLiMjrO25GZbe2bqyw7UW72rPpudoR10j....HcTUF9Txxm6n9VG9ve7nK5TdtOpaRyOY29Uab+xtd13yNq8+DyT+1Kyt8YSlURxNm2sYxbZ3+6QOhWpc0alojry+mK+T5r14h+765klc4G1e+scis19ujCZXaO.gFNwjo+QZ5zyNnpt5wvOqe8U1UGe13ctO6+oUWWG5TtOZ7P+lOV2c9I4OL8oetyZv8n5stIM+jc+OjL6zrtJD4dLuqdzvLtjjYljL1NbdpWD9T1uVm8HegO8yO8NFJTW8nwi7xdw7EvZm1Na3DSdmengb94qtF6W6o9xEvgzdqxpvmLs6....nCRRlSC+vy7oWz4eWqbFs6ExLkHydcHWSLxQ9w2+cq9u4QOqFa2Ku0m+JiW58d1O7zdwj8o0k0vaotG+nduiX6k4ktqXY27l+ekus6FeyXZOzsmy8rmjli0tvEdDcVa82+GWy6J6mO7C9.us7tOsoaHdhezZ+QKLIY66NCeh2VDwkehytwNT9UdUG0YM1u4y7wyackreS3R+LO2CcMacys+Epa1QlcYOugHhuwaeWq69yc81387YdauzG+29C6r8kjj4zzU80Vxht7Ett1+BYlRjY3S71peGxbUSb3Ytsoj0Mx6HZ439Rtf+sEjcvVEy5pfMh0sgANvLKptce2iHhlySIZNhn4ce2qKhgl7BaIhMGQ6uwj2aT+PqacQloD4tuj81LparQxFS1XqK75+fi4FOoqdoc37alcYe+EwvF14suSLyUNqLsu913sed6xydZ+3kNmjjBZpAlroaHdoGZcWZdessT+fKj5.....hnJbjO07WYRegHm8mFNhK7420at8S+sjj4zvUdBi5pxsrC8z+UOX1k6A9TS35x90G8W7w+N4a6txqcperHhj5185ZW8Mvi7+3klSRGuWQkjruS9yN4As8QsSSmaxzWexT2Vaqou0bG1KjaaKhHYfu6uw0LkGLYbYWW2ze+N9MysbC5Huhj7Ezve7h10uZ6JalojLrOxO7KmaYSdv8YZW3QMz10FpqwSKI6v4x1lutocpSIxzt5cnm0094yceO4Vm9nthOvnO+bGEW6z28U9noQc0aj6HZpyduYxxm6ntrCZ38oQ9TqZ96Lk1891gel+xmHessVeeV1OZ3Htvmem+1qnc2etRV9bG0kdBi3Zysri9Bd5NcTK0V6LyTZ+64NpKLYne3u87NsSaDSd2ice1499uhrxpQ9D....8cUUgOkjLmltxidTse5FcD+auPWMZOt8+ow+Cyt7003okLiMr8.VxMHjAcr+3GOe0yu4b24aJxywx5Fz7aKTorsoacueuYWu4d+j5VNqcrCSGqgdF2zCla8zpG3bmP6lBeQcyNYWusMcr4Vte9oOtkjc4Z53+wc58wpMjreSO2om23tz+xEjux97eyoztPsF1Ybm2QmUuQDwh9b6xUjc4G9+3csnznt5MxMToVmlccW4JlgOMjS4ldn701x99xTDsLc55p2e+ql+3a26K6rPIysclc8WruWr0MJqBexztC...f1Yk+fU99+Z21x29Bpa1wNc1ezO4BxjYsc157t92l72X90s8ATyV230DK4Ku32eqOu9Sc3Ox6axCrsWeiO4SLibuuOkjLmldx+zZeOs97AbHG20bZStkoC2V2vcGu1Uux1cujJhHd5GXkGZyw1mFcCZOm9OscEXMIs6oYZ3DiwetGw42Y6GG3+5t7s+rSdPaeAa8QiUdqO3Yka67gezU9uMzgl4xG9vybCSNynetAO0oe4cVcNvLOxS7dO4cncgfjro0Ov7U1QNgFeprmpWCbW1g8pyp2HhX5esI70dqQbJ0O8C+vioMso1zDa7vRi5pXo0oYWozlt0898do+h2X6+RyU2ric5ybNmaW896C66Oou3oU2.Z64q+Ntr3ud8q7jJjsWlAbLwt9M9Xu+mHSl2ruztqjI7I....Zm2XsaYhYGnSi6+6KF96Y.+ltZcxj4gW7QdxincSwoM8pMeBa+0+cO2r2mgzV.L4699zl9ya8scu+5U01yG06+ztyCdZCokmjzbrtm7IZ281oHh3Id10c7ssMpedwP2+obKcU6bfuqieQ+421PdjNe+3QVx9seCucAEso2X46X6KyBV6k8Dq+RV8pS9jqbkIuumK4Mlxa70m42pq1tMDwp6pWuUKeIabuy9dR0xu4+yILgu+F6PnaY2d+SQ7S2xSbW2cr3E+md0KXduVZTWUSdolW2dk8wkAdDmyKOlCa.2ZWsNCLyi7DG2wNhs+9hjli0uvly6TmLWC9c+deot58b0BD9D....sySsn0bPY+7F1k85gKjQswdM6g9em8y25lyrxre9Ll2vt2s+hOZr5E7GOjre827tV4AdCIaIhnkQnzNcFm7iNoQ1XaSUrMurl+.Ye+JJIYem7+yBVUaifkAd3u+XXGZC48d7SqZZu1mtbpmEQDS6sNn6M6mmooHoyJa1Rtncpo4FwXiXV6bDwXiH14HhcNlUryO6Z2vvJj5X2dmM8aOnLauq5a9wt7XIero8vY1yS86On+t+44Un2nqK10U0j+xSt11MBvFvH1wWbAYxrota8l4ANrGN6mu4k8JGUgr8ZZNy8m18kp5lvm....n8xYpp0vnG4eqPVsAMv5Ve1OeiuxyMwrCKZOOwQdmGcVggrlGcQGb1k+2sfU21uncC7POjngFil288Zvs8KF25942QrlWJZ699zVt9Ute25y21OdYQiSbetotKjr52gFWWW85QDwfF8.Z+9wep4Cnyte8jr74Npu3gO7O9aeWq69x7k9qq4AhXoQrvkDQrzHhkDQrjXgwRNuadE6e2sciHhLuim7N+rm4Xae.YIMGIO80O+0+e+0+sKntceMY14Y+qpaFG240vAewc4HuoXVWUS1zViIk8yWyO6XNf51gLKLhXAc1iLCe3KXZetmucSWysrlMspn.jY.Cb8ceoptI7I....5RMN4c4OTHkqtMDCpcKXsqXW2XDCssmO45+8G6QM71dZ122mRV9bG0y9LqqsoUWC67teSKHSl0N4Cdn2eqidmstwqIV08rpCn0xrvGcUGdaSOvLSIF1AM6aqqafyNZZOeqKrGuezIt9O3XtfYOpGbYek6Zke2+vKt0Cp6WiBywckS739AG+nto79hIMGIuxidzacQ252ZS+1K3IpeVGcx.l64846rvwJl0U0hsrls1gPi15xRlYDwr6rGIqbkytWuASVaAMx4plI7I....5RIattBJLl0sxMu6Y+7FlzDiFiXCs97LYVvZ2m2ZS2bqOuc22mVzxmwM9.a+1hzP2uYd2QDQbPC6oO54Nj1V9Jefe2AGQDIIyogG6IWSaiTp5F76NF8oOr6rqZeYpa7Qi6QxazS2OFvXGV61OhHhG9ebm+tm5095e0ru2A011Y3C+QyL7geCQD+3HhueL7LW9ThLcnbcZ6LyB1zYdSu4I7G+V619eJSqwqsqV2srvaK17CbYW7S136aY632YYc3WkuhYcQ6U+PpaWK0sgJEBeB...ftTxlWVAE9z.FbcKH6mugm7YisDwPxdYydeG11GcRYcee5o+eV8Qb+IaMhnk62Si3DF+CEQDYx7vKcZSbvsciddKuwqrs66SMt6+t6XM6RqKuwC4sunEkIyy0k6Ga8Ui0rf0tycUYx29wFa9Ea29wl9k6yQ7Y++8pe7rKSlAbLQSm526z20aMYGRV4JmSxJW46Kh3CGQ7whUl7I++M+crKCFKe1qy+Edjexh23o8WtnwOjy3cLnC9H1s5+x60HqKuibqjMcCwRO+4eq69eHIuiPmhYcUsooS4pu18ceG3ThoMsoFQL4B7wT2zCrz8sD0jq3LftuH....TKYSYOU4hHV2S9RGXgrdCOmm23z1qG7wxjoc+hoMrOvN7am+Gpg3J2ZK2ema899zhdzU21Me7AebGULjwFKt0mO6YOz6Mt9kd.QDw5+k2QroM9gl5Vt9kcfsVGQDwP2+2wcr9eY2z.25iFaZIKYu5lRE0Oz1ORuZbpybQYue7z2+JdOsFTVDsDV1t8qu9C94OrFuuW75+GyactgUu0d8TuJyW5ut1Hh6aaOtnG7aNkwc2Ozqenuzar4q+Juu01V4R1zMD+su6s8ciH5zyWEy5pZQcCbrS92861vyEa+sbEj08LmUJ0hp9XjOA...P6L4cafs6W0qjM75s6FGdmYQO+5a2HkY.Cc3iH2xjIyCu3C3uaXOYqOeSO4edFSOY5i5Ot30118xoArC6wMsfLYZKIjr+Uaaqa7Zhk+q1xA7XO9pa6lUdlAbLwP2+obKEx91le8MOxtqLq9U1z3aWatt5WS1O+O+BaXVY+7g8gOma54OrFuuNq9RRlSSu5F276pyd8dpC7yz7Ruvabk+ju+ucOa7+7TGS6tghu9G6gOfYljL1RQcUoXu2qlt+re9VV6xFZmUVJND9D....syD14As7re95+k+lcI6ek4xmjkO2Q86e50bpYurLMMhEkuxNyoMjau0+8VWxuOd9O8ye.+9Ga6+ffMj8cp2c6Vg29vd7i9sM31d5xuuex63wew021M36AdXGSL5CsgB5lh9Fe0G+b5pfzRRlSCOviux2S61OFXisaTK0PDqN6mOn8ratgre+a3c7K9Es6PZjogAsgNozQxEsSMcRQL0I9iRlPWUsYxrfM8gtt83bmecae2Y.ieGi5insvxJl0U0hgTezte84V+MciyXZKs6mhgI25zG0fm5U0sSaS5HgOA...Tko993sXkwdNi5Z+DSZfs87stwqI9aW9+yGsqVms7e8Zumq592dlLYpedwnN988eOekclm3Ht8VGISIaYwQc+rUe1211lFa003oEi3nG+uI6xmIyCuzosmCos66Sq9N9Ay4W8bqZhs97Fm39ztQJUWYs+jqJdsecWLJjVYcu8a4Wu85NxLkXnGvA986p5bqqeSc5noJIY+G2W6Bdgeysk0zzKhHV2hetNL8+13SO6472M55aNyW5utledDKdk2+s7+zUa2VrkML3cc6cseK+0UFaIhgTLqqte8JekoonCS2ww8uL9q+BmUSs87jMcCwR972842c00+0O+u8jq6YNqkT2j2+lqee9vei8XgccfdrcBeB...nJyVhXy8k0OSle2y8dOhQcyYur27a+OcNi4q9z4M.pjewzN3OxG8u7ezbV8yeHmxYGi9Pa3gyW4i8Xj+gV+EraJIOWrhWJ4nqa2ao6oC5XO3XH6R7L4tJSa1Mcusz3lRr0m5dm0M7naLZ84Msuy5lJz8sjsbewqdwekacpMmzgQxUxxm6n91m7y7SyNnn5102WrSezg29aV3Co8+hwsxa6W7oy2zSKIY+lvk7tdp65ye+qpisiMswI0gEtSQzvxhI2V89C+jSnyNl2p63rewu324429fnpwoOwn9HVdQstpfs0kspcI2kkIyirj206bTWe1KaUW0g+AF97uqKnypma+b2oK8jt5ktyQDwVetGdxacwu9mIot01g5F....RK2SDQRddbOo8FNo4YdvGcl5xc6tfdxiFFvQ8hukGeM6W106FW9rmyoU2.5v9TCG5W3xG7YbU67bRlSCW7bG5X+Zu+Q8kmRjo8kqtYmLwa3MOgtpceGye72Qt0cDQxHO6eyMl28ye+9bDGTG2OSpaWO2jYjjL47sNQDwsbpi61iHRhLSocqWlAbLIMcRem4OhS+FGYDQC+jyXLy6ydzCqC0+HNmG3ZysNW40N0OVtkq9Y7Qdtg7g9JGdDwX+GNhgrOm8AN3uwrxjoC0Was6I+dSF0m+1N1SOhQl8z.7WL+w8DcnrS88eeMb.enStwS5jlZL24N1SaeG3jO8CdPmxIe.C5w6P68i8Hemznt5MRV9bG0kcPCe6u2YFWRxzSRFU2UtL0OujIc2abd4Vt1NW1Eko4uxj9B4tez3gcF+3Hhie1irtydnm0ccBQDQRx9OsyotF6v4kA71+Gtsld+e2YO2HF6rlUryepSXHmx6eeZbg4VtgcV2UGdeQ9ZmQDIi8q8Te4B+nVQSI6ZR....jNJ2BepG8HS8yKYx2+lN7bq6W7Jlxo1UAnzYOF0+7C1sSgo+5+wd7Ix25NgezJy+nqJY+G2ENql5P4Gzw9ie7tZ6ztf.xLkjYNq5etBc+XfG0kkj+QzzbZ5JOwcnfOdz3burja7om9b5rySi8+yy8UZqtWxbl1mXRCrWcdbvG+U7BYGjUwrt5MJEgOswmcV6eW84ggel+2ubqkcS+mS6H5Me1YPG4Uj28i70NiP3SQXZ2A...TY6M1biuZjzmphjjUm2kuqe7lu967pm56Z9ydPET8zvA9Ihw+sW5A+le8C7a0ckcGdOC+daTnnPM...B.IQTPTMwL02tkUWimVL5ScXOT9JelLO7RmwzZ5Ixc4Cc+eG2Q9Jedqi5mV7Ze8K9Tuj4NrWp6J6.O5KI1s+0O0TdrLYdsN1VVvZOq+kILiK7XFd2tMa3HtvWXZ2+mZJmvd9DK3ibJ6PdaqIadCsc.NyDVvhu7qcO1y+o8aPcYnZ4pwC4acsuka7rm4BxjYSoQc0as9Usk192acEanSuejs7Uu8YJZRxpiLMlowbKSlgV2N2ckow8XgO74bVi6lyc44SCe3Eem27s7Ve6e7YN3WnPJeD++Yu663ip578+3uOSpDBgD5cHgUIf.BIpKnAPEPEDUPVKnn3pB5ZYcstq3pbs.96ZAuV1cUQcsgXWrhErgffkPGIJRnHHffPHzBIjb98GmjvLSlyTRlyLSRd87wiyCXly2y2ym4blblY97sbjhO2a5My9Cu51rBCicYWYbONkjLKOtlXWYarnNMIzA.....fnrzh6GZWFF2l1o4Ap00Q5ssIIz53WquVUqt3B9DSybSrcC+mNkETv9OqeduUbLarHylW4pyxUV8Wlkl1bRpemwyUx6cSuxVWPvMRsRLCUP26SB2n1XyRREUTIomtRducoGGLgDq478TU5eOa1jagpnu6T67.RRtb0mlj5.6warif80o4dUBwcCIN44+O5xKc9s5zep4uqypv8WwP2vtZgQ5ouycWTQsn4pS8YIIczi5UOp28FeS+k7EiiYEqvzL2DyX3+7kLy72yEsycYNn0kVyVbK1SwYryl2kcq1ezeWRGwE9hk7Nm+7VtgUGe47l0NN0GZXMehO3bK9T2jUBC2uL50tbYZ7QdT2mvJKPR8aAWYa68isfcclKYCkk212iY1+toxTREZUpz1sQm6XgFwm8m25K3d+fsM0rW2JLpYGNKbVWgrlef8dfcWw0pzSuYoqhTw5.GzW287LRe965gN1TmjRO8VohJpDkVSR1WuebekT9CHkdGjruLRRibFaczu9EzpIcGyYmie0k2dyNV7VL1bZs2TtR6GK+PFdzyeRbTEjuj51icloO3Yur8LpBJthArocYMQhmoQVYs9Vr60oj5ZAFsqOueqGws9AaapYutkZ7.98ksY4lSUJ8LkJpDWpqMIgTZ1GFJG1.......7kXpg3BNrfYnZAz.TL00jXX2A........GCIeB........NFR9D........bLj7I........3XH4S........vwPxm......PCVFo5pCU8+MM2qLRzHwnY7.zXT7Q6........voTRIUb8RpkRRtTyLLbE+xixgD.......PH6yjjoOV9rnYPAfFshotlDC6N........3XH4S........vwPxm........figjOA........GCIeB........NFR9D........bLj7I........3XH4S........vwPxm........figjOA........GCIeB........NFR9D........bLj7I........3XH4S........vwPxm........figjOA........GCIeB........NFR9D........bLj7I........3XH4S........vwPxm........figjOA........GCIeB........NFR9D........bLj7I........3XH4S........vwPxm........figjOA........GCIeB........NFR9D........bLj7I........3XH4S........vwPxm........figjOA........GCIeB........Nl3i1A......PCX8UReVzNH.PiN8MZG.tijOA.....3bZojNoncP..DMwvtC........NFR9D.....PcW4Q6...HHDUtVEIeB.....ntaUQ6...HHDUtVkQzXmB.....z.SqkzRjTGi1AB.fM1rj5uj1djdGSxm......BOZsjtMIcTRJtnbrf5O5srdui21tjVYDNVPCSkKqd7zTUTHwS.......H55yjjoOV9rnYPADNwb9D........bLj7I........3XH4S........vwPxm........figjOA........GCIeB........NFR9D........bLj7I........3XH4S........vwPxm........figjOA........GCIeB........NFR9D........bLj7I........3XH4S........vwPxm........figjOA........GCIeB........NFR9D........bLj7I........3XH4S........vwPxm........figjOA........GCIeB........NFR9D........bLj7I........3XH4S........vwPxm........figjOA........GCIeB........NFR9D........bLj7I........3XH4S........vwPxm........figjOA........GCIeB........NFR9D........bLwGsC.ffvPkzsEsCB......GPui1A.fSijOg5C5pjNoncP.......fPGC6N........3XnmOgXUmrr5wSRRGezLP.......PsGIeBwp9mhgZG......P8dLr6........figd9DpuY6RZkQ6f......HLo2Rp0Q6f.vIQxmP8MqTVyGT......MD7YhobDz.GC6N........3XH4S........vwPxm........figjOA........GCIeB........NFR9D........bLj7I........3XH4S........vwPxm........figjOA........GCIeB........NFR9D........bLj7I........3XH4S........vwPxm........figjOA........GCIeB........NFR9D........bLj7I........3XH4S........vwPxm........figjOA........GCIeB........NFR9D........bLj7I........3XH4S........vwPxm........figjOA........GCIeB........NFR9D........bLwGsC.......fFfRSRsKHJWS7yyej9Y61pjJNTCJ..bXeljL8wxmEMCJ.....ffzeT992zDtV9iQtWJ.0MLr6.......B+9FIsAGpt2Pk0OP8Bj7I.......mwrcn58scn5EvQPxm.......bFOS8r5EvQPxm.......bFKWR+TXtNWijVVXtNAbTj7I.......myaEiWe.NNR9D......fy4ok0cmtvAyJqOf5UhOZG.....QQsVR2ljNJIEWTNV..pR4RZURZpRZ6Q4XA0cqQR+fr9rl5pePg+gwGfiijOA..fFqZsjVhj5XzNP..7ggIo+jj5uHATMD7lJ7j7o2LLTG.Qbj7IfZOZsb.DqgVJOzbahDOAfXacTVWq5uEsCDTm8Tx5bYcYpuoBwPtC0SQxm.pcn0xAPrJZo7fW3nEnA.bZbspFF1njVpjxoNTGKURaH7DN.QVLgiCT6PqkCfXYU0R4v+nWqBf5C3ZUMb7ZQ4sGHpgjOAT6PKPAfXcbcJ..fXKOqjJsVtskW41CTuDC6NfZGZAJ.DqiqSU686RZ4Q6f..M5zWI0xncP.G0VkT9RZf0hs8aqb6ApWhjOA...3okKoSNZGD.nQmOSRmTzNHfi6UTsK4SuR3NP.hjH4S.gWzZ4.HRiVJG..n9iWPR++jTxgv1bvJ2Nf5sH4S.gWzZ4.HRiVJG..n9icJoEIoSLD1lEV41ATuES33.......QNyJDKOC4NTuGIeB......HxYVRZ+AYY2ujloCFK.QDj7I......fHm8HouJHK67qr7.0qQxm.......hrdovb4.hoQxm.......hrdUIUb.JSwh46Iz.AIeB......HxpDI8EAnLeYkkCndOR9D......PjWflHwewHRT.DAPxm.......h7dKIsKaV2tpb8.MHPxm.......h7JSRy0l0M2JWOPCBj7I......fnimODedf5kH4S.......QGuuj1tWO2uKo4DEhE.GCIeB......H5vTRenWO2GHoxiBwBfigjOA......D87bA3w.06EezN........ZfJNI0UI0cI0YI0JIkgjRVRIJqd9ToRZ2Rp4x5tbmoj5hj9kJ++.06Qxm.......p6RTRCtxkiQRGgj5jrRzTvJCI8oU9+2uj1jjVijVjjlmj9ZIcnvT7BDwPxm.......pc5tjtPIcZR5nkTJgw5NEIcjUtb5U9b6QRKVVySTyTV8NJfXdj7I......ffWqjzjjURm5ojLhf66lIogT4xTkzxjzKHomQVCcOfXRLgiC......DX8TRujj1frR7SuTjMwSdykj5ujltr5ATOsjxJJFO.1hjOA......XuAIoOQRqTRiSg2gVW3RyjzkJoUKo2SVy4T.wLH4S.......0TWkUhb9RIMLEd98yUHo8JoeWVSl3atx++dqbc0UIJq4GpuQRuhjZWXnNApyXNeB......3vZhjtKIcUp12Km1hjVhjJPR+nr5QR+frRzj+zVYMb95orlnw6kj5mjZcHt+cIoyUVSD5SWRSSRkEh0APXCIeB......vxwKq40otFha2tkzmKoOVRejjJrVt+2VkKetWOeOkzoT4xfkTpAY8klj9ejzEHqjQsrZYbATmvvtC......M1YHo6VRelB9DOseI89xJwNsQRiQR+GU6S7j+rZI8vxZH00VIcYRZtR5fA41ejR5qkzM6.wFP.Qxm......PiYsUVIl4eJojBhxuSI8Px5NK2njzrjToNVzUS6WROijFtrRpzSHohChsKEIceR5SkTycrnCvGH4S......nwpdJouWRCHHJ6NkzjkTmjzMHqgGWz1FkzUJoNKoopfKITmrj9NE5CsPfZMR9D......ZLZvRZ9xJYR9yAkUOMp6R5dkzAb33p1nXY0ys5grtK2En6bdGgrti3cLNbbAHIR9D......Z74rkzbjTKBP4VgrRPykIohb5fJLXqR57k0Dm9ZBPYaqrFBdC2oCJ.R9D......ZLY3R5Ej0bfjcpPROpjxQRqLRDTgYeij5qj9uRxzOkKMI85xJYU.NFR9D......ZrX.xJYK9KwS+tjFoj9qR5PQhfxgThjtTI8mjzt8S4RSRuqrRVEfifjOA.....fFC5kjdOYkrE6rdIMPI8QQh.JB4MkzPjzu5mxzBI8wRpaQh.BM9Pxm......PCcoHo2VRszOkYwxZ9cJPyUR0GsLIcrRZ09oLsUV8.pDhHQDZTgjOA.....fF5dQI8G7y5yWR4IqgbWCU+prF1g+feJSukzLhLgCZLgjOA.....fFxtNIMF+r9ePRCURGHxDNQUEKoSTRE5mxLAI8miHQCZzfjOA.....fFpNRIMM+r90KoSV9eB4tglsKoSR9eNf5+SRcIxDNnw.R9D......Zn5ok82Y61qjNCIssHW3DyXiR5rkz9sY8oIomLxENngNR9D......ZHZBxZdbxN+MIsxHTrDK5ajz+zOq+TkUBp.pyH4S......nglzjz+qeV+KJqdEUicOjrtK.ZmGVRMIBEKnALR9D......Zn4eJo1Zy51hjtxHXrDq6Rk82k+5jjtoHXrfFnH4S......ngjlJoK2Oq+ljz9hPwR8A6T9e32cMRJwHTrfFnH4S......ngj+tjxvl084R5khfwR8EOtj9VaVWaj07iEPsFIeB....wTLMGXaFVFtlnjt7zSWWcBG6cOwbMMSHZGWv2LWZeayY0yDGsr5oIWrTqNujN06dXUs9+u7R67kR+pkzkqzO4q9HVhYGce6e0wzhw3u0CDhRV1Oj5pPjDE+45jjoeVW7QvXAMvvad....BilfT5OWvUzDZpFtQZS4i26VtSC6tUW23z2umi92Kx7IkjJpHo39sCoxklsj1dTNxfWl8E1laq68aE2Sgd76U2gNTAGR8yzrMKY2C5PSoe4OKoCXsphKRGZuG5GkzlqpzozpDuKos1a6VOPH5RkTqsYcehjVdDLVpuYQRZ9RZP9XccPRWfjd9HZDgFLnmOAfXBezUz9pa0SWJyqosO0d5c3ndCTqsBmGmCPiIlE1ugTngqcIofY421m9jssk6zXeFo2qEabTi8Ny3J+1vx09p2qkwWZ6jQ0OLtNkjJW5PQwHB9Pw+mi3JF8L+MuR7jEWMOop++o24C2o0LLRUlkZVp6k0buU7q9a8.gnK0lm2TR2djLPpmZJ9YcSJhEEnAGR9DPiHSPJc41RnLDFLMyMA221l27+hciideu8So8oLbM71X21WVEl2kTQOljlQEZcOZ4acySHTpeetOKJuL14lJaVUUup3hdrCs2C0y5Z8hfGmCPiQoVK1Fyh9g9atp23N10iebqHti8p+pt8ol8HrGX0iYtmncD.uYZlaBu1b2YMlfhc04bWRmRy3MLK+fuUbUNgNWxdJ2ssauxHQiZ0DW7Neh+vPZgZwjkz0m5kO2wTaiczfV2kTN1rtEIouKBFK0W84RZw1rtAJqd.EPHijOAzHQoEkSt+lWsF+u7fEdKA61en2ujyHKYT81t687M6rKyorSOX2903Jo66Szmrsp198TVh6rullYV05cuUOkjLhq7CDr0s+DnVaENONG.DZJ+69W4swK8uWf6WiDHlytaRpa62JsSt+Toc4e3SUwujeNapXy+zgV0cd14aXreizm+tFweLiNIoLkTlJgdkUKxK9ur1rKK3GNv0uSsyoJoo6xb+OZX3UAZ34OK4V2lzSOSjLPpmytgVmKIUmafXz3DIeBnQhDZtwpO8SKMOdt888qHnSdzR+hhNcO5V8UrXs2OakmXvt8KXIEOD2ebxmZe9kDj1Tvt80VAaqsRqo5bBWs3MP8Qt51DUpW5sMjrTV8QR81skdLntmPtiH6Dlvo2yDlu2aWEa39TgW1a+hQ53EHTjra+Fei3FrZ60exufuJW+ehMsYIsdIsdcvWbc4aXTVntuLMyMgUuoRxspGW99pXigdDiFAFkMOewRZlN8N2bJsOE49HMn4uWHMRAbud72HFHB3YkjcyEgmUDLNPCHj7IfFILLxe+8K6lNK2etCt57GX+LMsaBYrZll4lv2sp8dJd+7krlUddAy91zbfY+0uimygSMo2G6rqMe4yPQnzZqzZpNivYKdCTeT7cLSk4SeOqnPU3Jkzpba4m9p0V1hmSAk87u+pKaP634y9TFuKOuOvTR94e7Ay0nAhEXDWWTEGHg85b6g35zOt380o.WNzHVKjUx88k4ppm06cNe4uZ9Rx841ucOpc19G8WCo4IISyA1lG5y1297XDCbvCsyHbugc2R5KrYcGsjZZjKTPCEj7IfFQFvHZ96lkasR4gVw6qc81GJu.scksay99oe3ds9BeFYU8yWxGNuN2mRB77RxddocNjYTwgyyjQbCVocJ85cBsnu1IXZsUZMUmU3nEuApuJXmqhZ0EWvmb+OXWtN2etxWU9pnOqrfdNR6eeNsrGmT6hajRZzUtbdpk4M5lcN+6fd9ixT4lfjRQRoz9oLkT7Xc2eVs4zae7CpkUU+srmiN9i6JGPtllo3yJyOd6w21L6SahanUEqw0tSZjdDmaJ3lawqb9Hzmw6S0+V1ggYsOFojFYbw0ugEJGK7V333q2d6w21Lyo8ZPRsajRZnRZnp8m9fRZ72cs5GYFtqOew5X9TRQaaOoTzdO74IW8LSkVtZqSoxyGJ2COuR594IooDRueop8WQu+95+mr9CV8yW9d1SSys55Mv04aO91lYkm+NOIMZoVNZ09bFTRmyaGzGa778aG988l28QlYdsLNq2Wzl9LzN8rbi0HJYTRJNaV2qGIBfg7jc6puiA64L+21t4o7DAy2WtJe4jV2SdCeUwd7bYb62xMsbCi0Edhxf1aYyymrjNsHYf..3j9LYcGov6kOKZFTtIVO97ISyAzwao+o3QLm9e6aep.sca6+z8aRRlxHqZ7ZtiOawAr0b9hqqCy18sIw7ltYeLM8n6C+tiqMej6ko026ptqP6UWsmo4wk4sjYxUuua54O6uNRsuABCpWd8nXDg8iclE1ugLBCWUWWIz2oUiq2Y61tz9NprjQ0aqQbC1Lyuprg42son7x31O9ldWiHq380qipWhqei2LkK7UB37zw7t1N7wUu+iejlYuCyAXtfdm8e9Ol7brs9ckiYRmxSbeAyqwc7.YN7ynawsDaiy9OVyle4e6jL28wNv.cbzzL2TlwXagGGuxdGlCXGOPlC+L5c7AXe7oSLXh2v8w2ph6odVM+FGPKbUneqy9OByDO9oL4.89mvc8En80iMhz86whpVp5bl2aiQbC1raeZoC18508uCf2q+Ct7180AZe4u+V4GmR2F7kbTIZ66GjjoQKGXgIOpG9FBzq+YN1Vsop2lDFqYeOnYueuKpMOp20WqtmBt+.UW1fqmW27Tx2G+JWVCesHhxdsrGU+ML7HFRc7y7WBlsc2uUOtD2+b.IY1zy6U+PmKZ8q1KoJjuOlxnD..MXDq+guw5wmsdyw0lEH2+.sK74MCzc8NuSLj6KocYegcsJhj78WTsY+44TisweIex8VauUsUmmTqNu36+kN3fo018WqsVUqotq26nNa2+RBIe5uvxhzslZnHR0yDjjd1qnEc7LO13GbKaYUszeKGsZyvFZH0SJpEs3sSza.hjmihvp2d8nX.wVIe5658vc+ZQFwOxZ7izcWoeRuG33c4+jh38Rhm78uT+EOdjDfDFqY52dmGzDckPPU2M4be5k4uOOYSOPV03GUY2RBmxe7+crFw42iilEkWFSaPM6vGuRXrl84RRYBd+i9raIsK+CmgcwpSc70766Sett92jPpNc0sIZ18u2zm28tB20Wf38wb+sjPemlY+LMacMNOEhIexeeGD22Fek7oWaB0LwP9aIwSc5azeC0Uu+6iS7hZ5M5q5oNz.Zb875lkIee7aUQ5.YIWWGe.uiiVbyKwuIkzWMRbhmf0eG43Ar8Vq78wzuIJFS..gUw5e3ard7Yqp6ESU8kPSb7lYuQS6Fe7xzbfs4Nb6CBSX3Wy5tr7Zx5q5wIepOlo+Rrg2+PLYjkY6dhcOAuKm2e4x19na+tM2btY+WNN+2Z6IOhGex1G69u0VikZM0PgS2yDjjd1KnUSZnYFmeaEcWYMXyDNta3g82WJJXZwa2Ka3t06iVmihvpud8n1JoVFkigXpjOsso0MOt9b7G8sa6O5vzb.cbZ8qo97u0M5bOecI8+dLcw0770quzuZ6az.+9C8MxxznY8706bWMdg9zRe+2o9556RRktl9OP2SlTUKwczmUgp4c9F5b55Vq9ZNt0KaqJYUASxm70hQZc5Cjz+2XyIQet9Ve++30DoN95cO0xiiqo0oOHtVXLiNklwG3qDzk7o9XArmeUWqufgoYto7fCKsk4p6c2T99GktVIs1t2cWlIb7Sc88wzLCyhxKioOnz76mC32d9zDa2rkQVl1j3x0Jo0ZjvXqQcNqKrUukOJuoQmOt2PMqYW+w0IimzWIprxFkymeuFu+6it2cW9JlZL1ymNRIEe.KkyqX46ie9MQyNk+6nawJbONLhej9s2r9JiqUdd8WW4X1wWJ3uyR6PdQ46io+dzLn..Bmh0+v2X83yVkVTN458O.ncOx1uQ6JeYe9Q4QWGNsqdNu06dcsyije3uVle82eV2i66KWc45L80Dln2slXSug9Lz5ZqsGnVaMVp0TCENYOSvrn7x3AGVZ10xg9bwU2lnYW+fRGfc0WfZwaI4Hsdez7bTDV80qGcARpDIsPIcKxp68Go43IeJwSH3R9ToqNmbmXldlfD+MTK9gozEOt1pLxxrYWxybWd+ilMWPuy9NNsT2f6k0eM5fcWWLgAeuy4HVhmyiMKaZccbCxvye7cJm2rpwctOIoOdhG9yMpZoYWwq7HdWtYeEs417URFraX28f40rM3cYkjYRmw88hYs.y13Qc+ma686c4rqATbhiuG5kxdbd7ZyHKyTu7YNYuulr460mLdrKnk2n2IFw6Is3vc8Ep79561kn05ZxmpRgORV+S2i+ztr2eE1EaEOydbEtWVIYlvvui02gGZ2dzqcMKJuLdfwz7Y5cYa4ssZe1ykpNN8ZZHHoS6NLS8henAO9w27L6t5dNd+duPP80qm+NRZmR5MkUOLNZbWs8OH6+L9qJJDOxzbfY+W6VRd8dkZN0SHIskGJq+p7Jty3FWTMtFYTfGMJhWKQiO2F.HrKV+Cei0iOaYZlaBy3zReixs3N0I7AKvtxu7+QmeL2KaG9u64F+sG4H73K.5utW9KeFszig4WJm6arLeUt.kHHiTy9C5bysu0180bOUf9BuwRslZnvo5YBll4lvSO1V9K9rN60I8BJ8zu5A103tuQz+Z1CBbk7D84O1JX9QGNQq2GsOGEgUe85QWf7LdKWR4Ko6PRcKBECNdxmh+nucy9aZ1gJGtrGdIWyDLUtIL0+ZF89pOglbed+9QWc8V7Yh5qxqMg1rY2KeJi9Er8FkvAMGPe7d3i0lGXs2luJqut9RSO+2z1dJ02cSc7ocurUMTq73Xh4wko2+.rlc4y01a44qwqd.VU0qu9a828xaaMh2TuzYa6moMeuGJLtxwrKyol8r.m33q2MFSytzO4isqNkp4m+l1eYtK2IquPk2We2Wm68U4BWIexeyOitO2LIY03B96Z6evDamGyMk1kTRe82GIdpSei0k4QKuTe854ui7LdKVRuujtDE4tqncVx2G6LkjsMRpSa2O0QTigabZWsmS+DllCLauaDwTFySsw.MsXDgbZx9iq9cNID.n9hX8O7MVO97Ku+Bn19EF8JYDFILVyr+MybL+tdOb2asa6Rnjo4.RIqXOA..f.PRDEDU5n6Sj2R1mnJ6ZMwjG08NGuuqwrfo0ofp01CluvqTrQqoFJbpdlPg2c2733PUu15xa64O.1zL2DlwXxnFSpm9JIlAy4fvcq2GKbNJBq950i7N4StuTgjVojlljB561a0BNdxmBkkJGJSlweB2x56Qg1emQxzL2Ttg9j7jSMUi+uzRy30yznkE1x+9RssGrJUy46u.ds3phoT7cuUsJktl9Ov.0Su18ScDWh60YUeVhed8kf2Ij11jO4U7ZjvXM+CKae9rmXZU207yk7dXx4TGeK5kxdbte8qVMk72j+pSSyAzwiT57hqOCanJ6rOx1M044wmSGtquPkuR9TjrmOYWxmJyq4wQ4JGytN2xFi+dsTiDHZjkYGdo.OEAXD+H8662pEpud8buS9j6K6SRepj9KxYmzuud+DCQrIabe4K+Ksyijz68TPwKLtVtb2WucMnWTRGj8GW+KQw3B.HrIV+Cei0iO+x6gRmcs7q2sDSJiYFl4ZZlh2c0dWc8VL6uoYGpw948Npy1i6bS94GEDps1t2Sji9r01qkIeJZzZpgBmomIjaJyXDY3Qcl3v+Wavew5GcUs6Ybu7tRb7l88fd9kkBlyAg6VuOV3bTDV80qG4ujO48xOIooKo9GligXljOU00Jck33Ma2ispvdqzGr2QQ8tb9qGJIIYNudOjAEf43pk7O5rGWuNkwD3azEK5V67+x8sIXS9Txm9K3yFCwc03FuQX3NbZvb706q0Ee+tNyN9j9dHKGLB20WnJVM4SdWtjN0+6uDL8fDu6o19Zxg16yyoLlmx1dDWsT80qm6ujO49RIR5qjUhhZaXNFltM6ycDl2OgLe0CuqZZn32t6rpQC+09mXK9btnKJZ2x2GamVzLnP8Oth1A..h7hu+YrfyIuTO7STwh0dla9mp2kaOO9NFxLpnrpebhc3Hlc9FF62H84uq9ziTpNAAUrwWWa6E1cM9hhK8KJ5zKTlU+3lLpSSMuuojevDit5x0otOqwX6j.8QcMs4MFgwguDlQyjJW5PAScWaU16cTm8C7l+9g6YQtxQs+lu1qKeCi8a21Lzmra293cc34fyR93oqsLqhOmvYb4JE+er5nuh17TA5XUwOcwm68NmhbqRyQs+pmzeyeu1Nk+Ul22Dcc3uOeEk9hZy2UAmanF+o2wDWU+MLp9wI04VzK+U99buc7dORoyOt9LrgorytGozoDGZUqKV8bDpyNBY8iUVrjVuj92R5DhlAT3VkWqrvJJ8E0Vuli5Kief23x51mZeuexWLmR6SIOoVK0+NHoVKqVrtCp+pCqY+GrY0l3pIYm4O3u0WVeSbusQF9qHZca3fCz8GajTZKLeCixrq7RR4lSSmi6WWHXkRu5seSdsjT1GYxetGwSJt8AU9Qc83aWOwT9xA410hOzReXs4qH6EZzyw8jIel+8f5N3pSVeMTr1UteO9Lj3ada2Xfd+ljT+NglsP2e7g14udZAZaRI27dkPOBaTKIIkmrRTzlkz2JoaURcNLT21cCrXWgg5tNwvH+8Og6oaGi6eWiJ13CqU9GO42XB+2Md2tW1Tmv67Qa4JZ+iEwCR+qHad9n8MMDTOCIeBnQHizm+t5W1M8sc+4NXgqbzdWtEu38LhCuQYoldr4Lmpd3wkapeR0qyrPsuuakmg6aqoYtI7cqZumh6OWhc6O7LAyW.TRpYm047RK2vXc1s9D1RYItW22e6IXp05leovCzqkXd3eiRRC+Z2TqFZ7um+1ljLVzJF0o27C25rlEpRVRgg0tRcSufynNer522e4cx8DEl3.+SJsyJ9uve6WCiEVvoddM2ignXYasP+NzF7kh1boGk6GWK5se9N5uVu2vXQa9mjdkxWwb+TUPA+zVusAu8pVWr54HDV0UY0U+mur9wKOirl2IB8LUDA3paSTIcgW3v5pTNplK8Nm1qAOh9D+sMzLiacRJqp1tCsvGrua3TO8B5vSa+cFIIqdUxsOrztlioKtlmwctk8MeoeSZIaVR+lrN9rYsDs4a3s28.8W8Xa8WVII4u0mfRovSHO+Oktjfj6WBRI1w188AZ+FetIum1UKNkFWKR7.ApLI2x3Kw8GW5OU3wa2b1S373qwwtxO4VtrV6YxwLKTlqdVSrj24+8Ky2U22mQGx4Cb02QcCILjoFvqAEtquFJJqBOmy312qNxi2UKLVhrlS474hQZoke1+i06wPqr78UV.+lEFwmTIApLvVwIoiUV8dl0KokIo6RVSb30F1Muas6ZY8EVkXOWb92+C1kqy8mqhu8y6+bJ7vsEXh4Mck4ydFiKhGbAVw177gq45LzHAIeBnQp7NwlOG2ebIu+WzY2Ge4lEkWFqbSkbVU8XWIMT0hyuYeYUONiw07OerFwU81W1lV8E3d2Zuzcor+5OZecp5B3JG07gjmeSBf6RpqsuN2Z6gaQxVSMTDN5YBqZ46aPt+3D5buV3JLLBXqE1qbR8cb+wUbHC69BJ1Jb158wpmifioCR5OKoOQRaSRyTRmghMtkeKIo36Xl5HewWbwaPZIplKqZwaQe0bVwgl1mttxyZtStSm83y7v2jnLOzGnc7eezOwtDiLqKrU2VNYrfcd2ys3G862XECxWkIVT7stsNyOFzUNJkddjKIfE6fJ4fo5bhiuiZFcZTO8nyX19bklEJyecwinhk+dOXYe4ssh35+HLiOuaXx9axrNbWeMDT99pnFIMphcZ1O46D.mijxwr3hscNHyuL2eP0q4P.4RR8UR2tjVijVsjtOIEJIM0t6vdwLIHr8WegOx6d4s0m8NSi3GoZ2McsCOX9tWQA1kTe+13D.dijOAzHUytfV7kdOjo18b15IV8Sry8122+CObdDR9zF7urhjM9wpdbBM2X4m4Ye34uwC7den121Uepdye6hOoWrhC2ZNw2mSWYbVw6yI5ZeIbzZ6gaQxVSMTDVNVsOO+9yIzxz2VvruSNIWd1CB9000oP8tyR3r06iUOGgHhVKq4Qp2QV8Jk2PRmqhN2xuqVnzqLG1z1za8eeziXrtObyJc92f19itiK06xtv+RGdzwMycbOt2S+phQZosXizR6MjzKHomToY7vYEC0wvLOzACpj+DpLb0Nk3QX96ApbGn3C0c2eb7stYJQoC59y4TGeMLxurKa16ZL+vC10Ad9Ym3L821U9RliNz7m9TWYh+oc11GYm0XdYzIpObXw0TWcIZGCMhksjtYIsBYc2G9QjzwEfswtq0WZXLtpyF0Lx5hl1fp4nzs4+sa+q23nSXtQgPJXX2zZQrvciOTORLSKCBfHKCiEVvKL5VthYL6eu5DFsmu96FkjdLIo0MyhFzbLqn5xmT266r2uGae9kM+quiyRRiSRxrr2PaeF+7IIq4jEszOo3Sx88Wx8afe8RML1tpGyOslpsLKNj6HPwDRLyNGvgEijO5AA6e2coToTUHNGKLpYzoQ8z6nzW8xl8tpwv+zp060HL+0EOhJz6o35+HjQS64s0yu5A+Od2BgMlNGED5shsmjZqS2osBfLjzYW4RwxZBt80pbw14+qXAILpU8lu73Z0We9yZGGeUO2dyegCWROXUOtr2u2C+jG0O3wDRqQ7iTM4bNiIzpK7Je2MNJuZ47hM0iOw10qSYFac3Nc7GLbkbB1M+gTmXVwV09xe+03leg2huItxWRmeUOtzB2nJ251A+9khLGe60MtgEIoEYNk1OoK6C10w7K+VYCcy617L9ghpnFSp9lk8F52tQ8dc+6MycsGiwhiD0WCIob9O2L6cgS51+1hyLAUPAAahHRrr4+a6MvEKhIV+549ctZrNJKIcsUtrII8ARZVR5K7pbUHeKlpyVrkGeGi4o9pZ9Vqhe8m43ydil8tftXrxnPXUaY2wb.ehjOAzHVtmPydG4VxmJ8mW4o1GSyLVggwtV5Or+COeO4JG0rg0qOZWOnma+.N1l8tYIiwU0bEzAW6pNaI8flEkWFOzYrbORhPS6Stubrz2hKZp9PqoZdHWAUOSv6dPPBcqS0nGDDLLLxuLIMle3A65.tqYrkq4aKnrKrPalCfKeIyQRyYpqLwML019H6bTa6u1h2OT2eAR8gyQAgVKoSJfkpguzjzoW4x+VRKTRutr9wKwjRrTii28GadvJRy8Gu5uZ2m0W4ViCXjvXUW+vYMj0OzDm2FmkuuyWev8VQLyvCZ+qXUAbHrcnUenDC4OynhEqx17lC3OBNtT875aI1i9sb2abjH4wWi6bK6WRyqxkorf6Oq17oe8NN4e42Ozrlw7NbdRMK6Mz1dz47nJ.Sz9g65qg.WI05L+1u8fqSpfPZ6NvOd4NTDUqv0yszIIMoJW1lj9HYcs7OR12Cmhp89U2cvclaetlVs7G2We+lJV+Lzll7INGEdl70C2r6XXPMOtBTkXpLACfHq+vny38c+tfVYK5C0dm+gx0zb.cboEr2p+wOw2mSWs3zh+a8d6iabosnQ0sC+4Qk9i+f0j15xKpuu07O7OavUhiWYbts4y8d6quKky+4l4wcbIkkxN6dHoLCxkdT17+s.00wi5LOzNCpjOUYOHnZGbkqopdPPsRutwMrnWtfRG+ZmR6Z5kdrIOjg203tqdktKeNGtX058S78592aZ6b0QC4yQnVIEIMTI8ejzVk0bLRLmDRzviggZbMMAOFiF+7FNnG8lklcwW6rW+PSbd1Uell4lxVK8PmhcqORqhCTV6CTYV6J16o5dBfBVGZGGJ8.Ul89qk0N2ergq31m6ONZd78Dt4B+s63sJ9kexurmI97iqUd79fRV5BO99YZFR8Xvvc8UevQ0qT9J2eb46emoZWYQ8ZsURWrjlij1tru2WEYmiFrgoYtI7hSb8ef62Eo81dewKrSs3lWx8GACqfkc+MTLcOIFwdH4S.Mhkvev0xNa2l2lLKedZueUQCQKa+8+cW5gmaASpm4tPeMj4LL910cr8K0puamU1h9PUxOTVe1wB2+vc+GMj7HO0eodV2HNnTcqoVPA+jrtSsDLK+zA9wK+WinAZPnLu9hEGXk+RP0Z3o40iSL6dsfvwvqz3N2x9eluqj48Ian7o7CEUQNK39yps20XRabSbvdN2i6Vq26SMjNGgvtjUL3sIZSyAzwuq.OuSgZjRRK28G68cOtj6Y.Flre0AO127M8bjtYjPxgbOTr1pO4j5249iK8GWZeCTROV3hJ9TqM6qR25xtV+MuyYZlaByeYEeVt+bFIknGcCAm73q4TZeJmiTO5zyZ1Q+UkFF4W1E8RGw049byX7sqsJNIORTV3t9ZHnow44DLcIy9s5a1+l8MRQULeu9jQS5wSEvgsIhI0RIYWOVt4Qx.wNK5p1xzur232q9FwiQbCVGwpJcHewDamG28o20zutaJyux+2kSiB79q6Uk.NG6A3NR9DPiXFF4u+d1kl3wPOozMuxSd0KZuCv8IY0ldL8w1g0zwNflUcKoZV97zt+zMbrKco66XcuLIeD89UBigcTSC4VSMytljG2s2LO3NBpIN7ku9R73KzGepo4HeIufs06aHeNBgUEJoGURA0baVcUbgvzbv6M90de20R7rwjStGYsN+sMUTRY11aeLMGXat2aaCewb7pWDcfBVmSNGs3gNdLMYQtOIpenkOSs8maOiwtxa9c8d3OyaWTnbWtpZ6+keJs8OzO8BohccLu6GtmCemX0HKk5weBOo+pyvww2RWcN4dlsLtBMtysruWSpfh+p28aBvKEIU9AaRWN7WUu7sTb08rzvc8UejQJ9drY2lascy5N5+ganByxdCs4I+o2nuJq6d8Waaq7.+3kuYWYNvBiq2W78cDKw+IzCwDNnrFJ02hrtltuD06ceG5kxdbW0iuEOlG4R+uceO5ZNpDm2PdxLmjGues74oecp1eWNMJHdI0BaVW854xUD4Qxm.Zja.in4uq62cbJcKK93e64sqpGxQFwORk1va2mZ212igl5GMH2F5d6cgy9DVQYkV8W72HtAqlel89iB+QdjWC4VSsicHYOZ19Rd+uny66WTO721XVTdY7cqdeiy8myHklub6JueqqvTq22P9bDpyJPR2ujNZI0cI8WkTD4tZXf5cIll4lvKc9s5zujiJwkbFyb6Wf6qK9i91UGt5L+2drAM0y6nYEOm27l7UOIxzb.cbZmxpl6j+pZ9xzrrR6Vv+JntI99mwBtn7bajCZVn1xcb6OguFxrkt5bx8uMo09w0lgbmj0ObaqS8teudTnYMt9kYQ4kwCcd+3q3dhhb0k+jZ+jR6S7nfNww21KkvNUlUWmOyeqis5dV8j72qkO9p23s+Hq+vcfpD6SmTbRE4H0W8PUry83y4FGCiEs4S4DyviFVaOO0vtfzl3buM6pqO55Z+CbNO2u0AIoJV2ByrhB1wMa5Z+why8NvZnd8Ex5Z3cTRGurt1tc8v9Tj0jVdTgo4wk4jus0+Rt2ntoLlm5Wx5A9i2njjgwB+sa+tyzi6xoG7CuAs9K8CelHez5S8PR1cWU1uMLBf2XBGGnQt3FdZya78uIppVZ+.u4MpaUp56XOIMzQpl22TrOgBGSyV1Hxqo5qp7KeWx293i4wV6g+trIN7QqTyK97sayiE42VS809s6upiUt0ZpWn+puJaM0N3JyAtNildDudVuvy8vqo+FaN7G40ds9ZyXl+0omzcW0OLohReQssG9Zljr9xc9T4u91OK2uisXD2fUFi93dhca6ffqlJc04j6eJuk8ZF24VxTRJsu5c2rrlPQ8iJa890W4iNbq2u+FxmipE1tr+KiGKn0x5N3jSoBY85+skzKHo03f6KaU1xmrVbFO9Bj0ccOus2LxvnYc2XwCxmSv9FYoVcUWwkrDCCOFFnC4jR+M0SsspSxeoKXxZEG8O8sM8ht6ItuW31W1UN7l1131eEWbNt9la18evi61+7dpiOiIOmS+Lm1HVvJMM2W9FFN1DGqQ5yeWK+ez4+k9phu5pdtJ13CqBGvZxuIi99u1Cri29Ut6tshTMKx7BFZuV58TqR7jQVRlEJIoRm+coe5H+9BR4bdjIkPJc9018yMl88xWZqF3eebK6KuuOzyDE0ry7LeoHww2DMLx+MmXaV4aLiey587lEpc7O64S3pGm63iqkI8uL5XIKszsrkcN9R+tTiqIF+wRJS25o9u2pGyIYwm5Q9nUcdJwzWbXs9pWX2d99h8O6KpyINzK8EJ8Sel2Hmzc0we5O8w+5depg8VRRmvz6xccsO71G2iVwgmCpKdFC6dh+Xtx7RLqi51x4Uu1eYe8WIbhcqoCdyqor+9o9vawi6JpodI2vK8yGcSWTj3kUPJV+548RVyASNk8JouVV2wReU46qm9y9Y66ir5wqQbO6Y8yu38stC2tXtRb7pKOwkMZ2+auDF0pdyOYRsaVC+I2Z0Mn2dd1qdzs6I18D15Uz7mKBGxdyeyMhQkOWE.Hb6yjjoOVhUtMyFqGegjYe4s8qkjoLxp5WKcu6tLkjY5W8W7VAZ6e2KusejjLc08tW81mkLLkjYZWVf2dIo2cbs4ijaGKa88tp6xek2rn7xX5CJspKeB8cZld2Ek8tLFwMXyt8okNXuqqBejr9mtuuSYzuvFsa+N+quiuj757dfZMU2KqQ7iz7Orr8M.+8ZKPbhiURRewDa2rcudkqbLsqkzMeyrGx3cEuGGGR8BeESuGpdA5bPoEkSti0HtCWOFYY69rJezU0tmw88aSuvm2i8arv4nHr5qWO5Bjui65xxgjz2JoIqf6NFTX+XmYg8aHivvUc90hQbC1Lia5alnO2Gl4lxLFaKB55Jw7lt4as59jqcwUq++st6tp51ot9hYQ4kwiEBwbbG+kttKneIrt.UudDuFYY1u9G25B18QRm1zM8cOZxYN9Zt4by9u1sjpUuenIi9w1PMt9ZXt9BUgx49.8YwtedztOqtz0z+A5u+1JsK6c1j6kurmO6gWa9awjO0GymuN7NNUP72G0B0Wud96nZw6CCvRQUVuWnjZRPDCsvO00sV2eIF59gozk6w6XokScM9bHfZVTdYL8Q1bOJqqtbcl80zLSeU9Hn6V99XZ4xpWkA.TuWr9G9FqGegjs8e59MIe85wHKy18D6dBN81KEkS9zc2MOR9jjLSbnW5KHoQmS5tt5Tu74V8bSho4.y9ZckXMdsF+wbkyIky8QyIOoV2+9qNb8ioom+416DWh2kqYW9bmYvb7vebpebXoEkStdmPIIYlvI+Oe3lboOUGx0L2DlZdo1568by3tpJ4hUu3JGyN8F6pFygKAy4f2bhsYEduOc0iycdIb7Wz4k34bN8P4kWqG+wkTlSXHIe9m2wm7x7trM+JVzi3w9LF3bTDV80qGEtR9TIRZ9R55Un2x6g+jO8c8d382vnV+5wUVC1Lgi+1tq.Mgba988oO2wHSKf0WBC+NVeU+3kWYbs5i7UYZ08TP02ckduI1tUX257YbTTdYLs90zpKebccJ9LgNRRllGWl2Qdotg.Eywez2hYOLmR2df90r.Vudjzh3GoYG+3+eCXZ40rMFn8QRiXZlGYA1+i5bpiulKn2YeUCH4kFn508kDOoG7EsKYHg65KTDrm6MKJuLti9mhGedg2Snxd79Ner9p7Ad2HIts3cxmjjJ88xN2qoeMY81sMduDet2za3u+1KT+6iZg5qWOObk7oeWV8royVR0ljitUap22o18xp1qr2u2CePdk7yTNuYM+PcaZx47hKy4iV+5ikuOltgnYPA.DNEq+guw5wWH4f6L293qjN3J4IZ1mRp47lg2pQuWopsODZwlnYxmhEZM0PgSk7IIoM9XYMtZyObNi+9Bruk7Bv4.mn06i1mihvpud8n5Rxm1mj9TI8WjjsSFzAgvexm9witiinEtlrrRFV.WRW5VU5oeqpEG2EmvfdzbBkdihoYtI7PCq4S7Xxv07xRFlFokV9szPEZjdWVhQOOimL4y7kqw06dng07I1IY75R50kzyKid8vs4t+wp+g9u6k11yWJ8aURWuK00I29ouY+NmoYZlaJ2ReS9FT5oeqomtt0368sbCA50vSNlVLliqyFuP2ZgwZkzZkzZMRuqq0nym3aj7ndfyKWSyDLMyMkI00DCX8ZWOl4kN+Vc5mbmh6I6VKLVqgQKKLiLLVhgQKKz88Qz33aUVvU11dOt9j3jyNMiOnkFpvJeMT4wizVrQm64q6Jywb0s81JHn9Lzvc8ELLMyMgaOylbMUcNxUWukaHWSSe1SHdniM0IpzsdekR+DtUuS72qbQsdBU89Nesd285WPqlTuxv07LRqieYmj0+ZjdOexlNg287saadryL8AOrtF280oLLlmp73RlFYYZzxVVnQGx4CbkyDBpiMg5eeTKTe8540kjOsMI87RZjRJt5Xb741rO1ZcrdCIllCrMSaPMyiXvUWukf56Dunasy+K4U76.8vtPwu6c7T4xbhhwD.PXUr9G9FqGegDSybS3kunVWiWOM6xeKyfc6etw1xZr89pUHsiSzZ6ASqsVkncqoFJbxdlfjzNd9rG9DyI4f50UBmve0rcOzuUie.l666f4bfSz58QyyQQX0WudTnl7ohkz6KoKQgu6PW0WO1gJELCWKf5QpudMoPM4SaRRyPRmTXNNtW+rO6YXdeYKuajvPYj.XZlaJ+6Qz7ew8s2HgwFslN.NFY+wyaOJDOndNlvwAfLLxurO5JZ+YKkd1REUhjT5RI6J8NWPPu8WT6tDoz6PUaeKTKZhqNbTAcWE1rbyoJkdlREUhK00ljPJM6C86Fz7Cbvhpn7aTomdRoqhzda1ANn220dLRe965gN1TmjRO8VohJpDkVSRNgVG+Z8U0MxYr0Q+5WPqlzcLmcN9UWd6M6XwawXyo0dS4Jser7CYTiuzWhipf7kT2dryL8AO6ksmQUPwULfMsKq6TaYZjUVquE6dcJotVfQ65y625Qbqev1lZ1qaoFOPvd3vubhiUtqUWbAehoYtI1tg+SmxBJX+m0Ou2JNlMVjYyqb0Y4Jq9KyRSaNI0uy34J48toWYqK3QrqpB5yAFmvJKPR8aAWYa68isfcclKYCkk212iY1+toxTUOIgl1tM5bGKzH9r+7VeA26Grsol85Vgg828rilmiPXSQxpkreUIMaIOuaFB.f5MVmrZ.gWTReiCsOlqj9G1rtyPRq1g1uUaMSqa2zQL40eJt+boeUOyrC1INbCi72eoqo+m66djK6qq5NyoYYug90+mSag4ZZ1z7ML1uCD114z8y593HVT..3vh0a4mX83C.MdTe85Q10ym1gjlkjNK47MRV80icnRzymPCL0Wuljc87oBjz8KoiNBEGwIqFsvWwx24z6by406ZbCmn1Nb980jUdZW8bBpahOgQ0XN4TG9yoABYzym...Pz1VjzGIoWRVsbsYzMb..PsPERZkxJYTufj9oH79ubIsHIcp9Xc4HorT08l5vucs5RzBMqXxpxdoqK00lzlIcIe3JLL1UnVW87+o024s7V+1NuuMlbRpnhJI8zUx68qW4dB6As8NJI0aaV2WEAiCz.BIeB...QCaUROtjlorta0A.f5m9dYMT5dAIswnbr7px2IexkjtBI82cpcbKthe9KkzWV0iqPaPabroVqpKCi7KSRSupQadQEIokbyggnLnck9YcubDKJPCJj7I...DM7YJ1enj..f.KZd2XyaurjdXI4qr9bARZxxpGRA6knjNGaV2tkzaFAiEz.hqnc......TaXjpqNT0+2zbuxHQiDilwC.h51urFF29RmjzkEAik5qtVI0VaV26HoxhfwBZ.gd9D....pWpjRp35kTKkjbolYX3J9kGkCI.D88XRZr1rt+tjlgXtEzNwKo+leVu82hiA.pmJV+t8Qrd7AfFO35Q0dbrC.wR3ZRgO4KeerzTRSHJFWw5tFY+wMleFQcBC6N......zPxc6m0MMIkRjJPpGIcIcG9Y8+OQn3.MPQxm......PCIyVRqxl00AIc+QvXo9gtItj...H.jDQAQ0hGVRs1l088RZtQvXAM.Qxm......PCMS0Oq6xjzQGoBj5ANAIMd+r9+mHTbfFvH4S......nglYIoEZy5RRRupjZRjKbhYkljlorO2.yURuejKbPCUj7I......zPzkIo8ay5NRI8rQtPIl0KKotZy51qjlXDLVPCXj7I......zPzpkzS3m0etR5piPwRrnIKoQ3m0+PRZ8QlPAMzQxm......PCUSVRE5m0+.RZTQnXIVxEHoo3m0+CR5thPwBZDfjOA.....fFpJQRiU1O76RVVyOTmXjJfhAb5RZFRJQaV+tkzXjzghXQDZvijOA.....fFxVpjtQ+r9TkzaIoiKxDNQUmrrlmmRwl0aJoqRR+TDKhPiBj7I......zP2iKqjtXmzkzmHoyJxDNQEWnjdWYkrM6LCI8RQlvAMlPxm......PiASPRKzOqOMI8Jpg4jP9jkzyK66wSRVIe6phLgCZrgjOA.....fFCJURCWRK2OkIII8nR5Yj07AU8cMSRuljlp7+u+egxZhWu7HQPgFeH4S......nwh8IoSRRqwOkwPR+YIsLI0uHQP4PNAIsBI8mBP4VtjNUYkbN.GAIeB......MlrSIMDI8CAnbGojVfjtGY+cFtXQoHo+OI8oRpqAnr4KqjwsGmNnPiaj7I......zXyVj0c2t4EfxkhjtMIsVIc9NcPEFb4RpPIccxZHD5OefjxSVIiCvQQxm......PiQ6SRmrrljwCjNIoYIouURi1ICpZACIcAxZ3yMCI01fXadRYMGOUhCFW.UijOA.....fFqJWV8noaQR6OHJ+wJo2RR+nrtyvEMGNdoHoaVRqSRyTR8IH1lhkzUT4hoyEZ.dhjOA.....fF6teIc7R5mBxxejR5eIosKqjQc1RJdmIz7PhxpWN89RZaR59TfmWmpxxkUxydRmIz.rWj3ON.......h0sLIczR5wjzkHo3BhsIMYML7Fsj1krl.u+JIMWI8MxpmUUWDurlWlFlrt60kSk6yPwAkziKoaRRGpNFO.0Jj7I.......KkHqIs6+srRXywFBaaFxJIQCSR2oj1qj1jj1frlvxWij1grtyxUrj1srFMRo41RajzePRcWRcQVy0ToTGd87ExZ3At55Pc.TmQxm.......7zhk0cCuKVRSSRcrVTGoJorqbIRqPY0Smdqnv9FnFXNeB......v2ddI0MI8WTvOePEMsbIcQxp2SQhmPLCR9D......f8NjrFBd8PVysSKTRUDUiHOUpj9LIMbYMmU8hh6jcHFCC6N......ffyaW4R2jzUJoyRQmgUWERZkUFK+GIsknPL.DzH4S.......gl0Ko+QkK+AIMVYMQimijZgCsO2tj9NI8IR5Mjzu3P6GfvNR9D......Ps2OKo+2JWjjNRIMXYMD35orti00FYc2vKTrcIMSIsLYcWqa808PEH5fjOA......D97Sx2SN4IHoVKoVIolHojj0byzzkzw3ixuRIc8NTLBDQQxm.......bdkIoesxE2smnPr.DQwc6N........3XH4S........vwPxm........figjOA........GCIeB.++au663ipp7++3uuSxDHIPJD.ACcr.RQRhhhRQbAQrrB1VPrrVvxZeQY2EQvF5pn+Xs8Uw5JpntJvtJ1.EVppHPPPDTWBfTEPRHPBPZme+wv.SBoLYl4l6LYd87wiyiGjYl649YxPNI222y4dA......rMD9D........rMD9D........rMw5zE....PXltKo43zEA.h5zcmt...rKD9D...P4klj5uSWD....0WP3S.gVb1xAPcMNS4....HrFgOADZwYKG.HxQoNcA..3GXrJ.DwiK33...HZ0pc5B..vOvXU.HhGgOADX3LPAfvcLNUMaBRZKNcQ..TM1h7LVE.PDMV1c.AlUKoA3zEA.P0fyTdMamRJCIceRpKRJFmsb..NrRkmwwmf7LVE.PDMBeBHvLAIcoRJcmtP..pDblx8e6TR2kSWD....0mQ3S.AFNa4.HbDmob....D1gvm.Bbb1xA......pAbAGG........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1lXc5B.QkNOIc70vq4XqlG+NqlsqLI8bRxD.0E.....PnxIHoA6Gut.8Xe9TI8S01hB.HZwXkmvgri1ppCee......TUZmjJU1yw8T5g5e..TERW12fviuN78A.....P0IaYOG2S10kuI.BVbMeBNgsHokYC8aYR50sg9E.....HP79QX8K.P8J2iB8o+uz5z2A......UuVJoRTn83dJ4P8K..pAMSRGPg1Ag+q0ouC......pYesBsG2yWW2V9.AOV1cvorSEZmoREIo+YHr+......BEduv79C.ndsaSgtz+WbcbsC.....3ORSgtU8wANT+A..+TxRp.EZFD9Nqiqc......+07Tn43dlWccgC.TevWpfe.38KolTWW3......9oaQglvmtk55BG.n9fqWA+.vysNupA.....7eIofeUeTvg5G..TKkfj1qBtAguw57pF.....n1YVJ3NtmYW2Wx..0e7wJ3R+uw08kL.....PsxeTAW3SWacdEC.TOxUn.e.3OyApW.....fZq3kT9JvNtm8dnsG..An3jTdJvFD9pcf5E.....HPLSEXG2yLchhE.n9loqZ+.v6QRMzIJV.....f.vePAV3SCyIJV.f5aFpp8C.+ebjJE.....Hv3V09U8QdGZ6..PPJVI8ap1MH7k5HUJ.....Pf6CTs63d9.moLA.peZpx+G.d2xSfU......QRtHU6Be5hblxD.n9oyU9+.vumCUi......AiXjztj+cbO65Pud..DhXIoeU92fvmuCUi......Aq2R92w87VNUAB.Te1qqZd.3cHOAUA.....DIZfx+BeZfNUAB.Te1YoZd.3o3TEG.....PHx1U0ebOaWbR2A.rMaVU+fv+Nmqz......BIdEU8G2yq3bkF.P8eufp5Af2pCVW......gJ8VUe3S814JM.f5+5op5AfeIGrt......Bk1jp7i6YSNYQA.DsHGU4CBeFNYQA.....DB8bpxOtmm2IKJ.fnESRG8.vavIKH.....fPrLUkG9TlNYQA.Dsnq5nG.9YbzJB.....Hzacp7G2y5b1xA.H5xOpxOHbOb1xA.....Hj6IU4OtmmxYKG.fnKOlNx.v+rCWK......1gNqxG9zI4rkCPnmkSW..UiiSR+j77+SmnjFsyVN....HJWyjz8IotHoXb3ZA0ujkjRRR4Kok4v0Bh7TpjVsjlfj1oCWKUJBeBg6Voj5l7b1.VqCWK....H5UyjT1RJcmtP..pBaQRYnvv.nHsdDtqYR5XjzC4zEB....hp8nRZfNcQ..TMRRRwIoOyoKjJJVmt..pAutSW......xyRsC.HbWX4XUgpvmXsOC6jkjNKmtHPDmv908L...hnvw4.fHAgkiUEJBeh09L.BWM.IcoJLccOC.....DMHTD9z8IBdB.guRWdFm5tb5BA...0K8axyMIG.f5RcWRo4zEg+JTD9TX45ID.vGLNE...rKqTRmsSWD.HpybjT+c5hve4JDzGgkqmP..ev3T......NjPQ3S.........UpP0c6tJCq8Y.TWKhZcOC.....DMvNCeh09L.pqEQstmA.....hFvxtC........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1FBeB........1lXc5B....04ZljtOI0EIEiCWKvdUpjVsjlfj1oCWK...HJEgOA..DcoYRJaIktSWHnNy.jzkJoLDAPA...G.K6N..fnK2mH3onQoKOe1C...Tmivm...htzEmt.figO6A..fifvm...htv03onW7YO...bDD9D........rMbAGG...RR+ljVoSWDHjn6RJMmtH....7hvm...fjmfmNamtHPHwbjT+c5h....vKV1c........v1P3S........v1P3S........v1P3S.......0RlaoMopd26lIoT7mVxIeKoFR1ulrR3IOiFuRIYRbXSeFgh9rxrsI0g6nCxx3pcizzwkZxzt1OH5.WvwA......pEL406TmzEtxcqE9K981rm89Mp8Kn3At9939KBt8dbMJ+sVR2jjhIwXO0fqupZ6OFkTNxHqM8ipr8WRSrq8ChNvLeB......HBgk0Wsi3aSLWrjtFSAtuo5h8ooHSQ0E6GT+EgOgflSMcSA.....bBVorvbu6yNwDkTpdasb7sLw2b3osJII4JScLO0JF903yymbiOslD7y5IO9ayeeyPRSYuu6f+3PQ+AX2H7IDTL406Tmz2m2t0BW3NjTt9SaO68a1c6WPwCvopY.....ffk0CtsBkTddaa6A2VgonX1ljjkUiT783j15a3yym2jma5cMEqG2xpqOQal19J20Po08Ps+BRwpIOQJVM4INlmYcmuuO2tm7w0uVKqG2pImySbBq0zdiIK2SnGINJI83IbYSejdecuv.R41jzimze7itscL4Nl4Y2pXdojjlmjlmUR87SR7Z9ngUYuOLed2a+0243dqTTRKWRyypwc9CR3xl9HKvcYGHD9sKDkiq4S.......1rRNlXZm68nQaLeuJXEqqgRZ4det0ro8+X4Y1cWkjR4G2xIKoCOilxYiEcSaRlgakerprCV3z0dhOOKomTRRVlUJoW1X5UyGele2yJIsu4OQMn2HGkswb38sI+knBdiKbvoNpu9Lx8oN86v6iWzr6ZutpA8CK9sJqDI4Yk0Y16ZTgu+EeIc68swuYfnNLymPPwomto......QBhMiTWzU06FKIoBV9J6m2G2X5UyWxOtut58qKZq+34jkwjfmmKK2Yu776sjT7W3vTxcOgkII0vFGijjrbESAGZq1WKZg6MKIUVNyWYakgZv47XOrjZ+CcAIM1Lrr7re+54b6cyXN7kAk2+E2966I3IoFdAO1mE+08JoO065XtfQ12DrouKfnUD9DBZN0zM06ialY2R8NFPh2VmSx5Cj2oUZxcZ9wcFieLdGX0rgt29Syx5ASQ5wS4VW70TYuOVwnZ0vRQ5n5eIoobcMcX8qUt9jC2+Ik977s+A.BPOgjdOIMTI41gqEfpSrR5BjzaKom0gqE.fHRVorvb6bqi+eKIUz2uptmgwbrRRk7eyumezBJ3vut8OyOSErS0IIohj6NsjYUPqkjhqcs90VlkUwUZeasrBac5M7G790o8vu28bvY82Fmj1v3lY9S3gFVylkjTweyB0A9gh6ljTQ4kYVSe54ltjThiXJpKeze82u+W6F15U7O90O94+vNcJWoKVnTHzg+2DpyExltoRqun0jYVWUWV4R8lVuWl8rVUzhev9r51l2DNwbLcpnjNk3NdqXF22XJQIr0UqrLlo56.2FSVtmxktg2IOI4ZeMWtRPSQxy0zp+eWxp9nq9010YVt9O+snhV7C120jQdSniK0j05NEqkK.fZuiQRW9gZ6QdB398jzLjz9cv5BPRJNIMDI8GjT+kmYvrjzzcrJB.HBWuGXJyUS8WGRYa5Kzu8Ykjgj155l8dOqrMFEyocsq3ZN3amxqsho0tbmxNNSIs7CN0bOiWtrhkbkoRte8dl4MopoyKvyxrK1S99UqGywMke69NxScZ8J4En2YGmiL6Skraq3jjrV3AaaNpLIIEem64S56wGEWJKeYu6va5heq2YWmQH+aBHpDy7ITmKTNcSW7Kt862avStO6ac5tO8wj0XFQxYM1Az3EIIU1u7zZaSXd+8FzjkspK85R6qjj1+G9lZ2KrjCuekjzBN3Y7JSOWIIkvUdoKdssw56kjVzn+eO+n9x8blRRw1qacCM5pmT+t2wlVmdnAzn2VRpjU7zZ6S5MWVVFCyXA.DrRVR+d4YlkrCI8YR55kTicxhBQcRPRWijloj1o7DF5EqiD7D.PTkcMkNMvVak7aZkbxSVR+CI8ORMUq2Jwq3eMp.o+h6Ol5buRWwJU1x09ly2eVRRe6OTv4HI03S+xV5POkT+IIoBW8xOaIoUNu8zOIoX614qTunXWnesO5Pa2TLdV0IG19ToG9eaJxTjjzVVy9yz60EJqXavQcwEukoD6Zq0uAApBD9DpyEpltol75cpKdY6MSIoXZ63UW9xm6lK9qezk+nu8dV9CO6tdwit8MTRRkcvsbJRR8+zS5kjjLkNek+mmc4tSOrzOL2qdAlxjr5fZzo0eOuNSu5z+ZV4NbIo3NyGUccwOWO22Tt64OwG429ww8E66J+uirE+GIoBdm+g15Km2EXeeGC.QgZjjFjjdEIscIMGIcaRpINYQEJXtk1j5selwe5cNsXFRpopaP5Psj63MDSK5+4E2kcumX.22lrbKoT71R9VBrkF8Q0OWyLRo5d9PUqki23TWfMRVR2rjls7D3z+TRmujRxgpG.fvFElWQm6lL64JM6YO2njtSIcm4lqYDtrZ3cGH8Wbp301+gl7lkjNvFy4bLld07U8cEzMIojNqy4aO8iOwuURp3sttgjkw3dc+VwCWRpAcNquZEVV6ze1GtR5X2TUs777UYMPdBbxUlJ9StUecEe9l0731le+FCnFP3SvQz6Alxbkj7Y5lJemtoWWOhaClhmlNzzMUUb5lJ4IDqwrv81FIYU5FePqr0ojm7bMSw8Cnh1Wm6VBKVR5.qZsspGFSyR55a5mLtL7720WvR+tq2mYUUBeypK35jjb2saPs3FS5SjjzR2aqydidFyNoAMhmrhC1elWTZSoCxRprkqR9sslg89cL.DEKA4YIO8rRZqRZwR5djTKbxhp1vXxJgG3TSXjmRptlu0K7K69YWz9+p07akNibyUurzgZ6YcuboaetebQu+DWqqNzWi0IM7mN0adIcsl5aes9mM2+hjx0aqvE8X6NPt17cT8S1qIWe6mMN48Ldee9PUqfM+IeSssVCBMSdNHp4KOAb9BRZ.xy+eC.Hh23GeKSPdFSqV0p3IBnEoE2GzZownTRYLR5Oen1XjZv8o.fk0xJ9TO9D9ORREu1er6evL1dOm8FNnbE2UpTNuXVbSO6DlWerbohl6WqM+ds9DW3LxWRRMracYZ969vbvhr7qW3d7rj6TYKW6+617oWwmds+zA5u+tOApID9D7KgyS2zobcMcXmUqbM+NZs7hjm6OnE8fVKqfq8C28YHI4pQwqRkJwx5q1QeN0jdGIoCN62T6dgkbFRRk7eOvY+pe1djjTB8quS0aHSq+qJ7zVfwy.x6Zbs8dRMUqrkzx7zRZ487B+goki7LMUKae7iR.nNQCjTujzDkzVjzRkzXkTacxhp5L+QcrC6R63JK3A91BeoklaY8we1lxxY9x7Cuycj6K1yU49TumEztuzDvyFpXBQWeK8seJqnxNpklPnPoET7dsi90GMTR+UI8MRZyxyuOuOG5wA.p2nneNidsjG5WKPR0511mv4Wvw8cEb3fXhaDq8q1jzio7x6wjzjNT6w16aOn2HPquNOnj9rLrrTI+vB0K8ha6hx1XTCO+yQtiS+nNkF+c8uGMTkU7h0tlvVtrkZJQVtuD0rQdbyMP2eUklzwFttNHO4TYJ4f76BfshiXF9kv0oa56M7l94W8qsq24+t4x5SNxHY0AIOW.ym+gGH0m+T9yZ3oM0Lrrjoz4qbmlmkd227g4cEYaLxJl9pTGROmbUUy4lqoGRJSOs7yv65iVRp3smyPCjuO..DDbIorjzCKo0KoUIoIHoSvIKJeMyqp4Oaeeps9NSKmJel+6picTRZ4dGutxT729j8dim6kt1V8AE02.oFJUpjZ9UU65GWGzdBqIlDc0F6ne8QujziIodJOWLwA.pWxcLl.eLNy9To4GWiBgkyQI1yJokbg8HdYJ4Szrm0AtAIoXR6Xm5xrrJ1x5q1wI0oDVrL4nRWkYbYaLJgK+hThMSqJTWGIbdI7SYX4IRfBW1BtGuqLDIohmaWtfI8tbwFGgND9T8b0mmtol42098bu6tOGIoX6wcpl+Xycfxjik7bvX869FPRqrh62XOqFNm+z454R2wAVyRtdiIqDVxR26vkjRXX2fR6rc+UdesktuiblsSdTezy16dqlKozqrVJC87BnCJB.HDwRRcURiQR+3gZOkj5gSUPezM1hodAu4NtsJ93VwddJtAO96K9q6URur0sNKIkUNxXMyaoMM4tFThCbXcJt2thaio3oosdk2575zuXpUKCO6RaaVLuP5RmtN7IjnBs111Le5Qj1q5613dfSXipsssxe8RYltzo6tII96BQkHKcN.D0aeA31YLA5V5+rr9pcbpcpQy5HOPGTR8tmyy6W18SHgxMKmb2rN8p9y0voZK2IasxycPMdSRRENiQpUMfwt3DF1vx3YuhTuwe+YulOx6p.AHbwbjjoRZywIKJ3Y5lNXKWU1mM0XyJ1yy36zMs15iFdy+bIYrhoul18kU9Yqt341kKHCKKiUrmmYfmSCeYIYRXnSwjkw31X5UyGWFIXjUGLwzMqGLCKKik6KwzocXxz61myyzgw5sdawyryxs7+LlSO8Q29FZjjwc2eTiuWqNV4C11mSRFK2Wh4juoFMz9bnuG0rGa0OT45ib5Q+79bobWK4UBzuWf5TLdDhz7FJ.FitV1VujdNI48rWZ6+bR9uvweSU19ngW3yLc+4ZvjYxcJyQ22DOpsOgg9J+R0c2E02eufpjw+8Wgh94Wez1cO91GM5Z9jEUaqiZoSUdVFcqS07+mHXa980cDf5Y3uyHBx38iS19J96kerZIYh+xe0uKXtSVOyQ1hUIIibkoo8Kn3ATUute8E53g22th6JMc6.GYIl683jjjQVcvz1+cwkaUVXxq2oNtLRvyua7xm12Uw8suOlWaXhc3Qpr5xL8N0uKwJlJc79NnCUC0v6E3XhnFSJjbcP.gmhTltoYm8mnYOKU9oapzNd2g2zEqry4LJcUZbYKoDq3zMcO9lDe4WADS+JW2y8Dq2yDWxJoFp3jNn2mqSWQSd6A+.a5V+zhml9tIqoKI4pgiTs3tOo2dm+Me5j1G2uzq1EmVv5OfJboy75yvXFW1VVa06SusI0g6nk2cNOsqtdsKpcS9Eu4bNyF78gtu6fPrtpvzAgQTu5hkHW6jzsdn1VjjoZe0AISd8N0Icgq7Eq3i2j64qF6texdMgUYcG0XeXcSqc4FSuNlT5y2uzwrv81ZuOdgy3FZ8FF6Yd+RZbg1pNzqfF4pb+hI+9h+ZsSejzHjm6LcsxF5+pxYHFSEQmBKl8kv+7fREVcO+FtySoa2VS2xD88wh8jGsN9265FRvLKib6xZbRpSpwG6ASt2wdTg.4UyGbhS6LSwk6Uqxz9ZyIdv3Zfx4v0QFotnSnMwLpr2SIMvk0ocvjtnX+u9tsVorvb+6CHoaWRMVtK4vGeR9asnmTRGqJ3HOlWIkjqYmhTA4m9wXkRui8GNbecwqcdlOu6cXjiZsi4U993RO0TKX240nSM9Fjws89e14+Paqm2z+6LxO4S7fMp2wtr.86I.gJQTosEMw2YtSstEjoa6Oy7Ieec5Po5m9+L+az6y8CiuMOhu0TEm8Q9dFAbel2gIgK+OcdW0fRb.2ROieA9tcVtuDSit1WXn9tTBe0Aj7246qIwg8uWbkUeK7tSepdeMwziQZh+h9yCo0Rc49O2F+Pd22tZ3HMmXNA9ECWDRUUiGQiFsZtER9819dlb81R91W3QsT57GFSu5zHaebkquh8jueSOLllUYu9voY9TE6ip52yTKYIoAIo+oj1lBtOuoQiVnqww8DgwXxJg+uAm7ljueN5JyiZFFADlKpKKlnt2vQRFe84oapIK2u9PZxppXsKISrm7nM+s6rISz2GqwW+r1j2sshGTfugdUg8QBO8ElxmUY6Cu0USej0ToaKbDD9DMZAd6mjplq729AiIK2u5kjV49i4c01QaxvXN1.sOW6XZySVt5zpClVL48bMU1qsdd3S2sj1kB9OmoQiVnuww8DgY12XKN7IX1aqI2a1Sr52JfvNQTYwvxtqdt50S2TqkUrwjUlas+EeGuv7r9ca1j+lrrZUSs5xEtntthG+MeT8kEj1xJJ26cgw1NoR1eoGH2k6caa+s27WevOvFJ6S2cY62UpC2pIWSie+s7GO55yxZYEJoy8Suqi47G+quigsj7aYZsNos8aaN+zSvpqm6xZ1uehuyuN1TWef98I.fvHaVd9CVBXEkq5zbmwdJ2x+JoKdvuluKY4ZqSbBs34uio9qi5Y1vgV8zlbTgKI6gHOWurhlLIIMSIc0R52KOK+Gtww..TKk+Kb72TR68jcBA..rffIQTPT0xOObeer3ur2Zk6dhYbuNUMA.+SDUZa3HX5lh5gXlOQiV02JUR4VEOWP+6sKdlc4hO7LVUdV50G+pq5kds+ZVirEyR9TqMbPOmw2aGzdUOelOUQsQdt6F9sRpDEX++AZznEZZbbOQHN3typaWoqXK2mewdxA2LzEvAEQkECmwrnXewMskW4O8ok+LT2jQ8pO4FGh6Y3T0D..B4JRResj9KRp0RJa6ZGsk0r+Ly1XN7WGaWNWk3I4dMAa+dbcKg466WW51xWEI0ffseiv8KR5Qkm6xcoKo+rjVj74FrA..NBiIqDd0Q7+9j2prRN7iYESe0w7WlvEDLyPW.3eXY2EkhoaJhxrSIwciPDN5DjmfCB0JTdlQLSWRSUdtVAY6JqA5.1Q+55fk+VZpwJOEqT7xyr3BR+p7rr7ljjRQRKVRc1F2eaWRAcnh.Qf5pjpza3AH7Wkch2S8O+zO4VtB2erSUS.QSH7onPGb2Y0squoeW4tMXG6IOZ0o+0HFb1VWoSUV.1ouWRmsSWD.Uh2PdtF9DJTn7LyWdeI8dRJ+PT+Fvb2wloXjJHX6mVkdbqtCxR4HOyppRW82q8txBaij3LUezxSdBGxNCeZwR5Rrw9GHb0bjT+c5h.0dbh2AbdD9TTFiIqDdgyioaJ.P8D4KoEHo2UdlkSU6MYB6VZIDyl8MjHIqMIo.9lWgWlVFydS1Rxa2Z4pIJ1VlPQAa+FEZURZcR5rjmYHE.P8dU9Id+94DuCTGivmhxvzME.Hh2tkmy996JoOTgfvcBU9ssUbqNRvSREkyFacodB4XmAS+toUs+d360RJWct8J9losGL8YTpcIogJO+8emujFljFnjRyIKJ..6RUch2O1+933DuCTGivmhhvzME.Hh0Njzrjm.m9L44tVW3mjK+8wDWMJdUpm6DaAkFoXNp9sDo8Gr8aTrRjz+4PMKIcNxSPTmqjZgCVW..gTU0Id+WFLm3cf5ZD9TTBlto..Qb1pj9T44BF9bk7YJEElJQ2Vk6BNdwKYYZ+qrvSTdta6Ev13uTX688qM6MX5s.SL0e+alLR5yOTSRpORZDxyLipUU0FA.DtiS7NP3EW07KAQ5ppaqnLcSA.B6rAI87RpWxycAuaPdVhcg8AOIIk5vSdtWh0QlkRlhmlx8e8KmWvzmFSVIrh0u+qy2GKtSrqe9prrpw6zcVMNX1yGQLsLoPxL3JBwBjzMKoVKoSUROsjxwQqH.fZoCt6r51e5VWe4Ow6ce7a739Wi3rbnRBHpW80yhG7AS2T.fvVFI8SR5ijzaIoU3rkSvwcxVq72ctMZySymemydm2md+cyXlj+DVTkoz2ofK5wlV42zjFvoNyBd+i90VwYdUIaNOEqT7RpVsu+eqpv956WGa5sZwAZ8GgaoGpcWRpKR5pjzEpHjvPAPzIiIK2uxfW2G66IdWRJttGWayOEqqU03XXozvVLoeZQa+ta97supD.ABumQ1J1liSVTvi7egi+lTE9rI9K6s9Nmsp.rMLdDhzjfCrOs0eNYkOXaetJ12M+IW28En82aeIMcy91WtR3NMc2XZek8ZM4zi90GKWkae2xIusaq1r+Lld07GsOMtb8QiutYOqZacmyyzgw5aej3v92Kt11GAA6drPm3+2BDNf+NiH.l75cpUbb7ZaqoOxZmnCT5.0VQTiIwxtqdLlto..g8JzoKfPstMti84FoK2k6w14eazOR69xh5aUrIUokdWo+viXZ6JceerFe8W3TWok05qzMn8wulA26DK2Ck+7m8ylkw3tRe8Uhe7w21nGyB74hJkUGTiGPOe6ZScGEnd2+uE.0ubf8Edde4.HZFK6t5oX5lB..mfk0Ws1eX7sYBu7C9KGd1NYJdZZiCZHyqoOzJF9tFWOdW+oe936pkO7o7O1xX88wh8jue09m42cWq3Yqx88NV3cm96nEr2CeAlsf29p0O0nTdJIcG0z97WdtNL7Qb6aXT99Xwcl2lRa3I8ga8J7mpF..NMqTVXtS5TazMpTRooJu7NPMuEUTJML1DaxhB8UF.BVQTS0qnELcSQTJFOBnlUm7yIu9PZxppr8Sb8+QdqV8OMoWUa2zFeKybTCHwEdTaqqLMs8eW7Pqo8qwzy1eGsqAUx9crK3X++VyIVoayJ5dyezglxqVY0aKe1sdi9+65ind9xtCHZE+rE.BmD0MlTT2a3HAl75cpiKiDH7IDsgwi.pY0I+bhwb5oWcmDDqV2yo4pMYdqMU5Oz9Tzs1kVa8RcKMW4TUu9l9.qxuutQk6qc7WbFVVU99sU86Sb0lLuUIMjiuotF4Y20XmVGTk+ZS91+h.d41Q3S.0KwOaAfvIQTiIwxtqdJlto..vIYY80awXN8VUPuV0GOgutfSthOuYSK4hMRW7tjztxSR448uWpB8SL8Uob2S7F20CzsW1e22odc+7zWyeuc27U7213Klso78oYyyavFoAKI8y6pL8y6prJsORXXu2aummc.Wo+tOA...f8JhJsM.TuFiGATypy+4jocSMenWdWiK6pX+V4MWYZb2qQ+DcXQllGn6Wyj6TlWamc+o0l8aLc+JVeitgunFWde0jMLwN7H91uIb4Sqt7NMKiEBXO3ms.P3jHpwjXlOA...a0kL4cLCIMiu7dO1S7MmyuMvu9+Uzos88X007TYI480XkVZVp33WqRs0qx8w2+42sYOg4tLKqBy4Leh.d+ZcSqc4RZvYeSsJ8meE677V3ZKpuaeOVcMUq10iMz3csbS94mhUJsUpzDx1JkNt33O+KeVE7hW82uuUN0f98bRI4Z1oHUPdRGHEoFVp6Fs0ftSA...hhEQk1F.pWiwi.pY7yI0+wmw.1C9YK.DNIhZLIWNcA........f5uH7I........XaH7I........XaH7I........XaH7I........XaH7I........XaH7I........XaH7I........XaH7I........XaH7I........XaH7I........XaH7I........XaH7I........Xah0oK....DVn6RZNNcQfPht6zE....fuH7I...HIklj5uSWD....n9GV1c........v1P3S...QWJ0oK.3X3yd...3HH7I..fnKq1oK.3X3yd...3HH7I..fnKSPRawoKBTmaKxym8....043BNN..PzkcJoLjz8IotHoXb1xA1rRkmY7zDjmO6A...pyQ3S...Qe1ojtKmtH....PzAV1c........v1P3S........v1P3S........v1P3S........v1P3S........v1P3S........v1P3S........v1P3S........v1P3S........v1P3S........v1P3S........v1P3S........v1P3S........v1P3S........v1P3S........v1P3S........v1DqSW.......Qv5tjliSWD.HpS2c5Bn1fvm......BboIo96zEA.P3LV1c........v1Xmy7Il9o.ntVD0TOE...QTJ0oK...+PX4XU1Y3SL8SA....P8EqVRCvoKB.fZvpc5BnxvxtC.....nlMAIsEmtH..pFaQdFqJrSnXlOEVNkt..7AiSA..ff0NkTFR59jTWjTLNa4..bXkJOy3oIHOiUE1ITD9DS+T.DtKrbpmB..fHN6TR2kSWD..QZrBA8QyjT1RJ8PPeA.DpsE44rTFVdF.......puKTD9jjm.nX5mBfvIg8S8T.................................................................................................................................................................fHd++AN.mn8Fz5vGA.....IUjSD4pPfIH" ],
									"embed" : 1,
									"forceaspect" : 1,
									"id" : "obj-7",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 200.0, 385.221470836855474, 284.0, 209.338968723584117 ],
									"pic" : "Macintosh HD:/Users/stefanodemo/Documents/GitHub/SDT/MaxPackage/media/explosiondiagram.png"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 11,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 104.0, 379.0, 178.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-2",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 34.5, 18.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 34.5, 56.0, 22.0, 22.0 ],
													"text" : "t b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 34.5, 100.0, 328.0, 37.0 ],
													"style" : "SDTpackage",
													"text" : ";\rmax launchbrowser https://en.wikipedia.org/wiki/Blast_wave"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "SDT-comments",
												"default" : 												{
													"fontsize" : [ 13.0 ],
													"fontname" : [ "Lato" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "SDT_package",
												"default" : 												{
													"fontname" : [ "Lato" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "SDTpackage",
												"default" : 												{
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Lato" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ]
									}
,
									"patching_rect" : [ 422.0, 72.0, 34.0, 24.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p url"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 422.0, 36.0, 133.0, 24.0 ],
									"text" : "Friedlander waveform"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"linecount" : 11,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 11.0, 203.0, 726.0, 178.0 ],
									"style" : "SDT-comments",
									"text" : "Real world explosions, however, are almost never perfectly impulsive. When happening in air, the initial shockwave is likely to generate some chaotic turbulence as it propagates. The blast can also get reflected by the ground or other obstacles, generating Mach stems and other kinds of interference. If the explosion transfers part of its energy to a solid object, such as the ground or the body of a rifle, vibrations propagate also through the solid.\nThese interactions create complex temporal patterns and have a direct effect on the resulting sound.\n\nA feedback delay network reverberation unit is used to simulate these interactions, to add complexity to the initial blast wave and improve the realism of the acoustic result. The Friedlander waveform is initially scattered by the artificial reverb, and subsequently processed by a lowpass filter. A feedback delay network reverberation unit is used to simulate the phenomena described above, which add complexity to the initial blast wave and improve the realism of the acoustic result. The Friedlander waveform is initially scattered by the artificial reverb, and subsequently processed by a lowpass filter."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 242.0, 36.0, 451.0, 22.0 ],
									"style" : "SDT-comments",
									"text" : "This event is simulated by a "
								}

							}
, 							{
								"box" : 								{
									"autofit" : 1,
									"data" : [ 167511, "png", "IBkSG0fBZn....PCIgDQRA..C.B..H.LHX....feQ+vQ....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6cuGdbccdeu+66ZeYlA.DffjfR7Jnn.kjGnKVdKYKaY6ANQIRrRxmlbxFw0ItVwokJNNR4Dakp1T+zYPaN9Dm3XejZsaHqSjhaykNSZparhjrqc.PhsicDlHYK.HIRJHRJQRQBdQjDWmY1629GC.InrbisqCIU36mmm8CHlYecF9GqeXsdWKvbdip3ZtUvu4FNTUZtUzgphp31Vw0zxnZ9vQzn.t1Ko0Bp5murFt9eEMWaWgtJureviFl4e9wW6Uoqr6hZ10r8s2RAU8KnZyyowXLFiwXLWfPNeeCbwLUwUkHurL6o+dXNxoeAplLfPJfCHUUbkd3tC6s08Vu+wTkChG+E35nUxM0D+FOuKXMgdhKs976UZ8s8Q2TteLlu9T3cYkX1MS+oUjJIm+dJMFiwXLFi4Lr+53mGIBoeAplL9XPqzkqA9A0dw.+Xx6qTzonDSwPDkA9416782ulBvk7MHrGnq416m5E7a4FZ00x0myk6ZVlWKukvo+a9M2+TOFs40Eouz25SD9j65I8Oe+bZLFiwXLFyhrd.47OQ0BdiwjtdIm+WnJr4nYazKi2.QoBHeY1gaGb.sXgRLzdvOSqzxWe+ehcIYt51ZjYyp3ubejbyq0eoLIyuuZMl8Iz1dqezMz9sxrYuyckt6q3Jl+78CowXLFiwXLfE.4BAB.kKiKNtfLFS5.nWFuwo2AgTEU5OOsN8zz1vSd+61ukazmvMK086vW8ZET.cVUZbh5oy+7IIS+MajYC+l8bo2JmZ2+6EK.hwXLFiwXtffMDrNOSQEEk96mTX3z4HmNG4zEe+pD4sshqoEAwK+zz3qr+e7mT0YRZT+fMpWaO0aTeeSmL+tqmT64Ho1dlow7Oul13f0cLm2LSbqO8t+Jn+u65aLFiwXLFy4RVOfbdlh5fRfN.UIxCfIpTMMNFEJ3XrIci0aydDQtA0CH3RVARiowMSJsmIG9m7a8QGgjF4B27uQu9Nl1qFIm3HL+s0JIO9OC0Y.I876SowXLly0TTA.A46q+PTKN6IJMmLTLFi4G5rd.4BDUpzLL3YBezzt1WMAfstUBXjRIQaeG0y9qMTxkrClusakSz3RYZc9ucK57O6rYZkSl45X923Cxo3Jn1iuaYdsjkwzXLFiwXLFyqgW8Z1wYVmPVxqu3ZDRQ00y8nYZ+lzUHg+iNh3e6GpyMqcPOZFJpNZ9W9Rr0ADiwXLFiwXL+vQdMr875Jjfa8vN+a6PWyF0NoGMCptX2dXAPLFiwXLFyETrFmZLFiwXLFi4bFK.hwXLFiwXLlyYr.H+CFdmuuALFiwXLFi4uSV.DiwXLFiwXLmyXAPLFiwXLFiwbNiE.wXLFiwXLFy4LV.DiwXLFiwXLmyXAPLFiwXLFiwbNiE.wXLFiwXLFy4LV.DiwXLFiwXLmyXAPLFiwXLFiwbNiE.wXLFiwXLFy4LV.jKPoJNUsueLFiwXLFy+vh+46af+gfWcPAQHco+5YuyEa96x.5hux2CW.AQzS+SiwXLFiwXdcJ6uvtVzgVzAfhJkKi2h89vBAKD.JLXA+BCVvGUklGSyeVtLdUIxCJDBEBqRjW4x3oTzUjA8Ki5Ji5V3ZIQ7Hd4qzL32BudyqQQ0Qr5Q4XOUwUkHuJik2GUknp3SQ0EUEezhNJG6c94CKiwXLFiwX9+LV.juWnp.vjcMoqHxR5QiRZ+8SRDscV8JQbLpv.oknuk1SHTf9bGYn17HeE.XLFR.TzhBkPobIk37ZkJHGdWmvs4dyoEXHO.JTBW0HZ.kThKeVmWiwXLFiwXd8hK5GBVkqLf.P+.BBzOIvRFVUMGxT5p6a05pY0IkXb5sx.R+8OPJfnTzgPJi7HI.DEUMQPUTDQjTPOcfkUymQ2C6A5sU.nW5SATnDJhToxBCWq748V8Vxk9wYyoSxjdDAUoTR4JC3.n+9WXHdUCgvyAeHYLFiwXLFyOjbQe.j33SWCFxq5mmkJTNsbEwQbAWb7voKteUnj.8SbT0D.DAEsTyygVTPjzybNxq8rtmTYry9bWth3.HO48FOOLVkwSYbzJw2gFU83JrCJFM.aNNxEUoZpVFmzuZ8BhwXLFiwXLudhp3zQhBTsfe4x3QyPEuphFWkEGBVphSGMenNZ9PkhtxndkIt4wclZIo49uP8bLhFELhFEfpRzHaOnmc9.YhFY6AfJkQ8N84sLd5HQAEKhOK1yJKbth0XuxilObTMenNRTfVFOE0EmWCaOutBI3VOry+1Oz0rQsS5Qyr38KfXyjVFiwXLFi4BIViSWP7q8KKTBAQTkhNpfPuc4n2tbUXbIFz9oRJpRT0RdEnjCsYGpDc+3HN+RpMjl8JRGmLaZaQWgBBwTRWHnA.TYhpoCL.InEEgRJfpHx8yDN.lib1LfkwXLFiwXdcsK5GBV.P0oD5uXpRIQPRWxzcqxB8HRIFxESd2Je4i68B0aIklughVThptCuYi1lzFnwfahp6v0Vz1zBzm6FjAZLXQ7XfpZUUarXQrOjhPkADhQYgZ+n+9IMVU2gAY+6bWdcbxsmtC1AQ.L93ISLNLAKVCHhBJsed4CLiwXLFiwX9AiE.46zYODrJUBF.5q3vz6X44keGP2ant7R.JHRkwkYAgrvjfaO8hKHZaZaPxvLTJfL4.wJTQUDWUh7hFa1l8jxMB7f6W4XgpLv30onJiMFdmrc7V+VxxIoS8KylSNPoJx.Crj0KDUgR354XHG5a7ZWyJFiwXLFiwXt.yoqAjQhBNSMWrvZ7whydUZQmp3dg2e2YO3m6ZaU0nV9re1qbY4D9X9HI.JhWBdsnzxk9423ek14ledsiHUC.7FrH9EKhOki8JLXA+8suaJmN4aaY5dulN2+1uhUs7.1cKNRAWJAYUZosFxJV8+g0Lh1xBmifhTvear8.Padu8y9QZMZDMX8+1ZtNd6ZmVMfXLFiwXLFyqSnkwSWr.zWrPxa1.9Su.DpZTf9acssdj+y8zd2c68tPP8QTejTGhBNEITweYJKqqDYUW1CkePssHUCPK5Jp3xWtXX4QyGtux4WgNRzpdCav8ut0.zVbnABJ3ZfWVkfbojoEE+LJcs4atfp94KqgDqdKtXEVPU+Bp52y8nYZ+lrhP2XLFiwXLlW2PKiW4x3clU37lakKi2HZTP4QyGpZgr5fW2xeO2Pv0KNTDuZN7Rc3kBtFfK0ywL.Jt.kbcnx5ttOSO6T6J+gz1xqkCizn.c+Qsne12P2enaN2OQmsHp3Pw2SwOHEbJ3p4vKYgyaJAYmK3N11a5pNgtx7GRa6lz8kqmG3QaFvH+ngDos7cLKXkWCs.HFiwXLFi4BUViSOsRRA5yAPQF3zuZ9dA9VG2iCljYvmowehl5TbYBT7dk0t9eyVKTHIqRhWiOezp1vp3ijg5vbSoL6I9fS9o9RazaNBlltb2wXyJ7j0xbvme5Ve7wm6gN4LJpWtTZoiO4J+S9O1AZhaab8stZ7tZeRz.IETMrwS9WTrwdHWPXy50Yc2atDnjPbuM3DMWzDOK0rZBwXLFiwXLW35h9.HR+j1e+jRoR.8A.8VAoqwPZ+wNgahp47Iy7t+s+N64JlaFcyBgyhWKSoW2127K09slL7vknpdC965p7722WM5y8Sdig+TKKHIQmqAm7Q+s11zKizZGXYt1G+jdT2ou6euW7WYpooiDWqHctoOy5e7i9Qa6I8pCvNnZ8CNx0r6qoa50GDZTGN07u6I+T+oqd5DROxtlKsOdWoQ6X.uBkv08MirzoAq8IXSSuFiwXLFi4BZWzG.AfEW6N.fJiK.zUu4caA3NiZKkoay8M1+b2nuG.As357F+mk+e8cMS7X8lPwRoSL1rxV1RtTZ37++8e7Z2cagx7zndBuxK8O8D22y15ZWaT8O76Zi9e8QNTGG7D7tOUMEZo8Stp6Yn++y9VIcSktqFbcWZKEFrfekryJiLTg8bYqz8QBIMQq2fSU8yGAPGa4joOxNvayaKNcxJkb0NJNwGEwy9dzXLFiwXLutf0v0kXppHDmWiiWnmDNTcAfCT8TAGsVxUi.pyKUZK+gl9Fwc3EJT8eu6abAxUm18pcYaJ6rYB4nRsYb5rSGN0Xeivp2vNfIdkV+jCez21wmWW8LRXprp0TYkuuUOSZkpYGtR+JeqWdlgGBF6qcbeNzrg2z57mHTvGmCcp8cy4lFuiPj2I1POteQNrza73IGbsTmSb1OCcey1PvxXLFiwXLW3xBf.rvhNHU+BjfLPJ.gsUS3FaMcWO1900dy9yINRSR.IUElaZGrPfkwQdrGuXc1wjo7+3UDlxktpL7mGPhPx7tFuzmeST8tavoB7l9T5Fqq.94bRWW1ekJHIwQyyWdBG8MjGCLbR715rAG6X7qbsq34ZwWdYpmByMaWGe+MCVb8acWMFhgSqb2S3xuFjzr3.WyDSs2behsuWMFiwXLFyEntnugpkKujOCJgt8sQvtdrdB1xFC0w5Edpo1cClb5Fskwa7TEDRjjW4YVMO7BGS9ls8erGXVgYzZ7rSkb7o4VDRfzYIIPSonJ7TS4l5PIavCeHQPZbIuT3FY1VGiTN9HoL7jpRQo2Gqlv2pl2JNtnRcQoNIbpS9iU+qgexKhToD5.hRgsOhdnWjL5kffK.77PSPBZGcrJk7NO7QowXLFiwXL+c5h9.H82Oor3petz7G6+P0kw5EFeLn+9ww2NP6LmbnLYE7HAl8au8S9HUy..kPQGf8c20DVdaI+D+g6+ZO5T5VRnlheZJ4fn6DO1mJSdR9G6S1ZPPcuteKG3ne4E97ubIE5OcnhC3XigJOqn59jTe7IfPOsla1oph3kfxWjLQQ3sm6B+zSgK8P3Kt1EQZOaZCb69Ivk6iWRusdzLaKR8EQsBS2XLFiwXLWv3h9.Hn5RKBcsycDmxd1ai4Hmt4dyo.MXMg5+o2yZ+Z4xxIDpiKc91N9S8N2e0ex2x5iptC+6rzZxt7ehU4V++1mpuG+vIe94Dpm5TAWcmW6S6NwW6dcbjTwkvTB9gfykYYgIs+lgZ8h.iKip4C5qTTyDPapVs0c.+S4KsbpPBPZj54ePlu1WBWmafvmC53UdJx13owWeE7DY8hu2lpeUIj6NNFsdiGmN2nikc4SQ1AKf0aHFiwXLFi4BF9muuAtfPoE5ADUk9EQ0AJpU5cfSuX9Qa0jLA9IuiKO3e5+smr1mmDwQpjkW5Imn5a9WHQD06Q90OHYBZVmHoBAodAzLe2bDdueEkOPpWCgLoPJ3lati97sz3Pm530aeYmtnw20icBG.aYnvTlIG9LEBRhJhp8falCP3I97WwSQZPVQCDQ5JffqLQ7VVHn7z6+e9y7zM16Ikzi5A0Zn5zAy8bSrly0ebZLFiwXLFy2MV.jRHEJ0rmfFteTPSgRR+8S5B0GhtKfsD2xT+Wda87U+F24y8Sr2iV+ymptDvSD02SIYFQRaIYdb4Bo9r0HH0sLEufo6589NG6Oj+7.tTIT7HIAUvWxjsytmsisrrZyBoEF5vx3SNdRbLJ8giQWYt8kLat5Te40H0Sx50R62.4Z4cy7qKdmW8IGmjje4lgllpCxM8K79d15ZpWaa9OXKm5DLazZodWm.28uNRjgI874GuFiwXLFiwrT1PvZoJ2rw5BkT.s+9IUUjSt0NRG6TI0+BO8wc69qz6Wt9C0ct.uzOAZhHf5Px4ArwU69.WZKbefnj3KR1NFrin2xbGu5b43paIYEsyWIk5Jtzj4N5KzxINJZNPGtugR5ueRPJBCW.BCSV8FyRhNeiZx7PFolbMnt1No5uxukdIalFG7fL6UDRZZG3qbRkzomIsFdq+six1gGe2T6cMrjppXSKuFiwXLFi4BFV.jRkXXJkNLkRaNc7JrXMoipze+3GQaZ39pU+Fe2cMK.7iuJ2Xegd929PE2PKIEpGd364xVd8m7ZujG59V+PGZF90TBEDAuUdKeh4p2Q89t7bM3MjAY4dsU2MiCole5jO8p5XkKdgJIPYuRLTyuOd6MbxZR7p6WOjf5PGsLbfPiVau8Y67RO97UiJkP22Ulm+Mi3ITuYMrTqU2JII6kRZaQnP+ApBUIxpADiwXLFiwbAiK5CfDy3RQFfEW+O.T.EUE.JWlF82+vtsr00kboGsQ8c8zy3wNm0skstN4thaMk2z5CV46HLk4a39EdvW7WalZbIINevWlOya4S+rapu9Zr+cNuGqRzNVk6oAfj48z5SslYOAdGgEKR79SJQeoL5jNxmI7Q8msyZo5pvkB9duTmuMl+DPxvU9LJx.B20CWa9tV3Xk54.2T9GkFy8x3F9F1g.Ups0sRPT0y0ehZLFiwXLFy2cWTG.QUb2OS3tSh7JWFO.onhqnhCQ.Q3tua75rSzJUFVo2tR2x0GN2u6ymHrGfV6x8xW+JbzE7Nd+O2M77GP+m0HHaJYxh2Fu4a+p93L0TbCR12b60IGy3oraRA7xn5qbz2U5qPl0.RT0RdEzA8KMZE+IVatb79Vg+ezyexerPm.oB9q7J9F0gFgfFs4awgVTKTBWlKmjEdTlGpGBfWKnbGaKAT4wd7h0qLQUqFPLFiwXLFyELtnN.B.YYVIKyJww7ZtdYricP8a4VHsRE7pTYXsBvO+M4MekemucFN37xk9N5L4s8A20l9l6L4KTGpgeFmzZ6O959+4O4u8Hqkz6XrYE8H9JGrdx0uwVet.AXtoDN0g9oO9eFYO7WlPhZdsVam47O9IokYOT8b+sGM48MWCMg.+Z9a4G+o3aA8BIUiNPRT005Af22Fk1W3FUUMcYX06gwXLFiwXLWnRUb67Q6IyfOT2YWrGPTEmp3XwhAINeHpJEFrfeO2CYJp3TsfuVd84zsG0xkuA50O.04gRXfJcdoSu1euY1P2uflkNi53Q2YOYFbvtW9yN3UrJ8u7M10ZZQlnMGJAspxkb4el7GRaqqxi1FZQ2AO301p9hu40+SeK49Ia0gJjsgr52veVO6T65R9bZqTTadeopTPU+0Gq4Z+lzUHg+iNhy+1NTGaT6r62ulcw8qbY7FQiBNu9grwXLFiwXLllTE2nkyGpiDEnJtEp6iktApJnEcwZrWrF6AHef28JWlt8nV9Q6N35EPAmhWnRl1Tuq+m31hTsCtiQZAPzQyGpZTK5Qdysquv0s7adct+UqvG0GoARXJsul+IcW7ExB3z+rnVdiuA28kI.E+LIDtR06c7A9w27wzNh1tFTjB9m9dSUo62uls8aRWg3e6G14e6G5ptJckzilAsnqbY7Tsf+nZ9vySe7ZLFiwXLFi4UQFrH9kKiGZQWAU8AUTJ5flATVL3QgBjcwdG4Ed+cm8c0p2ORaBZ.YRw0gR3pTVyc7164AzLQaWChhzfxD689KPVcz7gS94uxkoCdcKW+Lad0WV6xDsCZKHog3m5vqtCOEnVPHJ9NkVuDUV6a52+5Ntt7q7q9LKC.sX9vAKhOfOZQWO2ilYY2ntRw+NObPv+WSdMaT6j7ZXrF6MhFEzL7SgrmO+.1XLFiwXLlk5h9Ehv20.MKj6nQJ4O0BuVEFWTEWkJHGtqCK493C6MzGh5zOxN5D2yM5QaazZoU7.UvS.clfK68cSK687I26tOF0Y.wGndLEEFNtNenJxpduQyQsYyvg78+0ukUdqe3+7i9WNec8RIMQSAWB9f3Bp2.HStTo0U9XW1iV8W8TJZm27zyULlP.5qWT.AY.c24KosyqcsqbZiMoUD5FiwXLFiwbABATghpq6GRy1yipY.UJSydPXwMUK3+PcSVk7g5fE70sG0xe1sz4FWgGGncZ88Pr5UXP0ufp98ryGHS9QyGlez7g21sQFsf5+PcWL6n4KGpw3oZTf9TWaq5m4Z57c+FBt9LNTOGJ9AMHHWBYV17A2vO6UekOitrqT0k0yity1KnpeL4CUZNDv.s4VOZl1yqqv4e6G12+NN7h8.BZydvobY7VbSonSonaI03hwXLFiwXLlywDJpNTUxOpFFMhFzrw8MKF8kF.QKPyMsfu9n8jQ+k6d45uX91zx3s34.Ukd14skY8kuob4GMeXrF6UF0az7kC0BpeYTua61HS4QyGpe8aJmNX91zGsmLkKiGaqXKcqZ1teAM6k74zV6V0r4UML+nZXygFFtxD6ApqYQlel.Hh+senyN.hJm94agME0BfXLFiwXLFyE.DzhMaT+haKzn8lExcyFruzFuqiDEnEyGp2SOYTzyL02tPAqe5slSywRyde3rOuKNCUs3ruUAcP+Bpd5slgZV39p44ZIKQ6bV8.hDbqmoGP5Qy7pCfr30fydV9xXLFiwXLFy4MKzCFmd6zu7Y2f8SGBQwokWbUL+03778506055+ZsuuVxqgKF.w4e6G50J.xRu+Oy8dgK5q8GiwXLFiwb9g0PzEIxqYwbKBo+u62+d8772498+ti660yowXLFiwXLWfyFJNe+aoCEJiwXLFiwXLeev5Aju+Y8FgwXLFiwXL+.x5ADiwXLFiwXLmyXAPLFiwXLFiwbNiE.wXLFiwXLFy4LV.DiwXLFiwXLmyXAPLFiwXLFiwbNiE.wXLFiwXLFy4LV.DiwXLFiwXLmyXAPLFiwXLFiwbNiE.wXLFiwXLFy4LWzG.QUbphSQkkt8p2mWiCTNqs+tuPeuseeudb+fbtLFiwXLFi47L+y22.mO0LXQgEBWTJ8U+1KtOUpf.HK80An.3Mbk9Uhyqp178EgEOOKdLomUXAUED4zmiEOuJEEgAV5qufRmcXnE2uRHcei3N13XAQLFiwXLFyqabQeOfvXS5FqxjKFBAJTxUgwEUwUtLd6fHu3XzxD6TJ1rw9E5NaTU72+t1kWzluEWLiKTMx6wdvdBh1NAnEckQckQEXaATBIODjGBfRBpJ8bOjobY7.zah0mkn6zaarce.AUINlfBCVvKp5Z8xWI1mte+YJi5fgbEofWgR3p8+MNwCEDEZHIs8cDFQpTo41h+a.pxTKteV3EiwXLFiwbN0E08.RkJH4ig45MmBPEPhWx6OV97dL1rzaE7KAIv3x6u.Yu8Ozdq2eTIMeEjMGOdJ.26GspaEuERnjJQfW+zuTjCmBC2fCdfbTIpQWw8kxV+CBJ+AFnQ9GLuF9X070hgdLz30er8+07froET0smgJ4S435qFX+6ZNuN17WKk896OGLiWElzM.imjmJdouRrjdY3npJfn6eZRIXgdlAZTtLRbbydrob4yD1LhpIXgOLFiwXLFy4AWT2Hzxkw6upsd7u5s1Q5cKUaTF0MFCI8ReZ+ZIM+XU7O43mz6mOe6I8d08l7F4T9a4Q2MznCOpdjT1D7v6A94FXuyCJ4Gk.5hvjigbsWEyTFQu2GqmfUrwPc7d6MIeoJxZOHRm9ckIdfsHL5zdm3ustqiSRMFHdlaXjRdG4TObqYu5jDuU097m7S9g8Z+VaO4Wt2b51FaVYnmXZWWs1ZZk3wa7GrqGHX5Sdudm52lVl9OcqOqjnIcrwG+JNti4JrKRFVjDUQFi79.zKi2XoO6KLTwDVxPJyXLFiwXLl+91E08.R+8SZgAWWxKypUnp1OjB8sv6Vhd6c7jmL7IEpAcUrhrkg5V3KRVl83568Kdv0742WsmIQQcHpRna7qyGW2W0GXS+O+a+S+aff9QqyV6uwUyDtgF5vx8WJRht2S3XisnL5z9rxTom+MOyWep4zqbdF.8s9wf.OjNZ6+3FOvje31u03jb8htCtAtl1a26x+QamCug553DKcbxroyMwB8pg5.RIMAomaegaeUAD5kb5XL62QPSUwsj5UwXLFiwXLFy4BphKVi8hFY6AQinADqdTTc.thEw+G6ibIsV7E5NqpQA58u4Nz3d5Z8gxKzBngf5ijFfu5HnNjUwqCkVV8LYtsG9x64+r1dyyY9vHMJ3ddzdxne8aJm9.8z9aXkte0k4PCbnHn.o3DkPekLsn3sRkK+dda8bDs8HUaIRiBFQiBh03l2epJq4NzVZKRWkj4ceDI3NOT640Uz86WyVPUeJG6UTwMhFETdz7gEUbKNiZUbgY9qEpAEiwXLFiwXNmwJBcf3JUnsnqPAH59wQoRLXQbq8fH++8IVes6ZSaBdkFsxs4GbY+4O+H0SYSMvQcBzTHQIQ8QcAnPx7P8Z4p809ni+JSRqylEgxwMNTkC4+is5N7XUoA88u+Edmu3wS+MlOEp67RvyANQDUwUuAL+bonN3E+7+kuzO6G+ZO0onkivHdeb1bZExqTpDHP2OEpLMJomomLBZGcXJkRb4zRuFOqEXHuwI9zEjtwXLFiwXLmKYAPVng3CSeIU+BjTch9SiYboudaVaDQ8UUm9y97sL4Hyu5Ox+98+idh40MdxFn07yh1867lSy+uo05QuoLy2yGrk0RiaOq2b0HcJTRBek+3e52McQHLt7w5XEt67xaD9m8at2M7LGJ8glJ0QsbcnxpV6mqm5IcPxOke5SmOy6+MD1aqRpKLcNEsl2767Q+km8IniN.uIXB214Q7TFfQ3F7uwrj5lgTzDDsNxzjt6uxBEcdEwAEbYYVIeum4wsOdWo4ohFGi1e+jb93ibiwXLFiwbwqK1CfHCMFRWiQy0lid6Whia1iHDitsmCcng61u2V5T6Zi471ywZbCMbvb3KtMdM+bWye4W9YiFqj1ePUe18WQ2ycr5g13Jc+KcRCDeH4U12aYtflCyo22apMG+kIY90ezCeOyLqtJxzlSV0l9c68o12+pbm3Dd4I1anmXZ2+5245OxuxUrrqxm4DRlS4TG9mZlgdhULC3cjG9HMGxTUi79ZbB2JBaN7sDZHNbxFUjBcQJx.ZL.UaNc6NG4NqBMebhEo4v9x5EDiwXLFiwbN0E6APzcdPjcdvEVz.6uRx8yDtMGG4nBBCWLsOZs4va5X0CldVcsy0.TOgfK6p1yrA3CDLw+gs2Xnhimdf0BuoqN2Wo4xOXBPBYqSR4JUf+K62an+zIys2iyO47IfzR6yr1eiu4uYsVHY1N5XXpK8m...H.jDQAQEYZhc2Ws8lb4WdaS+Au81N5Uthj60O8jhNyI3j+OefqK7vj9luq8T+icWU8HpZxZXWM.HMGdfqgH99S6SPt82bsEoR+wPT0jwqLdRDUSFfh.PuUPJSEUonzbcEwXLFiwXLlyctnuAnGXMnGXMn.Z4x3EQaJ.R+jBkTJLd525.SGP69yFjimy4CHMn9K8TaxuUROze8XYORzU3M6OSOdg+iZ2a2SN25TOZttnqt4ysZRO9XqICsGD7Y+lG+5mcdsq5pCZaU+ws7NxLyxVF0WETG.h1N6p2YZr1MD13MsF+8urPUoQBM1+K7FYb3IevGyeuOrNuHn8CoewShmaVR.OUU2LKtZrCpqepjVQhk39KphfhLfhz7sWr9OhojME7ZLFiwXLlyotnO.x.CPx.kJlhVz0erlVoxv5MHUafpHZIoxGB85ducNEZvo5YEgeEQg.WJoO+S+PO66JJe6qucxdjmOnmsrhLS0iWqu3wS+GqfPlbMZ6c8AdX.11aesAjMX4Z.aIQAD+Doy0Lr3w7m.laCPMFZHZK5JzsrwPkkC+R4W0D4PdEZfxol6JOzyirt6cqI.TTQHZs49FYIk1Qf5c.0Zq8Tl+wWENzRvRVeOVXUY+zeWGGWPn7.B5.mS+r1XLFiwXLlK5Cfzb8x3L8DP+8SJfRIjnpq06S2UA499CeIgdaYpO0m5xF+xuL2upu.doov29aMzy7ldSeL.9h+MmLnuexm88N4wzsgKCrrN9CtjRaahi.ozIvgpE9xSkzqphhWNQ7V8gaji5c.oUnj1Ze8kNU0cJC8DS63Uf2H90BRoFoBTe125rew8z5TfDUcG9Cwft3QNv7q+igSaEQI3jovT6QQ54FIMp5Z8.Hl7JTh3EBiTlXG.UYJgMG4nZjmp1+GvXLFiwXLm6XM9rDRAviRk.J0rVPVn3rqNwWNcp9lRth6a809ReoiqLYX5e5u+k+G06lc+KxHPPRhSO5w+4etK4tO48bSO6Q169je6TWaHqbsO9Utqu0GIMK016ceCI7WcDg8lz3EOb56PocEWqhasuyCBvrigTfRttfzpQGHouqYUI7Ld59147hzvS8HCfu+JxuoZAfePzV824N9iBGC7X8PvpIKANOk54bcQ5zu.dsEsMMJRCfRPyvGZLnwTVo+XhpT0V.BMFiwXLFy4EWbG.Q0yLKPUpDHCjVrHtxkww.RJw40C0eU+sQa5OdxLMN4XS6eEskowS7eM+mqiP42RTRcZpGoIonTiDejU08mdC+2m3CD.osMOMXGUavWelFb7jF0mmrpD3frykQV27tTzb8hNbk90ggDjEFRTO2oR1XM+ZNBNgG9BplNyK7h4Nx2j.XC3cMaWOYE7l9SQ3rdnhqiL3uBWxrMmwsFtWbusSfqTd7EDsRYwArPugTVo+hJQsY0+gwXLFiwXNmy+78Mv4ckPWMnwLtDWFuMGGISTopVlXOjwIVYdFaRep4E1dNm90+sOZm+T+Iu7SbzY01ZP.PiTOGNmRX850Qe48+gdwsd4aX566o+fa5msk4iQc7bWpx0Jopii0ngtFbRx7yu6rsT+VSZCzxTg9EQTJBSLPJyu9DpkNm.pPppMpGrrqeCSG1FoeiV1zgIok4jjVlSjUlifdBHXipnZ8om3e9dl54dg48zin6fzDzo7hQWymtq9DFs2..5+pGnN.JjRDHBVugXLFiwXLlyYr.H.UfzxiMVvliizp.GHFENrCf3J.Yy4i1v62qxKdo+ZOxw+KlIQaqNAnYWw6g67k+SzXgq5tI+DuR52twbSiVu169nCro2NO2+8qgseySxyFjR6YDBncpk.jlIz0V8fKkk1KDJfbu+d3+faXdONR1vFTe0J0Eb90mqAgTG53ewd1.OErxmlPmC8nJYOwg9niJnYtz0+eJepi4V0bj7laCY8PMFG8WrOj8LzztaruVSUkEWCPLFiwXLFi4btKtGBV.TBAJIat2lKVe+gC0lNNwRukGVKUd3lMT+f.OwLs9I+qN9uvQqoWxobYP1zU7dxu2W9OOeQ7j3h5ydLFq1+ltycYKuwmLmNCL+zq3X+I+z+GmrsuZaU+jWhvcFJW5p3KA0SIslfuS.BV5shv.9O3iQc1zJjW9xzbtfjZI5bHNMo9Te6vf2Ho8rMp00OByd6NNw0GxrgJySs8V203f0Sf4O3oXlvtXJubbp95h4F.IsOFN8t5aSM5ktRAPUDAUklUfuwXLFiwXLmybwc.DQNcCvmXgBytu9FNsRkEdw3BxCOV2AbfYcC+hmp8iNGuuFggprx0VYkE+uNr+pQO9WaG9.7g+jqOCqHHbregd9zWZaxdbIy2PqM06d+ele8q6tAlOv4Gzhmui5Bzvuwrey0bpSQv9AuJwwKLabQcpfvbIxbAo9oBdItDkbY+Fq3dt1S5cjinGfprt6cnjcs66kKsF0mqA00zSjlnGOc1ZzfVIo5HzXGUk58MbozyLKWMbZyMiwXLFiwXN+4h6.H.LfjhLPZb+E0HplLffR+UR.XrJS59Q+4WivaOm2C7rG6pN4L5xwEJDlc1Ntqdm4DPxA21Al6Adr+ffO4G9RZv01pK6U5Ru7UJ+mxHI9TuF5qLykeB924moCoVGsH6QnlRiYHct8uIsFYZA7OL+hB826Y5Mj85o6Y+0Y15ZWHNHW1IBSHMYUqpFOxNXX5K4w4Aq8xgnZaHrvLG7FAH7LCuJgANqd33rp2CQzkF.yXLFiwXLlyEr.HKYZ2Eo3ResynaO8.GuwU1HEv4ir70NbKPxbeh2m2H7HdaE3K8kpGxJSElkLQaHyy3InffN0wtQ+mYkAzRvbW5x7dl.AGRxrMNzAdqAyi2Lf2TrLoX4wa7y9QtjVX82TH2L7qs6i9iNu5khmuHsugp.rNH4faaMy0bEMWzJs2bVuBoAnIMCST6Ucuu3CjUr4FiwXLFi4B.V.jljJTRpv3BfFqwt9i0zdi6J8vGttvISjqb49i6m.znN5Aeg2FuLbU22KNeDPsIBCRRlwC+rN1RX8m5P0diofPZCjNWwS3ZqUkfFyd4sENgS.ujjbbzIeey7WivQadCbrGqmf+k+bqT3sRNdq4xty4R+klAOQxjIsi6n3WKWCRG9tuyvxUFPFrHdkKiGKmTwyJnbiwXLFiw75GV.jlNci3i0XuIXBGTR5mUqQQTmCeB8FVQ1WNvALWMzSbz+oe6a9lV6vLTxm7CeH+d+Pc0XqasiFrlZIek+hIy9se4zO7bodPPFjNW4KFrg0kxx8q8lWg+AZMi7bgzP0ScR+89gt9esvWlzW3d+8y8faccI8dIKWd1+mGO667CO967TIr953C4Z+wa+c9FOZ8IQ34d5z3MG41Cc2b1KaYuFgOV2qcOf.vYpGjB126FiwXLFiwbdQyEivSuEoQA8ryaKS9xECoXAesLdG4d5o8u81VyUcYKWNVFORQBRbDnYosadaDEniDEb++Fc1wZVu2slM.0gz.ukqxxV27a9+lt57p1VwQyGpelqoy91f6CubGZ.gJtkozZ9+I4GUCGQiBzAy21VVm6dyFfhDlRvxU+neoadyincr98o4JnC5OplO7Q2YOYFsb9vd5Qyzw0ncJA25gc929gtlMpcROZlkr.KJphawfGK9uUsfM8KaLFiwXLFy4EMmMZEzhNT8LAPFMeHZQmRQmFu9bZ47W5OxV7+HYETePCwudFxnA3q.pmOpyGEmmR3xTBuD0c4+juuM+7ZGQp1Bki8zsG0xw92sotu7Nk81lfFhuBYSvkQAz.GZnGpygRXaprhM+Y54Q01u1mRasGUyzyNefLEegty9BZgrEiILJRCZOutBK.hwXLFiwXd8Ban3..kDJUhBLj2rUtCoisLYZu81ahx.TgwEtzrordp8U9cu5O25Vi6iD3CAfmOh17iPWZZRy4hJxzZJNGt0eUefM+M+u8+HaajbDHk9KmxFNQRmu41m8248tlerNZUNbnz.mLmCpUGfjTgFIdZpFBgY+ytr+qO++p5akZAWG0pCR3VVit1MspjoYxzRUJ13NlEQl56dMfTtr88qwXLFiwXtvh0.UQ.JoTpDCyPoiGSiMylSKSEsJQd8SkTd+cj9zGyS4Zz569aeCe1+pO8lWtRxNWnk+JfCG0w4izdG+NWwi8JccU+0CUo9JoFqlZ68C2u.k73g1cCdiMl4VdOqbxW5W5Jy2+kEbMAd.nA.Zp3pmJdyyp9Q54Z+pS9d67Vn9pnZBTkVgzZ65fxAFaVYNZtnIdrkLiW4Z9fXLFiwXLFyEztXen3HftPHDzE1j3xHD2bGJ9PcmYrnYSqUM27rb3y9EOP1aYaW9LS+GNwUyvyp.pfj9NaLn+NOvNCycvn.+HR.pcWHMtSh7h9YnAep7oToH6okGtwSrmYHNWG0+vYW9d9c+fcjsx6X2M5OtnVfRtIGC2wqb.+fuI0mcmH4hgYYBoKhRGdKGKcsjy660Gt96mTUO6hRuDPe+P4iNiwXLFiwX992E68.hTFbkI1oTTzxbVMtuJvZuqUkLvmdxvnry1.ZKs27qeV.p7gPEDsD84flGWmqcaMVczpqUaW6pduzexcRjW6O1Ib.Tgwk6l058D+9u45wC+KNS+O9IB5c79lcnUr6jwFCgs9GDLIUbGeN76LdsMp9kIM2GGsMhzbUOtNLkRQFPi9t7fjtvRotwXLFiwXLlKb4JSrWYh8JRAekhtxkwSUbnEcEzA8Ya2QKEUbaeaDLZ47g6ae2TtGcm8jIe4hgQir8EW8x8JnC5ys8yzNEUGfbsWKspKbbaeaDTF0iEJJ7xkwqXQ7A7TJ5.bQir8ftJF21Mo6KW9Q0v74GMrXA0mhpCs3oKh7QznfQzn..IedMzJBciwXLFiwXd8C4UusX.AzhtlM9WE1VTfVFuGpX2YUsP1Q07gQir8fnQz.JzcVfSOKZoTzs8sQfp3Jd50cCDZNb2jhEw+ZuVZsvfE7WHXgGfv1tiV5dvhY6YmOPl7kGMTQcEYvECJHZY7zQZF9Xg.EB8nYr.HFiwXLFiw75KxYBaTzMplObTMeXyFsqRW7K1FzrA8kGMe3W8qdkKS0BYKRA+EdcAHDfxkw6dtMxTdz7gEGMeX9QyG1yNefLEzA8A7KSr2B6OD2bZ9cgeu4T.7HaOnfNnegAK3OXQ7GrH9kQ8JSr2NezdxnilObwd+fhpq62ulcY2ntRK.hwXLFiwXd8hK1qADPK1rw5iiPkwk8sqZx91UMgJHJHeZ9zyB8kgEBN31XmMV7PK27yOOf5CVD+i+kw8fe.Z.PEfZgaTpu+iISUcmx11FRWEqrPfk3PJOVcjANcgui.Um3KmNL8k7glbX8O5fH8UhzXJowjW2xFC0w5ElnR0TzhBk9tO86ZLFiwXLFi4BUmdgHbgd4nLdmtWFZNKYsXuTHK16Am86eVa.PwEpgjnQ1dPdsbXAcP+xkwqbYVrGPbuFG2oO9yzSE3TTQQEUwMnVv+z2qEUWO2ilw5ADiwXLFiwX9GVNqPFKVj55YpuikFl3rCzrPgrWPK3Gqwd5YWSHmUnkW804LAPZNLsh0XulAaNS.DrhP2XLFiwXLlen40r2EtPvY0CEmoA9xqZmDTUJtPwnujvGvRetVX+dUmmuym2yJXiJfJV.DiwXLFiw75M+8dMfb5F.uPOBPQ0UPU+ktsjFLCKz.7XM1Esc7KLXAuXM9zML+zSStup8+Ue8zuyF8+CMhP5Y9sBNnf6Usf+IKtvjOffNfP5YeLmdQO7z0wwq58adNN6etfRK76hUCHFiwXLFi40cNm8WBWQDAUoTIY3RkZ1X6RnMaPcoSuekKuPngJUnx1hOSixUkhHR7BMZWUbhbVEhs.nhP5hAOVRi5E3Grh1dwyUkJmcPfJUZ9yMGOk.PzYtmRW7It45rtJxRyGsjPQUpfzOkzEuPxhGzY+Lsv+RN89svOE58GjmHiwXLFiwXN+4bV.jJUPJiH82OIv..fVBWyF1OfzOjVtLtMGG4.3FjpMZNWRAnJEnOuGgHgwlUtydyoQTMYwvJ82OoJEEo44UETEJIEz97AXXFJcgYbpenahJUSAXBPhiOSHmkljXgPHm98JUBWu8tj.QkJszLXMmUrNaxYduRBKDZo6aD2wF+BqgmlwXLFiwXLmWs3Pg5LqqEwdKNqNsX8Hr3LD0hqz2p1bEJegBv1awYTpHMJn3BqEFu5gYkh5N85xwhEo8hKjfm8P756KinQAm0LX0qtVLzhtXM1aoEmd4xMWgyatoN8LyjV.MmosN84bgEvvWi6ylEi9YNd2Ru9ET02lErLFiwXLFyq2bNac.YmGDouAJvlYBWI5yiJHMqehgSWrmCpTA4F3NRDJR+TIkxCHkKCHCjVM5.IUqr4zAt5wqeCR05Kjx.oRrfVzIKcHVIhv.nL.ZYAWY40nHw+9vh8Jy2MUHuNVL5hCSq3XTJOvBWuRrzt2.fl8BzhJc18Ly2kvRJE+97t1XLFiwXLlKBs3e88xD6UjB9Ktcld6n4+9zy.TZQGZQ2Y0KAm4rc1ydTKr5kyRJXakhNsLd5B8BwR5IkefBfnZA+sUbMsr38Yyq6B8fvR6gkElwqVbcBQG4LOavoeFjXM1KVi8.B.nXQN6y6RmkqXaAK1CHmtWTVnGSVrGPZ+lrYAKiwXLFiwXNiSOjgFzewgqzhCqoEar9hCoJVxPLpnhawFquPHDGTdwExukrclg2zhm6Q07g5nM2FQiBJOZ9vyNHy26Ny82BAKVLr.p.E8AbTN1aoOaip4C0ENtssMNyyFb5ok2y7wCtnHZA.JG6UPGzOe4hgKdMTTWYTuyNDxYVHBs.HFiwXLFi40SNmMDrlp5Nk7Uv+Iermz+KL1rRbLZkJCqQTMIhpIBpRQUJ.dE.uGA06ugxAiMVYuOcrJQindDG2bVfpnJnEWROZnfVzc3gNrTEnWxo6o2tbzaWtZuXv+G0X6HZSyxrxtdr86kkYadMEghLjmRoTEE5ubJx.ZYpb5gSU0E9412NI8SrvB8BxibCjsDMCCzSOz9c0Gg2+8y7.Be4IbPeT6fuEo.30rR1EM9UOLsDQY.zc+UPko+Aa18xXLFiwXLlyG968.HEQjhHxIZ+2xM8M9vt54VmTY7XDQYr9GTDonSP07PPOkHXOf+wgLMdEZMyyQaysVxsmmh1NdmzR9+CjK5.jq6RDlmR987.2SXOOviEDq3hptVuoV16U9sdv2lqOZSmlIS+M+cGM3stgL5abe0NqYnpueTZG6LrU5xskstNY7JDdeuuKIW4x3JwPoU.oBHk4rmpdGerlG6GmMmJ8m2uBkSAMEv69ueluxX48gBtc8GGM6c0GM5ZLDfLr86HYppHg26V0IAWyPHJBeGyfW1LekwXLFiwXdco+dugrKNbiFZnBtU22p0IpdKtYm3lk396swuyk7IxcU+w227iOFY6JFRVMxI+CISZBtodze+Kc9COVG5w16xDZcZbZpzxlmQxd4mryq68dhK6Svopefl2+S7HGOXyaqy5GARWEjP0cvU+zeLue06p0zuVoi6ey81YiwY7jyt3u+dipExxYOcE23wdv8qa8W95aPz86nZTBzrmJTEoDv3DKUHuFUcsdsEsMc36tTHGuz7TQRUEYnGt6v04GDtLskjKc1fZO1uUU2V2cw5x1dDut+m7I7nu9n1Ap55bsQM5hgRGlgRUoDKdcV7Vi7ZXGdz5Ie1a64D0W6csOxU8zgLC6hZKrtgHKt.Itz0GEnfSjga78+2lFiwXLFiw7+Y968ZAXflKLeRYVsVg7dQftC5s9u6uxec1r268k7+h8t2iOtNqOv++46y4blaZjjksj7M4KwV1NYFbRHiIDBWFk1PIYIAnrclVJkRZoqxBojRCERaWVlQc2e82FJIcAZJXysraKktyzc6BAH.MTKUBgadHjDKERbhiiuGKGaKqKizLmyy2e+wHY6jdYWbHNw82y67ZdEKYMZNm4L90qmummuW1yvjN0aD1yuyeyEL6ne0b5Qe32BSczqVCa3QiY7gHHRUHtfIdD9wm8H2eoXG4K1y+cYwq69S+p9ke3tu0q+ol9.321JYtI.c5Z07XvtaVcz5x.bnFiO5gn3P+ilz3+ekCe3i646mV59jyYt26aZ+q90szvq8XwTHiRs6NBxIPYUaMSRzrUQFpPFMOkMLI5dtK7y+1J2XjgQA7FsZFy.CzCzdcX7ILG7Oc7fUGKSXYF1vVutntY.181tsTcL3sN2zfIICn4Ai.QO2oTHIQowy+qQNNNNNNNNNN+qLpTB0jIyNiU.0iBp2x+xZpMceZ6dW7u1Omz8F9eKKZcVRsZkT8ojX4VCoiBHllh.sMhqsQmZBoGqQVpkf9rDakJoVsJKYCV4BtxOUaCVYyW390kzupcbEplLiVIVe2deImufrOq2oGUuhjGUu7NV2pLuuNaSrwDzXfFCBCDTeDqQPMslJ6JfEwSQRnHsoHoUVzq80ke6peqBu+ZhqOQtNu2+pKXo5Nx0Y6w4giApeqc1nAd9JoR8w5auZx91qlbMplHmpAfJUPOcQ3qpP+Z7N2r1kqHzcbbbbbbbbbVv7sL1Ssf5OulXMOolH3UT5Rk123eC9KRwuSkfNU7auIdorF7zNAc4FQWkH19PzkhmtXBzTDWiSJ0i1TComAyhTRrbUZeUMjU+J9Tc8d9RYuv8qKImpo5qRkjYpryX4U0+rcXDt28dEIUMe5KnWy6OlAMtA8LBBQaEDRq.PDl+OinPJEuNURtr5wdcenKJ+1UeUy6qe90rH8g1bWa7BL+tFSqmmmAaqmCJhmhefEuXJqcyutKV01xoZp757+pOi.PVy6TS7SeWvJu+YzdfcdIpy75liiiiiiiiyOMTUxnZr9erGqi0cLsyK9PZarjK3sSrE2DocUHlM.eqOnw8Zs39zFz0jTNb+IkStg.4X8GSN5ZCjmYUwkitx3xd5.z1MnsInIQZXvSwKcDwWrR68Li2l+4t191qlLipwV3w7yKje5O7qfmp4BVU276FHnohSj+7AcDHDFHX8a0SdUAz17HJlfBoBweQprhKdqa7mncmQ0X58eEI0OxZVVgKL1uXfAk.Th4aIdLEimBlYMHpAwhDDQ71mqq22+kra7jZ28sWMIEzSM+PH+18Oy.P78utijIit3mS.H7bC.YgVJ7oaswNuX54NqaN0brY91H8oZgykTyol6MZICETOJotqeNNNNNNNm24bRp3LMX5n23dyM8A8d3W9K+1Yxi8thGEFE.3IHs2lrut6T9RqpG+czS6AGcKKK0gWYmdydEKJ1r+3mnQxKLY7YlMNzy5LQe8cMSmGqQXxoltoL13MW8AmKZKSOqcQ68fS+uchImZwMZPR8Q96u682u+ubt6O7Kum8+YSzUlWWC1vY2wd0hEnPgp189Cy+I+p+0O4c8F+8uf565dNftgod7vq+1H9cStlbq0ZUeIExYdfq8.KJ+23vC2v3kgfjQsc8efOVxkR3CdS8FiqqSyC8fM676s2lexHvhWJijN0V27CO9u2S+Q+l7z29aX50AY1mgQaZCwpgwNQ0O8eZ2u6a82XoajYR7ZtG+Gu5oq5im5GhsSu+I5tWkQ.zVKdMuoFSIpV6ezOF3ZguuDiPkgDVWNCY6Qf5x7cVsVWmJW9z+jYPoLJC8hxwoiiiiiiiyKgopjQqDKiVIszc6eBRf5Gf1SZYeu59Lu+OwOWmWlVZcqVqjY05Way8o+O2be5ma8qROPtt08dEKVefKYQ5V2X25WXicq6HW252bSqPuuW9Jz68RVotybqV22ktA8A27ldnRq7h+cdkot1MuB4yztGZ.nAA7KmaGaMn0Nfb1kBV.RoBDaG6HWJUykZu68JRp6LSrRkvGPzJ3MXgt57PG5haS+6x040uFuqoMgP75UkdeE+Y8+0zNxnUho5UjT+X82yk0s7I6xGEuzpzyF+Ta5Qz1WipIxqpuVAOcq4R8lt7XYREmH77TYwqIpya4q8xuXUaqf1pFPJQdeE0jIiFqyUqcI9uwiX7ulmty0nKhLmd2dTEyy4NoeFogkKEedojEtdryJKb8JeBUyErvmyl+woFLlmsCVSGGGGGGGm+UOUwrcMu+hVFuCiO5hWjL9O2UD65Oz+800q9E1X25Wq+NzsmIsdfbozCjKk9Hapc8Q1T65ANiE7+kykR+St31zsmIs9XWdG5ic4cnGHWJc6WxhzSbEKVOYtt0SbEKVOwqoK8atoU7Gecc7JVVJ4oZyf18h30N+h0NaC.IdqEGlKXgfOTMuOWQeIA7N0h7G+JaW+5YV7RhI6I.ekjqXtT+h28kz28qIK84WSB89yr36+2su96KsruXBJoW9T8UQW4lzVAffpx68ZHt9mbwsc7+1KYQarWysfQlSZeUpI6a68rlGPWTNUCnPlXJkLJp4Z5Wi2QlVofkDbMOcmaV6p+2qFOutcenU58n6HWftibOqow9Boh0YLA5cdwknJlJ67YG7gtiSEnwottoZd+cps9Ln6Zmiiiiiiy4iNmjBVC.zWRuCGec7VdW+7K4ge2uitOA+XOkqTZfeXSxNV3Mdi3c7iiToR9SkhQUGcbycNdZauW+pzBqaTu0kMox7ixibTKhUjuAiNtYeczg2wV0LlKYWI7HQxl+Au209T+AadxKefO6d279lKJ3rcHDNuF23Mh+Uey0kLYqGUij5sQuJe2gmEQzaTxEr0O1DBK5Xwtl+ncskIaHqtoIoJsu7Oc2Ccc6smMSXYVtOyTO4m39d5W4yLi1WCI.oqk8Wk9xwF9LHyV6vdb+KS93e8RM22q+yZV0kuzFKC4g2s0FKLLDpuuKJ3Rwt+G7iFKek6bNQtJKbn.XqzQG.FwPjMByYddpRghkUzgZ8FlTBEDggzpUQJjY9o5d1mGuy37yBmJv30kMoNJ0EXb6rjjcu6Vo1mpHHk.FhccOGvK6piotqaNNNNNNNmu5E7.PZM.7FgG9yke6L73F.9t+omz6UkoijmEQqA...B.IQTPTIdrwhj+yKMA+hZHKmH1ZYDYHoBEn.YzhLTDZIIOCXJyMAiVW5I6ctv77v.PuY+yiJTsZz89YWd7sVnqYoC+HN7T9zovv+Ya5eX3QGyJBAvY+DyXaaCcqacrnhTP.nZwQ8HSq45wV45h3G7ERxRal5GeP6c1fTPh1C8e4E+bRD55.KS2LFGpdrYlSVVH.wSZkkt9er1VqEe12uvxZ7zugh9PlvU8F5Hh6Yp324lV5O4JOxg22jg1UwjStI6tQL8bU5T0xIjaqAjdPcMqE4Xigf3YVHgbl80hAFX9AtXYDYnVKhkxFnL.Tn.57Cqc25XeIBQvVRqwJHmG.2HWWDEqobpZ4AnJxFxDa9fLGwNe8g3333333337OkV0sPIilaGA6LSkXsloEpPtsFjW2t+ZJ8NSzJ0gToU6lsUW+I2NzfbpFrFc6IVy1KkHup94TM3Ts02mr0bxHu1ZNa7mkumzZoLwzslK39KzWRkRF34UJXEC.TUXvbAKzVga0Vbw7juy0jPeu82wuxJi8K0oPDIVdjrhW2mNyN0z8qZ79JPRsx55T+iWe+uhkIet.gYIdmZ72366pyLktrM8HZ6KTaGZIL22sso10+7M20S9JW1EsR72umzmR7K5XK427QVQ+pFuUmOpPLJolkWRSk9ZzdjDukmQh+lGu8Wgtj9tcMYtcnAmYGR5LS+pJUvaGZt.WZ77RCmJEqpTvKutc+b6PCV3wo55UbFcGqcjKP2YlXOOSqPGGGGGGGmWzbNawmkY.aM9Jyee5KPUJ6AhYq6XaLN2jIn72Qgxs52O41lGEPxWFyD4vLAX5lALLPY.3n2EdK9XXhklXlCSmO5u0ea+ScPh8AF8yGz6HGoNC0ikaLs1wncDUtvP9ZkmWG5MADFXXOV9NhxUC+opgLBkspl2r1WYGIY01Demi07Otg5YjfjZG+a9yuyNxRTmrE6GnR+s1wlwgiOE4QiGGhOm+JuxmtwIIpqKjvEdgtKVSrWcwk0jIl.yrpI.eiOwTToyv3WX8l6Agu.A4xUQYXhM62g.6yfmX5xHzknGGybeY7p8gvL3WAuR404CnqUZ7ToBlBEPyQZcb5wN7yq2Vb9YgBEPQUxstJlwqNfYu2FwexODI2+e.wXXhke3xlS0.EJVRY20rCWcLawhX++vuZGGGGGGGmWR5b2DwVGhbUwRw2ujM2sSAJaqpn+I656aRsgt8g0KiSgfbfMXGCp.rupDyuGBXivwqiIdH1wODy9LeSR7LeWvt+uPe0e3Ow6kIOzuYyOyuX50V9FBuygQpNx.lJTNbrwJpikcLOd9UCHsL7.QE.S0srMXGCFtC9J9P53j0l925O7PuhiMmtg5hmUZus+td9sxdziB1O.vl2W2F3jdXmNzNGg9jjlpuGGXVs4bzb+6ChupgkRJxlo6n63VdB+awzrwpmzLohYpHPD+flITBl8ugFKF7lXBXwS.M8w25Q.xxL9dXViRhtN.LPLh0F.0ow1yyrTKmPNnPAnZ0ZVXjS89g3VH6KpDAEEpm.Y7pD6Y9puuC6ErpFRyCFe48c6qYjxLECSTUJKYxT06lJ9NMCyc03Y8av0NkcbbbbbbNOxK3Afrvrnn5c7DAEdCcDwNlRG9t2hV7VKvZnRrN2Ps3SNY5.iou.sdaxSdGeqEchu1Ve05IOxqFYtkfmWfH1TpWrYIzWko01zImXyDVuCUaLKLcBZNASbWD00MLLiL7vVJW1JkQyU6p8H2t0AHsAc.KxPmcKTSUXKayuZ5MpriACG7FE+ce0Yhm6kYhySGlZ3cM21lQAhkzD6Rd82g+EQ8oti8YxcKXO3QZJ7JBr7iLwvPa.VBkoazbZu1llPfnQp9mqzSdy0OvTj+NVZHCbTOhngEieqMoRr15XXJjis609vmfjFPZSkk1P72TbBVhEHbWG3e2nDt2FXOhZHLzpSXVQx812.IpKPOFFcbK.t6d9KwrE7m9ihYt8QLuDWhIHXssowVS8it+O3d64R9H814GGsHUCqLV0ngoR3Mx17faLjVoVX3+m90633333337+uxoluAZlXesGq+3e9RqIgpXxqpee6UStIUa+BmPWxlFWWgrgK8yJKYsVo89Toy0oRmqUkEuNU5oeUVz5To80qRprJAWnh+FTLqHBIghQrkTLq4cRhElTz4U0OiVIV+O1GKdtcr0fy1IgNpdFSgZc9Vg50DW0qrc8Gew8dqu91u918QIUZUVwE92tpuothMoZ64U0+ZtFhe+68JRp+CWZO5m4BeYYVhY+onsHL8FF+J+hq+JzVS27V0Cy7sM2slKPuj0rnSzeOqe0z93Foeqj5xlK8fZ2q4I0Df5UHiFavbZvxWtlJ8kp8Xh+1Olere0i29EpKg9zj4xoAClSCxmW8W389mSMeHsZkumkum37yPpr7bZpk7lz1MoFbxX89UqmpuGtQxk+OD5un+ri14aT6Z95MhqKGo1dI7UESgauujaUyE7h8QuiiiiiiiyOsdAeAnhz5tsODYitsCrxn1x9TMuwaDuQ1x1j0uJZNKzrson9is9UsMc+662TOwQEs9jnSdDzYOtUO4QPOwgTNw9I1jGPSMy9oslGlDgGw5aOpw2aVV8pk22uBWYaCeW4oT4gLHk0QnrMYsiqw1vxmeWOJeVs6G4psM+7km+8IQzx2TOo3nmLFeyoRhwJe0GZpqsgEvjjfK4W3y16qmoifFiTD8d95kZ9nOwgTtTOkMEWWVulukRCA0NoZNR7lGrUQDOJCH.RgBnrpIL7KjHZuMsAJQyXIB70lwZi3MdFLPYoxXkCu5ZXOTWDpVDkIaZsSplYvtzKBy51A1sUqrN7vhsF47lkjZVFKDFwN+0CWJ67RFk8NzDDE9f3goavqMO0zNh+hASh18hH5Itkua.Ph6dq4ZVew86UibdYdqd5extlvTPK3FHgNNNNNNNmW4bxc.WDrUqB8NPu5cbGD6QeT7n1fgir16xesCSXsq4SFWmYx2Hy0.IJTMgynA1Y2SvbSaLgSGEDNsj1zfzL6CllS9XI3jQ9Lo360f1aW9jU1wVtq4XJ6zLtcnglePg.TK2fg8PAas6dvHD442htGdXyfCRP46LSHyLoe84BS7e3Cu2073GQe2yowPhEet9tkO1C0DBWIDUoZqm1RWYPqWWOqwOFAgzTvL2hhl6GsbVAAYJT1650oj7Zdurjw+t6sSOt3HYCw8maNZljDQPp3+v99fbhUjilEzwzq8ZFJnHnz.wKEgfnfotMElmtAQGADXnPQPmrbMMW0ZVDUaMKIluyIoC05gyKxFJjT3aShGljgH9FDewJwP7WzLQKFu0eGuplLepVcsu5Ns+Qej8jn5ZayFaCwbAR5333333bdmyYofiVnp1U46K9m46lI5NuoL1brhjUdpanYuWEJO76e2DFZMVkXn1DXejhD6J8Ix5ipnPnBO3aYEW8g+82zUtjz5chwJQV33SG7tGr42O5eOeH6aYWqVxnUBxqyOULDgQDwxPhxYYKKMctA0opgv.CX25Vyq.9b3n3I60y9298l7cLmF.9oQ56xdOlrTeFHbDQr2KayTlgMSc2yZvFXILJZQo8GSE.ehzYO55m7fDLcgxlaDXb50.fsso7vjz6azwrKJhntQrBoa6wm4dwKMCnYFcTu52Z9HJAKICwjoQIpQ6PTp0NCVlCYjVSqQoRELCLTIa0hEnJEcoa0KMEPHMifXn3AAMvfOhmA0jHbmDL1.jnBpdGukZ9.7g+fqc1dnGKiBUohqddbbbbbbbNux4t1vaYLCVdEMmkjJ.ezRGpQg4SEHAsSCpQHRUhjoY4a4u7ZVwwPTCB9FuV8B2U9qZlgWY7ng+CV++Y0GhDrH97vYWwexLGtfo6MrMyzT3YcNUgBRkVeuyp.PlpFxDem6wP4x.SIG3G7zwo610uwe6wVxQlfhpe6HwWzjlEugQSsblYkLPTkclweqLXX4JinEdCcDU6+wwLnxjdVd7V+Vi7zoOxqViHdBH3n7Q8fB.va9BWlRWd9etCN80aDKDFgjdsee90XtwKOh45ylTW6d1iOigjtKZpQHHAS.xjS6S.mjHpVznJBYx3gNDEzpZQpZEF5TC1NQXgzwx4EQJZH.9FlCSjGln.vfPpFhjzJyfN9AnYO4Qtk8muY4sbTubx0EMBCG0S1QcW+bbbbbbbNuy4r.PFpbI6V35h1hTq4Kq3X53YQEDppXUwhUBUKghkHCr+lrzlRDfBZSaqaoOEVeSdK9Su7+vUN4bJs9EngQ5TG+cOwxH5PrJ8xgli.QL+D.eTdOBb1OHPRmaXck2bxnRkGxru8E3uxKuaCQyDba+ud5W+z00dwj.ZasewLewO5NmYWe7veUlRVW1jZ0Jh4FuWL2y2pgj60IyQSowFWQrGOF.MlANwgKL6eOIRCltYiF.9.COsgSbB+YpGEeroiFbVAQh6G19k8Np0bOHYKWHZakOXv68F5NBx5AfsAdnVAhR46Oe.EExn23M1ZWfpQNu4mX1O6opsyKIrsAEeRhZigGFu4Z8cMQHgw.i+L6+2X2LMd21AvqLkob98DBkgrkCFoL1VcgWGGGGGGGGm+wxs0.xu84a6uUVXJN2ZROKdQHdg.Vifp4wWKkIVbOrdFT.K9A5Z191Sz+i8whmQqDi.QEOhvHJFQynZrLpFCUkJUvqRE7Z0omTihdVuCHLXt..oxs2WR8nWdG5yrkUU+au40szjxthQbkXqVim6SLvhe6euNFbPBJnE75+8RbTUnRgVGGOY9D5e2EtD8K8xV556TNPmFTjTpz6E8IVyCnK5hOj1V+uWh+ja+RVjtmbK+s9ym7eaBAEIPkUt4u7Z+V5Z1zinsmW2te9sm2uRE7JnE7Vy6TSzwUnKVhccG03+Fe5MuZsK5WiuvfqagNP1YFzwy8qcdwUkJ3Q+Z7NxnK1zd4Ihsh6atjWvAsIufCGEaYe6YMs8Amnq0ocVHiFCTo0mkUAFz0ArbbbbbbbNuz4tEhV6FaxHWUnhZJQORIx6oUPJUdHiwDYLRjmmgHiBe2d6KXecbROUQrJfumfe.r1ARzX1aN0z+u2PJzXgZjAiEvp1j0PgpTfhl0UHmICY7FtzPFAQkBb1Or11VsPf3EdCcDwz08nQSu2yGY2aYl4z9gXJdxIS7x9s1ywZ7Jm93OD9GY3iHc9N2pMWM76+PKyuXQLr1ohnq1BILzbQK16iFSf.sQC8Y12u8ScsWza5XMwtqONMW6Jiauzq8AdG282t9eyr9BjJIAaJ2mN1qfo8hPGggs89mOhYzQQ1csq1vMrvA4+zYhiHO6y4SG3QdW.HuDiLEJpd5ADoX.imASaQM6fXUS1Zl8Hm5ywaqImsAU633333337hnycEgNkLUnfm.LDWkcECNhLJY7dWczWPLfXVHtfuu.upBvpdqqW6oSdiA9XEMBrJ68RW1+s4tuoBdpe+aMiDp9AspVW7QL0tahFqZ0nBUqRtZv3SOso9h62ie1zxYmi81PnCiRbi9ierY+ErJDgESG8+6txaHwQAnquWtvQFdXKLH.rxa9sFAzbW2yDFxkNhKp8FU+kufuT51j8.gwvNmxS+De98uF+o8LDEbQ+fIF8ws2VSKPrTH81ym5B9Ve9gssyjiMVw5UpNjrrIQFZHrGM2fdsA91UgGZjqV.NOUAfqAX4ovz5eNdlaVmALjPVB1LWGgEzhlVc7LfV6pmqKX4333333bdmyg2I7xTjJVJAnp9p2ZFgiPrU8Ymyqc3mzg.siPLAthe+C9Ku26+ISt+icEaWrXha.ZTG8jG+M8zumd2o4QuuuiOzP.o0R1j8nCATrpsvY7Jt5kGqU2uppD874bUojT8Ql07C19bd+29LGoym9Yr+JVUTPmNVl212hdfb6FyUyNrLVqUOlNG5HkKipXZLULkCNkkcNslX8wm9S8l58mKvm84IMwngFiZafJXiDBCiAAcXkEs3uwZu2uS4tfvlkuAYq2aUSgaKm4F2aFEPi1GRzDt6.948JV54DDgffAvGwKkHROpcb7N4Iw66dGe2X.wlO.EWvGNNNNNNNmW5bWWvhALf.COrgAVa7O6cbRurqqQS7M5Q1Teu5jdxdSFiCuodM+dckRNxpurjgPbuU1q4VEKzQ.zl1f1nQOongMAMiEPn3gk2+Ej7JHuXTJcpEj29MzczXYV3qzy5TvpD48FtzPlB4WZ3k+Ktz49n20gdimXRssHTwBeIuzSM6IOIQWWMhtW1lgpRTsbkiFoXVCkGN5FuQ7xVnGKGudHOk+bLyr0u70m33e7e8kjc0KiKzyWCQz3.MU7Au3MhcwEdYqe+6sn25VZ8lb2R2W+UFUaaak65nWmW1wxFAncrJhN5iBxdbcxpyuUF.N..OqYDoGdlEIwR7xLy9j21iN22.ukleegf1r0mmEvkBVNNNNNNNmG5E7.PJsPQOWXDiVACCOPTta+OL5OcUupFk+9OdDOzRZxwil8+zqpiAdxO3Jy9C93W3VKeUcdebgomc3+q6w+Ipcwe9MsF4SGWgt7EVjmk1kPSZenMCrkM3+A+i+udAP4LIXmU8qUHmgbo0Z.UylMBsjPoy9Z.oLCXusg52Cfa61dHuu58m8Ss2Yu7NmqB9WVto+MVy+u+NGuiNHZ37XtZFzBHPYkL8XQDcqaknQqNt4N9rmziNBZb2+cSGtHZal20srz49ktlkbnQ+x8mN5GlKVDe3DeXZ3k4+vIaO807YNPSnQ2Ts4AO3WgI5XVy1nFesmBKjQAjwJRT5wnoLcqyKiqcHcdq1mcg+cnJnXOUpXYRJ9AK03Er3jM7nUQm2+MGa9zvZgGNNNNNNNNmW4b2NfTIucK2FwW3qystJlgpVxTkrQi1UWgui2a6G96erYBYcIm6Am6X0KWrlLv6q6oIo17A9hWzG9MeII9UW+xLaMcZ4nc0g4oVyh4y+1eEodiC+Q1zeMYMJqLsYzrs9cWjd0sAr6ZWsIWsxdOeNtuQVg28vauY0cWydc25xqOtMl8a+imyPAzZ6fvS9YuCuwdK2rLxHDUr0svNFhnLzHg.dh.YKLV3sbG6eN5plc1uxqYNxNVz1pdb+Oxsrz41PucZKe20TggrCAJUgiMFS+TkoQbtyl1wmQ5dCK2jaGakpEJGILjN3f3WnZVut2IQxztc.47YkANhGpXPAOUvLefjs5jYVBCTIdcyRwVOARgcc3vsq48.7eQ6f1wwwwwww44gWvWDyPB1xJlpiNt451AyRss4mN2fJ.EFsrsJP0xCXy2SOVdqzbjbCXYq6PoZQCkqJkKeM04xqG9ou2f6g8Y+578i9CYsIi3mLsOul3QrV33Ogu1UholcrpiEUsPANBuGIMnja.FoHJY9W9X7eIakAiVHMY9FUOo2OeA+vTcACLbdCkGl8O7sLK2AsRceJa.lCfBTJVEJGJHpH3oJVJfVjpPQzcnqn4ttmILa3Z6wlc2KbmrEovXa2xXHCwUo8VtfdfTGM7oN3850UNj9eMea+XYPu5rDstskzbjIv719W9v+rdBv6btwPfR.Ze.yfJJ1VWyDQAinRhHUIHLcq+s5niNp2ikMopJQRqhEwE.piiiiiiy4UNmbWTEAaeEFy6cUgvI9NqxbzbHcePLi6iogGl9euCygWBZbv12mYh388aQ8CUnhdWSCegO9Mqbs2Sy+3MzcDMNoWeugNhdUqJtxUmdN.pUaJShb0Cu24C9nJYz7f.CvHPDYd9s.bY9tNjV.f02rJyE.vHCLfkgGlRbURY.oUKT0VBLka8DCOieMQrPf.y2pUyw.5nWacsFSIEJjGUGwrPaycHFvhVhiL7vxKefdCqxwCWQsiaR9peY55xUvVfpJrN6MCFz+EO+bAebdByTnpZUTKJgzZH0KpJhHRfwnD0XuHq7ZuynCxUsvTr2c80wwwwww47NmyRii2UEl6tJ+Ni0Vgq0F6HDr+u5I5Yx64Sto5+js+1vKthsgAIJxu8ML7w+1W6Crp+32zABuAZlhOdD7WvsvCX6n282HI6Vm3l+dl29GmlkAxkC1x1v65FDsJY.Jqi.QPYAYHfSMaEN6mEHOKmL53jTyy.lQXfnxLzyZQfqfbd0.1BCEps14DsRE7pQNC.EnnsJYTXD6rjSRPcARepiqgXfEpDYYjAFvVo5PxUWHmYa41F0Gstbjg6QjqBaEpHyeV4pCfy2sRjI2Wqs9nkExLRAQRGhoMswSSaMeZlc7xCXFh7n5HTrH9UqRiWbNncbbbbbbbdoLUEF75RkWU+kOnlJ1q6+xEIK9BZJKZcprnMnxR1jJcuAU5dipjdspr39aJq3x9LceG5xyoZmWrpscEplr+G6whmWUeTUPKsvpzZM4uetOZEvgzJW50VSc8yNOqoJ9V0bAEzBdnkLmwqCK7yrSMSrcpYhUoBKLs2kJUvaGZtfcn4BJobpmmpX1glKP0VS27SeLelu0050bmZlX6PyEje648ADE0jIiFqy0nKRBdCGw2+5NxycRnuvqwBCfvSOYzy6pefWpPUg7ZhNWitHS5RmH9x+dyl5BdFM05mNJ05NoM4ZOnM1Ru25lj+1OSm40E0WAMIZoVetYG4BbS0dGGGGGGmy27B+hWTUxCdq4s89s6YO3OYMR03a+w9Q5wOouN4yfN8QPm5vnSbDzicHz5mD8XG0WO7AdWG8CupcWeB7jSPPSH7w2vWn4HhDgHyu6FX.sYqksKK7Pak+7K3Tqo+rNW4OyE4cPpEkgpJT9L24gSEzP1Qa8n0Srz+LoHSYAfpUO8yqXQh.z4eNm5gPI9qFNsN1nPNRq2z3inLeTU8zCVssVGa1SuSONmOo7Bol2YzWcEwh1JErDwSMRbi3ujHdRj4NBd.7adI0hcOemIbAe3333333bdmyIKfYJPhV+.RzgPl5GshC3i3ESaXiGMKwZNAwBmfD1IHlcRMVzIwilVPgFZrGYSW3+klGX9iSYHEfsWBSEJHsdbpEwqnJmdWPJclob0Y8hyqTAyBAJHB1gl+woBzo0qI.R0pHLaRsV1jZwBpMOkMnJiV3zu9Yqhrv4QwhDc2TKpH8pKriJJCQkJmZjXSdFvLU6+pBiMVDLhsXQryOGHzQF2c2u+WERhhfNeqTVQCkVwKGBDzvJpQsQwC8IH9ahnb0J68PODSes+Nu8lyWKHNNNNNNNNm23bRp3jFTVExSueTQmKvCDCMv2LGczo7j+lul1dGSZvruCzH8vOTy+rYZL6ELmUBsghuNwj+6ltM9fSCd40sqiv.QWEDQ4xyuP94mJzkTSdvLUsElD4k0QTnR0gjB.RqcX3rx5Jjy.0V34+OWg+pEKhU0ZZNfV6xw.jG7FiB5XfsBU0sTjmUMoL7v4M8N.JRYEDsZkSETw7apwvjN2F0haYgBYe9gpnpR+2LxQ9gmsmUNujwdQ01vvyz5RuhEY9Otp5rwE7BEuNP5B6j+8jv6j6odIznpf.C8h4QtiiiiiiiyO0NmUK.GrFbn27kdYBMCUr9FhrJ3s++jM9ZXsIDRXTN3bVdho1R5+v8dLz47PBhHR7dpW65ulL66I9eAP9gGva3AFwdF242VoqT4xLUsUH0yMXq.DpAj6mcG+0Hmmp0leFvAsxclgZ0tfKTYgck.QvVPK3gLjksOLCLvH1wnvYFzhLeMlaQUoWJpEpVkJyGbgTTZUD5ZICTlQ.KxPy2wileBXWRk7f4IVKF9g.hmA8rO.KmWDUtL7EJKp+oBrUjS8gLKBwBwKk34uLe6zDD2i4dJVaigPLJp6Ztiiiiiiy4cdgOEdDQGgx1U.M43+jusPTPDVZHgdqaUdW6IxkXFVc7IY5nI3o7mj0mt4qaSw1DDJRTSOzPkmdeewwpVLZXtJ6cNv3lQIi+NzbAyW31fpjmgMjaaP0xjr11z54Pxy.lVsl2m+xcFcppmkhUe16Lx7EGekJXtowGQYzL9YFcTuV+.KTmFmNc+qRFsXgRO25IQ.H+vCaluVSjSkEYZInbquHwdvpQtVw542ZUKQh4zkZjZmgnFGJLpwgiT8j9FS5lDzcvr6enGCfbW+7MrfJhKE7bbbbbbbNuy4jEvTo5PxstawR3bnDNmRjDpvC9U2ze+irjjyc2mLJjIdnY4uNnAYnw+oe4kreCJPSv1PHJLhBUrmYQaCPq5gnkdoWMMo0jqaEZ5baT6Ariv.QEpVkBEN6qAjQKfd2TKBFwBslKHBhhtPpunFJiPkhR9sm2q.icpiwBEPO1daHUYgox917oUjDsNdj4+QKW9TsqKZMoPjJUGRFdfQrPYgRpPIDJA4orgxHiHD832OVSChPib0Av4opTULzIVaC7TA0pMDZdrHcleTyzs0+lI7jMT7BjXKyyjbsggcgG4fBZAasB4LmYWNywwwwwww47AufuvEUwrtB4Le8e3RRE3iUHJNnnXXfr2o8WeUG096mqdXwBJa3W+JMxKarvbCM3rVjHAAiEvpdE.S0BJCQ1nuCIaETfVRnRACTVxPUsW5UqkavvQjqJbDgHDgB.T8reWBJ+O97Qzm6v+aHwBvTO1HB.YnpVrHVQPenjq7LRSlAAsjToBFsBlVEadYkxK7pzpn1KSq5NoF4ZsCOkKepGSUaaRqedoUFlYc6.x+pvx.LpAhHxNs013oBaypMUacDQLhocv32o5ioNHYnpl6z0kjiiiiiiiiyBVXVW7Xes9i66g5inF7BwDn8sWMYFcmo2jNd68qZGWgpIWdocjhBpmAOqAQMHyhQz0nZhbplZMplXgG8sWMYe6USlYmZr7518O070fRlJndUnf2VGj.cgT05ElyvSMmPpTAuyXddbpy+Vy9iRl7p5SA0qfVv6I07ITMehyHUxDJolLU1Yrb6XqAkledcblO1wYNCR.HiFqiL5hkf2vQL9uwm1MGPNuSqqSYzXoyqca5rzIisru0bwV12ZVu19Od7ksVcMoV9+PiTqdeMRrlc2LXY+MS1QAcw4U0GP15fD31ADGGGGGFAT7dB..f.PRDEDUGmy27B9BQEAqp0fdygXgnVqCVv3QrlDq9CmMQxMiD.5QODw63WI2rcEg2X+MFAUUf3H9z1nj53IvOHEpuEKsCzYqWiYSS33iNPcxRjhd5TfhLJWMVVWNip0zWXZYox70nQKEe1c4JpVEIK.EGxNRoxVxz5u6P6aNY5SdRuN1aCk4mQI4KiYbxB09NLFEjZraAfDTWxNJjHKbqraCfsJHz.gX+r+Lx4bJA.y3XQUKF0fUhTQYNOrgQyDZ7mHNjHBqIl8P3MRVLEP0A2V4H1pqKX4333333b9kyI2IbQvpbcDwOBEQTo0ht1c9M8KY5YMSCQsBkvxzb7iJ1ieB.Z.3gHdXLQ+j27VtNR1w7GuMZ8+Z1vBfs9TQYdpw9ervqW0maqxMWsny5fON8tIrvIyytdRN0DYenEp0DEfJTvTfL5viNjLd14CJYnVAqTHKzQgLQYIYHiMlcislsGLRYr4KOL8l6d0BUqRNvRATHuYOYwuM.Xb6sxtMUnjlMF59OqNobdoBkRsF9GVDrp.FvHFDOYVAUC2mQ8ZaJ76pMwjPmYGu6csj07IW0OXMzTdpgl0k.dNNNNNNNmu4bVp3HLTqEWIhErVBa5wA20mzdn8DfX.i.VEhhPTZnlvXHDh0ZooZrOwC9eCwzJzBiATKmtKjZIKE+qJWspQ3TyKCfxPwgdAq.sUESw4K57pUO02TQDJRUc6kZkZLEdNOM.YVRpUqVyVnXIEFBTHOXFggsE9GMqQFw9H6pecWa.94I17cjqxm0EVuyKsT.3aNCVDyy9ZZanFuesKL5X+OeLOSagXR2PLKlv53e4oYtmZ9YIyKJGzNNNNNNNNmkNmk63JpUvhmDY80H+zAHoTMHQTCRFNmFqQchENKojlDHMiEST7U0O.LAXkTlPRIMzXZC7CmkfnFDSiHgMh3nTYzQ8JTHuLecRLejJxOCVbV4mUv.mtNJv.4MkXTuakcaJVjnhEJo4XK9nELUpfLLvicnyHXBsjTpTq5QImbcQEJVRqRYATIO3MNXxSYCTghEIRJRTUofHB5scfUF8emNsUYrvE5HWIShJdtEfddLkJCIckb9qgV6ouVZLFRBIR.ZimdVUlKBaiTHFCB5eeDwoj51+CGGGGGGmy6bNoKXoJF1Y1fjdPRvOsARFAsIP6FHsQkN7fzBDCHAPRs0W2gAZiVeeePhafDFHo.oDnc+V+Y9VMD.Nxtlv7arqGvuzNyDr0yr.uOqc5cZn.Em+8q7FHuYTF2jkdL4Fstz5uurLwt90M8uqI8Gs.Z1rnab4nUAJoHEXLobYrE.nxPB4GxTH2VLUnnLUMjoGdXyd.+cCFPEEUFk2i.JS09upPsAYHTUDzSEXjwE.x40J1ZFvzd54aJy5ByJlVabWS+Dyo1oBIZl3XROiXR6kLffmIhFL7vthO2wwwwww47NmS6FRquGuBadYdS2lPvDGCiFF0Lgm+byDFlvHndBQMSfu0GMR877iPCBwXDrSGqUPD1DsBZp4rQVScrxbniWmPNVLEFwt5Mjwjkj5tXBCjTqVn.77YTDN+jNuDhPYjEFBf2TwwRbmk5oAYgg+gSapTAu6DjN2vM607v2rLz63WvW+K96pus6EyAAFqPARcW+ffZ2PtnbqCnQf+QF3jd8NyTRgW22M71Xagy13M4sjgQN3jXxmGkopIYqMfkRHvfTe2iJb2HnpJhXomxAcdnm2WVbdwi.vdm.yoZl.JJXEHTj.rDghNW.RrYMD3ah0iWLe76YoDjY3AhFgRsZkymt1j9+pzxZgNm0KLMlAGGGGGGGm+4cNoKXA.ZgP8PekuDUq2NIBMrAYNtvKnwu263A7+nuu9Zbj6td7dyB7pSZwutg8kziICERF2R8or7PMZxF.1Wmdrw5Fh2QDcbxnZYSp4nVTYFignDHC0rRELGq.QiQAoJUrnkEjgN61of4C936esDbO2S9H.y0OPsEc224pOY0uwI8Jr2F1dZqM8pJ5OHdI+HAa45GXMeuJ6Jyew2bVP3fKGMagLlicOOfr3AfbiVW3fI820DG0O9Fa3s3eq888lYNciy8w92qD79jmFOjfNuiMla+25MOQNymnDQL1clJc4aZ1z4xpbmCaPtpV04xpwxAbkg742JS6wPWeHlSGKoEThjPhj3nXmbVhlpKSvhrp2JZr+8Ozi10FKsxwqhgQKaeNCqF2Nh43333337RZm61Ajr3Wsbsnq3Jth5AAyXdxlor+A64QjG619izuyJ5xeU4pVuvni5U330gr8Xn2orGDeNNSENKI0IGdLc7+MEzQKUMZrAKn6la0DPu9G+mrJeuEiRuz.JGBJEKJyGzSFxUaa9oyMfNh9rtKw+TnrL7.Da3gyGtPJWc22Uto3Py48Z6w27x+0dnKXzi4OpgXpk.IbW+nRS843csxeSpKBd+t2de9YxRz8t6o8xt10niN5Iik8B8Lu1W6i+qe7iymPsPTqF4qPTnErnMO1s7sGo822HboWdtA+1ORc+aB.FQHZP9872JkDQg0bC3c7kivO4mcWlbNmREDsv7wL3gHXiT7TATQZfM45X1nU8wujni+keDDuT1fEG2De0S1LNAMRSi7kwLRqFuvOUb67giiiiiiyKVN2kC4igsXQ09De1uWyCrrfFeinCoGXsAZWqnKSSVWre.umfhYGs4193iobyGPGsZ8vsUtVigHazVjZMGXnB5Wl+gDCgZ+ATI33GOWpi7Dqp8lSSWOxUbI2QRvegIDN.Upfo.iISzwrlCrqU58bKl7+ukxPbS2YF6BAebzuzgCdl66.wXtS5ck+1OzUtyiI6LDAk.AuDXVb1+hS7M+emH8vn.QcbK6etsdOMjrWeaQ8bjS5kc1jdulquV9i9L7IZBzTD01J6+sD1zP3bFryMGXE7e3u6X+1+AYCSRhGq7AiAHaMGspejxym++m74+kFmWhw15+L0wFuOhRASZadDrZzzXRgHoSYSi2jGEeF9E6CVGGGGGGGme5btJ.DoBk0RLr2UMDQaQpoW+Z6NJFwzo+weU+GHSgquMFvuu8Qha73pcKeho8FqX1ngFRi1csJl7p5KLo+eod3YV55Io2tIdBCdG5O7Sttm7sdoeVN13+6NJXaE.xokgpZrMrbEtmy5C7pUQJjsGa1QAt6oLc+pWBKYCKls7q8n4O3T7Ms3KpDGMVx5AWx6+k2+c8k95K8u9sL932znFPYX1t4K+zME.F3ISa95ez822dNn8NQ.MHIxh6ca4h1eaXUe881ehqOS7MD2XiC0AsQvrO387gkCP5tFXEF.tmIpY1yWcMALzHQAc3R2ly6URMUabFoQmX.7TQMHSgt++ABAv17I8il6wZCL0EuzlYpdyOQi6F+wG1MEzcbbbbbbN+x4rEub7AEyJF7pDJjI.sjcKRMMKYiBtzuSc6Stu+hG8Je8uxkzNwuhJDKsdvFE4QS.Hoyg9D6if9168XtXHUW+bjn9cSm+jW0M7KN6W61960CrmqVm7D7TvbKTmGUPMEJVRGRvNFiFtxMbw+TmhJKnPg7BiNtgS1gGsW2vO7Hxa8e+OZSicnnuhUwZM9PPh4hukO2l2vm+C73y9poYaT0N1XYCAXpZCHscCsYu3galjl089Ot8i79pOitpHIAR2qZaa3Gc3OTcVgATp9PSD7k+M1zgdCaJ3xB7TASCX5Iutwq7UWp+.nTB99ubzuY7mJhEx0e2Nfb9uUNe.Hh.hmf3IPqNiUtCRPWQzH4Z++Yc1nCNqFMQLLoQ71fowiPhwbAf3333333bdlyIKdoRELqJa+lAGLGTYzlTrr.DwqpZr+Z5zRnknG76euO7q7U8Kcv6iDScPh0+G6ACKnHOzsUssk5gjHEAMN.Idx24GZyG9+3peb6i+28YzomJQrnoall5ptss3WoBFkRBTjpLlnTxTYzp92N+dRkpCcVkBV65dNfWsYS5SpYLjLsgfNk66wh9KUgnPMvPrTMic429Eup280N9yb.ztqssnrTMpUpfUUVWth1e+uoev.451+d9KGe4O8I3M2HxXIVWS22PO5GwjFc56ZXeJgTXj2yLzQPiuzW7hdrKZslOfmDA0mlIu2u3lAH20i2PUo4MtMZRI0z7j+yT.5kcEl94IDxVTHI5ysYl4gQVeHlqKF1N6DqYoDpQOtA6wEwqiHuDaJdi8c6OROie553ZgNa0+RN8Lrwwwwwwww4EGmSlCHEJjWt1adkBIpKHhP0ABTJIY9d4alaKfITglMU69djO89eOWya93iSZualX+.HniasvbSsB7l8qP6O5q5Jts4tuO810YNYfo4IHodBoS+vfd6PN.YmJQgB4CFUq5uNc2lBZUEcXy5lMoO0H3r83eCW6Jkb4ZJDF3yIlx+RdaOv6ZlY0MNaDFMdBKq80956+S8qevl+Zz3B+EFdNpcimwytnMyc8CBdGWVZCGHL8c+Sl7xlMR6oIAHct7+h3ublKtknkeCCLWlr3KjUnqZ166dNQrLc6u6j.ZHD9T6K2Lee7HWq2PAD9B2b..ZaHHdF.1q7OeJY8rWz4HtBP9kJJjQYunGxfZ+mHtwmnS7pkFM0kxrK959u1uZmVQz3RrU1DSWIiZz55ppXpQNu+kBvvE3giiiiiiyKEbtqKXM53VlMYq98DiLqvHhlGXt97SXTMr4rzrYTC6i+C+7O4a5kus0+8dfOTaoHHpSZ93Wxa4Js68G+k0YmMFMqSfsdTfIzyWgKa09evu96XkUwuSAlJZb5QAnH++wd24QIWmkG3++97dWpp5Us0Z2Rxxs7R0dCJYvKXplDVrlwNIjIU+iPHi8DxHOCLXlXfwmg.opl42gIjA7L3fIizOVLIgjLUkPxD6XYC1ntIFrMnhEi5FaI41RVKskZI0pUWcWa266yu+n5VV1AR.gkDg794btmtqpt0xsVNm2m66y6ySNoHG4UfW3ULbBIfCTosQ2Vk1O9z5cgBjnCQ5YkelK9u9u9aOykRz5fngYHKGJqoLoUTU27sK988sl0m0czDzU6oNRsFoqFCMPEI0R9llkPsYV.1S.59FgHX.sz.4L4t1Gu1EtlkLxiVd7CWolYYTswZ7hPOJ3AEhIWZ+L208XO7X3iE3ohCU7mhE.q9hwbfGXqd.1a5lHrLYr.LVoxujfNTx2pOPvftfQN+QQFTIcA.vpw57QHDC1m0G6RinIKEcwcPyCdBpoZSwHsWypylP8STSWGBTPJr0Uj7sro.kSlVJ7slw.6qN4TCkDKfpEwiRvH4R6UiTJ5NTJfvfh6yeGGGGGGmyoNqeFQaUtOG1xniFSlxwjW0U+67IRQtzA7IxHbCMM+aWdPlkFHGoKZ56UcFUOxyu4m80e8ezS92xh10Z56ti28e+CoSerPpcLZioiRXh7V5hLO+G7WqqW6C8EtrOC829Q28wOd8sB79oh7t4caNBuKQXn3oyzQiLY5nwY5q+CAv9sBwgl26CM9.0i0kFqfDlXlU8G80GbgWJQ661KXFlB1rTvr5Q+SBRORA+Ue26O4V2R93bWSaQ67whSwyWOwTUXwM.T+TpYIWzX9sisMHtcvNeCNrm7kDlsoIZ2VO+HiwS8fYl9Fl5uijSeOaKLGEDF68pUyfzrFFMBAIQc7zt0lXRtbrY2wlUXyAOzCQ8W9wStbYkb4Po3YVJo47JJQQkb+PuIqLcEzoafPIzQgH+8PjQk5h1H.7shIzFavKyVK3M5lec0++9m8Lg.T31VRLfOEKnvoMyGqOiAfwnp.EjrEbyHhiiiiiiy4dmSF.hHnx.nhftVtuvk8abmQjqu3gt+x5S+3Ql+nqYkO2C+pW7MtfjxylTpKzXFzW3Y+sO3cdQee83G42ll0HvVg1MQ3I3eEq17AdtO8kdi20ctl8QmRC5LU8uak8Dc6bywTdG.4.5mrf2afghKvv1AF3LquGrR5nAGnZLO0LlwNtt4ZVnoAz1j63.a9Uk6ILIlU15+8ig4iFMbP6MOvCc8+oGaarfj25EDbsTHQgaaeMt702VENRTs8cv3eIz1.+1jvK3FlxVAoMv1CsdsoZVu9yk1vasSukMqV0Ph5djP0HssYN.1NuiM03HfjcGaVYDn4yhm8.D.hhMwLwFBl4afWkxH4YKwfZ1nTtYFJGmKGZtbYEnhLBo8IGJ5fuR9wryO4D3zq.Vdura5TT9haKPiQL1YCUaj15WUA9wu.9G59InTeE8xr9IqPe8XumsMkoXQrLPIez7sdfRm1iLc3APOziaVObbbbbbbNu4bxZ.4TWHmZ1G2VixYHhQJpugAw6R+F+Bydnk0nQ52V6S7PumU2+pWo7oR3UGlcBzIOXRl8jpeTUsSCrnjxQutKx6s9MF9J9Ljqmiy0t5SvtdpZxFK2J.CYPa46m34GP+7Fr0Bm3Lpj0dcW2vAjJz9Q9JSrpolUWSSKDawxjm3yvQeg+mhhZPBEEHNxRyp+JG92akGdrqYS+ZG5wHYITeVYbSNj1HttVC7TrdUIpgwzA53fNLErHBkohr+t5xidgjZPCQLyJXDPpoQHrW3o+MIwt1Hgi9qfHeEToAVwr.OQ5LQm0vNdSjddaXJuBRt4L3kmVY0SoRHkohLBUkZjxU9d+YCJur1X9oy1FlC01boI4uwlZpVjn3iNi0dxYQqA3aq9L25ni+cQyjBcfAx4s0aeX4NVZ2V.x9tZEnw7OC6e+0aUNnm6xCSAWfHNNNNNNNmyctIELTkLp50aQ7SmC+LL2e2hZ6qXQuU8L+YMtmKIn5BtyEN0S+0d0enUrLy+kjgp5o0wnwpAOD3yduWS6W1CeeWyCuslyTc.VZ0MVda19yoRVUExqsNaxCJ1gg3Va+zO.qO0imIhKNkcuMqu3Xc9VNsIllpPjUUhPogwWZJILMLRsSpTuB1wG4ydn26G4x4HDdme6SFy9rM0Xr.BDG27DSF2Hhn0MDQHslIhLzgtyZG0R2cGwxsFUapJVEHDfJOJAG9uX8O83emKarDicsO6zeya5.U+d+m1IxpR3GbAgG+f+GetfQ2zt+pisw89nG9p1yW3au9CNJHkJgTJWNJCzGiFMVoxVQv55F1m2cp.AMyhE8EqVzh3IcXQV4rs5CH7YGHQ6+xzHbE20kGU8akRiltAD6iW6IWTRBpVkD4nX7l2Z93st0xLdG85+I5uh.vfjG5qG6EbxSFCPYpH4XTWJ34333333bdwY+0.BplA7O5docygnSuNo8oNFoZ77jr5MPhF+Bj7p9a5ui+vWytS7VN72ikV9KD6+Uey2yJVGWpmGGTQMMvmikX0cNvR+qaaiq8wkOb6616at2hAUmlDSBI1K3m4Vvq034TSqDaQTnfBEjeZJKsegsMkgvDd69DQWoJPr.3kzG0.KXUuNxG6GqpWi+Oqts23FB1XJuld91JJMpSzO3y9HG8uk1+Ru52oxq0XkPRXvB13Po4RpF9BXG9SiVjbRwhXJSEYMaHT4GTw6noz1UhZOllH9hzwRPR8lIZgu0wt7Es9evEeCq8Ix7ZV2C0ahK3Sc0B9MP7pugU9GcYabMa6p+EV+Ntx+i898txOxEO1Ec5GKOBq2VpDxYZ5n47Jher9tnpwJ.Uah.E73cVr9A9AX8VEMT6IlEcVOgDwHKb53F3MZCZdjrsdrug2XZ43y07Ka8LNnRogUFcz3ZjRyPGJ.YGZH2Z.wwwwwww4btyIUAqpifbn2y+9UIc2qMPC7wlTZ50Qy1W5qal5SVrGIwEVuwQm1jLb00qc3uchoW7MOUswdZgl68WUv6wv3EfnCT+g27+pm5W+C75kSJ0MxUNS7raqKomMTGdJ+fO3G+YIOBCJTjblbJJHsVD7ZAgyvk6vl5EPhjTsYhTOKVIQD9oLga7WuuW8S7Y163PnTHajxDwOvGdgi809tGMy+1O2K7kOzwNwhZF2U3T+UuqqZI+Eu5cvhSlXsWf4qbfevL2JVuH3.9c0GwYKhPoRZ5bo8fpzGqQvNpe0.qeSINHllhXzH6xwr5K.185v1QazbpcR0maJR4InZzdsQp0+3dTcjYYlLKinicT7prDhKA1bfIWoR.vH4PyqHElafvtYA4btSO82NUPB11vvw.ZE3gBPEC5RaGKLXT1gJ3+zg3WoB9HhELBhmG32YyNHAMX1gGV7YGYh6KIPesa6iNzVytlJL.VnfLFiZ2HkrnJzeAAF9b5AuiiiiiiiyY+.PDQGAMJA+4ecKgdy3Ejj.+lX87a3I9ndMwZUhTZhXwySaRjGw0hE5RgZAhsAZsoPU+NZ92+Q1tGgIrDXiIVzmMNEllMpsfO9BRWnjeeExEmiiHTNiobFP0NLfXkyv0.xl1vph4nM03XR1ZlU77ktV58eIE+Luvrfo6W36Q1BEhXiue8E5exfW++OKYlqZ6G8SerIa7ga1rJMF6a81Md+G+dS344YRI9HHPb6wUJuxlvAaBQkxkS+2s6uiroMrJg8VE5taZyaJqwSTDf169q4sjVY+0xtUp2SeXGd.zdWN0m3qgQ0Spn1pULn89VwV9EvVtLQrOnXQw.v7y5QdEYTxIklKfDmy2J7h+qwzpO4nsZ1KcaP2+IwCfkNL5v8RT2KmFzrRHIChLl1MlvUGCvh8H7XZ9YJyC3M88Miom9Z2dOa6fd.y0TLasXzGgiLeWWWasznbEh.GGGGGGmysN6uHzQExhoCjizAQs0dbU+fZmLkowI7MUmRL0NdneioBRXqDjTmMkezzs4GUMQnsQaIv1tGMHoeSRnUHzVgjZ0NBoZxPlssTTOYPbU0znR3Ecczbl89ALKeaeG+xTQJmAxTtU9t+S0AvFqH7oNg1Sr46Ys.oRAc11wZt.LAfN0xmLtBuegs.K+MzdS5RZr9UDtSq.3YTLI7ZV6J7p0oNafuYOFO.SLpo5EVcFR0DBOBuK4dti8zpWor2I7YlYBd3SLc20izkiHPac+7K4lZE.Re80Z8sPtAn4IQzlXvFqhFaLUIdOOJZqxupnpJRqxtaVoXwVeVOnfVjR5H4PGI2YVPYNmkIxo9N6BRhUKhWIvxRv30AwnSonM7Ldca7RbIIabfOwynciPgBLVox19ul1seqglwbCapaadEQUD1YIe1YI+aQqHpl0aGZlfhkDWJX4333333bN24f0.hnL7FkuaWK3ZCkoYgdUXIlYXQxzxxZ+jzkYJ5vbBS69G2zlLAKTlfExDr3fonCSE5IkPJARIP69QjPlxKk2DjRFm1LiKcaNpztoBCczaH0VWW2d23lB0uv1lp0wUlNlKe2y9ir6P+OkQpVU3AlzdMs6+7ww.VKHRjoKzJz5rSO0tm64a4gVRBSEoI87PQiDrwM.nyKfYVbf4GzpkrqVcpibc5IIQ.3Wg9kGZaZiB2yj97rwB.e9cM002P.7M30yZ91ltPGmgzRE5u0YIefRw66qOe.DVLHx5.x1y7kzWLPVyHLg4kGDlHnC1Zyk9Um2U3kcYCm9OKWS2Xe2k5Ikphvag5A8Qbao+LqGQl0yD366uLHX49ZLBO.d4xgRsT5Uz+RhAXTxIakLdizGr+t5xKIUEnUAOHmK.TGGGGGGmyCNqmBVphgBUkK33IiV1mW9TsGfuWHglPupMM1EjLg2LhgjpQ7DqFapQslMvWMXsPrMjP7wSmaElCPfBFPiah1roMpFXweFu2LAwak.8E1TewYnzKYvUmoq0g9RkR4s4Kq86aazwSWcuUihVGyL8JZ7cvq8KDasEzeS9C2CbOYUJMgG0DyjSDstZQH3C98rruQbSZt++Nq7ZaO4y7v1ZzvhowTS91ZrW9nwJAKZk3268rMSg2330Y71amlgwiLk9NmUEUZKHtq2XtuC.sym1lqvR0RCBfJrJDl3Ees1rcLUpfTrzfB4xJivDl9FAfpRlAxqEofI2buOVfg7Fj2PLmgollyYCxo9qJdbRfIqhzYcqr6s0aP9b8oep+tQLRZT1WkPUMMEQ8Llf5MpSR92vzkJgLyHG0q8w1WyRkvqTwcXgAXybDgK.aoRipiN2yx.C39r2wwwwww4buy5AfHB1hEGMNW5z0dpK+U+ekCcHnVp.dqKQ4PmLfKOog8VMfKZAwLcUkmrVq.EpYEd0ohXwIMXrBcEKLqU3PlVCZppUXwAVBaDywLJ6SaxAqF8W91GM7q7TkmUz7BxfV.SQxIPIgyfAa+N544R8mtwka+Ws9kN0Bezi7PSbnYuc8DSrom629W8Jtjs8k9lAaCcO2XtHJOlg5Mhd3+jo5367rMeewfkfPiIYpC18JnwU7udQ0uhGXlw+3dSsml1nKp9rURM1aKyG9Uuux2wje8m1eU2wlphjW4C7Wnu5u3tu9iWWuLqeBjTs8UVzs8KdnlMHJEio4JUlhjGA3lNH5i2.8GVNlUlJRR.5qGCiLgEfbuXemPJPg3BjWDFzMHzeFkZQdlPB9duiiM69u7MDtnK3n1Mz29i9AuqKvGstQngIRLpJgpmklY6Gy.uAh2xl2W7sMXdc.FrAfThzZAJoEvEzgiiiiiiy4emSxA7AxkW2XeozMbASEut8Ntke+wllWab0QtXS8s82WAdSKdZVu2rbUKbVnyY4jIqxUFVkW2hZxk4MKWRvLC8LS1r7IBpyM5MC2n2L7lCpPFlkqn8ZrtETa2GZ1nBCNJekmhYo22SXVJX58SpIHux.T7LdPW+W21xqQ+8PaWuzXCq1e318hEupG2D+se3GYz022uzpRQLCTxxWXJSg+fC10sdeG8gN1TZWVoCijn6G7h+b+4OY.z38+weZOtx1adI8H+wI8rhY1iY0Cu6+skW159W2wMbo0FdiHC.987G8LusevDweo5VevDho2q7SYVN0lYoDUlcD8HOBFzAIO86MQ2XM9Xgl.MYlYv1QGu3.LaM6GzJHDcPDDag7CZJqOfGp3B93mEYTCF0fFiXPW3TDy.4022.OAaovdzw4Bz3SfGZjZ0nXzXALdZ6Hi9tIYdTYyaMebA52.aN.JLWu.QUg7m5oQmesg3333333XB4Dj+...H.jDQAQ07ycTUxpa2eEGbGscki+caOidv1RqECyqX1olN74zrI+ie3qrccGYBzh3UrHd6PyDnZl1laKP0r96PyDri49eUy5+IevdSj+yu1jaOO9aOO9.Fz7lLpFbsplJ8g0Ntxw01SuSMLcQMj75YTvV42Y5v+levkz4IOXlknG5p6oukIasaezP7i7HgZvSMHpOnI8PCwX8HgRxEa8t5e023UpZ6qU2dxa8yu1j5C1aW5G6RVYucKGpCA0CTDOESfhDpBAM.rHdJgcpxRW+8dUSpKX8GW6Nqp94zbdjOqO.alLAYxnAcuVcARva9Hh2a5EV350tImFhl2nJFUyDn6LcntyzgstLl4e+q06kmiZDkN+nHJpIWZMryKUWroy7mHbke0lgq3QaX53CMYWo0EcsqVSonlhjyCf0pZx1dq5J759ierDK+qzHwp2Y0fk82FYR7acTVg110tZM0C16mLQwVe8RHuZPyaPUAsUy5rXQ7TEyNzLAmmO9cbbbbbbbdkmpXxo47X4IyRlK70j727NVS5CqcbsplJspgYzcDz6m78jXt81PN0Kql0unlNrnlNrXQ7nUxwO+l2baz5xsFj07AdrlmRWXFU6d4E+18vU7ZtQV9krw4B93L6r8p4MaQyD7vsBRpa8KeIqruUKasaCZGf1lAMPPEAEOekDcaI4BTuK5M9VxnZaYTssUbvszVu6p2DplMole0K568VW0pWZB4Xc4059BlXj.EIrFRaJIVfJK4B+qtf+levJuRUaewefeoNyt8r9EKhWVc69sNdTIcZMrqz5hlO.jtuJcAzqlX9iWctAZ1JniVAfjetsWLXNWPHmG8RC.oqeuSDt7Gsd3xezZyG.R90pI2YZMTyp9P1joUMbY+wZ6otVcUdK3dmNbkOVT3x9xU8R86bxqZs5BxmVCKh5oj2.jf7pIqp9mJHDfhmVf9mmO9cbbbbbb9WfNqN3y4qDSE4HA8szlcxS8bOYs+p+rm5out25+l88wnGlhNF+uNSWg2w8njU8gRR1hHGb2+pdEn.2K2qcfb57KdbeZ0X0s4Tkr518ypa2Kqh2ZKPXzIn8YqPmo5lTe2W+s85dg24a4.7ze+GM0TOCedVW37kg1ehUn.2dgNz27TOUM7aFwxCh24CbEen+6ap6Kx2m8qmdRL4YrR6c8GsluxjK5p+Zek+9Cuezof3EtxEFwdfxTId+cQ0qb8QSd3MeQW3.qN3U0JpHqYtFPWHdd0Bu5aM8kMzX+6Cd8W5Lyt6cG8K7GjX128DCqiLBxAumujW1BsNVRkZ9zsRPDivjmdPVpv.4m61G1VpDRoRs5AHyuG+TWhhcdEVLnwvoUuDFscr8MJQstzP06ArQeeL9sSMM5vJ1nFHAFwaAQUSf+PyfIGEzMwWLPUZRgBstqkF8Tqv8AF.atbnYnb74xiNGGGGGGGG3LcVA9IfpXXuYCOzdGuiMNvt+fie7feG76.IQayHq7p9cZ+U8gFJQmWQkjs29Itn6llO6iSvhZCCKCBrnGdenTBRtNrceCXO5hwKdbjUecsd7m7owuZS7O5ueg0Vaju5qUO7A2jN8T+xTcFP7dS659Wwe+Fh51iZkqKCvOUC3R2Ql.xP.GBXeAJm3nVVZ2VxzZfbB4I8HE7moOLqChV5osn2KA1hkDSN.lLigC0pbnReiFepWWycFpyBdSLBlFOOxd1DMPjWLLm41GDQIsF1Ezwz69ldZQEsyUssKYp.pxtO084T44uHX+gMaGtNg94WJpYfz3+PsSmy7Lenm0OY1jHnwU9Z0Zes+2tnquAy7P6QpqnFAwlt3NCG8d6yz8dIYkI9f6yqq9SA9ZT0uwLcrpOTumDpvnRyhjyLR9RxCbKaQplYgRpx4zx2OwLHZQZEjB.BC5972wwwwww4bpyIUAKcGUhW4TR8uz+408wdG+g6UNvDG++b85GuMclSr0o222oZEuDdz1J+een6eUOizQe69Xcj9jzwZsAgI0HRFmr60TalCLq+g9pS4Yq78SQ73gSXe1vlUFYc5jG3US8oWuN0jWO0p0gINJNfXaOsa+E2dode7FqILX+cED+DOwq.GLYJGCYUVIvJAXOujAuoLHReEZBv99G9FgN.D2JHfW7LO+RB.nU2oVFFhoOhou4tter3wZTju+OV6aViHCG8i2iqyYak.57ztrfm.BpE4D0ZEznzJNxvQGoun0tNBOwygfV0hMNlvtiEut6ngRmLKyBa1OWwsZAzgxbwP4cArUnvgfAGjbj2U7AbbbbbbbNu4rd.H.vFu43Cs4sFesYWRiu+Vur+mukO3tNb4mN5+dy3JMZVUSpAcHDu26Pmc+JMdBopEjjso0vqJfeUgPDArZMnYfFW2CZ.lXvDAwMfZyPfpZJCG5Woqfa9K7duzwF5YlIU+ap6F6e+uxbXzZVDF9kb4eH60+jOF+SrC+iO3verCHw4eNPleVxlFvJJl.APEwS.3B5h3mfbgJEaJHM3S2eG66sNTcZRcS7IiUhwP6g9IdUMhO3c+cSu567BFkUDAPoR3MbtghxvJ8JO1iXKNVII2Nx3QxRm5KoZeD4lELGGGGGGmykN2r.jKNnrxDsGyJiatuiDG8m+6t1u3u+6rmq9BWp7muvDyJs07vDVcb7q7BhWiigIZR0T4EDpLdaZkCFpSON5ziq5LGHoN6QfpGEpdTLyLgMrxwoinJzlnb0q27gu+aek2vW3ym94oeXhU0dDzg8jWvIiekpqOKB142l+pdk3w8G0S2YwGamelvomdcs931fbpO2mtABTpwlXCgphgiz+rq3PDvJg1R+YuLjl9hIv34sjPIX4ImLhj4ofcnQPJdWYzbLpr9LOhsHkdoOs80iq3C3333333bdw4jAgHCPL2ydZNzdmIZI+xKd5Uc8sU48baK6EdluXe20+gWe6utdWp7oWbG5zKLYSRIyPaxzRJNIswIIEyPRNII0ojTZERomvqcYF5xqIc3qld5RNdeqx7g9O+uoyq6a9Wm9y75+0WZMNwIf00STtbopODD8tGpG6Ywyx6YyYjvMaG+7NUEVyKMPSKuXoMXhYZUw21F+FMKT.yV3A7t36enFouYh7hIB7mA02hw2fDFU2RiAyCUWTud69HSYxyHd2EiYFX.rCL.1Rab8VFczXfH56r5uKbbbbbbbb9g5reJXop.EjMr6EEvMrMs4Nq1LdhIi15Umb1Mcsc68QWS5u+G8Xy9QF46V6d+TOvgtlcsuFukiOk8ZqTQufoNYjeiSa3Q9BrnEZlzXPW+RMehEs.+8byWWmkeaa9BmfE5qrj.cn+W60u+2T6yx5FNRFHse1hebchIFxfNzKt3sO8WdycZmEbo1jy4YFi.sh5T0XULnkCmO.gBrxwGTx.7Edm+ZoF8BN5LsKDn1YZSLAMrZ8jpnIarbRjsel8I+z6Q6cC8J8UNkNeQR3TSwx.ETgAstFQniiiiiiy4CmSVCHYoeyA4oXl1++0as8uT8n6tl8CexsaqT51itwa7Jkk2Vpn9Vk2T+Qap2uFyxiyyaMO0Cehf+9uyTs87SGogwR8HeMrmE368lu1EW8xesolkvfHVgcVZjnFG0zbjMbh3ZjR6+FWRc5qCUDrjuGakx6576frN8pVkiyOB5RvvAeoeUUpfRXqYAqDHadq4i4NJ4ecWlu8a79KPx+hBUqaiaP7rgXLJheLdnO8GkDC+UzYKbWazmwJaYi4AJ.fNPq.saUArD2Lr4333333bt2Y+.PDQGVyaybxBxd9Hue+wq+wqSZTF76JC.FcGAMngmkkjn4Im7jAx9hLct5v3q7MkL5JuoEEyTG2x9VjgEV2vU2gAuHgXee5xqAyVKl6uZSFsbboqOqzGKUyTrDacqXZ0czGFt+g0O8nHiNvf+PGrkalObNuRDka5e3WA04+ZY2XABxAwkXTYj6YR+O9Vtz56XngL6DPiNbi3nClP76QDSaMl8acqOepq4KrzhfovGqrTnTdsUvGsBtYtY8PlK3C228cbbbbbbNm6byBQUFTKuQhx+m9wqRoRTbPDkQTk7wacqkgvlQk2Pb0tdMKapNyspIKecollMsmJC7YdpliPWw79WX8cux3Fjoi5ki8aPFlhMjZVtpmpJC1WLkNsxJ5.40Cs0rJ.qauq0ec6cs9EWduxqzc7646r3+SerKpa1Ob9G0d9Qb8yMCEEKhctYvfA253UggsC2e+1isPhRdA24kE2XTUsUaBzFlEG23D3ORZ7JTRiZ8vH1hEwrCMiOzZlOJV7Gyu+533333337JryMkg2VmoUAFxTjRJThQROhee4fM2Gw8+9JGL76NWyLqunA1J.TcrC4m5tVoVJysG2GvF1D1a+12i2V2JMoUqhVTxC4FjBOFIKr4zQ28IeVug5pTyAGj3AGDU08YKWXEIOFMHCz7bzwpiyO1Z0fA+QnqW9ZznHs558XgAgzEhkHh03omDsxhffl30YCsIlmrAx0s56NwcdfBMfAY84x7RB13UppBmiiiiiiiyOoNWE.hTjAL4HsERyP4Gz77KpWouanaKYPGNmVOK3UoLTMyBE.5IyEepked+Ck0L7aX3VUtGTfqKI7301HqL0NJlsQtRSDs6NZHK5I8z96atTKIeV+AXoZ9BiD0GoTX7WYOfbUOHme5IxKIMn9gDSvMiNWvCwm10JfRNfuYchp1rRJzFBdorfFZ6CuG56.5Aty5kZk6UxFkxMyqX1nace3333333bd14j.PTEgxiYfw.fIFC681yph+vYpHTdKdL1.1klCcoYPyUpz7msVIIUkuNYj96e33gATTJAF3wajiBBEGuNkWogbPCB0qXScag80Z.VE52NV4U5MPlbjp7jTNyg.sf3RGJmelSHpbzWV.sp.SA7.Hyk8Uj6zhPQAo.PCf8qmDzfoAoSwegXOI9zMdEflE.c9IfbPxCLn5R8JGGGGGGmymNWMCHPlNzQJMgou0mRAnRmucgxyca4Rq4JMn.PN.JCjrpLRePFfMCLH.TPfQY.Jo4yioOPmLCbnQl+IopPeY7TsLBET.RAZ0LHYYHyvuzyhriy4cZqYAAwf9xqGBZGHY6.MS44SEqBuja+VRgNdMTSbsoUlYoFu0IdI23L0ex+G6ZgWzGX0ClmZCNn7hMLSYPsXQ7vs3ycbbbbbbNO5bV.HkohPtTJzgNRFzxbnWRv.CL.wphoTIDFqbqAMMZqaaiCzJspDs.4QHOvnjSGhiHSv6VnuV6WObu1UREAx3UrjXGX.h.s0cnvP.8eN5n0w4GWEHGE3KOCVrQJ.dHhU7j1ivbIUl62CEKKLP9WRfCYJi85VK0erU7YxrqY9i2OpeMwzYaF+0VydTDFhPEs970AZ.VetLlx.YnbrqL75333333b9v4j.PDAqpko.v8CL3o5zyEjWxt8RKMnysv0aca.jGQFkbxQF5HRk9GSn7laMEIjiTkQqvjxij4QrWLGQ.nH4LivPReC1uNvfCZQKbFeLLeZqL+Z+X9K+xeDO0w17o5kpmJsuTTAUdIKr3SsVRlqegnyMPwW90metqeP2ZO4mmb5eG+ko0OMmrJRo4uphCJZt49+4BdXusicAwLidhwOg5uutkfUhXVfY5i7d2ykj7Sdg8mkHFVhIuBEJvWeaeQyMrotsH4Qof3JC0NNNNNNNmqcNaFPDxCkFUHWZkBHLHJTPme7WEKhYjQP5q0hHuUU5QxSIFs0hROeIyDkPGM2KM8s5gdrKEzRYvBalN3h8dCLjkbCofnEon2K9h3LevVEl+eNs.Jfrl9AFhgOUPA4.SINsfD9QD7QAlKXEsUYMh4uIM6b4m+vVNsAmN+yeAEyY5BfuUfft7++m0LcCDi2bMGvScss9HtDPw+QpXUEFk3mrWjEun65xO1jaYOddKNIAKz3Etg1pUi1W2do4vPz7Ozqnxdhf4qHVENKcD433333337yBxqFxodmpyf2pL5Z.jhEwSULEKh27ayMPYATCz51TECZ941Tg7pYtGOY96GpJuj8g429Qcll+mjOpJYzLAo2Y5vL6XKA4UL6PyD7f6p2DE0zgaQyDrCMSP1sm0e0EKlJspgPQOE0nnlMSlfMSlfsmG+h6r09yuStTYU0Oqp9jWMalsDr873uqGr2D5NSGpEwCx6258r7lG7S1ahc8f8lHmlyCUkLYz.5USzUZcQRva4HF+a5voSqKhd0Dm96wm58k4pFR5bu1m+1OCeOw4URo0vNuTcwlN9PSlXYOZ8DKe6076nvI57R0EO+mm+P56LB.alsDjOsF9KuVcAdodOyDthgmNwZGQCWwi1LnqO9juld0tzr57mngPl66.e97qMotiLAt.Rcbbbbbb94NJ5omFUmZ.umdfFEKhWdEy7a4T0a9s4GjdVc69Y0s6Sd07hAUzZSIuQKhmd5C1dt.QxrisDjU2t+KFPxOwD.SuOXuI5cW8lH8NSGlSy48IevdSr8O+ZStCMSv638sr12xlIPUL8tqOYhd20tRfpRQTOctWeEKh2NzLAYeW8zw10r9Y0s6mYGZP5h6L7T6aQ710C1ahcpoC2LYBZs9UZEjktiLA5NxDjNOgy+9vhuDsyNuFcwR3+piZ7uoC28Z0Er1aUSlUO0.NO8Fl3oB.Y92ywE.x4epJbSZhNuTcwl1+vsB.YYOZMu1+vSd5AfzZW+GF.BnR9rpetzZGoSqKJXo+s0SstmKJ4E7z08W7eZkq+RzNUTuah2Sh4tOR973q6Lcntyzgy88.GGGGGGGmyYNqe1O+gji4hpXxkCMWtrRYx3kKG5PrcyPnlGFMwXPhmAR9LPxIgDUNDgSLR+lgKzuctEYwKccTLWEuZnQP5YDjsmGODQyR+liN8g7lfINiONKRNCfdO8Bef161iRiRIojdGU1Sztd78EOlrd6E8Itz5Kbq4rh.M+52s.2ArtaKw.fUnfmvfRob43V15gBl3d6uQAfkxmVKmoP7n4JEAv.HhL.512T21acqipakxsRalBEfaei92wGprgLkiGsP9nCdOeIurEvDdmDKKDEwBnX7Pim8EW2LphoLY7Fgz9phn5K99Vtbs5F1mouu37yNdfJH4Fkp.fVWTsoGdgVLR3Soj.vNwJVjWqSFPduAGjXpkRGYzyuutcbbbbbb9WlN6N.TUkWbVGJZ1LY7UxKCU.CkPnzvZlRksB4YB52bPnsi7Bz4T6lEUcWrfo9Knmw+eTa4GsAg.jePXyYvuDHr16KQVEuz6jfrJdk.V0qsWuNYEg8e7d8.X3A5WWRmEhSUNWq0axYvZ.oDi3s873soMzsWlwIXjBYs.pLfZu8sVzVhhP1g3CyAaCPYcP3280pYuu6Khr3Q9B17J5Id+esjKbyKLhQFgNKrqv2088MCd969ylPK+.dumMIgphkh4jOI2kTcypz6mTCyoH4nfvV1QzM9PZDRdPFzFthaW2ag6yO7hwZWLFTyoVdIIW9oV75.ysF8OME3Ey7eW2v9mCjGobYhGAzIfFn1FfZAanX5Z1fHZJfbyiWnVqldXes9Lerx1u9iLpNv.thZfiiiiiiy4VmaVD5sV311sPdcn7C1JnmAxqk4A7Fi0aQKny.F8wvah++t60U6I9a+snQ00yrS+FIpdD+9xC+pO1d9UefL3kAXf0deAqcu2FSbDRROvdgnR4x0LcoQzEu2lVVWXqAYUrfVFhOSC9.fbzWb+Gug+t21Tsu0O+3K+y8WNySAFKRBCpgRx6.Y34a1an66MsOC5uO3s0YBW6G5Ztt9eW6dkjQt9+cUadKjRyzGP68X4aMQabbXYW+29aNSDWz8Z.79RMG81dv.I0+o+vK9wN7u6XGBui9kwxdowijASGSsHS9UowCNfzHqp96p.gxdPQ7AUwFgo1KvbcM6BRAfaAXrQfR80ZQumi4qdWh1WIWJX8O6MXqJoUAP+eBgJMZ8kAUDHt8DFByrBRNX6DydjFzZ0sGv.ZzBAqKK7bbbbbbbNW6bPJ3TPnz.Fxm0qTwAkuceqNnyBYDJNnjgaNd.VngBHMtcLO+sNPeU+K+DOlt2m910Cs+2jdhiKZkSDnSejatZAjN1A5j6.60t2aSBFmNqYosZ6g1RBAiPQuR4FMZc229ZTpuQiUEixfTrzfRwRxY7w4ivXFt7t81vU2ARrzkuOpfWL9AMwyGDOTQsJpf3YvJJFe.SBRrLs0iw5sC8tG0jYjpBe1JI4Qlns9tim9V67tF8X0s5ZPAiBXs9XUUmo564YtpEbxxuwe4MFbKDdIuJZ+wpNhrlv6P65YKEnnlgKfMbuXUKBVrxbkQqCLBwvPvbok1K2QXH4HLjLJ4bi77mKHdfXEJYNoO003iVy17nMTaUqngQGY++1i1rGD1CMIcOsO2cpwl3NBN8NqtiiiiiiiyOeX9TvZtpRUNMm2NlqhQkICsApjC0irpOoxdsHcqBcaE5Tg1UnsZ30lhIglUU+LpFbIO1eSmq+3Z2Itoa8WTV452t4xdM+WVySoKLipAn4MyuHqmea64we64OymoGsHd528JaWe1W6x9OMPG2PfOJl.kjKPo8EqjnMEeeE+.KXTLRDlPkTKudh2bwdynZ.fTjbdZ90lT+r81y6HS3uR69nFAEwyh3Y8QrABMMxbgiXZWoikY6725O75V+35RWqpIA0ryzECKh5ApgrZxtRqKR7+Wej4WD5jVCQyOWUCKq+N0zg6TSGlWwfpx7Kz+WA+T14mF+TrHzUEy7Kl72yMQBxpI69JqdgdK4S0Lb0OQkvk8v07R89lr60nKLcZMD.RmOjh4lu.DLewIvwwwwwww4blytCDUDsUi0qfRggLknn89KTV25sWlxkoNJL1NvjteLT8IeLQqqgTSRxr1Ppteeplf3ZwnQ1m8Nu6fiBdw2vur7bW5x9Kpu8ROhN0wxZetm9is.KMJWfXjAmKhmV8KcAUmnOzI56mhyzaNz8NoDfWjIQnDEGCDFhrrk+YW+26nKKcsY5Lcy+rDq828s2F5G1i3euvzOU8DW4iO9htj+fbi2An4yiWt7i3AAge0gmdoCsqletYiAaXGHKbo+uWw2Jpi2JWVxm8Wa0cciWXvUDXrH1FPiZRku5886IGkDq.DJNfL3ni..JEfKgXwCEIRLXjE.jsmWLm9KSEAfZj5TG+E.lK0q9oozD67yH18y2P18y2PtmeKhXBrnIOgVehoIZl.L9F76QrsgYzFHjYKALRgljqnUUjhEQvMKHNNNNNNN+7jWRO8X991Qq0cRq3DJlyKyNz.VzxdMHAVe7z1EhVjGSj+JRs5TBpOhBFMqp98pZhKYhI5L3M9FuB7BU7BUBRojbo+5fZxS1Vyzgl2zp70NWo28Lq76B.aQyDn650zk97W0pd+25BuAQPIYRUt7Le9zGWWSZU6HqtceX9x+adSNU8VwNz1VqpIyo47TMSf9DultzOYu8rwUJ2SaBJsuXUtvLaI8N0E0Z1MfcjeEsoSdUK3sdSotFeo0LsHKZcwc+a8fupLp1VqmmV8VjhjyKSFMXgqW613eSGKz+lO9u3kpK9l5US.ZqxR7b87i4KCuphoUueHquRdSqYRw47peJmAj4+80lISvM06bONc7AmLb4aelDq7waFrvOak1tTcEq3l01HeV+4+cWwclNz0GPbbbbbbbNe3r5fOVetLlzj1qTIZ08vGT.zXPgE+Z6jboUxrQXpC+jHQpUhIF79huskbkEduqYJq.BdVCd5vEvtm9u5TKeI+ZU+U9JKbTw1.hanzrpRsi7GqTfUt4ga0bCkAUJTfrzuIMkBxTdq9moAgbwzgxFRYegeP0v5MZ56GPqzt2Pa5BQRA1gu82uv7st5MtRuuYg6KXgYHhg5m2EGQX2doPmM0jdQscno32nIfjpyZq8Sui6l9fo+SumvhEwKyscw1om02+K84tj8dUq279CLMizYqaltbo9pdDL6cng7IOHTRdDFy.PTH9fWSAupdFzmyqUECiAxqCU.yXkJaEYttr8b+kxslYjb+HVmHN+yChfMWNTQvaKri3cVCyxhnIQSFiVM.uNah+RM01+G74pGgela4sKLPeAjqnM2niFOxXUcy.liiiiiiy4bmSN6moIsW9O+ZSpJbSrgVCP93O4zTZToig5PmqC4YDAvG53xaqFoWXjUAvnBFXPwxPe2ot2RSX9CtsuYfeqcU7AwH3iNH29VIB.k7Bxf5vzebpxS9S0frKz+v9bnJ1kekImIouYlnH.qEh0FlpXC.s2u5+MCymJKqey1kbK2Vbpxnqq+BQ8vDlCcvSDx57R8Qd3IdsyVSWTS0zjkrnuXvqhlAf8JdG2wrcLdu9i72MgemqriZG5YlUujE3uGIFezXzi+zYqEf2J5+sHoKTxGcDcqTNZpovXBvpfIllcr2HLOiG0QKfvfl9GLuM2.40hnlhnFk7RowJaIS4XJNn7iZgp67Oeze+DlOOpfHuyCP88zMUSshOcefNqASnIX4XRr1YBhIt7+q+xPJNRS.JLPVoubiFIhqL75333333bt0Y0.PxP43QYz3Z4RouyewUHLRZ+Gh8XgBsR8mAJwR+zCalOKzsJTKF9LKWpV95ZFEADSrwfJJpQkBReerT588E1meqhpaqZ+jHnB4g7pHTPKwnhVDiR+daNyVYyY1J5bUIpeRMzPz3EdzlBSlH9XGoQ.s54ePs5yLZeW9u6S32wrO6d9UlctqMl+pteaGp.AScDLO8u49STiT5JWV2JOk1w9ORiq1Bf3660SOeqfkQTMZU0pdxium39t1T0gJ0WYUai67hW7yzogmCUf5MVCSByx0Y7egKNHM84yM0a3dBQ01QvS7rXl7nVZz6uHBEFx.Dc67.dPAluZGUhBx.Cfsz7ke2hm4UGLme1vvCSiBEvpJ5fHJkINYHyhV2n3awKUHdI6nVCBx9m7kqC.hDLNUDj7mme063333337uDcVc.nBpNPN0lgNzibjlB80ioXQrvfwfDt87HEuqLpnfpDqh.lfleqaau12187g2WqC...B.IQTPTc8FUjH.hIFATgmLPJmg9PqZQvfXEEDqHTZTgQYtTKJsRNzxTQtApJu7lw2OIdyWEoV9qNp4g+xG02NkotuPCZFq5A12squvAtcTKfZ.iUvHhs1e53OPGiumOvGd8lA9M0MJ2kc7+5IMHwwyVQWIzZ28Rrn8ZNL0WHDM7sOT3nETUt+NTQJq7wZ1XAOYy31hCR42zS0STYim7iMSaS82bhfJItJeHWX5O9t00dMXrWHFD7ToYaQg3GtHzL2xPBnxJ3iqBhUPr4.MGnEQM4FHux5yXX8YLt0.v+rmJBl67tWchVc1dwFUEeMtZHRjQLgHlNaXpfxP.CfAzlagcDWhBtTvxwwwwww4btypC9LKC4ko7V8GfkpIyTMZ+6utLxLqMPUjcVLs1etzlRiUMA.FCdnFELAmb+3wFtGvy221ZDzMWcwRIWqtM4Z0s3OvEuo9hPhsnFO7rFDXfRVJVPQAQKnCbZ84hjblmq6e4OD0nDrrTRsoOZSUTSnQUKQQJMpqnQwJwM8vZBvR.V0f1EO6m4aG++kNyrkblUrDaC1cCN3D1awF6qXRzzuyK+fQoHZW2ySFjcKEZbDFRnuk1ZVTFFZbfPwPf3QHnzV0YaOt6qcAMiFASsx3cxAwa18hu8P3KlEEgrf..N12ffxeLjadEjZkY5WfVEC..8zmMDxzgK8q94Bs9X7tuyKp45ykwbsr5TSs.ZnZ0Yz3ZQPrHlTZ8Ynsge2XnDJTx.vmiMbtoQj53333333bZNGb1u2LkHs1G8XufizLpvsstHHqouz.80iIWtthWPGxe.JfpVhs1CbwK+Wp1OX+FvC7LQHlfkcC4j1GA+C8XjjC9DkQ77DQiMRrITrOulCCxfuj7Y+iw5s0Hkd5kg1eRcGeN7GoDviznwji2L1CQ8PLndu8LOY0D7qsg1zc7pZ+SjagqcgIkwSIQDfErdgG8q9qdKGHEgbxNhZbfXulU4jJc.zNF8FaDbBrW3c7Zq1Oh8Sv6Wz0Ol4A6kPVQCykEjXJUBlDLBndIuBpdfh3M8Cf8HuOB79ljns8RGwuPsjDbgFSPuZpnZca1GoROBcrvtI0gpRhbnd2aOYkR6rufR6rjufnBCpvvVxTN1sF.9m4JNfAMuEfu3ceX+mfCTaQIwy1745PiFWP0HTuj0266dmWeLI5sWBPyYEDuGh8T+78KeGGGGGGm+kmypAfLL8GWNCQHCZKH.iU1BCepA79Y+ruP.G03Oze9k+66CDJVOOsowT6H+4G3806lHJFhEejPNveFcrqa6Nxr+McQ+IzP8AqhhWRO3dtwNei7550+ESmnVoVRtRkHCkiyvY9.suwGJWTei1WboRGfGclzOsAuxqkksArU9+T996WyUruXxzg268sulS9B+GtfLcEHOaRhgH0nSdvME0.CugfFg83MaSqFXk.vjrdbyIRMSmsdMc7s0aPlxsd91zG3+e16dO935r9.++muOmybSRV9prSriuDG6PPSHgvDJMDJifleg31.sP2yrzRK3V1Z2kzlcKEHca2xLyVVZCDxtMzPqcITSoPamoEJMAbfEVzTfFt3g.IYDgXGG461R9ljkzb4bNOe+8GijsSHPgDhVH448qWShjrlKGMm40qmummuWxYYk.YhMnwIl8kg15AISOuVBO0sewiN0W5xefCdfbe6CcnetGLbeusuAw.nIN99+810w16q5a+cd3beqJOxkOxex2dM6YPPKMDL83SaFLKTTQPK5R8lmsHnhkpiHkJUia+sdv1.xIyPmTa3ccw13iFaiOi.oh77VjITH4UkDksd09nZTfF3ZCyNNNNNNNy6dlMELDYtcdPJwv1gJrtjCq6qSclRxA7leyWPX8sefT4d4IhV+EZ981+QruOeADiRm3N+SwpWjUL9HF8X+2ufGEqsOrc.aS0WikjBrv9jC7q+5V1jbgISPUhHnD.TUpFWQwLafGOsVvcIdKRInC.Sk6u4kR8bVAQyOL9AUIjAGzxkEGyd7iCVQx2xeyAB+rdpR7LmXSmYa+8Wn71W+ip88sTRJhc5NfD0qY4KLL4L3erov+8uo2P6eFYDIfA0FUp5m8U1u2C8omXQb71Y5VZ9XVVN5rLOj1+udrUOdM5775NOBSt+NjYlCr4GVUZs70riAO5zLctURXNfe49PeE0DaI.FJeD.YAJQYb67wyJXl8yXwYqP21ccw7BCCdF5zN7XwlDWrOHdhzCqvhLXSLr8c0lsURpV8byVD24CNNNNNNNyWdlNErj4dNDDaM1WmBDH0AJTdD.h5e0lVrrkx2967R9auz0K+kIDHkEIsARRruQsMknVPmS0KQSfIdF5Q5nKvCVwBkodz+5AuVdk8BC.DjWBXj4ZurlpRvS6qze.UrkXHKTwVh2hTsdNKcm4Gd2zMQ3a+SQh5YynzeewrVZuk0ujC3CGLIhRTjmdh8khfAUd9ojKXoxm0RKEIbB6o2e5DqBa+SRLRY66hSmtJiHYWeFkqHVtfUIZLQwQzQjD9m5XewO0BCMHCdSzhpRbvHDslNDZRRrFexXzSqyjjX5k356hnsWWBGpVI641UnZOtcex4YET594KoQCjOzGBeJMbLGBULnDchXrQwFu95f+h5ceZq9WYGLATJAUGQxOvXtcBywwwwwwYd27QGPZtcAwCvt3sV0rEpGWsJVQpEuwMsp3FG6zJZS89+7un+GWw5Luy96SFKgBIEHCwYRSnzCcj986noHDih4hWr7W9Id8W3UyRhiXM8ExPYr.TgpOU63tOoDDifn.RIFxF.pzsHdiKDTTW1uy1h+k1bcuc+slHlSM2ApjRIVDUILdugJCmjNQYxzumWBSaCgmYwsOxWY4wSzcmYpPf22hE0J.XG28w8nsmNUePXBRDmVg9y7.K+28mexDW.ctoph9WuVRTJOlUDhHSgxr8F30NE5i+0d4G+26tJ2Oqihp2.aHYoR44csybVDoGtJzjInC5DVTKX5Mchzuv38L1ew8+wVLlAYXawAa38hR8nIf7ttfliiiiiiy7pmoW7gpJhpHZE3Mkmzaa6ZT2Ix8VD.DoFsxlo8gWf2zDyL+qa6pti2yMrrq80+7SsorWf7WttkaN0ktByQt3kZN1J5yruW3JMuye+Wd+u3OSwK8O9Jt99O9ANloMSG1B5qCTyN6hrU.aApFiVz7zolGTEc8qm9gRTfrylxZAJylVW8kaK591QwN6Y2.6Edd8mns.SCFTQhvlJ7vLkgdSoKZAxd6FQPD5YN5x6LFdjEJPUyvEqJkBp5s4RqKhUmx9o2+zKnUjdAXhg966QS976VoG24cRhM+Z1fRMz006rATHQfF+8sP6cAe7rSBn2K6oyVK8HIyQe5tzbc3qMrgKCR8R+qtb0Dl.IMRhALh2xRcLKoJSs3WRxNx5tlztcEywwwwwwYd27Va3bqeNL6nVwNUofIOqMQM1dKTUxCrUfiC1ks9sNyuR8Os+a50rvwBdYKbBB0F3m71Y51oHgo4Di1RV3U12zjlNjs2H7Ci91GCV8QHjUd1fOD5F3ioZUDpVF.J7T708NuiMj3QqrvYn9838VN7H1sV9p8pv5sAcGsgZMDOkh1FClTI63wiefj9JROJI.uT9I2v58yyNi28pVxjKZQIdvPsM3kHVO8gdEzG6LFRsA8Q57at6eNdCIBkCbf1dqdzo7+G1+TWuH.Qw3sfU9MCO.lIVJl0ObPX0pUov6Wr4xnF7.NxOJdGx4m.oPIefnqK6QZu6c1qetMsJYai91heurKs8VoS7HlYPzdiTQikDcNgg1TLu2W8iVKF.orKvTGGGGGGm4Wyaoew12NgnkoQwpxv595fpB+Bu49FE7+lO+W9q3f4+09YlXmaaQe3elCX9k9UW0L7ylbBVSpSQl1iwx3.7M6bxENs2w4vQSe581LlNI5z3JiB+XGdh3B4VuUPUJpFX14dQ8bdACNnWPP9DCFLn2S0At2F1HTcuMS8kO8ToG5krAusUotMfAU.p.lJDDQt6wK6.Sa3PVo79N956fLPGPkTIr8c4+7S2hWs4P8qMUXLe.IpkGmY7W6o+fStnXPX26IUXhPIaO85u5drI3v9I16Yz2bjhRBe6Bt1M+ESrZrgfLFiI24.4E.N9w46tKFspu2Eb+49afKsadVifRJpJAAn6Y2vt24gzO0adzzr6ci8T3qwS1CHQpXMViltiGIxOzvbO2iJkK2cW0bbbbbbbblOM+sPTsnYSahDkJkGHuI2UKYx+IuqlwG.I9wdfOi8A+BepG827xu0Quk26E7nGX3DYGI.BFYl27mZBKr3YXi8MM8mnIiF1YQz6L0ulvnaZ3ArOzK3OHdLdKRdviRcqAhFMPp+zY7med13lVkDDjwdsuiKPqe.a5dei76OD6H4VY6dAfFTrg2IdoSjgqHQRFnOuOwjc9fsvflPE5e4+sK+V1Xy94Z79252al+p26feqk0qLZelPzYlZgmX6+ru0V2G9I23lr8ttdsuxk2m4j+eNwB+k9mF8kMQacMM0jhjJyN6eKW+wYoPmCW27nUamXnAF2TA07ZRfxjO959fCw22TwpDvv+n4OMN+3fJkTnjTpDlMcg6IZi+bWUTmOzuRmUswMFmnCsTqMDZYPTQHkMdI38vuaRci8gVA0EHpiiiiiiy7tmwW.hHXEAakpkkctSB2QoQ824cbHuccKztlPb52KVrQpN4oSnGae+5SV8c8HqX0HcdguAQnH2vu5IlYGG93d69kzQXqI0aeIwBYGI9p4FiOzpdcdMysEYbFxLUc5FDhVTJWpn8VY81RYGIpD05jkQhdpWCDSYNAd9r2o7J+Obf01pMuquH6u4Gg29URdLLxHwO3Qmv9YO3YRunO89djIi0UMCfjxFl4U9a+mGklvLbs1RMlLd2e0SxkMf7Wk1SvDME5Xi9acvW2y+Fy.1r29jdK8395OW4GK3y7s67IlxlvylpG7F7k9d5MKcVHDsxURX5fiaA3NYyIlLDA8IriGIOa.HOo6DRomZ+Qv4GGop.vfkJ6WtLwUKDvNV6fI9M3NhpU.0jDUiNVGa3QMZ7Lh3mtyLe82z9hlFyQlB4yw1cAf3333333LuadqFPJTf3ssERbsWWu1rLRboB4ksv18216eKgF5HfXUAChGGGr81Yi5ZKstjEJSasx9BY44LzBdqWyHcpBjq9J8ZlawJTEp1f9BFRqwvcCxn5HR0fAUnH.TlR5S8QARJO+Fm1mE3oeyGL5MZnaOmJhVesj0RIPRMliKpQAAq5mRvKoxBV9VW8G40s2oO.QIW5JiYj.13q7dhtG6k7It5a4Q+cZezNWPmNmlNGch+55h2NpiULu8ChmAhLRrz2h8jkr5seI+qez6uCzYDJDUgFdPRMH6.VgcDlIAI0jHHdFTh2ufRmydfpUpfGy1ExTTYt+FLzS02Dc9wN4GdXyxKEDOR4p.Un28QH.LHZxoHJ4U76lMbj+pFljO+dQkL3shIiL3+.GC+6iC2d6yVyT++zCBGGGGGGmmSYd6JftExkXqaG6kWXjPo.JThskeK5vqsTxDnpOVCZTLwQldqhcfrCa22Q9yi4F1PRInnd00qyPmoOsPP.24.4kl28VkrTMNKUiKQ43g4UXUJiRYzfppRYpTsrz8m8zqu7tvUkvxYhkq8EzyeC.JJVhjXfH.qjvpoRa0joMjJYjzSuenq3PeiJwPmKY0DNhTMdj29nF5zmM0yK8Yt8W+xe0YRIGymHRg03iNa2rhNQVALo8XQK6ys9+gc8thgN6ozPwe5ce+9AMf0SFctNWz8tJDs2mdCYQmex1TORsy68+By8eUJglXkX8V.srcNng33PL80Q7FvuSG58qzOwR24kiK3CGGGGGGm4UyeEgtdiwnEUxu1TfpYYHsw3UMiuuOiHXePk3ts1VUX76rQxG9ss3T411tXC6b2rAJkn4VTYpgFV1KULiOzvlLuZUGi2hTcq60Tnv4Jl1pUQl61be+SmW2G+3vIVTJKWPeQu42zpOzW4qmq2ktHxqnph1MIXLdF7SajEuj+pqXOStnK4jG4lhZLlbp65KmbHA6VxEXprucDx+goh4avz++kcI68nugKciY6kqLDqFg5IdfJdIvKc6TufW+kbI0a7KkZsbpUAwUxVS2zjKzVOaF8VY8Vo5rCXwCgJSetEPtlmP5XUnv4R6rYmkINOKS8sTLtJCpEKh2.EqJPAp.BhvA+KvZ1KVhisHVOHsu3u7D.rhUQh74eRZhANNNNNNNNOCadI.jhJl0N5NRdQ22ckJX3epPP3NYyIxNRPTA9JgswlKBADeCRFc766m8H5oux9N9nzq+gnujSPudPum5TzyDmfLzfjbgjXzQGxevadWRdU8KfJBpVHPsEBJpEH3bu.dZDDxxVVhvJ+EG0ikFGccuwEMStb8Yq9+Zses+hsnoT9CRx6rs+ZilIyZ9xmZIW7Ccn2dzEPXxFY0NI+6CW2KrQqxTxbc0w12Ftito615ZNC9SOycO1jwekqlQB4c5CHunO.I424006f2+L826yaqGeh24v1rKml0JgsPAzp6stMG0iqxfJMpnT77NlzXWqT84pJUB.xlEcnryELZA.jbKDahXBI5jgD2VESJw3sBoytu0GZ5womZ0v1M07bbbbbbbbl+LuTCHkQ0AFsf+ZFpo892486CDNL6nSAJ4CZHoW4p8Z05mOVa9ID0lRih5arO5J2s2t1z+gTa35FW5s23DzKgc5EZebKy3qgm9zVhFW6brSDg9HR9C9wdr7fWMJYgRJAnEnjToZ44Vf0S0bcO5k+etuooQSJ8A1exgdw8DMzlWWzPadcr3qqrVnPYYckznQeAzr4g2tI8h+y3NyNf4e49duB2Glba4fQE1d43J6IHhJ0g0Ln7N9GOUxQu6W4Lulg9ZIfxs.RTeqDgNXbm6fDuf+1WxL0JfVkYmqIEUJTPr.FlKsYTXCmDN1WwkBVOmWoRTnb43JUvq.UO6rvo9MRLPyd+a9.Yim9e9QL3mINwJ7j3KJkj.KafDxdHDWZX4333333LOZdqHzW3pdYgM4B0Et7SonaQEQ7TJFQd7RV6DeaKBdPJHxh0ZzVs6K9A+3elY916bJLoSKFOAiwfUTMJLFUUhCsPGfPcpsyBIGjiRd8kCEFlZTJtPgxys3pmRKxpZ0ZJPbVfgFfViN5Z824cbHukeyKzdeG3hR.GrUssd09421sEM0J2tbiiNsGqa.dyWS+wstlL5sx0XC1FlOzlp5Gr9b1cu+Ij2zcsh1uo5WmI26qRb8qVDNWvQxdZTxaUTJlpXKJC6Ut3P1buZ7pWpXLRYaEvLaN92cRxOsawiOWW9RXpUFsPAr5rogmH.kEKf2z4zyj3D6wWMKKD+k3a7Gva5G5+xisf09mcwun7LQsZtgQniiiiiiy7m4mZ.QDcOa7l6L.A1ie2+ad41t3qJ1a9FJmfZaU7INcRhRkhNjhllzxzZJlVRZmxlryj8ZZcbOs4o7zYNkHMOowK7LI7hlJousYZea6zFa6L0OLw2XNItdtRw0njsFC8ijgrVgBXKT.6UVXEoGubfdeGYewa5l2SH.Wyqp+3JDXX60ipUXHsY0OrLx59oBGlZctbYjvqVpqUqBUYPcAK.szCdbuMtljJ.0+8d2d0u6yV6Jg4xQO4YHyFdaug3G5c7NxTjg8NBOh.Pe4FVyO7vl.MvT.wBBTVr64nnhmK.DGfYCvVPUA87Kt7nAZhYQK9scIQs9lIDscjXVfwK8fQKqM9iN5i+hPnJlmpCsSGGGGGGGmePL+sPCApIBiV5C2YaaIGk1wZS959OtVgsUOgmI1jxD60iuRZCjRPRZT5wKxrvDyHK1bFYglSP+53r.4b25QNAokIHkYFzW6UlYKjK8t3d7JRYfRR2KC7YWK1S0TURALeKNZyOG60r8s2sMm96MTcufriDM6TQWXPzQZjMpJUrkKk2L6yaLUq..AAD+p27xhus+5SjnEYTpsuVTt6iM.23tn0T0eDA1Iq387dZmkgz8yCc12el5QpIiM7XmeZjI4164FDglmlc5KmeBjHJkJQ2zNDzm3LgAnXQ7VSFZGmfYn89OsMdBeL8B9qJ89F6+9dZco3M27DYt.OpSNumj.QjmvMGGGGGGGmmRl2RAKkRxlXCdvdr28NNt2qdyKKNWilBi2z+BGP9e2mOoRmvHhW2E9nFr9JVQnWOCsh0y0wdhhwpwX6DaschHtkEKWTZuwoUbZhjR.kkx+nbmAhktq4xBcGth.s5tj+xc+MlqTS59sQJHBhRE0VjxRgBDqZcM2sQS3Xy9vJ5bOlkoHjaKQ4YXukCZ2c5fNT5NnFCaYKEm8OjCKyEqQe8gxwOuWj8gPmeDdT67i+pNhDD.2hlKAzmVopny18yD.sbYhIOd2vDzdz09dd966jexi3IqIrSxKHoQWa6NWL94pie8hZ7Ue0R5c8gGLZoY6yTkAkFMfJUFItaWl6wMeK04BZAw0c0bbbbbbb9gyy3AfL2UQcqasr2N2Fgk.Xy6qycy93Ku+Mj3hW9BsOxQe4+Qb5S6y2LLMsrBoM5zFqz6h8s3mIhnlm60YSqvo8sDpgL9jJKNcLl9hGcoYrOBSYaz.towyaPGpawnKO9sAYdmHZYs6ljHB1u+o2RIoFXggoaVzTRd7yt7Rm8XPQkqdpycknsnp2Tnj7G4GAN+Xrff+c9EzhBEPeI0H7q+7niXi6fDmx3uPz3kpgmhjG+toMP7sbKzFv6AqOkgbXqW8T9Thny8fIm6KDo6isq.1cbbbbbb9gz71NfbcWG1pUQFdf7RsgFxxVuGO11t5Db6qN8ikahvK9QWn8UOj+Yu98SL6suLdJzGWKgB.iSnLyA5wlb0gQ2J+TOthmcrg6tBokOzx6tnntWc1yllSLOtXoG2b237tJwyt6ImuYesV9wc2UsrTsJRiFHYyhVHXtgUnzMZl4ty85xW+mKqJCpALx2yThpHkobkR1xabmIWb3lLBMSIVqhwJnhucR76.FJCUCvavJvIF931QazKYJ8xZWlAAsjfHhR2cgqZkxRgBX4Gs6xniiiiiiyyQ7Ld.HycU+qN6kp8P2bUOFZHatsrE5C7Zr56M992cRIY5MF862X16TVXZvrLNrIjUZ.HAGVO325iIW7UtVKq9mlPVchli0cw2YVN1lTMJ6PUiCpVk.5NTP3bKT+mDl3yOwWqRP.ZP.Z0pHHx4R6EPEDMGpaPx8bYpJPIFi2hjiWQL.EJz877t0CRduR6XT+fMWHr5anRX+6fLGMZroL1SXTISePx3VeweiQRE+gVGP6JUHpZC727PqKBpYkB3muxawViR1JUPlK+B+2aSWbbbbbbbb99YdYGPDAafh2XCOlbU2QPzUwHR0bDmGLCLPV68+F+L8CaD6EiQZhpKFSuoPNvpWY2DNuCR7jqzKk71Z+figYE+Lz9zODKfEflJKsOEvhuxfIIaUVePNC0AsRcKEJpBk+w6VL54xkdK.UpfWiFHv41ojf.N+cz4rp2Do+4sWnN+XoRkfRCC.U6NvM0JUvPiA8tu9a68Z27BMupCb.oZYQiuHs8Esze2qX+m3N1izyKpif3CKap3CiG4HkHzrXwQr24MgesZzFsQHLrWQJy5CxYpCr2p0sAAy9b.zs9Pbbbbbbbb9A27VMfTpTUoRIrqt.otj2R9PFdrt06vvXju5a36njIAe0jBRBPLlo7Dgy0YmDAiE7CUMN8iUgD342BAOjPOzo0E+0dzELXiFdKM6.FROtsdPNSNsbrNa5W8jj5S+XqrYeR2slyku8yFzxZ2LlSNhqiD8bVhnnEkZTJd1OonvrAr1.tHfSBrmu8LFfoOXZRs.elIN5jS6G2rWjzVwaAKtmN3M4ZHlsjyOa151RYITpovUuc+Z65vwCM6SWZZJvYCzwwwwwwww4oj4sZ.IaVzBDHWSE5DTsJ0JisBX9ha.usqQKyHgHXvW6NICrVPPPQQw.hgXhHBwZQEMNpW.PiAZwHUIJa.9Sy31FYgbz27RJWMW.V+vFfyYueOgfJJHxbWQ4mrE4M6Hd.N6fHzMGPdtMorBkU.QonHT1JBppiDsZxamjIMunqGfh9LMd5BPDM1hXLhWeFSpK9LS.otPe7tze49hCFZ1T9iMkjabmgTBJWpjFPVIaCXD5NabdxZ4uNNNNNNNN+f3Y7BXdtElemCjWFrQCuqi8ZBBxKegh3M8ZkD2A2LoYl390IXY5wYI5QYEbTtHNFqgiw53DrVFiKTOb7RrGjT18a7rGP7iOrlJ9njwdr3z1IrUJivHiDusc1Q9E2cGYng6dkZOuAy1OY37pyiy6m9csXu7kvjn+GevGw84VT3y0ToBlJUvSonTkRmcNczsFnpYqtioMsHiBkhysRBSIzVsmJIpF5I8XEyR5s8wd22eGCdiOv3lBDL64P2640PmK4Nuxwwwwww4GYlW5fRhfc7gqYFd7ArehMU2P8ojuwjWThMOzZgE9O5kvK7foLs2cBSyGsGyL6sGY5QyHSMZZYpQSyDilQlbzdSL0X84O0tSxTjhoHASJFNiZXJigVem.JPgBD+9m5phV0F+qhqMzP14q7SeqakmXwfKvVRbtu96yvaSD4b01wrKzSK9DeeQUzY2rjt+NSUe1c.w+bAg3Mka2PdtDUwr9fbl0Gj67OeQY15.oZUjr8tuvbTOFDpuKhV70Smdx8meIp1LxJFOe+kZjDK02jBkQ5Vd4UqhGfgRe2mOMa8IgHn+jTZM53333337iOl2RAqQJSHkqYTJFxuQY4s9lGL9neC+DWvuKL9ir3KmFSljIANtUXf9DjHCqH1fl1PnUX8ohXh1925G6Xq5192l7q1VsZaqUZIvK5ujqT1REKh.EpXqwrynfJAdvy7KR55tNrae63ADS2f5rv1CgaHEbus47qeiyyr4RuktCxbKpRdF1a7pXFQ0vuqVtKHhTVQKQe4Pm3CCZjaWOdtrzzTxx.m+43BvbCiaW7yDC..f.PRDEDUPn64cd.BCMrj7NGR89CID6j8HjvplEohjtm1MHYlaoT6AQzrADC3UkR5byglt6hRS46Q8I433333337Cr4s.PJxWvKKCoahMlXmPzt2eGYi+ZCDuycdnjaJXgQbsYZ83tCo77Y5ld3k1.vTds85KboMuE+T66tdfF+EG4L5VsHh5Yhpu8Aurb43gqWTi61oP04JP2tOVOCOslqVEOUIpPARVs5byhb0.x2UvGm+fHLH.sX.IXPrG4H3s8RCoTZXFHXHat53WW0nmXPHNNmuj6rivZFe1fdehTX1.hKxPdkq8JhxzRSnIwHj4zH5BU7TLoDtH33ue7J+gIpX.9UpPTAFQpV5bC+x5YynLx70QliiiiiiyyVMuMD6JwP1FLrbur6NRAjI2zBsMXb6w85IdT5yxoZFwoZFwQHjS0L5.yXBOZRoSiSOc6imJQmuSpDsOdFSHY6axG4WbMu0VVILBevl1mGXu22YehJBfnphnTlJUEy2+oO9SOWy0PpJUHpTILOvCPpY+wI.wBU73em4ORo.hKkE85ttys.xopizWNzAq1Hw4USHmiHZsRc+80XWvIOW1FWSxyd9Uvi6bME.AJ3CPVV9YCjUNBpM9DIIZJEIzSj95XOAl8c+3onLzfXqSNuEW5KkBf7LjYuUqamqE7NOd343333337rPyaAfHHlx7JhmcMPwe4cNg4yuyNxfWehN+K67PJYGvR1QhHW8XxNRzpWcpvK3BVb6rYyz9XK6zs26hSz4isrw5T3ZVcGYci1IF+TBBX0NDSu8kCMeoYOdzhRcx40fA8CVeNC0y48LUPH228Q6R6XsIOxQPd3GlooaisJt6+ufkum0+QdC.C2.YnBqMQgBXozvwiN7v9MygLNXltwW+60qY4IK+7cdNnrCXI6.VNuzkBn6X3TKgpUiBBjDetsT0ToBl9xMjldczwFte+3nwBU01FwjdlF+mGYE.EFjDCkEMc0lx1Jcoc.Xp5OxYO+sDcK7c.T9tpUIGGGGGGGm+c8L9BHTEipXxmG+.Mvjaa3maa3+k1zUE8wyrp3eug6SO4l1SX0p0zYKrUUDzpxxm815sUKMhsJqtyGmUE+0nRhAKguZhTkNVCsSZrsr0njsFkr4KgIfQjkRed8ef98HcSgbOy1RdKs40EsssQ7l1DIna91q+fL70q1XP+gFA8l3mJTon.PuCMjcZvzOGvq2Ra1lmg8lcrV+c8fsmOOpLsKPjmqZtNcETyhJBUJ+3BzMfQj5jy6VpjSutqC6G5CgOCCQShIy.+wWrM5PpFOsuHY5fYAYZMAIdYcPnPQs5m6T9UaLtAJo8k6R0BAEO2NsD7CvI2NNNNNNNNeOLucELW9vAgMJU0q4gQV+VBrUohs1vCaYngY3gUycNfJ41l5maapOaQ8KjuhL2sxinlFUq3MxcNb5kcXLi7B175QMXDLdRL9lXSkpkkhTlZTxBvzLtc0qdQcSqo5S8LVZJUsJRgB0L0Im2N2IgUpfBBTDIed7.k4Bt3bxaZv3l9R1QZzXPuFL1r+6kjN2wMKWHGPN3AVMSCFXnYuOBBx4Br46WcsT56SW2x4YU5FDB.4M0CxYla2IlSspGyeu29w7qd6j7duW5Ta7kqmnCcjEh0ZOVBjNFLdF75s4R8H4ICQZLXV+RW2QZu9rYzyuE7VMHfWM47f7FUwHcm+HNNNNNNNN+P4Y7hP+bspypdUpzss3VPpFSkBdW3Q90RMd0Wcz996N5hfK.sMFNCRO.ZptKftmd.cFjC+2ie3oNZeeya+CtBN7m8dQRJXaYQTiBDL3fdqmLZ1pksEBJpCR0nQpNh.cuhsOkaYnyUCFeOVvei.z.HNGXnwf9ASOsYgbve5IJm4SVafcsJkrSKT1BHZELPdgFia5u+98x7kOhdkO7dpGCCVlZBdB6Az87N9f21h+uNy+yd+EnyTWCR.XpppEJITBn7S1UeNl8Ke+upzhfsapnUypJFWaT8YOpyiKHaEPpPUsQvfwib6S5U4sRGovOcZJToE4QRLIcH5jyfsSZLISIdKO8Yhw7nKDurOPPH.2Zg5BUtwYeHKoCh.jC3ret1EjqiiiiiiyOV6weU4yssD41klXf.sORthII4ZlhjqeZRdoSSxKclm3MomrmgjWZK7WshrT0PRMgfMkAcIKP9SzO8FRo6JWhyqVOjYmmFFdZrPob6ZaIHHeeTTm8wsnOnBfGpJ4101RT7gFLo9X4Sqe5Mz+Vdd9WcuBQB8OyReM5Bx+ETeBFLoRQiVbvj527J58TehqbQaXol+yI8P87QIgnjPrhGwdFTgjV7Vpx5dKu7KbaZO4TMwfplbPsRx7p5OaPQlb4zD8OntDIwqZLi+q5XKbs5hV6aRSmWUenhWEB7lKE3N6e+0hlhZ2gWWkJeWyuDm4apJbCZpEbY5RM89GcpTq3y2N0J97s758O5TK3xzkxFzTyED7SnNlN6O67u83enw7P5fIKtsKrmYeu1.U7XPM4ZWql1O4a3LIVw+RmTWzC1N4ELbK+9eum4077zE7PCVIYEB7pTAu7eg794zby0LDjhJFzhcuc1OS333333337Ct4sEPnJxMbCjjh48QKZxuqsnG+tG0qmeNhHdxEP3I6kvSzCgGqGBOVFhFKCgGKybes17f8IcNRpDQmjdzoICcnGODiENwu0k9tYmv12dcpJABfnJRkpkkhJTTepG.xDe4GxPvxa1cWGJ5yro3EPb.ELK4u6clrT1AL7kNTxO16a7k8uLZ7m.02S8SKyz4DKbzQwmJAQTor7UO4QSyQiR85+e7sek6+z1OPHPrmO3mvJhJILXRKPBrfEKG8e9ydhcr80DdTR1O30Y2GQFszN7mMEqLquNVw6710iEc9uxKDGvfmM8bX1b2pX29TLvYykemeB04B3HuQDrOY6JQVFvVZKWZmYeuNADXCFg3M2K1qZ8+sqSTsoX77jDC3KIVkItI9iOcfIfJJ.+JCMkbiMZJHceXKi18blRkl2NNcbbbbbbd1k4s.PpSNuWx+w0JEKUyxP6HYMHdek1QmQ2rzQhahOSQRlfDR2aIkSO6+eBRImlLxDzi4LziYZR62hjdP5DxdesOuDWA8zJj+sEZO71yqPkG2ya1pO8RSjceyu+vhMpJUnfYKrxYyCKQoRf2X2zvY9r21kIb2GoO9h1E8e6KO48NQa8hZRRvquV8c4KMZYWOl7LjgfblWxlVB0t6IW02dzvs0wGnuEhrhUt80enitjWT6bI+W+sVxBecOe+Wb5DQfNgg3oSE9n+Y21TGidmbL7V3FuV69Xyc5tJPMtwf3YlFKnnpUMmAceyfsFk5lpU5vFZLnOMF+rWg7Rj2Th7lpAAmqmI47rV2wNOjWCF2TmbdpR3ZW6NRMVdj64T3eDCJwmIEVBMldahIs708H4irLh2zF1Yhf0myr5cOgI6YezNu3UKKVJKtT3ywwwwww4GZyKChPUwT81OleoWU+wUqhvvatyMrII4NusAUV0U1yKXiOvGXQoMoRl1qOqnIRkTZFi1WReS6vVVOeQhLJpQzTHlndSZFMiw7.eva5R9ri8.QyvqNSb0r0siDDPYJoHnyN+9TUQ3oYPHm7qhWPkpQT.aA9y72xVPutAaHWZvEpblI5YlvTox+I18+kY5naTwCkDwhmWeczVYBGO8YlZkuMA5KEdgo+u8O+na4DSpKid6Ohku1OR1u325c1Zwn8Mbe5K4xu3nWxEN8i8ep5i9B+a9VgeqP5nzYpe9S+Q9pK6BdGuj8e7RueOJ+giBXvDPPDTBaLhnhXDwzeLxULF1apZYodPNStFiKjc.CMF2Bcya+hEqYd0kxIUnlU92olQb9IVmc3WdsaZgVno7AdGil9tdO4atu88q2p2dewICNR1VefEiQCOVSahi0iHKsGwqmYN9gdy65cauqM9pV1lhg+HlpSRc8YynJEkyuSroJFphHE5VWWNNNNNNNN+f5Y7.PlKMQBxuhnFizTJT.EJa2YEhN52vO8Ernjd28+qM79jPSuq9E1SDYL9ybfnL8rNuXlQEr1HlFvXMzz2vpLsYx33li2dZ5HcV9KoSX08Nh8NGHuL01qJr3ftCnutyiCUDQKV7o9N8TRxat7sTyx5yYBzwzO0PiX9kuPhtj962e06e5jXRl5m+c+M9Ud3SnuUrfOdnfWG7ZKj1BvsPSgiDm4t9TGa468j7q1RYFwue+UV5q8mjZEzZ7O6Qiq8ppY4udsVtFl9C9JupQ+Bu1ccKO1XMuUrw5o+z+o4uza6SriAJMZzy+qRxJ6bjPQJo2PGjCoHHo.0x5Rg+PiiA5tnvFYgrMF2RqLJRQTJYnbIa2rvZWpqFhe1u81noLXV3tdOWdX85SkT07b0W8k6Wl.X5JQKaku0AO0QuyQ88ulogDIweAKq2domq43LCW85CCnhEUDgc0cPFVBnT2czL25AUq+TuAO33333337bROimBVyka5RtaL9xKLRmJDHALXR.NQ5nv5epSDslKwL9puLFESzQoGNROW8BdLrdG5ji14XDqG9nSnGlUkdem5EY18WcEd66t1XOG3fuzviVZzS2p5O2UEUn.ZsgFxVeKZDAUr.R0t2L.5HkBdJek9KSM6huNr63LG2am69Pd638kKdHFzr5O6o7YB3F+0+lun+sGH5VaJfOI9U6A4gSgX0nPqdjVdmbFrq7KGmhynI+ZiL4kNUacQwZxLz2J9X88xRMcHDk9eqUbEBjQGFXn0AKAdwC3ORFCnsiDchi8h.X4Lrtl0b1tJl4dWFFaOXTUUQ7Dey4tB0436d1mTEjtiRtRZIF166t8.67Slp88L.ffrCXqt8S4CvxWdB8M+NdnLaaW4BgpcHFIgkPM9TmRilLEdIR3kX0S2pE9OzBwi7UD.o6NkIPQ3rC6S.R2zc9iiiiiiiyOzlepADUk7TxPQ07435LUx2vt8OGlrqOilK2hmo5C9cl4pm9gaI+gWemsu.lnJmbhOx2r8YVxKO8Qq1J5zu9W5e1IWW+esou5SsKdiG9ql7+w89w56FN0tSeOadTystqJFxsMutSBZXthks.nEPrOcm.540uf4VCxY5LzxhO1gBkcO1Dlu0idhD7gNN+GdYe6KYme9NexPA0tfddeWFq3imhXxfEuv3yDFldlz+cXuV+EJz1l5HmL5p5lKTIDo+K4yE2lvngQ1GqqS.v5175hFd3QSSjl3ctwE+X8EygwZf1wqdr8RxuFjn9V11rGhAVN94txypFqiMC1gG.agBXgZ1rLfsQVndNnZkxRAD6rAfHk4UDOa6A14YmDQvVnPMSosboct8pOpL4pmL9s9dVQ681noDDPxf9Idl1DI1oV.D6glJByB68nwXNy3nT6IjdUkJAL7Y+1FiLud733333337rDOylBVyMCM.lpNR9RXtvg2hVsVAM2v4j6fILWHI0aM2tLi+wnum2u0sE8tAOFtD8d8iD9mRfL9HClbfAxxjEum0c5Oy64siwdQfMBQdrCs1q7eb0+Cefu1F10VZuG3IaVcnPduJLF7TbtWLU8GQN9Y5y6Oanws+oKXYlMNDvxWndWurCsjOeK+JV7UR02mbwa++4e7Va7t02UYwSvp9nKfQg8LFw7ybbgP+jSMk8h5NgFLVIYOGOyxIp4FIjWQISUPC93Gxan6XcQL7Q7sG05mv5AJVhldnI9Gmo2Ur4dhO9YtTP0Hx1HACjUXF.OwXisw6WPevwwfVzJRYqp0HK4Af8N6wiPYUUjYy+Jwk9LO6VkJDA03sFjO7W6s8vodw+rKH5Z2zBsUpP7PCgwOlXM53gnz1Hl9sItnnVm7c8H+Sq7+9pN0QvTYt59PKJ4puRuo3QfbvcWptNDnRA24ONNNNNNN+vYdoHzAn4dKI0u6Rw2TMjam6K4uNqHZajT6r60Hdi0apCbyq8tj9V88zyq4O4tW5cT5Lc1IR3lPVy0h8A9Uus0G80+KdPhrf+rk3fMl1GcOacuuz6++zk+ctu+9.HpJmcwPJZIAJJkl8p7W9o3Bsqm6vw4XJZBxxVdBk8OcZ9Nvau0I9zgj9hIYOSrjem682dAC7O29ENJoY1Q4ggXOSODQMTFxnzoMG+X5qxS8AQlNyk7ydfI1OHu.DTrEjplccG4r4ZLdG1Qae6Caa4K8X8HgXUwj3h6Iryxwz58zwK+P3cnaKqblii2zUPPDiJdgrHXCubj8Tnj.kmcJYWKtRELElcghphTmbd.r2p0cKd7YExaTs1bCGvt0pQWmM.SUqwG41nIbrY+GPQIlRzr2OxG7RCm7u+6f+hTRrjTFt3lc5mjUGj1kFgH.xyPlC0+pLm4S9I8ymqT6rkGQGG.pd1Bd2wwwwwww4GDOylBVhnycajBk6PYwu.R7WgC17iMbe5ItM+D8rfc5u62vu7qVO8DuV6Ae36ZpOvqcDJAqJCwItYzi8kQCqcqeccpSf15Tpd5CiNwQr5zm.Bahdr8rswu6uSlFcGLfTrHdcS6pRZt5qz6dpuMug4KXN+ci4GtigxRtsVmaa2cjqY0o7X7jda329gdmcPtr1HSlbv21K8B9UdgS7ZZ9Q0KYoo78LZSKwlXzIhaSpM76fOSclXpCwczHgjJZhdaehS3OvK.a7APxyPlb6Zaxsx5sLxHwbusBuhVK7TfI1CegnXhNH9dfxEb8bnaFuVSgo4cSJcF7DS+IQ5qudZh+d9DXxsWLaImlXK4T+hnxbAeToBlR.mg9zbTO1MGPd1f7m8yvmW5Fd9uud153PDrUOWGgq6mMGAc5EyTwsdTOa3wiLd82zHCjX5G5l16R5P5gyiA5NvJStwuotz21ZCOzcbydPE9bbctAQniiiiiiyOzl21AjJD30HnJkpfYngyaFefwMK8s0Hr8W93orGcueTPAaGPLKaeeUz8MBJCRHugK60SbyzhsCIHjLIXeQVV6zw.lzng3czsb8+g89u9498KtwKUd0kxI0Au.JX2KWGvVnVIrT96J8r9ARQ9BxK4+6qvro2nWRtuik7E+Ndje8ieF8+ZGfH9ot5A+Cda6iQZv+wU5kZAqMVvm9C6DoQDkt+KAaxkfxHIrrXZ0pCQpziEIYTpdtnNSbBz9mj3ZLT7f4FJQC1hmTfPk0ESOwFCQw9.cB0Y3gmlTGsW6w9CtjQGKtmN5c56KlkqRhMjB+0MsumI9D6eq6KQziM4Cd3i42fXqUmjeA1+JAz.MvTEHnZUYbpoRvrCTNWmv5YqN+cBYNmMXz492xOFRsPjzq6ObisNze9Cieu8ieu3k9xasvXxrfGgHflKmOf4gdG+eSs3eyE24seyKzV3+hXft6NhiiiiiiiyOLdlO.DUO6TTdjpCx1Ii23CM9rciIv6ZWVahlAv.pETg0tBjepc.UKfPzd+nngZOoPV+.la4+8aZUe7+zcdrq3y+s57wsRTHpIgN4It4EtwM9N.HMMkQ.ZzngWFtNs9cS7rC+6mRoJRobuMg0eQF9ma06a9dORt8db66ILFfkcUCV7+y9FoJwZvkCK84wzGqiejRyntOURy3yKsuRY8hRfD1x5guIr8zGpWukhlYonAf4928tmcwhWJvZ4KszIWp8.wRrXAAqepdihNAxR9YezKIZ+3aivHFzPg95r++fGPPRrwUssm2hEZslNDsFfT8Q3HmWgBecrWSP.wUeZNWTb9wCUqhDD788W4IKHjGmZ0H9BuPzN8yLMa8cLj9xhM9qpiM4FLGZ7hO1FVe4A3HjXraZ3j+1ukUzlDSO2tdDwSwOS43333337bayioPQEBHaL.SVcRuLbqZl5aWGYSaTHNJDMDLwgXf0sYh1KX3g+u0OXi8LH1H3A1wf+MuxWwBm5ytim2vdd.ZbBhihIJzTmRw.zhLJMfAFe.a8bGNlxPQF9o7w4NuwGKCulzIFcj1K9KtuvczJFrI3WdiU9riLMiZxOFBExKi826o897SNcSkjsQEk3lbBzQJSLWDvat+NKaEbOc3Lfoijb09gIA+IN66A6jjc9EUcW47IXF+LKzD2lvjQDoRRudhV.9ct.LK52.IU.clxmIOSRZ4kflDen1QgG9LS5S7WpGl4KDR6GJj1GICsGr6BDO6hDavf9qOHmYtbi6owanN++Xy0syn6PkzJB14l38m2MQ0yFnv4GrvY+5ibDZchESTlq38eopcJKhWJi+h6QRstVS2FCP3UbiKLDfRqaec1pT2669gywwwwwww4GLOyG.xrclp.P+Pb+94.t2f9i2FPtsuUz68MDZP7wpwHdIvOEGcBxbvOKI46r8w.OwXfUrD48ww5Dyngyv+zjMIDLgDRmNF5zwVoZYoDcm+EqOaF8lFulhTVUfrLzS4UJsoe2K0mSR+W+W5Xe9ImgkECzJz7QG4W4pZtu+3Mz7KVyelD7u1YM+wiblddi6YhIiz0EhDg1Yfo+7K9XPlvKqxQ9oYYIMRFimRHHcREc58rzoOJIVFXFigkENYZa..iMggASkL2UunoaQbuwIrP5Leo9ecLSOKk399YH5RJcfXlrfGQD50CQpdZOUOk8TJcXwDux6lvbGgVauNwkmsUDOHU0CS83rjQSia9M7rEyUaG+PbWN+HGTPLPUg6iVFKQngwHpAu9UU5KYil3yZ0Tu+otpn6p7HdcarAZ6y9r633333337Co4sc.QXqd2K6IbuUqa+Lu0I8xQ83scJr04d7l8EgGVMFaDeme6q+pN0a+OeUXiQT0PL7X+qWZ4FyLisQ+dsKUdGQn9Q9HIRBjzfIftojR0p0z8VstcfFHegh3UkBO8VjTyl8e8er88ad3ynW3TVEK9H3IXiTvhkXe0nhUINRg1.gD4qzAjHEe0lvOtEeyo7VnubrL9DQXaBO7iNXh9welYeOndtCGWpUFkLISvktX8cdnisFMsrH7BERKO5hyQ33kpqItf5cN9c7dsbfAaSGDwGEhRgFlHQDgqccPe4PKiXAwtKMWh5jyKaUjrUQf9zrLfsZ04FvbN+jrJUvToR2hD+bxadh2laGQl623w+8ErHRpjInips8PiUDiQMI809PB5EKUqvAqRS3FR18AnjfVzc9iiiiiiiyOzluB.QgsEApVn.1IO3AiKHC5S0h5YnOOOzuYBAqQsdln1XN3vegnG3V95dQc7SPXXBONzvekVgUul9m5W7EtU4d10PRLw9fkTFDeKPiA8.nPPQsPfZGOKysyKOszZRqospS2FnoJDinJwJV0HhZMFTUAUwSDHig3tqFzCDO.7hiIAho0kl1b+XwGCnmdrqz6z3OC3M0++r28d3w0Y0g9+uq28dOWjjkrrsjuG63K4xnDyksCjP.FkRJItPf1R2CEJ7PNvAkSIPZa.J8PKcl4zdfekRSgPgSs.JIEBb5rovoM4DCgjSj3VHDO.IDoPhcL9tis7McWyL68652eLR1NA5EhINA79SdlGIqQZl8dl8jm20665csnWoXoxlscnQMfmKmeJm6baS8RmptBFAoqy8613AQNuR90O7s75bdA2vSDgTFRgFOAtnlQEhs1HL65AvNHkr.d+rZBiggCpUYhScyHm3WM7TBzdtti9f1+85T5.w.dUHnQ1cSj13.0sMNjEpqhjVmXGW6NCGCmbCgCnFXKM.AJDdFq.VjHQhDIRjHwSO4uWWV5qtE.QqfiRQSExkRw2S+0WbqYDzLBZKBZqflc1asYH9F2XlUtU02K2CmKUtGNWJuL726AZaB5BcQO2VjOpVLWpJUvgJANnEaNiua02SonQongmlk6IUeIyS07soZ9YGvkJy8Xch7r+gykR+ganU8CdAK7bckexhIk0Q5drV+00tonZNXwbso+yan6+GuxN7mmAUvSkNW8TK+ipq+4cLc9Wpt6r2ql2cjQdIyaxc8BVltS+ktnVjcAlXoiUpcW791v5Nr195drGKcfF3T4gykpBAN99pW64zEHdW0gLtupC1wpz4y5zzTTmKvC4Tmo6Stu.xmL3wmqPUgqVSOuKPWno0OvwRu36oV5EeOy3z5G3Xy6BzEx5zzyUBoeJATdhqC+oeHO462+G7rKnEMTLuqRQyaYUZlrmutLmE72MVpk8cmI0RuqHSG+IGo8KUW.4zTfJUHvY1OO48KhS+DIRjHQhDm84L2lP+5+jJerr01r56VMv2Tpu9yDbm0km3erQJ9s5N0yekl+3VMvb2Z2.yyU3xVlyuyeye7ZNlOvWs81c9+jpsLWvhMO5JlubjVL.Jri+1ysHAvb80h.FVphuSUenpdGNgUJeZjFV0lAXlSNKxxIxg9mTt2OOOWlecmVDzLXPvSsJtbaayytVWk3Ip81u3EtmLYjc3QiHc7Ixt+++7eWSFi8Q6+KjZDFwrnEAsnFcSugezKcrozk.YDxz9Ww8BtziwBAV+5IGg5wt4gU.dIihQln4whAQNGc1AjVJI0pNa1bWW9e3dCQUHbXAfsrtE3sgXjtllo05GrALkKlrwhoyr0Gi1nKLfncULT5uuxNJEiUzyb++ORjHQhDIR7qLNyM.h6dGlf.3Oq2poqBL146nzcG1k7BiZvqMUs66ueC2xU+7R8aeNKR9TyuCytW2xjO0Gr24cI20aaseSNVVa3McP23UlV229Nn4g9hWvs9odUK9k+amK0qs6NkOI62n7sy1by3FjSyQntiglVNz1F07wukC67I5J+oQ.HUimqJC8y5dEJR0dxpTeBKasgqnDKH3fWiLSiq+6c81JKZpHxzYik7JLyrp4K+uRYv0DMpUO3i8t19pV+qdoW96a50PVcae9CIWvK4G7F+lUqWoAY7vjRLcj6uad+tb7TGBaCPF.0bcU2LEnh8dRgRx93HwoivJPoAh2zxug3whQFE.MxEbiDSFi3rXQRSD6D1vFn0091tTO+978trKsbZgmd8VmDIRjHQhDmc6LVp3TboU0xRUKEyOyGK7SXp6ta622OqNRoqPFpT95bW6z94utK9qwKeh6da2U7e55ujTwjJaL63f0GB23i02h0eGl.ulKGC...H.jDQAQE58pl7ivipuhGcxodEO+KXW78N5W+t9Niadke8euXnpfT1VRwPOcY6mIjGn9zR1YdiBZuBR4etGvz+oqvPKvQYkYqCX0lEZnz0bo9g2ON+A886U+FXfXdvFxC7wOuaaku0G8OxNZikEoZ85Ss6O+vWb5O+KVpaMy1woisNntoEost9vK5Oqx8GCQc18dLSxiCzK4de8ICG.C2CzdqmIKkxI9UJhnnEUtt6v88L3El5hV0mKdIYHZb6nfFEglwXLcQss8A11hur+htO+6JXl8tm8jZo9sYuwajFEJjD7ahDIRjHQhe9cFavqkKSL.LPI5JnG6L67QLiD1koqR2qciUeihbeWqomNu0nMdAsMys8ZZL9.WVWScec6Ues+I6M0EMzPQeP1pyne9sl8fesMOu2v+vWryMds6zrxW+CZ6sxdZbUe8mXJgR5bYFE.UYBAfr8j8LyfjhxZYuMbpARDpnDY0Z3LyZwIGkbkK6w8340YL+5s13V6ao+Zc1lbnTRTJiFGApXs3XgnFVi05jBo84eGK787u7QW3KjFau.QM32JxaaucEFftBvlGbV0kfQbRFDXhmdpTAG+9K6T4JqZGmGo90tKZ7now15K4SrFM9vYQLFi6RP7VQ7j6hrgEpva3C7c0UCQyltiI6knDIRjHQhD+b6LRmPO.LCEVxY3.hPth3AEbxmGs2a5cGM.4MG1e.m0sYbqeDbqukuH2xlVe892e+lNWYmQc93ASsh6izG4UM3pm7GT7O.yLKCIJ8A+PN6J04cde419hetGXcJM5.ltZIhoby9hPftF4JYGl9.ta+61VUBelYf5RY0Wyq67wNdpU62V8Y9GI0LDSrNsM07ot25vVeaaS3pVaCXBgpQQ+Z+dK5X6sKum2a+11+RtkGrwOvBQJXhsFWbRUy6E7513E7O+412jQXoJPnvsRN4l+wS5br0+IiND8JSTEgqE3627vvhlDHRhet0We9vPS6rY1ZiPv3+OP8s+GRJMd7wEaMOiwKsi2hq6LCwKcZRuqb5Lq9ZkT65VYlmsO1SjHQhDIR7KmNisBHYWSIkK6yjFfM2Gxm35yY6Ynbt6rzpcacnC493KZU2xNdQW1aX76wjYpOAtoVVe1IIvb3chyg9i9XqXhAdqCqGeOWGiMx0vnG7UxH6+sW+6702x12zudf6X34At4KchyGITBiuNoZiNCqZCBCel5zRpfZdOu4eb5UeQsFyEZzc+QV6FN76Z0YhW22cIKYSLV6sSbpeXckxCFQXU6M+o2ik62aBR6M0m5Mcga6GVIWZ9cN+VQU27ZrmezzyaCOvmaGwYnQasPT10fBXmgr5MbMcFkqTnLXyRmJdeYTs0mdU2qDIJT.6WXf1zBWzv.kjBfV81INkCMrM1UZaiChnQ3HoxN9gt9cTea3vAvYW2Rw5vFZkjfdSjHQhDIR7zvYjNgdnHwU2nDw2cu0.z6dyA16Int79SUWnzsvv8dEWidri8aY20i8IO3G8E+niLH0asDVua.M9APp+C+PCSzjQLywQm7HVc7igNyDnSOEQOzV+eYmX+xTOAlIp1bv3UHvTj60sBpCEBHnvybMLsb4Bc9H64f011whj6+hSa24Mr75CbyKON+11WbGWN1ryfN7P8DUg.mBEx4bC216ZhA1e056762n9Ms+iZGNGTrxvQq3FuoLiLDl8dWOQpCC1rcSsNWB0ZyGEsnz+0UEBgdBxYTDo5NJXaLVRvGINsnC16.w.MDJCHPOEDSJzrKr7p0nm.UqqVIaj3zosVLYX2XnTIfGZRdZVZqSjHQhDIRb1syXq.R.47TJBPJJDdxN27s.L5t9B.QRbCiDWuCND1gG.6x+sIdu+9ufeKhlzkFi5J53SmxN9ARwzVSsIsTuFnJa6E5+gfGjQa+lMEUjtJFJ8Pu5PLf.U.JcZe7+T6jzy9SomrqQAX8qOa8GrVbzqhQruGlPXfRrF+B1p9DQ4lUKnJDDIJbEkJZO2acW0V4ks25qomr5xv2Ys2zKrQ1YPW3qbIMVMCDUUj3AEwNQ09E+pKyo+9IZjgF1laXnJ9NTHLdWeaTF6z9TKwYwpDJlY6l5hpvaYxum2AmOMZ2iXhNbrp0Tv5oFuFrbzErPRmuDll8ljjpfUhDIRjHQhe9clK.jJCGKT1Vj71JgEitb5vt7O5ndq9ZGHBaCvogq5z.kX6pVMt9CfLRuXXre7mGlBiYFV1hZ79uk2ZmunKc4xU5RCQTUodcUO5w9uN03CFw5+3r.VmWuk7k.UzRLfEJPHEdFalZCq5aCGLPqxDwO7CNZbyfc1Lc2a256icXTjS7bKTV8qVxwuZIG+stY2glsukzGso8xUXg9Y3vBwcymT2be3r49vYM92sc5creAT5sbQaOqIq5WETJZ76Hoalm3zyce2XBBxKjKmyMdSqH8q5RZ0RmnSXPkniXEsAhzVCwosED2fToWGQO10c6ol8OOI.jDIRjHQhDO2VQx6Vg.mhj2UULaV88xeu4cwwn35YwMcDlrp+lUuU8SzLs7a02RIkarSJTuTn512P2STI2Rzuxya9YETObsBdJhSLZQylUeuJ5klshdoY2p56M6JVH.Os6D5+GP3T6H0ZQSNUS4uU0CnYWi9Dce7lyZbNUSco5tylS0T4060snhYqpu2VUeuMO6WUMu6c9wVW5GtRtTM+6JZls6l2rylWAmJD37tVmltiUoyetNg9EeNZmmZmyljNg9y88LPmP+mW4ySl4tFDn0h4U2b4z1RktuizxRtqwaYE+v3Tc+0lxzwG5vs9h0EGnpSyiohIWGkHQhDIRj3mamwVAjJD3bG7XoBHmVlAiCCQt6a5ft8t5c5ZDKXiDhsFDGNXm3N1GhzScm+SCwrCxZcqV5e5Y7xz5Kz0xwONpAUvJdnpmJFUfNCqZywXwWBoeJyLqdhtW9ufcxGWUEJUhrUatQdqfZfJHmRiBLfBl5a6lOwfFmn5iI.3SaZFlVtblV7oMsJSHa5FVdbOqIqFFhnTFJUBpDXJPfP.5PbHA.iyI6D5OCb9k3W8ICNH0d28V0wmpwJEm9y736wK6wvthku4KzZmHiRlXwqaGiyBaK07XlczOFV80lFJG8r8AehDIRjHQhe4yYr.PFh2gTk8OsPYKP1BEHtxMt2Z8N.HVlcp4oFwVcuusq74er6t+NndbmTOBmX368k54OOdQt011ZyLyNu1UOScKhEKFhDWhsv.FJDPOzk8AXDKL6dkPKJnkdldv4MyzpRnU8KESolAEzbOn.BpVf.4PCbHIU8MqiE9YhGlRQU86KprfVkIjdFB5gtL.rivpVBGTYGUscMDRXHRd503ulqzbHNjTf.oD8lj9UI9EfJFPYvAo1bgvtm8txZu5yi5GCpEamxphDiIkiXZugsaLSueDt1ao9orRaIRjHQhDIR7eZm4ZDgbEwfnnEMnEmAPnWLye.xLOGdzrflFaFWZHNi+c91o1w6Y6YTk1vkLJ6ZWeC6jAK9HG+p2wyW5838lwlBvCLN.hZveBo.g1dA9qHqd6CMsTEPoLOc5.5+mzoN.LEQNkU6nj1Cexmzya281s10HcY6IX3Xjx1YWzBYGgUsC0CLDiXgAsAAnD7SuhMS62orussOmS8mYiSpDQINcTPl8xXkY+lmGKIKChMJEtpN4TV6nhfSDNsjsdUxN7.Xx2KFJ0qy+tOzIRjHQhDIR7yvYr.PXtTUJbXYt+4M83387as0nceUK8k5JHdRLsJMHCSKYotWZpaSQj9+Lc1WROCN7zaeauK3Xqgce9+0+EoLnhs4IPGYjOLu5oE.chpuQYZdex.izksyvpV.T8YzAoK.RkJ3LWN5GPASXkxxZzcz70WQzJDpAggb8iLnFJgVE0TA0Tj60Tn.5vgCGWldhEJhPQDAUJbxMY9fLfMa0io.jangbDJaumTn7L64VheElpXpTAU07NEKhKPLTRWFEh.nkUxL1F6Jk1X+nLimwcIynOwM+XaXOz9fuY7n7fwOKeJjHQhDIRj3WBclL.jlCTtPXLRY6Uy5SciWF0oKpOO+Vqewq17mj1AZwQX9NBs3TmzlFlW5437ZdmezkNIuOey1V+WN9Ov+SOyx7lY6KHsbrV.PgCbqm6Gj.nREbp5u+3gYnnAuhAhKT.qHXkmgaXZUpz70wvvSFLvZB7MycephILDIH.svrAUDN6qGkoWKnZg.0FFRy85AkNww6H8fFL6pgzl+4ooVeJcY8jUAXX.sslONIcB8DOcrl.eSoaYmtkJgEP1D2PpsvM2XXPN3QQydN+OWiswdmgnYZ3HoxZRe9xidn+hG+7aEWHIErRjHQhDIR7yuy3UwlMrAZ8AePllvs2bCrFNbLAqnw27lufa8c7Wsic9f6twK6PiZe8s6xW52b8sz+G3Ct9eBmmaipKCtsa5w8to0uX4F97W7s9O+w26W6N183q+atqFuZtXOKwyMn+RQmLL.ETjhHR4SyMgtpXDA6Ix68loakpUv4oltT4HTAe7oM0OHuDFNHEBlsYHpHHksAMG8llWwYhpHUgHJDZADJi.XUESABHDj7zqzM8pcSOwc9LWmcOwYY7oM0+ZaKJLbWBf9U0attTBAPIjnkVmo20LaKxM05LF2Uowtc4YSsx5iojl0Qc1t13T5GHZfF3bnANjb9ewAkq7JwNWvymRwXXtuJOk+8yNJpFJ8jSexDIRjHQhDOy5Y9U.QUAUEJpBZQyW3Ay0fgx41+PKM8m6Ss3LkByKa4.YrG9EO+IK72dN2yW5qewkC+AaX8+MCcgu2N9NKa3d5pwTabYatw6lOh19Mt2Z238tsLD4put2+pOvm8u9B+la+Pu728NufkzXndZNXp41WEMetghHxxv24mtIB9yyovIKis+r94Uw24Dq9gTVKKn6X1z+pJSHysZHm7OrnQNwf1F.n+SbWU.4DKVzrab8cvNLcSuZ3rqLRyUQIY1mSb5qJSHUYhSdsTIj7kl857gI5cA07WwG84Yi12DwQi1H1jQwcgdGbWuseLsfKLavJ.yEb9D8Ngrzkh9Scc+y0L2jITJIMFSjHQhDINS5L6.Dlc+e7Y9two6Knyn27GZE0O.SH+F+Aaud9Ec7ZuG+4M0U1wKY5e219Dwu8exPlRu6+ttOx2Xn4evaxedOVoyKUYJxa6xVwDrzom9ycjFQCz67m4M+49w5+J6S6gr5oLPJkhHPIYXBD+SiC4SMnivPDDgSsh2N2ZQDDf1bVdaNnlfflU2pS7bKksmL0pl6qBWe3Unqw+tsyshJEPrL6.5xQn1auCZe0TMNj4RcqbJZwjtPchegn683418d7bCVyrAKTBcvRXoTIJBbzTnWkGiNuE7F2Xsoq5hNUcwjUwzQpNm.2.Zl5iL60rgjSai1zd5oYP3hzLMHOkmxl8uDUIIqASjHQhDIN6zy3of0IVRhxn.1dp.8778mYK2ynlMcCcYSe0C5vWExxP5zGByN+it0ye5uye9aioqctL8X+ZH+QwfyW+b9g+nWOWGYtn9GZFPj758ZGgQL0uz+A8aNviHY5E5ipytoXEkREaFHPXH6.rarvo+4RP.ZkJXlaebHRyzjJLrpciAEAszrCspn.kYtd5AzbPZEnjlmdMCRIKfsY5akWB3Pm5TvdhYStLnEm80OEQdRo.FkD5BCib5edk3rWqbrwhomtLbnFToBlBhDiVTBXXomJBAEznqcUXlNalQU83GWimncDWGI0RmJEjNLGSG.wMCTWnTyG1loR3Swre1YtMt9y9q5fHJESVIwDIRjHQhyzNStGPD.SoPb5InZb32BYhktc8l2BM93abytitELa+Fei9xAt+uJMjLfGZTLPLvLulIpfm+lKMS0igrhU7cR8364xXrvvrK8E+21XQ89ihtNFJtyvpRkJM2r2yMphBE3Wn8Kif.TUYtLnRBkBRABs9asjaa9nChDGVAggx4rldl3DohUP.Z.CK6n5xDeVlylUeGpBUYhloN1S90o4VkEszoTkqZtOTjSd9rOUI0uHO6Rb1jlAPObD.ktcL8zCrU02KCgRqzkYxfbVTI5audMkFgAaCKXEQZM1XVX5Td3thwvInPwHzxTEem.lV.XXFNd1OqbJqxZdoRkAcZ94yRbpEagm0LaO6gxOKebjHQhDIRbVjmwSAq4RACsBhVA5If3gFBgJAwehf6UVco2Rpb2Zex1+8txWHa6NGPGejL5LGDcl8Um56Go9HQTeTV7qhZ67y7syrpJ303puLydupeyMN9G787oezW+q85m5IBL9UK4LzPHjKmSyABMa49UKNWQv5zXvN4+240oJm3gdhpbhBt0ZlsRUMmSsBYge+riglVF3GcXGnYd3ybolRS+mqysm5Y4MvaheomHnhfsbYhKTf34BFd0.8LTy82z1+8XJmrDQzg8fnZFwyQ7VFGXekerZsiyIV2iY+a5gtNwlOGNkq8qNgbxe9yAB9HQhDIRjHwyJNitGPV+6mVCBPKWRiCCgQB6xPoagwZGGF869cHtg5YqQJ6TjxN9AbYJqKSaLTW6pGrYekWdD.GLX9eQ1427anSN1uEidrOTs6GSa9nkKexU6HGgZyfPJovu36D5Ry+SgB.BS6iLsenTDQVSfuwenoE+pm72uPArgjSg9fp8Qtdfdu1KTyvzhOsoJEEEctalS97nZydCRycyeyF43rKvS8mCjFKI9kZ4u27mnYBpTzHxfQCGNbLgC1fgGN91ukC6PIhaYUTK65+3W.1YhESZ031sAukYa1HLE6IBxnmgiBCGTQJBRQlq7SC.9UiOwdBo4doJIHjDIRjHQhyBcFK.Do.1suclPnHPIgfJ1i7u988h2CxAdom+kgIBC0HM0q2li8It9Ej8xMhZPhDKMXDvrhUFRL2nv4sv2OZMHVgFJO5+kMdML.Pk.Inmgi7oZbOgHAggM2CJR4S6zvpJ9NUw+DCVqRELUpfInRHphjsZ+J.8N6pkTsmrZU+lodUgBXqfZP5QZyu4fwlgr5Prasmgl80GJqxrklW4TW8CQ3IOawmx22wuXSurDm8o6d6VmKfVgxpVAm.fvBAPghZOWRq1.JXVVIZjpapE2XeYIdlX0j1w3r.mnowk9TuBComHcCaFrcIIb1Ug7T+byrNYkyJQhDIRjHwYcNy1HBUU8qtLG+pkbXi86dvO2adp1Gi33Cr66Aac0QhAgT+cKag92zqXgGULnVAwXfIKcslwHLds67KqW8CX1FMlFr0rzXFX7sea.vPUTAUmaVWCBPCCa1kxOcNvqxDh+PSK63lNnaoaYUof7lIGZUdAqw2PtbN2x.qJUa9eAMK+U5.6bmt9.2dop5FkpQaZS3oTTZac2raebLyfkvV0e+w+t2PUSOzkcOs2tye7a6gyhVT72Jt4pLjWdEG72rGfnJRyfnDOflkIUvghpgoQDmSNPNif9TRKqjA4k3eWMWUN.UQ0lovH4x4DTIDpTVX3giAX5cf31fXowQmvFe.iQHBSVmINz0usNuaZgCz7yXgCkyUqfIvupIfJZPPdAfAHuoe7cpTAGUQlsKreZ84xegPjjd.RhDIRjHwYXm45CH4uWSdvoZ+62q5sSLU6KB45bGNjHr0APhadi2POcdDpr2Z0hgX0QspicWkVc8K4V9dlO1p6v48cnTdFrPbcEsFn0fdgfYGbdgfh5ro5gdr6FSWC8j1eE+bILD4K9l2apAdfIMA23Z0RWRq1gXDyce+iehs+801Uq1toaEfi9Hd50TZ+dkuiklBUYKagFahayCfkx4o4GPRsYtCmO0MmOdHFw3MvTlO7u4piIbX4viOfS1fdb+w20SjN+V6SAkAJgYfl8kg5.LWOZv+ZvYcuBDalS9dnUQdJokURJZk3+.+arWLViuglAv6DRNc3gHxcdX6dw+oOehN5T13wRgoEvo8L1XD1MlBg4bFJbXK.CM8NNw0dYXZ4SR25cyZdRqX2oTQrRjHQhDIRbVjybq.x.CXGrDVVZoYXfALffxRiornDaaNU+B1HGn+yY6VQPvLaEnEbfR5pA5fNiWc2cEgELnFzFMHdFcPJYCoj1rD2dxAUcc8S7UT9mcYA8+LBxky4i7mrvF8dIsZAXOs2ty9tKWuO+e44NMu6pJWTV8VdUCaBKUQmlsJ2yl1ltiRern7a8KTGJIW20gyasx1i1z1OZCJdE7IFHmsk6ezr4fLsNfWKw68vY3aNgCA4z5yqWy9u8GskVujk3NxPXfBdexx4l68HgvBlQ.yHy99ViwRBvHwoo4VA.QZtYw6Y3np8jUYGUsytGNpy5OpG2x0l5.iiEOlxVeOYTaTcPTUxTONMtcjlr4qLjsb4.y0UXyFHfPPn5Dx2lrJTgCQEoPfZmciuq7bi.jetvwPhDIRjHQhmgHnEMTIvoXQb0s56cmer0k9gqjKkiAc1awhfFnANEe3boDGTDTDGkhpg978nRPyzOBWELMDZ92tU02aqpumtUeOsBN2awSzklgSiAY7X245R+ldSs1sp4yL2s40J+gFA0EzTXhcQpCtJK5he4a3Gps5uOsEeUadrBlhEwsXQbeXMWJUy21wzm27Ol97lu939czYVY3LMSiJKoxnzx7TYwq3Stt6TSSf5Df5zGMSGKpD3jSqjZcO1ikNuptq5snYl2knKT7tpCYbeUG7hOGsSVml9j8Jjlo5xo1I2adK+Yxxubh+8npvUqom2EnKzz5G3XoW78TK8humYbZ8Cbr4cA5BO02Oexkz1m9qp2+FlqpwMWpQ07wO+85RQ0fpxRWp1h+ZzNbx9dGI0humoRs7uUrSGe7oa8hzE206PayeypW97pqhZTTS.ESsU02aypuWdUcyqpKZQyy.G6mNdtxwQhDIRjHQheQqREbt5qlzUpfSkJ3T7czUa5CmK0A9G2Pqolcv7NFr3hl6gykZUe1UkAinHN0Q7T+spd9p5kqhlhE+ptHHi0fm5hTKkfp245R+X245RqEykRyiq1LWyMnEMMCX4oGUy6pZ9L24ctt1unKxaCFA0yEqmf5Ino.aJLVCdVg4oj8bhZ6p+F4V7+n1ZdUcoRfyUe0jdypu28dvbso5krP8IdwKdcqx7mjMUyfmLMapHVbbURmRISqJlVUZ+W6EAZy.tBTm.Ucxq2q6IpDV40LsmSWPR.H+RrmkC.4Tt9P9YdKPOw9QpXd0MHm1VpzW6ToVxWehrq7GOS1k7Ml1s8+5Ia+UpKH2CqoZdrpRETm9n4jBrY02q40tp6boj4odc4yxRB.IQhDIRj3LryX6AjBAE0y4bvFDfFrFeSo254TCfLyS7Vx7kOpiAhUDLFF9pdhWa8KdmFjL.dd33wDsRlQOBYO9zLON9V+AX7DPvEMUZgCv82PV+8mRGfgsCzKDN6Sue0k43eM86bJCJ+mKa4l2mC.aJaJa731kKBDG2rJ9nJnBVUrRZrhGwVhrlI+FW6Cdr9u4UUC77CpXdwagF6u+860qSaFdDape2W+C8xOvAsenYhgXiWr0z7sAQivDUGpOUyTHappeCV4a3ErpqkT4Jhyg.oa9jpRYPDcc6KYSlm3oOUwzrBUMWetQ+o9EnRIkst+Xfz8BrhwH1e4e1Uaz5VQbbEuE4ZRet0r0vbfOGY8qhKE604toeyUdJ64iP9oqXaOodiShDIRjHQhyZbFcFH6eyEiutqCmAt8pJ6npcOeswbleiw0c8k2PYDvyEDrvHST4.uh07afZ.iqBN53eER8SdYutW5Admq4SiF6Zrw3hUcA8OcMYeQbTOkdFNt2xEsWQylpls.AB98eZcLevMzP1IvdVa6wCuyW58N+N4c1w73288+1WZaMz7d21OJWK02Q9rW0p4pxJSYLMNpn0lvswi8Y9qOZUZcTHaHUbW6p6RXqS3dee18uzG3glo+ImAzTKPkNW5stg8E018p4SYumby6ZeQsdwoTUDa8XfzxL+n+v3uJKzsG7FAL4HTCCQ1be30QRY3MwoI+glVFhQLUpfA8j8KGUQ1Laz8cskayq3PgtaU8iGXvA3BVLQ6ICQ1nilwpMTi3hhSV.ZsapO5shAFv9PqXB2fYqvVcxzBTRFrD1SrmSBQBd15j9IIIF9DIRjHQhyzdlO.jYKwk4GX.S.CK82OQWQYzRg3rxqp8X1UaQjMsccqw7GKLaYvpdcqL59BEabMINRHpA6+OqicDus64eUmZjeSS8wHK0IMQRFGdj22qs8iwE0gsT.pnzr6mCZEB00vZrqw+tsOcK0lWauqN5Q119zwV4XwCwH1+1uvFtki9cx8UJ02xZTpzfLDvSj4XNekRqYn2vEm9pyvzHwSCSM8K8n2YsNSMDtSxPl27qrSg8Fm4OI7P+9Gebc93zFRmq3Seg26tduQFju30MnvnwxG80s7mnuWdaWnKMbPqAQi+6Md0+ucM0QvYjABSAvZB7MemGEmW8zHxjXQalQUO0xvqpO4YXVj4BXYP6yQR+kDOmRIsRELyccSmCMsrfyIktyGXRSy68JrcVEa6PcswApQzQpYsMTQRYl5Adq+jZeWb1dMrTF8916MVSnjVE3atk5MuNrTIflkEao.wRRUvJQhDIRj3rRmYFDpHZu8NncG8GZX1obrT.wLSV8VlXz3AtuCZd3A2vsr9UJehVcgVDLsJ0oUlIcqLCsRCoE6zs2RzTNYimfrTGWhHqmr6G5WeI8xRVL3CCLPdie0k4bhmUoYPHUH7o8zbVft0O65eAQEJMLkom3OSpNqEN7vwxFqFUtL5.izUyA0ut1zq6k18dayn6qEP0HqyTU2dq02MQuHBs7HSk9G7nSz5tNh80MQLHsNuIWd46+CWeIDwHT+J6OvtyuxLMl2aXdS8W9dO2C9BNWyM5YlAs9jL0CeaazNJRG8Fz3ybSqHM.upACZ.PbZbEjXC3NoGd46pYWltu9vatlm3+Vo5RRPHmcSDrzyvQCGNbbP.phHM6aG4MggHA8LbD8Lbzpu1cUuJP+36TfRxvsS7JV36ccwS8CTq839kHBMC...B.IQTPTAhqAmkNY8CfGODtUpHlvY2CI8WsO9NapilUlNorduEms2enpL6FR+YYI8.jDIRjHQhyzdFe..ysYSKU024V6LmnJl95CSHv00eUtyRunFi7G15T+vZZiG9eci+k4u.uOz4sXyQWjivhLBK1QXwFKK0DocYhXgNBsZfyawxlui2TWWglSTV0Qs3C6a46y4Um4iIAy1Ala18wKBRwm1G+gjSGJLmS1qYyZH4zA6sWagBm3tsc2ay9+As2Htdl3FFinJVKFM6713ZGskMQ763PjhZ0yz+8cD+QmR6rtZTVvhqj8pxLcGKjng6oTDTgUequnFrLZzw4kM9hlu6taOUy8Abzg9Iu..F+tdB20diqsQUf.xo2wwv03hEwAvYJqEYhIZNvuMuYhu8RUUepFGDbhRdpbxUAIQBPDzBEvNWPpUYBoJSHycekutlcw7GdKiZt6a5ftTrjkznGIKMn9dh03YhMNyug3r3Ez3vjgwHtPAbC.EjlWqUsON0UfbngPfRBgCmrGPRjHQhDINKzYrYfbncLs70tuwbphuyRWJZgBD2+wxICQfy65i35EuZ2IgIqe6+OtvO0W5st7q5M42xa9B5x722QKxdmWV4.skUdh4kU18F5R9y9SeYy6x9de7KrzkDrrwW1klsAWxZ0srsQMW92tg.PPXHbhj6tzo0wse+kcBBJG013eAM+.CXTJy8VDoO7cUJJgjSOxRhZPGR8+365f4FOVW9TDajE1w+ZqaJSrGUce9c64xQssMtk0V2B35gL+kOfNep6AZ.CKATRgbJzlxcMg8O3bl+i4UiiPcGX73Kjpv7dkKIBf6l0XkkVMS0VIVbPUsd6Vryq0HZT0CWTUEAsbYhQJRnDHUPMJEOQPHyc6z5EmD+p.EPmMHU.vm1N4pBz+ViJK3dQapCatqp8Xt+WbazM1wNFyDaOZCGQaXbZKkW1MZq+D27C2VJ5.UqWB.J5V0e+ws4edZymHUFobfVtbx0cIRjHQhDmM6Y7xwpHXUEyLAY07AYi1QXU6crrlkG2UUZ0l5aIPy7dBhecfyp6o2wde6deQujWx7O9ewqYoOFO3w+prjTkX+0bY75wzQ5HZwVmtaIlECbriEy4zpkiLg1seG7tVeymS+dxKpNnQDIlSyxrYamWdcfAvzcucquzs7Cbopuzauso8Nvf5lFbTOJjRKWom36+U7ku789Sh+JVEKo8lNyU75+PdqhnF7Eil+AjV3fQsbvCGcgH.NYQZuqCCPC1eyYalxVkhlsby6yYS60Q1Pc2ZtQlZHtVld5KY7AHaKATaB9aD3ci+sOPiCNHtiEhfSpwIl3c0FBoQC.SHDCHgLrL6lA94JM9sDOGyolJd9TMFfBEdRWuz31Ks+r9AcFkeKYm5wtFRc.fEupO8Edri+ub.ioEUbSIh6Bayyg598i6mYE2jK6szL.LHm5d8nBfnUBKa9DckWF7L0IYhDIRjHQhmy3LR+fnYPHUA.+.nf.zWIc0kHZjgvr8U9hdwNoawrnuw.eue+CR8Ecw8G+p+QePm+aY6HdIKNiCWXKvXwBqJskE40.lHFZSgG5DyjpO.j2LW5i7KJW+HCN6rCm2LzDozsrsQMaZ8iBqdUxgejsuLB4wC8dTkTpRFOntwvJ64Uct+0uugytn8a+cevutvzVC6MN9PGx9xs11Tz4Ya6b+MNncRjFyaYxNpdkFzJVnWylX4Bk1oyANf00Ei3gmIxJto6h5KBLdrCY3A50Ys8tm3FCuRSjGoQvnD64LCwKNENGBhfhtpV1FFFR0.eGeJ2bPfxIlo64dcJIG3OKVQESoY+9xM2FHOkqGJ3Az3ZJsrF6emG1o2gfA8YFFGyT6jTn0spM1pRrGlryDuFbFckX16a6FqQY.YtVXhJPIJPYsRklA7b8iLnlD.RhDIRjHwYeNikBVRXfHBJRQpPfsOYitCJXG9sfx9Gdv389iuqu+EbAe3C7g+.q7ve79bJ+eYm0VRlGZFdv3oo9DyfeWyvhpECvPLsDFNnN2iGRQZtgqmP7qBTcBYfRXpPfSEBlK0idZqTILDNn1yZxpcezIc3fMjAlZJ2ZVleywWEKXEijI8eWt8Ny7Nmx+SOzjcSzna6KEe4KnEKaaJkwhiqMilUjr.opaxt5Zt1lohxz9cJ.LT3HFXBCYTYo0cq6JoG2AWzHa7T+j8jch+Ebf.RmtT7O4tVoo92BWICwho8TXZWhRg6AeDrSrQj97KI81qZBBPyvzBCkyExepMctDIXXBjgIPJi1LviSoIV17KUhN0e+k0SVcoUkLL.wQNjRsiOEwiZ.m5HNYcmhrSd+3.XfPCnnTz.MKwuUpfDDzLkuN0z9JQhDIRjHwYONS2Qr0dYmoOe1Q7UxZr8CvqlX99BnpiN4Qu95O9e+aw6J+KVjuOtgETKf8X8Il91bWVFZZcndllgG5jOfBkzYmV+3p36DtipV.JTFKDJL2.qn7SqC3BEvN2L1Bv3qNkkE6o89hVp1wObjiygAWAk3XI93S7NGdUsc8lkst25K3M9C+JMV+MD8eefubsA9VtVlrdjsNGTvrHrZTsctcuZ0ujn4ApW0iorQwPkb.cEyBNlkiOSMvQcDGPIUbmqbxwVAwOZ50bPHSMhSMiXVXKh25cwrRqmGw014a+mjJZ20+Q6+P5PDEY0i4z+F0k22s1CzZWFFZDBGl4RGqDIHjJ+z6GCsnAo7r+7lqfQ0qqJ8sY+3LLsbM9Kk9ojz1ZKM4H22t8bbVrZLtoDuEOynemOxON6i9dVCsf.ElTQMM2GVkZllgAm7yRI6AoDIRjHQhyNclK.jfJV+MKdc22TM5ObM7+6.KwM+MP7b4SNMl1fPMZznssu.ZjuMLE.EBE5GamW4fDDPTO.8zCHWzb4ntXQUQ.MOCnSrlGyzl+4onCL6L3Na014znmCTn.1M2Gt8ckUs8dw9PloENmnFeAyJNvXqr8z8rlr5ht7p+WGOlOY8F0D69e7O62eU4xegOzvu6Il2.0oy01fEHpsEluchY.qmWzwjY5HCMNLX2k+9i2be3zywxpgg6NUvTwBQtdVhVbjFAhaj8n3T+eBmNes6XkbLnwgIkLC1FNzR8c99eXTRs9k+o5oSgYVjK1y0f1NT+7ZCkYxB8LQLjkfggJUvTnPxf+R7uu41aHEJf2l2LQggUk6dnkltuRKqwiNv.lAGGaqqtzZmYe+8aSbWnHFuLlTW3jS8DE29BWd4UbDla0TJchGyRkvzSOMKBEzL5ljfgSjHQhDINKyYrTvJfBl0zWf8aU5ak1OXGlNt7KxNQUjC7CuIEpqnMTrMbAqx.gsryd2oKEAJFnTT0BApUZ17.TghMa1fZwlyVKkj7fCzKyUwcBXXI+.CXxOv.lfS+Vtrdc8SDAn23fGz8l2ccoZOY0uxElw1yZxp67ieXmgauqO2qsszqOEQ.0fZS7V19a5+xkeXebF62NkKE5vc4mq4tpyTJl5Hdd0N3CAdaAEJoW9UlStqGauodYuLWky2yt6kVKqUqOYDMTwyXiFc2oa6cPi1yQs1WN0V3yiwyrXpYZgFnOgMJ9.M1oRsGc4L8+mUyDSlkwoKl4JFjX7qFCUiIrpk.zff7hpHO0FUXhDPIAorVoBNy0GYpTIeyUUr.watzAlwmpwC1au1bWEwtqh5Zzi.wiFKl1lw3zUFmTmqSzz3RN7J8jevcJOvpbKDTb1fNRh8HQhDIRj3rQmwVAjfvPBCB3.iDYdorU6O3VE2+22b+116eT6E+Zq+H0Zv4i34f3vB+MBj32.xpVIonzsvpKs5nIn2SYvxknMFPAXBdOBbxJsS.CKEYHmdnKS04MgIi+zQyvDZEE8zHkO7.TQHpRk8VObSA7s.XSXWZXHAqNmfac6G47W7Qdnsu226iczF+0TyJMdjG40tT3tO946YMGH1Qx5XTpKHwYhN1+75mm+q6vcrPpCkjdBFNpmb43I.OlHk6zyScpSjD6ZEIaq2+5274L5T+.zT8LjNL8Dshwtuzo2vkEO8WmX0dLKnpYgDm90Predr8e6DS4l8gAQPAU.Q0JXXMSHU88c7oMU0ASRElDmjbxMIN.YXZoJyUjGNQejQPKQW8h8Hqk5wxGaMS+c961KlLNhyBrh2RhG+fu0s2049OrpxPzA3NbtR1pEJGy.WqlqTY2gQa.kb.h9YdbjHQhDIRj3WYcFaEPt66FSEB0hehQlZG8KlO3KinauPUAf24qewuHv3.RcDWNxe9B1+w+n6u0NdBbVZoqUpQudMdBRM2MOvsF85syc1q6zgaUfsRdJ8Sct362lsmgdJ80fe9Y.hpzbuj3Vn.wgjSC6864cHdGxeUfuo+RY0m3upK4bdah97Wm2OvDAZcCLls6i8iw8.cjMtsUmdxTN5tbcIFIBSaSuJWKsB3kmdMhzmCCOb7RVxxhX75N6Hs0YJitLbhgVSsiHCxx2TuwuvYdEdObodb26McYy37PnxQvBM.lASchYkPa9nMKoQ5IdMQAQQEo.V7qF6OzzBCMxyA5D0IdVkHfHRyxekHp1bSh+u0udyqoTfRR28htvWHMRegTy6bemmmswiMpFOgEbRQ5EzZ8ihGWJo2LaMN.zKkUjsxPgtAA4.DWnzS6zhLQhDIRjHwu75L0.PkM2ewXjhzaILasSrCMDR4vh1y6ytsn+lvm2Rcb1vqBRmB0oA0k1l3SboCMzU7W8Rdj2v1tfG4MsqKbWuyQNuc8NG4719a6Pq+G8abr08ixev0c3eysu1sW9gW6O5h+mW6iee34SImPxoWjLbcBGrAgC1fKJHBo2SmltmsH4ctIJjRQO4iQu6rNzKSy6S9XLszn2Vrb4K1tfHIxEfFwP8wtpw9+9nousscTP8h6X9dOtifC1FDMxddYNN3NwroNFE2bbgahTb3wRw4kM5C9iO5lZHXwwhyhV92GfIXB4cz64Z281pKHhtqGc1TnRiUhadrk4a9jNO045D8ysQfAXttdchDy5mJfif.zcDV0NCYep2Wy+sTVCAKCODskiFoiXL6zOVFrSAtsjxj9BloQJxvdg0uts3UhqKy8UYu0mbjIMWSOYUfFMqRVIRjHQhDINayYpTvREJAHn8fVJDmgAfRM391SFp8sqZwwS.U0HOLBznd2wa++0cM1du0ov0sErhRrUQsM6pxQwJppHVfozLOvqq8ouLj7TxLXwRHOoMY8S+waWL.uRLXbovf5PITTiHaxCjZCdauKO++22rczC89MO9AOftxVa0dnC2XdNPLocbn0N9+Iq4706Y8olYxIqWum0051+Z20TTOtgUO9Qdci+s3OuqWClcBtbG8G+NdmqRoViTjJ16QGUeGSFCR5L571z65a0d2Du2BUc+ZUnFkvnnlMcXreaWfXGKBfEowXycxJJJFp56z7cfxwggHUn4LbWc1AV5+z9UlD+phJUvPU+lAC3WMdtf0UESUlKMr7cTsZr7j5SHkDHf52GlQUZXhN1zHZFwzomwa8yq1N9a29BV+ezR212aSiWkOfKgv0VrU6a6OdmYP0HJ.D9rvIbhDIRjHQhmUclYFHUU72Jt4p7vdRPQkJDEDPb97RZ164LMLc6vTYMTWcHBGaMD63PzgUcx81hN1dPGeehN49ML09bzo1siTe+tzX+dT+I7n9wSs7af3tX.6fTxRoRPQDJhfVRPe52GPJkKGbHjswOvEF1EJHJaI5p4cklseyMp5WJdaaZ6M5c.f+k5lu4dre35VwQDfLY2WKubZzEcYer8GGU52Yg+jE0pryVLML53GK6d988eeQGGga4+Sl7a87zdujVs+3u5Xoux+aa+xGqgtb7RaH879Zs+JtrQ1UUDmVPGf60T9N1r.nqGvLEVAPTGXLzc8.XGrzoD7UloExLs.MmU64Zph9TM1mSNXyDmk6TtNglQr2ru8.bxUAIu4IU3Bjx5vA8z37dCTeC.sdte5Kf3imQHUrwcEMLtK0odJRKqfL6fsZ+bGewY.3F+vKtF.bnARVItDIRjHQhyBclI.DQzp9khG9ltZGJD5VFUCBPeMuvUHG3ebCslxXIsDQJSMSZoFokoIqLEsZlT5vabZkiSV4Hj0bTxJiRVyDjwYbR6LAoLSfqLECTcix0GdEJRYEJ0b.SkPyOv.l.F9o+.cV8jF1v5bV+kNio.29RlGeoG7JYwqZKrf3sxFcdK8VNEkx49U95Gs01ussO730bufHmVUMNhTq6E+Ow1a9vr8e3X0o0VabQqvo+VcEbaLVCcjG85dvmWtqoiq92rwfLfkGXRSv+8s859t+n5eoZwNJdowYs89W5cwL0x7utFu+awOtFi3stu3UXDfwZfLeAEhvfHKMKN+TG+8zksZOmLMZpxrqHRHBRwm1urj3WMToBl0D3anmtZd6DZdIysS03py9SpxDxS5Ng++Yu683iq5yC7+ed9dNyLZjFa4axFiMXiwFHi.RnCjKanqD+ZZBdKzj96UOytaSuPaZs2Mz3zMksrsaSmYZ6tcSaZZBMjT6lKzjkz14z6jMNkRJZ1eIERgIzPXT.7ErwXarkwWkzb4bNee98GyHYYvjPAhMN966WuFao4x4hzQReelueedd.QL0FC6O1BocpXhzjIaqLkOhHX5yiIA5C6Pif7S04.sus+WOWpVjUCnngwF0kCHNNNNNNmG5L0RvRpJiKA7dZKOXEaPQI8c7ytV4C7QVgR8I8u7UI+g4xXVzfC30QEcdo7DqQHIxpYR4gpfgDoC.FewXLXjTXhrXa1RaerSjzBn+b6esspx0Di.EQrTA8Vqh1n7qf0f0kub4a9UdJuW+k2Wxe++bqurp759mzCti9nBJn1ZH+o0FGeDqfuoC9JhHx7V7m7R9Lenuw.qf3kxR0f7SzjsEK+c+hWxe9k+qui2+INhcYwQSY4f69y8nqJ6minHRSBoDH1hRlLhLvB27J9C+CaL3hIFpy910g71c5iHC..k8V8.ksL0IOTMFT5bxyUQvpZMJL6GepAbF9JIvLmuuP2kiWOMlvxvm5iWAUCnns.6zryFMkBm7wmIHjDpHdUf3kc0Zh8.GHVhNbKR60uX5u8zO4O2tXvOyPehIPexqG8CugU1AxoOxlB84NnyYhyQGGGGGGmWa4LR.HJkjst1J9bMDSHRXHVpdM5OJGL0tdhSj5Quu23+CNQy9oCCvh8LLkjBarkAEM5fIYSsrLs4fQcGvSe9FRoBoUgrFKcrMAaS53oqe9QBAgDFVr6tkStrip7xqQnS8zQRgaaY7Y9zGbdKZPtq8eD9PBzKkKPr3QBFh..QUCB8u3+8W0e+25+SpUf1DhySnB4g90Hroldy+6V70+iW8PiEGoqnSmlfwOALdwpGIphUDvqu+1K4KrqaeouA5bbHYHxoiu50DcYbYRsxqyBk0uXVjiN0o4ftLZuF+9KH.iYqHXAnEIzs7qNOW2.SqCPBCOSIaFl8RGQzPHophVX3WX2KuZU79PeHx7v0K0ZcSS7wufae3NO2m7a64ksChmOxRZsvrjpADW8sgEvbGacudaeQijPYWiHzwwwww47QmQVBVBUz0u8RQRHF.EUSdj63B7uDVZzs8SLuiM1Z56XG70uvIdhoZ8rSY7OHqwauSMXl8yR5eeodiKX6Sd716kqH0dHWlml9rOMqvrKFx6oHmraFT2GqZgSrm9LQMtkArTcDIPC6NnFUEo6+7xdf1EJjyxqOkFmRzm5wJ7was2BCrv4w6W7wp.JFU87PS4az9x9IV4u2z8m+e5o9ah8IBHZXHYrQI8cENkgicXKqoyzi9CNuINzu5kl+crlTWoGpkjHOTPwzwhWaVxnW1Juum6+3ReacC9HK0mcPZixMX61eODxkCEEYl9Ms2juTFLWsY5MHtfOb.5dsvL2na.Ay81o7bNcu9a+1ocHiKWSZzz8yTZm8DQxzJRVURsZ+1oo+olBSHPXeMkkewoUJOVBCWzMCbNNNNNNmG5LXUvpB.QEdXMUyFHyeS2gI8AI6w7v7dNFRe4HI6nL8g.aJ1lx.akzrYcpcMkYfqZ.6mCzBSaA7fi2ci1XmMkVAYUXRJbQ4z5jUpyjxNCoaCSe18tJbJUumW511V2q9Td8Ka32+Bml8ALQjruGcjsvX6ZKa4A1cxFWdmjkM48lcw+ru8nYdMS8PXVxsPRyvFRXvvVpQ6wt0caXnQjCN1DdSt+VdqYc8m7A9AVvt+OuoA6e8aZ6QHcTI.yHuWjc7MH0xdKDenshYv0exAA91XmFn.pVGQPmbRW4z04rq6bnQjkN5R0PBSFYHD+HRH4foTcJeirrnz8cUdQ662+wOxJ+kujh248e7GdraS+D+J6pO82UhkhmsO5cbbbbbbNa3LVmPuJAlhT0dnEiWxSP+S8Pjd+e9O70D8L+iuKLZNDMhNM8j4e4267J7N+VK92ZS6K6ErIamUSm4ydh9kYGQiU3FN46.qn5v.BByTYdJvHF.JDLhzMQLvVRwToaSD7kkNSlVe64iifEZ9za8YS8ddOWPDMlvxUsDcgCraKAnWAu81.rqx2h+t2+pMir4xcpM56J2Hi82LITVPUUDQKETyqb97cVZgEp+RehsOvG88t1on.TtLlJTzP0pQ68NH8k9A5thtN111J4VeVEJyj8R.3tkM2QLPsD.zbcO2suBNGcbdknQ4POfjZ0vNzHn8e4epKsydC2WJwKk0eHqW5K1Hdn4u0QMWa3ZR9R+BGqC7b.tYgywwwwww46cj2LqLKkTS96WyMvM+EFVVvkFK4tTUFbcprjWmJK9xTYAqUkbqVkEeEsjK8M+YV1V10kjW0Ek+.ZtBplBUO0Y1XFpJyzv8d92J061K2C7a7FIipi3q5H9OllOc0Gq2sp3AzWuaB.kJg+rGipJLxp5qvCqoHP8HPmoBUIZU7TJY17FH0CqER8vZgTcenQ5CUkQT0eUk9r8Mhp9in2uefF3sYsPpGSym9wz7oUcDekRlBEzTCdU5BkTuiCZ7+QNvUcw5BYsZl470H4jMhvt80gt2F4LVfmNeWnpvMpYl2UnK1LvG7HYV1Woclk8UZ4MvG7Hy6JzEO2ue97Jh.yjJRmUM60WUC7HP8xWUSuv0nClcn+7im6h91Q4t3cDkZn+xnbuAcnEd65fib+pe0p3sAJjpJAuvp1liiiiiiy226LUmHVevR6o8Hih4o+bjcp66C7MzieHOs0gPm9fnG+YPO99PaNQh174POx9yn6Y2+rG7W95e7TGs66R5g.uQ5ciRpgRpY1AnClYG0+yacpWlY5+2u77ldSj.0r+T21imYXFx1X3wiaL73wE61nCaqUIRqh4mYD5aT.EQt5WuzO.L1tZmq.5HUQXmawzafjhTjzPYcCaQi+Za8XF.dyuYxB0Zg.0FcL1c4aoM.0XLK7RqgAlj6r+.RcN+gpX13F6U5m+HOP5Qp185uj9vy1dOXiNXrZ6DKl9X5s+e5ojoQmXBLEKRxl4l5NCdbZdCEbbbbbbb99ZmwZDgiTFyt1E9Sd2KdGzdpzhschIdRMU7wvO5DjNdR5K9XdoSlR8rshHtIZq1oez0rleS.Fnwoa4ZL1oauIuZlf0COb2bv3y+gOPyvvZZEJQ2kzkJ.di0.YrFH2xnDOyq4a9MoIEGNETVpEVTqAIrlMXoLBppnZKgM5KH5ac8CZA3Ad.ZWpD9fnT6FrTDSsxXQpnAgcaWzsHqNLCYgZVgxTuIhlbxfNdokD5NNu5Y4Ku20bOv6o8j0QFOfnENESeIW3u7kG27QRhRdNCd8qjZoIcNDom5+CF586cBHu65UGGGGGmyCclI.jxH6caayqyUgAsYNjHDhL8YRjE0u7jke6CV3i+iO30byqw6lFPrOdZh885Ucc0IOz66HecriOLQ0DItlHwkJKTprPMFMoFilDBVDQQ5tRUftkSzmW084kkf.zvv4NyBkm6flhugJc21iNL5n8BVYiaDOBFNAJqDLmAYUFEJKr90kF1RDfTfb5LyBR2CdsaE9MLr2yu61ramKOmNSUrBW4K04rLQvN7vnW6Vvas2wgSkq.JBLv.XGnCSmz4oiPOtAoO03uReumo0757bXPU8svmNCZEDd4UbHbbbbbbbb9NqjZxqZZV9x+AwyWAZkRPyJn5exUrX8SttUnepK+B0e0KYYZg0L3.BpOhJjRwqOEyB61XOdQxyid6k4tTNdUaYcnJlpUwalakTLmRddzaYU8B1mZIyy64b5XdXsPpt4XBluaG2m54pJjWSO+75hb4.x4vNGOGPPKYHHe5Qz62eD898ALTPSsgkq86m9cehTC82NUlU9MhSegi01awezirv.cv09wzL.Rub.4E6b3r+4liiiiiiy2SbloQDVVXiaD8aePpoce+6SGCrnEwOD+zKaJ12jMAfIhDtlCauxMQ9uwAzwEMVkjXQLs9yhe3B+0T+EtsqW.pVstzKmLNM67dCF+kYY3clY+nQCjgGFcbBjRHbJUVKUOMa+xe21eR2sP8jtGde2mQidOG2.ybdskpAw0XLXz6JMPqR0gCuVLWvB+eupCdv+hcKRZQ7VlXMKddwGF+zKGkQTuh0jjuCaU2Li33333378o9dd.HphILDYyadD8S+opQxrsHPj+S0x+UK2XB.rW3vY0KZpoMqMWe7f6ejs4YpgWuVrmEj5Ourvdmg0s.zn.JALSP.yL37W0F7RP.JLhYMASNmFfNTBQpfpAf4fLlTS0S6folYcggdx.GBCQB.HDH.cNAeHmxK8T0a6LSipVT2XzbNaqT4JFJisBkfw1Uaj0mYXH9uqe7uzVXdNMQL3GoRJeirnV5yg4H2G9E9IHpdsRdPk3u66EGGGGGGmuex2yC.4j4eQs4tjQrfXpLbinRHBMx6CvWecaOZC+2IyaY8WSrUAKzFHChvuLeXcua6Q8RutkqYYMJAEL.jiwT.B.MT0YlEjYZ7fxbyKjWs0KHDa.iZnbuysxuX6qQlc4yDD.DVSedAe7hbbNyxoZ1yC2Lf37Z1nzXoB..f.PRDEDUFCOLZ.Pk2xmNCOXklf1oHazWezM2Z8qEOI9oSowKSL9qLVLyyL8N+02or3e6Uuu5.Z4lHUNaeJ3333333bF1YxbAPASavlALFTOV6cP56Z9prjagD.Z1.eupnM.OvCvlFwCTkIYzzoGbTSGvzAneHIEn6kQSh.YBvNBHvXTiQSN086qT0ryLALgR8StTu5s7tBorRkJcu+Jy7PO+D7e1jGmvPjhEIgSSvDyzTEmIvjdQQcx4MZt66geEcR437JViF8tF9AellPUOPRXkA9qqusYa0ZcQW2B9utpG53exG2lMcNO+Ef1202Ypudoc12EWYELJd.tY.wwwwww47Lmo5CH81W1zF7hAiAig9GA+AtN7O1yQ1i8bjcpAn+EbT5iCRZLdf3I3gheJhOJo6jP1bPlbPlXHS7QIMPlk.lo.yDy47oWBW2so+UkWsa3YcmMGQ.JK8x2iWxyLQ2k0U2CyWrmyLAvbZC9.fxHq55Ni98OGmWfxkwVrHltyTWfxadkYYO4au8285h77PSTZaa1.hlnkPhlJ8xS4k4xS2FRyDXnj5tF1wwwww47LmomAD.7.qhIk7nusK6GkTyWPjLF+rFRGa2iWrZaNYBh.1DHAAeCeq23U+NIy78v2zcf31Xk1SasM6jPRKcUOyN+K5rssIrtWcOnOMIGt.P0pcOYJJUryNsGfTsJl4Dfwb2NyYlSJYPKOSxwO68N2sOzMHDQvdJAeHhVsJdEKWRSsouqI5tiy2SIBFfnMvVRsE1P7lefkE+Xa8tS8riWQY2ZzNKPxaR93q9e9He38Hl40w5uvLRpUL4j6bi6Yn0r4kkeLr03Uu91iiiiiiiyq8cFL.DUL3Kce6NUqMokvQ20+aRDCFerBfQAi.1XHoiZ5M7eaTRh8odx6BSu2rTsW6wP68wZBuQ3OMbc2stc.jaPmMou6lmEuRFfivKblJ5l2IAmrOcLyyqXfZqFJl..VSACEpeZRN8SIvAsWfFJcSids6xvZDSXiILnMh58ZNk.ePpX2d9x57eEbh437pfXPkMCIOAqNS5wf+iW4xkmoT5DBDJVDV4J01qco21qaGG9y+jh+hhDwrPw+hmrMjt1Dz44s8Nc+71rlclAeUrYi5333333bl0Yv.PDqB36QBI3k.HZjQUPR5fJXSRvX7Q0Djz9X0Xs2RmR8Rha+hNpDq.UmaCM6U+AoXphRwtIOOnpTblfHzSFP.23ZyTnN1OzZ1L424GSFu1A7nu7BiOdhpXPJQuiKEJ6AUhKUB+5TPTtIJyXlgYoJggTOXR49BOhOWoDgVRJT+B8nvVHLHvVkPsJAdenrna+Pm7bLIGxKX3bNNeOjhZnW.Cio6tCLR5uIGwrx8LeN5aXsRfdMw+ee6XlZGzII9fQd1IygjMR5ak1NPtU9Nn4kdmi3W6Fpo.IJpHHd.IAZfIjpcu9t2L+Qi7d.Ts53I8J81tYAzwwwww4bLeOa8WepMKvQ7Ucj9x32M6x88frdP+BLfAluGzOX5WfzwH4RAoU7Fv.yyu6ya9FXvd2xYfAjt2eeBjQ.tmB8s0ss1TMHuOLhob2CBo6xcpzrMhuWNmJ.16iq0n8lEhtcx7dBGWn7Xcahfa8cG0bmMD.ZEjUeCut9rL93IAAnDhrQ9hdqm6NU22j2JIP2dKxO2qudZgJ1JbqJ.kKNhTf5Iat79aoncCtovVdAGX+aN1IOeLHh2jtAi4blVY5kGTc+zFSXe8rvj4eQGOYoqaP6CTLL8h+EH54lGchh1cbBISZjTFwaQyqyd+e9PQOFlZiNpEHgm2uOJOgtqmcbbbbb99P+qYFPdw5wFy89moiMKyz.+BBPqyjxR2SJI+p8t4EmwS5OMj1WhZOkNu40hoSr3MkMwhR6VovGO5awheSIRSEaw2DmzxOkWJEDau8+T1DamDzIaiscF3YOZjbk8sDyw43I0YxdGSkEJWFJW9kavGnnRQF1eyUqmLVi5FpPLe4s2l0e2YXqu6HZTUohX2vFveyTIQJVIBPKnXF8Cg2XigJarfGaodBTO5g0Bo9wnfO.egwxoE+P60iu46tITVXiWqo3VpGA3WVJALtPg5dUqGXaTNTO7aZsdviXBmj3.xqkSiRGWY404rHsa9OIR2E8X0pimzHDa4gQkhXG49GQYTfFL8S+EuiKuyS+WrOSeWf0ye49Vu8MXzSgGiV1zM.FQElo0+PpJBcPKafxZ0p3slfBFHmEfhWoaIX433333btpWpAfHJkDgJ8V1QkLTtb2GohnJklsGeDVshDFB24PiH0lXopRHEndBWzHZ8+lK+dYfgLbri3wPo5ts9ZGn6+ulkEyNaJbcCYXW6BlH4jCr9HKq6GuvCbxfeFxSYhA5NHjgFxxny7.iaA3ZE5kb3UfJPcsPpB0gprltAFoce2Umsb21KnoYRf7Sl74koZ0wSFapUkZzfArkFe7zUBIhu716.HToa+FYyadDsQ3D9adCiqaXKkRDohEsTGAfkWNAPAg5.O9Cb.e.FcnlI09xauMTV3sbQ8U3i+AiWyl2fWHjDJXZvXB0OgNLcq1PggaWaz.ggAgJZdJilalQrot2sXmynTEScJ308iqmHBZukEkLbu9WSsaPhGQGy+3y+R8ROzE0o0NORSMYxLh27hMdWPb6DxxdoMEPnNJcmIDKcKOuBREEsL.Tfb5bKm0NNNNNNNma5k7LfDx3hRIlIHjQJioFksUGFybpBTDDfFFhzaYUz80FhDDTyxvX61P9VXLyLKEAWZuANWyRA.FwvpW8KxQQtSy88BGPxyO2OTEC0AJjSCH+oaf5JfDDLxrARUsZstClpZEg748F8Bxk9Nt6mNS4auvQqD9vBHfTwVJfzku8B5G3irC+U+55y9C81xynOQkzLp1oPc7xU.kxPsw.pMh+WXLh++cziY+QYExpAS4p3UTF1KT2SqicGaM8+7IFyK+PiZ+09XHa+viFQYTja.UJIAfF.Z2uGnLNfKIzcdsjpDXZv6cNIRdI+ZkG0V3lIdmakz1n8lD4uXOi2UzRj9R04Ye+O5EOzG6Jd5iwzTRixGJCTtLMC.J2.SkJzsh3UEBCqoEK9cqwc53333337ZcujWVRATUEFVlojvVix1RTg7A48Hnfg0zsyj2qI6Ma..h.y8yOobZ2ayXDyb6V3uzMyq6j25kyIydCFwPgbZXXMMjwkPFeN09VEkRl4Ttc8A7CBFQTEoA48t285mZ+GtSlMsoUmvIxoUOYk5wLb.ITndxpec8YW9jaO9JKNdTsQ0NL9c1ey9Pd7a6dyLYcDpQBTq0nCMg451yRLCVexLDNgOejUltZ2ozPVwlVexxG8Rkodn+l9m5shW9.7KTGeTkPJKkYTS3L4ghBq8GBQGvsDrbdMCMf75vLpBPUv.URnbYxU.kEBYVW4qT0lGjji1uwqeijZYyqkGoYEHiTFyvMBZ1XpUkpA48JO7ICv3zUZq4eE8dGGGGGGGmW63eEy.BhRfJhnnkD.FNDY37.zTfrJbZC1X1kzT2xK6YukPQwhnJ4moSiae94ERXXMMHXDfIMMnoYXvN7ZxpCW.cxC3a3DsfwNt4+.o+lf4xAqTrnoaTVxNRXdK9sOx8en+uSLDF3V6L0CgYwe32dzZ.6sWULA4y68ENh2.ukUzTYxzdS922ruU+fOy81l+5qxfuTKkIgTddx.Y+DutIdW2t+yRplW.Q.beEv7tN1iZ95amjteIsah+Jdu3uKv8JYut2kXmumPDrkz5.zcxKgdyPZEsJpI.T8gK3WmuHar9EhY0av5cBhZuymZQ9otjHi2fIF+UXVQZ7ZNMCLYcNdsch9v2xRRZA.iHUqVyTrH1SSEsyE7giiiiiy4n9W0LNzKCym8O7WrHIbkAwbkCYCu10XoXotMmidAnLid4HBhbZGHw2y0a+1MPHpXEpXoaO2vJHZuOuqFSXgb1gYHK.M1YSoQillb.W808naL8u43sAtLS2NHnsWiDraE743G+qT6Gdviu8el+mqoySSeK4s28quMJKd4Cx6wBy5+Sb8o8nkl9pe60+4tvO6S8rswb0IyTBgSrFRhUcpoduimI6Idza3ptVeH0ZgzGoN1+lA2zo70tzK5TCtHImaPYNmcb5945PJJa8qcLSezTnvVH60Qr2kPLI6uiM43hfIkI0EYGee+16HkPTychPipZApmryFMk6Xq60aNy7wozfNOich43333337ptWx+g7FLp.hFPQSvrKgIUBorPge+tAXPEclgKDLmk4zyqw6MafHmotMmcsNSoAFlM4ym4ymyw6jy17.GdMY0gGdn3evejG4Gba6z9a0KUu693FwfGVwj3YTULZbBIR1Ni+IpOYcVXyAnuo.y0WX49o2ZG4XORmLrm3Luyhe6e3sse6u6jVXR+T1l9FiEEiZiREEKllQJQIV10Scu6bS+OWk+wI2C7zjdK2DIg4Gx.P9P7OxEdpyf0yuL7d5W5aNNu5oBpVAUmIn.kRxLugC.r925f1v6ZJScd334mmjUsQ5z2O7cdEXmNRvWwagojTqNocK564ZQp7A3KThfVY0MszAsyTM8XN+7JLhwM6dNNNNNNm65kb.HUnlUUjqmGw+54Q7qFVoW.InT+CYCpFxCqE7K0X3Tqca2cpFMZ3Ev3hpHgUEipHmZuA4L9Moay.T0YV9UUqhWcJ3Q8BdpBAAiHMFF1E47.7oQde.pWeRyAOR7JS5MbdA8uvRhePxOt+J+BKO2W6ody8eUq17KlxndhFCI19Ovex+1eM6QISees+1T+Gu4Kytt3A8FbQIxW8tN7BpOd7Gsk0CM8fHyeQaN++Rq4wp9oxlLhNv0noGNCPJUEhSRO0e0m4ipGkLyOCdqZ0jd7fgimYXWdKzM.Lmy9J0aZ.mq.JqAjW2xVpS4aY2cHrnYngwt+mrgj4xXZaz1SS7DnFeA+AS2bma7a14qh+ytY5aDF0Tu.bW2yg50zAYN8wmt4I1KRNg3333333bNfWp4.hBncGlw1aO2GPP5Nr7h.TOYtO13L9qAWSPcOhlYlQTstRAP5VFaS.RJgH2LE7X3rTfb5ItqcYeh6e3+jq8GY7mb2aOY9ehVQgEQr4uq+4Lui27.9qtUq99W9Gup+O+a928XKs92t4+8NIo7PSVisE8Mu2567X+ye52SpQeqKA9hQ9uu+nmYSG9H5RnuEfrjK4Scke0G5+d5KFK2xc0gw+SjuNcdxe34wk+OMU72NJQ7X5V+PG326Oenk8G9u+DotEz.PNHXlbMWnN0enaPXNmcUMT5V7I584yrbFUJYBYbYgaIvVbKM7gpQ0JgjOX3NG3KSlEu3ekUdzC+GsKuAt1H0LOAl+B57TjY9uOlbRFU9oKWWZTlNyLCHpNheclTJLmY8PULmMVRmNNNNNNNux3VK0mFUP0BTOo.0SFqbMF85FvR6rI+o+UE9pS74HrX2ft7t4aYIIW6Ujwt7b.mvZ9O7lW3+nwy5gOIz4Xus1SRliA9+z+HqvxSlp+m3nwCbvSv+tXEj9x0bk+tOz+qzWL1CAVJiVLLuGEJH+C+.qZOKMKe.eMti1Ixb7u5+62pWCRsDv7.ggoWJn0Krujce.TYpW5AgbxAq45kBNuxMyxtZMAELyLiDytjF0JDTMjfpgjOXbfqMKews3MzvX01HsRni1Y2cRRNVFUR464cIIrejN+M38zkKmY7xZTwh3OyxH7jMWzZV20uNNNNNNma679.PdwRL9Yt+QqnIa51FW111Ob600YxVcSzd7nayRCehiXedcXazoyT5zcyB+DOl+f2W+KiDONj15wkTzuMym7eZhq43SqqLRMvfK7Oqu2Js.nyV1hAABX3jv5MExlRGdgdOgOZZhA84l3004BH9HesG2+RCFJJOhdiquRpQZRBG2MKHNmcUfbZXHR0p3Ma4rtQd+m8G7p6ifBYJWcDixM0h50Yx5HWv6jVLej3jCfZ6DKdKvJYuLZsqe6c1Y2jdnfxc.HrpFAcykoYdCAlYeJxbaVnNNNNNNNmK479.PdgJKLSu1n2m+C9kChu6O61UtxfXgJo.hozHlew2RceBA7ihY2QI26ibzU1whfQgzlcKKl1YH1tvorBSS5m7YieiIVfTYS7uvU7.zObLPurMrgNfjJf7Z.CYYemv+SM7RdhbdrOhAZ05xsGCIya8JrSxnRXY7+wtXriNQuu+o93I9eG+doqxA47pMQvNyLe77yIiFCCG3BfCcnLd268dDusrgJdvliqWf3rGA8XKhlCb0elKU01fHo87Fx2jdkIlCh8H2A9TlS4mCmIKSpSAudKKKKtjP2wwwww4bRtAkdxjBQQDsZXEoaB1OyCVQKRHkC030ygSAzgpAdL7R0OvGfN.v+.vhoyieL6+FMkOjJMoV0kbO9IzpehrCtfNwr6X+josYQE.eOy7u3cqooi2gNjtTPQKES0JxCDriTrPqnGP5Oahm5a8fIaccG8y8LyaZvKBRejKby9aXKZxpmBiwCkmeQ754et0iKHDmu2nlMLDIH.EsjHThJLbxWmTcNvRNZ6U71ii1vVJkThw7PDpuORnV29ainsiMRp1XR6KlA8sQX1+SSBag9PJO6dPoDDhTnQSIHedO20xNNNNNNm6x8Gw+t8tnpkDPsqdU2U5uL2QmpUwDD.DjWaznaiX7nqUR8duqmd0664zaiz8oRt4u0U9I+DOvz4n0g11eskFQF1dr+9Nl9SlPZvjoo2xF9f9yCatkrjjCxXR.iKa5yf+agmoC.seZzT3YRQJqlXmeeW+Jal9X3ezuJo8V3FzOxJIy2HEoyXHsXFzfr.Q7I0U2O9EtV7CxqoKMhNmjz8kaml2w46fSVlb6sjnJqPYMj759ndxl2ZGoEY0tMnvdpHdnXOQaZoc1ilD8L9V0ZwewxT6s7NF3YXAqJM1R.k5FwNBkUoH1FC2c1U5wc8riiiiiy4fdI2Iz+9VpJHhBHJJDHmrwmoJi.FTnl7y1dCa3m0m74k2F6TCCwNbPdCCufLK3vSm59dxl+79ogDUkzEF8OvbA4ZEAc989Wd+wm3ItrTyqu1IIIbbnuEgouTXVtBvjG5q4cri7g7pcYe4NJkhtqUQ5aoSc6pm9olTkolRvW.Sj+yR5VGhjleSLc1J7LyGIWSR44QJI0pRIpkDgLGoCIK9njd94P1wQncIT6XLpYWisK+qazArCS2lx3LuCxtpHjyqDRQRN063j8KvJ.pt8nS942PBcC3OBQXUqRSV5BusK6adrO5tz9eyIlTKw30+0NuVO8u6SDcg+JW534wx3z80n.kGw6FKVyaOUosK+ObbbbbbN2kK.j4ppX.z417y16crUuUrorInkjMyXZXiIjKZaGynAgIvMJTehLuy+KiOxybH8+TaqfrjE7kWwevm8altwAsu6gWVm2Pt0lZdqMSBi2Va2QSYjzJI9M4.OmL.DyRdqIMOvSqkJg2XTgaoRPD7ujlAR2V.eEqf3EmbX7RaI9P+5W4ixzdw2YrzuwbAQc7uDe7WjMVknGeu+BMznmp8AzCoOI1DzI89QYmKerwfacnAri2.txqzMvMmyZNkq8V8pIN6dY5jVa+3lzqXwp+ka8xbowXi8mXm+bMpuxOykeQivTb4E7oH1QpVlZLVaYieQOndLcKFDwmcNUbbbbbbbd4xE.R2Y+.UQ.TBQBJVRoa+LPF7std6RAEFUW+5Eu2zVIZQacsot36Me+Cuv8l5Q9RSrzG4aG8wa21CxNXx7+Qt82KKh1rvZctYJ3M85i7495X3PdIpRSAf33ARrW5IhdVhW3EPm5W43I2rVvuPilB2xAMm3Or+AR+XsWTm6c59sxhUTUNVCZkaSz9p91O1kbfGEl2Wj3iraR6MI827A+oeB01Ict07ms5rqf1GXuD8Q5fb3znUFWRpNAdA2fFAkEsaR1CLlg5SJpV2MKHNeOy2oqsFsF16ZUzY9W3GecG+H+t6W7xkB+KRDu9xpdKI9BiwTqMoXyObKnrT6s7oSyC9LsAhgM3CaN9EI2mbbbbbbbdMry6WC0yzQzmYVOBKFz89ojAQz52CIgW6VL.7kmWdsRXfrokNnc3k1xiC0z+V9aOv+4i2TGx5kCypt9exK3O98cn912ASFmfnc1norqGusgqaAJWYV6RVHeEi1BzNGWOvilNkEs1nPUBLEpexio4cM1N60qYJ0y1NlNh3ahrSLQpi94wNwdQW7amnUbGjj9ZHQSgQ0i0g3Cm3kkDSFzQZf8yMH1xiSrhJE6tLYDnLgTTnZEg5S5F4lyYUUPr69Vni4Jwl9x+UVmMZucTcZQ7FpCYtDyDYIKOCv51TZjJo0G3YZugMfW22rfsz6ZZGGGGGGmy0bdc.HphoNE7VSPg4jODUoLiZftAgnU.p+Y6NSQACmPPdku0g7nYZ++e9s14M7TSl9W7DZNjEdg+UWPo+1ulWCRkc3kZoLRXkwwLUtDltkGqvuu4sTubV4DB5wWPxz22x.fIvbe71LgW6ZrbkAw0ujIS3SE0wOSlo6Xn+jLpkA5q9Z+DCc7U9SQmKDhF+Z2hxnvq+tII0yRShrwBoZZm.y.WBISVeKR8GlXgYysESHHcC9Hj58NecbNaYlFV3HiNpYYWCskHr1ncbBhOtQ7Fv2z+q2rim8CsyEew3y1tiNkBvR8BdadS4kas3P8qJnT9r8ogiiiiiiyKCm2OPzBjSKPNcl9XPQvVlQ6srQFWfxn7NZy0tEeBxqersd2oX0vc7mdvk8ubT6u4T3gM8.lET7+0uQ+iPqNCSbSHNeXC+fvfjssyCnrbOkLpr3E6+jJ.d1XUetK8HYIUg2O5SLxFz.pZAnPAfKsuT+iG43yqYrtX7rFxkZaSee3kCzbEP4l1PxRqgtu9wmiBBQCZfbqVP29ihTuv9NYCaCQC68NEGPdclyY1YcKEpm3V9UNmMszQWpNznXGr.Gq+K424pv1oIjAweg8IYVaqNGlzbQz2vgZxm+W8YRSqr5cd6WbaBQJyXm2+6ubbbbbbNWz40+A7tC9tlEpMmtgtnBBgLtDBroarRJzJvM8EzRkqX1zBVh4XeiA5+N95G4mZZKWtMW+Xxes+Lq4N+QeFuTesVKgvngXLa4wGN49XmlOvZVV7ir0iIr.lJWVytr.HFesS6qO0AXfluKxLwshQT.8K5wCmKCu2bY9S18I9QUAHoMR1k7fC9SRyZCW1LIHqb96IyAUjGcZhYA.j5XP5IOtgL23dQQJOS0HR.nHhsHhclRgZXXMkhkTjRmo+RtiCP2e1SDrgRnTaTR1+xoiWBwp8DBzFDeCXxoCfPeXeCqE+ep+g2Ym0esGyPg5Ig.CWslqfJ333333bNnyqC.A516B5URO6tdx0RFTUKRnsQoP4mYqErMHu+CWdRobPdCGnYle767IdKO6wz+acrfjcf6Y4ev+n+QXeQdKYCsONkSlbK2f.E4swZr208bHuqY8qnIYyzbcWPeOQZ.SbDbzmq3TOD8mJM9YCveDFy6Ye1nzr+iks4Tsxtiin+7QJfwKJ6k+1dnbfRCh22V1Xp4+AdvjcU9t7W65gDe7UIQDw1+IKMohsDi3oJTsJldIXOvo10pCOkN9tiyYEIHPoJX8ZRhsydhrcNXLDqhYAsm9a+Ktq0BYt6ovi7uMYqrsHQvVrHdEK5l8NGGGGGmyEc9d.HhRIQQEEUnWSOCJKkTjatbAYwjyaYGZAYJrORw3sx9W9o16PM1u8OVsBPpIS+CbKaRN77ll5WXTP4wsW+FGWu8EhsHg1hDpeoxuwna6C+3Jdxzuu0N3ttfAj8rHSjpG+X8u2a6Z9krGGo4Awrive0T6cuo7YxjL+L+Za6ZOvw0Kpi1GR5b+sy6ld+GnM6I0Z21cmZUW0WRuX90j2X4uTz12F30gDv5qZb7.wD0bEjfVxLb0ZZcJ3kOHuWcJ3URQPUoQ.ZQBjtc3cwM.NmWSnLP+sHpuUeaWVRziH13mSvzuwK0UX6Kgry2CkgB5c8pJPIa2lDpiiiiiiy4ZNeO.D5VYnN0poyHLpYbToNPKhRsD+o714W5vyCLo+kp8b+8S0RWthOFl2O8hRU9fW5O+fGu98PRkJjbjifz6clUojxAopL1ssxNkOwA5j6GZnlW0fdej9DQxXaGqG9ot0u0a50cyYWJ1kEDEuhUDE+ltoF+D+cOXm+pNRVHy7wrjq4OdE+bL0NF6A8h1ajjY4d5OGo0fvP3oQ0DDTe0hUeZAs1Dm76oEHmBPe8p9uyHOg5rkcXGmy5D1HawaYKi3zWNs0N6XZrS2QDeeuzWbpm7f+5a+ub.7kZRud9QYOnbBC6Ji3NNNNNNNm6QdA2TUFQue+09jerLq8IWal+gcTXP8wKrD89yeAukUa9fyWPGPHJEoUOxnHosHoS.eEwSQPwHVDOKdoUV8UNRAU6e4ad48+X+wqbQ5u7EeIqKm734vnoHi0iLIBor.pXPS4ihuux.qPkKdj+n0dHc9qR09xWsT5Qt+Q72vFHEfTE06FWqlYdWgtXI867PRpa9.yOutn099zLin2uOpJkTLOrVHU0GKe5RJlYN2Bz.upUwqZU7Na9EeG.UEtwteezLvG7HYV1Woclk8UZ4MvG7Hy6JzEyZ0LncmYtY5d88Ly0rmSq24TZE0vZ0LqrplcfeRcooVZ0lYV4i0r+UTepLK3i2dnQzbq8i8kxvMt1L8dotfObbbbbbNGkaFPdQDs2qVR2IsleMDwEjx9a7Qd5KcWOm9a1Qg1p3mfpJJnwfFKBBfQwX.QlIXF77FPZ1.yB2v0GO7O+xZwq2eps7tVxM46a2mGsEORDezHACp0Pj0CxjyJCtn6cMe9w9ejNAaRXnLTvn1ZiNVxx2x8qUQO0uuImbhLhNNBLJDVzT9zbdUiQSxS3rU8KGmyl13FwCHBfRamn4mmDeKQZxQ5HIGMkHY7rdKw1tMoit50Kir0skrpeF5qZUza7FIy2kMuiiiiiiyqAc9d.HZIEozojj1kkZdDCtd...H.jDQAQULlcIy6ISFZhgrI6IkxAsw+YOzT2xQlRIFHFIwRRjkX0HVQDqnjXAa2Y9..wBZBIZyX+EiBAr9xOk+ckjzYzOe9m8Hi+FecW00k5ZHUrMl3zBZDfhjpc5q7cbkWciG8eetqlSL+kRReug2P2sY4Q8loDA2.zu7RvHK.EMFHBYJrolOZsxXoXXB.E.xOb20XuhHJhTt2IauFTniyYMadKZrRIQPzJfN9shkFnlN6uiDen1p1zWRs3NS9nab+m3SQ5Zkga4+Zd6ZBJX15ucA6yaVgbbbbbbbNGf6OdOCU6tbXnrBk05E1P7XiVy15wNjkoak7je4q5Wp4NFI6662ek8i9ASC14AVye12JelGxVHMX8QiSU3A6zWgu9mL8Hek+sov9A8x+28M+mieNhFu7cZeSkO7j655FX5GXOsS115fO4e+U+Tepu3UO3CoERmvuQePh2HwMyMueg22y3uf80weA2SmHHdEqauISV+IEJO5rIM93fr1qCKyGPrHphwCc6ac1yHAfFOu7+X1GraYG9b9kviy2enaNIIJ0vtfiRqKdYktFMZmdVamX7lORp7cZ+snO953M1DCYKP8jwtm5pqO1333333btmyqC.QUL2LE7tPJ3AkEJiPuRS68WV7FqLl+kucKC9wQa7S7ncBenZQu6OvxheX9hdAZPRfF3cjgyp6Lr9LCBRpesRzMUXiI25D0TjJ1wuRhF+JKR0JioCKAx3WI7VNXT75HIdUIYr+.u83nc1nozsGcHTazw34dOu0IywOQGnRT8xip0Xzjl6bexHiMlIjhRCFUBQLoWTukQkZ.DrImR.EZXHxvLd7vLdLgHDdJOtK3Cmy9TQJFTwuNE75leSh8MlfrhHlLo8tmzlLoUj9Fvq+qJSqm4i73C1jr0FcrjhRI+IpnyT9rcWK633333bNjyqC.YFEd92gH5St+tCpI+EM+jvwGOYKKWSJ9YVqO.6rQ2YU3ficP49XMy9NvVkhBvrKwI.+pTzTkpIAEpaxs1q2OO2ocr6otN1ccH6RVRpngYHKiOdBzqWjT6FrHB2ZXM81CqaoRsD1305S9Pl7IqIgzvCfMrAX78iJ6GE0l.prhA588yx85p6E6FDRXHBEKMaNeTmBd3p.VNuFvF2HdUqR7c+QNf+F1bATJY14xH9GHg1q7B9nCSxgrPLFukmX7tjrIGiT75o+EVnrdeEvnyV5reAIoO3BLwwwwwww40hTEy2o0Q9y+wl6yelO9kv5PWTTiNyTU.xCqERo5H9uTds.BZoYesydasZl4mWWjj5cbPi+OxAtpKVW3bqZRP2Ul0K73cDWED50JNeuJXUEu49yQcOGUYCEzTEViNn279cNb5kdOw8cQMZldEesHuA+vSlas5PaX4Z+JpW2etpzrWWq8p1ayTk2d9+74LetqJv433333b1y48y.hHX+NsNxe9O1be9+qX8mqBhU513+T.s.0SfZeG22y7ZATjJy9Zm8VZ2rX3btswZLyRCbDCLhoNE7pVULaoNw0WJcl+P+2dC1nCNg0drzhLuDSlqvL8yVZ6e8zjNDXrQ586vZj2mFSX.nDxoKvruuHfMGGGGGmuev48Af7J02s.Xd0904378StgJjDBPiIL6YOsSsXx4kOHuWIUDNNIrPNls82XgZzgh.iZRMTJS50I6RQJtbxLF.UqHL7PFFdHScJ3Ut21dtU4MkRhhxLA4rlfBte2miiiiiyYIt+HriiyYSyNqDOCv92SaAfwIPF4N6Ff9.C+wWgMZWsz3IrdRVwjZw8chCsoct34i2Wbxd42TiIr6BnOZJvHlf.zYVhUggHcKD0kmceUfbtYOzwwwww4rDW.HNNNm0TsZuxE8vvQacH6QacH6WirZUB0ZigcMafo6eAzJ0hdeWk17ao1joiL9KNRReYdshH6gNDdBUzvwGO44XxD.pyjyFDxb2WgLt.0r.DFVSc8AGGGGGGmyNbAf333bVWKxp6YcCZ+rq6Zh2G06FXPEQquAhm2UPbl9YxjnczwlbDiPpzlzqJSyCVZ6SuZ7ojJECT68P8jVjU6ilRClvzqZuQwhXgxDPdEfBTOwE7giiiiiyYOtpgjiiyYMM5MKEE4giO4RjpDU5VzEDjPy1IHJeIl5oG6idYcZ7W+TVISZS5UhZOXp3TyTIqJ2q7WmSaPSY3F.zTX3tOpPEqpXlSdWMyxwxsTrbbbbbbNCyMCHNNNu1P4xm7Vu.DTZn.j8lQSmkNIwOqfcRQ75Kk3sLM5HjZU6hzTtLk6sYZQ1tAUzJq1M+O5lOH89XW0vxwwwww4rL2Lf333bVS4d+eEQ5MSDc6Gmp1KHgvJRUpPwsTfkOwCGqwOsmlrp13m0S7x4O83+W1VZu+fUke0XCajmKb3I0E1noT+NFW2vaCawhXqVEuf0TnWuvot1cqKyrybbbbbbbNCyMCHNNNmU0alIfYh9nm5Tvaq6es9jOuGaod79ygM6R+cVUR6c5oIshPxJRl0427Xj6Y2N80I8F6lP6OzTlEtk.aXw..jfWvdrrfK3CGGGGGmyZbAf333b1hDFhrlfByoKnexUGUg5vEuozZvvC0MeP1KpWeDqs2QaRlJQjbpWe4S24Y+8dLckHKYc+Xleia6YRW9V1cm6j9SAUoJAc2fExo0KLyLtTVe9cHcGGGGGGmybb+AXGGmyJpVEyoog.pUq162KUHm9U1ZmSN6HamniOeZ1e9+f0Qz9wWiwyeAFSpKJSzAI8S7e6hReEe3mscYfak6JZlMnTDaXXMcmg0sUPcy7giiiiiyYYt.Pdsqu6IJaV2xHw4ba2Silm757PjpUwDDfJBVgQsu+0usNEYoJfGAHi76PTZO5XauCaR7d.EEy78mN7+7SKeSz8tI7pDFHAf1fwjhDZgtcE8hbxEi0bV1WNNNNNNNmg4B.40t9tGbQS2fnbN213CObRc.B61QyCnWvApJTrrjOrbpCx6UnZfRnjT6SfdXCQWzP+5q014YNVh1JR7WbGw6JRZ+Lj8XOKoHnpUHTJyXVftIztVxPP9d+LUY442jBcbbbbbbNywE.x2iLyZL+65ZMW0tCNZte9o64bJO+Syyww4bLEKRRH40MxMkPQUCorzKwwgxHjGM6ZtPcWkuK+YCdHDkiSxjYYp31Ox7zjIRKlz84k80mp8S+6sCNXuWKESJ+YuqzOrVvuNE7pFVQpFVQJgHALtHR2YY4r2Yuiiiiiy4ubAfzyKmjRUULUqhGfnnFE0.p.HhfFF1MIaqSAu497.UTJYzp3s4MJ92e4JldaPIOjpvCqolMHi4FbBH8Jenc04jy.h4Tdf47B5cbLywT26slafWNu1PwxBkKi.ZPuY8qXQrTQr.zbm6SVc4aIt2yNMfxPXmHK14stMeAZzAaqZbhepgLl9tB6jOKymwHMnlgGX2QmxtpH1JB1PIzc8uiiiiiyYQm2G.R0p3UsJd0ofWcJ30KHjS1rxTUnZf2ryTQf1MPBEC0K3M0PqJkVEyXqhzisJRG.FBTCA4SEFDv+e4VqeezTBVSASo.RAEEkxBAUDlZUodWOwPYtr8u7z.rpwFKSmsss9NV7ykcsakzAp5kmx9EpiOnlMvl8AclVzlP5dATnyoctj9EtzRJVDq1MnG2Lm37ZKgRR2fMDUPrEILgYV9gUD63AkipwnIzsyn2ADkZjvMQqzQDqcd51Zm83kfDg2hxz4.+dOYtIIGqhzEKx++r26d3w000g89asOOlY..A3Kv2uDLnkz.YYYOxV1wpYfiUhEskia828LsINI1wogp0oVtwNoNN0oy.mzz33X2aThcCYSZTRuIe4NSZ8MUJVN0xk.0uhq43mBvRhTTTOnHEgHEe.fYvLmydc+iyLffTRQuEHM1+99NemYOm260Yu2q0Yu2qksfbSIEjaJoTIRfpFnXVPQUjteTfkxGeGNb3vgikirr2.jESA56BUdWnVIC20gRymjwrTSBTEg5E7nPed23ULfGCUvT5Qe2WwM7Pq+X240emqd3ed7KVcRK.umcMfEfCb7SapbCETJbHyj4q4yaa6AGya.uK+qM8924e7QmEv9fu02ZiCdMWyou++wW0uY6qD4q+oI7LOLdG9+2+MYAz8vtiADJe9JMs3DExg1INGP0pX5tbtP9lCGWBgHJKDjBW3OUFSrS2h1abiic0DehGWsmNi3uR0DdEl4tmei6eUdjoLp.UnBiZ.0.Q1xLdKnhWsZHSN61CVHfG5vgCGNb33kMV1a.RoRXihPOTs5VXBqfpnkktJtqQ0zxartFURB1WY708WHgIy6+29EmtONQivM78n2Wy6p9NmNde+eRBVge3a4UkwaWDNcsIMmcW07+y1UcyH0yo2I.6tO8QK7nAi7Ay4ugesG7e91+m+8logxkOO.FArIVhaZ0ieha4AeEqpwi7a+yeUdInq5M+61BshTor3M7u+sDT3cfGkQ5NDrTLHh2BJRUb7wM6WKDDkOuW2Ezw.crE+netd4wgiKAo3lIY9.Ncx70WEsOSag.jfMFZxrSo2r3czMR18V.uJLZR5QLZlzR.iE+0e3sDV4Us1jkvaeGNb3vgiksrr2.DHcxnd9dEmJK76csKBpLBZ0HRFcSEj+jO6gyxASx71+GmK9L+smI359Wd2+zS8vLIRXfDzieuulsXydJ7ZcMgx0ccj7ttNR16dqyFm4fwbaG1eSWYX3n+6+N+Xm3D7GzFzVJ1DDvXPzDios0Xncawl.Owc9Ueza523xaekHauxNB2TkBB6ZXZTnljejI8epdXp2.Ycitty8rLxfFFYPCTz.EMSRdennYgXsfCGWhxDSjNIxWwN+i1fM9gZZiOoUL4vDr1bO1C7Ke+OTu3CffD.RHLQSJNtAfO8G5QlexC0PbSDcGNb3vgiW9woDZGuJkz4GKdHeDEg9OYaXoFvj48Xqm17K7ytdkvD4+v+hit9g+Eu2u687.1+i9ZNPMJXhsOXZdZ6ctSY7J6i2bEM4tdBjnnhBIYCF++cys7fmx9GYsXUudDV0Z2SgjGo2B+8e1Ley3Bgu+ez9txrBABMAlOH9He9OVyai9S5+8J+k76o.z5.GUlhwRHDU7PAKIZrscOXnERMxm1iNiLncRl1dX.XFAveDx4C3GEUTbC+DGWBi.hc5oXtdNNs7W4u3Uaa98UrMiE+02xj8J8OQa5429wwCnU4+zsydzBAL93VfrHkoVoNQXcGNb3vgCGurhy.jmBTMMXnUmBd69Fvdme6zujJyzzvOvKXG+T2+G++vDm4.si0MGpfO9pAOAk..Z7cdTe.lt13l7SNRvMTsfN4mY5rzJz+i9UN9sb1YzMa8xYj0r88b0GX5e81GaSB.+WJ8PY9CtwU+XQ4Ct1.Sav1TI4zuqy989Raw6cctdnYfyj0RTdkA670akXfDN5bX29aBApnk5D8maRNcVl1xjMDlbZKzm6K953GFna4A85WEwAgLqs080RSdBClvLZv1B+tm329.mBxx10rS8de8s+q+UdjvHlR.ZBU3n7S6L9vgCGNb3XIfk8FfTslXzE4Ba65Jdmj79YIMJM+MdMnG9vyZ3IVurkes69W+3mV+f99fwBugLl+EqPLGxCfXa6FOFpczM0J3.2pFkuFQ8NqY82yLYG4sG3+WdWGcsO3Y3cNm0SkbqYtM8u8a+oN6IQev+naKn9su6jOSzzM3aYadauqsefgWu4W1yzTzj4LMO7e9qdfcf2zLsYy67pSpWX2wHiYyOcW4mhpIJqpiRYod0ThJUVOTs51QXPasolJo1TSkTq1DsAhAWzf1wk9Tlw8pNEsOqgy1a9O4vp8rsP8rR3Fwlc6910gG8hMuTU+e968XMd32Xsvzx3U3FX2Niwc3vgCGNVBXYuAHvhUDuRm0EOu7kJ0JmFGBdSMhiiQv.ddxeyI1xVVysO3lti.zVdhOfu0zC11G9TlA14axFMBz+2LQdmCNfvr98+Ee7YdcMZqqqE9vJ23+0UrqLyjsORtlJu2Y.nVoHHe+IO7izz+Z1n+ClQ.vhdpC85O8gS6ckIXzDUPtQ9.YxkCUSPvXLfJly9zEcmmvVpDZoRXKEUVEF0BSXcQCZGWpSEF2Vgw8hlhjvyPKa66WU6wAiWfIX8xr2y6+gWyvj4uXXBpIp70+5LO.Bi4UBQAWY.GNb3vgiWtYYuAHQQnQQEkp0DS0ZiIoFiLgsI4zljSkRo62reyds7UyoI95odsWdvUM8s9Zinc644DfA+.OD.0nsQ7FXk5PTvNckoren78mv7IgjIdEw9xqpkBIFiHqbseMaSZ2ZczdhZkTFCMh7JSMUxVeM82527ZV6T84KSSrBMma6dVzYIxDIX10v2Yv6iaMdvSiIcNfnghjoE.Iygv3ia.Q20MNVPzPELTufm1IhgfLlhLlJB1yEXBc33RUpnPEpVD4eUSZGt1ekqHo4c2Bct1Dzaf3eE1lGhdNcHA0.PJSsZHkKiy3CGNb3vgikHV1a.RJO4HC9gpU2Vf5I.VgwzQlJJlcWOY5+WE9DekZ67.rp5VVOvZ.kXErnZhpsQLqB83fL8XQJSOn8w+uOSHOnMyLmNYyVEvDZkrq+QVwkS6A.aUpg1s2Wh.lMQ7aYBBsXLsANyL+Hy7WQVuZ0yTqL51FXW1nEq7jF1Tw1W7ZvO6FvVb7QAhBuy6j1W3yErfhWtgekiK4YW2nDVgwStsCWweG.4TNq159ZoImVEBMdYGVa7f+lSE2Du7EQpQE4ttKLiOZQhzHW8eNb3vgCGKA3Z.VTEQ0EFhRkvJB1RkHQDrnkScNVLlUJk2uTggriTapzi8sDX4p88SzYsp1.z4U+Gi3dfjY.ojlWqL9Dr1UlLCe4FMOvAheG9zmhMSiraczGK9TmyH.gwzZUGStyqYXeds8Y5MVT+XZlibVcdx5cBRxluPRwQwrw5jTA3KL.dw8PXpW6JbN6Ivq4w5JSq1tlDITndRsCU210cipJlNKNufkiK44889HVPz26ZeGIeq.zSN.M545u0KWSl1SjbMvr1blfKKHigvuwQvaRP26dIdhwgZj20CHNb3vgCGKA3L.4b7znLRkzHKtpB4mLt1O9g5aJJZqAvo60mUnBnJWP3DnAHTaJYrQhT9NmMgwa1J4r5zFoWAxXnYrzbkjzWmqa0poddK.3XmVWcKogm5OW.Ahw50Taivfv8++ff+hgI3NJfGOJPCTg9MX5MmIjjG4dwLy0hTb6jYvhUEDkEMWObw8.G+PE0hh.H3lqeyL+A2qk8SbtFzHo4C1119nAhzSrwec9m3H2x88.dDdaamPdCaIKUF0xn2V3R88uCGNb3vwxQdJClcKmPRmHpK38q5LuH51y.JhP4xXFqRkDpTghr+YmfJ165lmvKZqmIgwMwBgFHKnmSelVG3VkhCd7zyyWDneiMQ8ZqhOnARqi0PxbLrrAXxHzQpgTmBd65LX4K+nw7CzDijAQBPwKHICdy7MI3Q9C24TljfLBgMMxZ5uwSbkwh+Vx4oVc9C+O+vYhenyNo8DFnUxM9PyFzjCsQD0ppXDAqRYSMYJIh7ZMlRfZurle6vwKlT6lOjIRir2PsZ.2L6UtYltnF261+n6n4C96eHudxFHAqxpguxvGoE8L6F4Lr0GtEfx3zBYrk5GAGNb3vgikcrr2.jmAjN8LgkJh2XTjIpPBkpErw211Mb3VviJJXPj.PS6PofN8pwnCNc5e7wVive0LzVRxpDawOilcy4aMW.dAfLFkIJZJhlbRo.4TdhXCOdl.KzWarh54YXcf+OB1AdaG3p8uGRFnM4ZFRhDSticzO12SDe611xe70bCVZAfWHIaSo03a.YzIVpx9b33kX1yMkTiJ529KKgulcrES4xOR6wGm3uiPKc9CNGYx2qwjKqlY3lMd7eqCLP+ersM7MPb8Qlziq+NTtvttzgCGNb3vwK43L.QUAfZ0VHVfzUgjNFeTTn9Llqa0m1n2xDsEQLpRLTvi28z4HnsWfXLdXQHQmcdz.PGXm2h8N3Om+Z5yii9XY3eVelM9MXeG8Hm9W.gLIYOb1Pe7aLIB0pvwGcT4K2nkDsMfUsBuisoYyDO879MnARtPxrB7V0pfS8igsuUR6Uc2z7ANM4ZAFM4QRhsIAOlOM9aNMMdGah1G9zXZO.1OxDjnpzcnWIBioUqhPTQST8YDtVRVJx1c33EEpTAts2alMe38EebHIOuYKih420mY+C13evq5.m4u5ArgCpRlsXL1mvz1mbG9OiDlZjYYp5t4.hCGNb3vwR.t4.xyD0mQ.XWuoAr68lwCvVpD9LdeJqILg4EU.Lnr3oWwiCd8wMoG8gmW355UXEZlbqvHpzDzlljjCuVaKxL6HmSFr5sElpPzUlH99ljXrwI9VkdWw3gWMsAZuhagV631Hdn5XOILuYsjn1SqpdlFl4vdzUQ7d+HkregCJyu25RrpKXXk.fpHcLppaZ26.NtzkQJIb3aa9YpOpLcswMiIXGchQYqm9.l0jiYia8.wZxoa.ZFS3Vkl22GexVsIjBjkhpGnBO0dDtmt+2gCGNb3vwKPbJeJhhHZoRjTpz40a.ZoRjPg5Krby6k1.ZsZzhwmvxe8rw7nhJ3KnVrX0dyf73PvZAygYT+uuW6TkX5Mn8J5y7ndBf1ljYt+cZSHa.DFUAI2mXBuJiLXpELmJv94xN+Jm0jrQBPn2U9vrAluOn0uNWaxuTMQi.tQ.NC.wFQSLHnzBgnpOUCqjyOtGz4YxMozcbIMkpYinjouBiqiDUIAPFgw0cs4clriYIdsC9QGNow2RzjSIlfMG622aXf4N3m7Q5eMjkowTn.9U6N1IKWzmxpgpQdphTNhfpD4Qm5IizHOzxF5XbhRYW8mNb3vgCGOWoLFWCnOK4oTQcOOM0O9FqVhAMF65OmQc8xz1O2lNcxQ9AypzOs2XuA2WfAv1ljG5Atd.F.jCQcy668Qbka99BYjAMLhU9yOvodiyqf3I3s5sVOXHryv0Jgi+3dWSeC6GA1Fs67EZ01V.11yfa0cw81Qm.Qny3CGWRS0pouSOJuYaMprfA10l.8v6f33qhFZ7OHVimdd0d5blvsodYtJl4q8u5v8C8cSMPh5FWbpLpkyTJCQ40RkvuRDISxwkKzA4EoQFsJFT2DX2gCGNb334LUT0MGPdF3ePkz87T1brXOXhFKwPfmmDf5kpwR6oXxjOHC3cpdaL+lOMyd8qr2u++ccNZZSZ2d5G6cc5O28+63+i9JNcqQJX90+xXNvddk1Swoxtxe7Uv8Ni9K1PMpDDjzyOxOac.5i9zdGsgsEcFaH6.5e5WNxEb33hSJEUN05.AKLl.PIjzxripxFeGjz6.6c3Yu8+COjXx0lfs5KxpQBup4SZh+skzwn7h6yCF2xmtZyHJY9HUKnUJU2aDVWBcr.oF40HlRtANjg74ElDTcpXmg7Nb3vgCGOGPD00CHOOXgdR3U1zCRiD5swB3I1dR2V8RXQFStKFx9Mmd1X5kYe2aafizaF4P4Dqud1Sj63+NQ+KasAhO4sdmYNvsR6icrmv6HObayU8ie2+Xmngdk3kUwO6e25d+uoGLCXmloMGkVxWkboJccjmtXWhCGKSn1TKLGmTJedy2IpTA13dY8+TzN2q8iNTx7GnojbF775Iv3u0bMNdkCNSVB9i9wIGiNpk23eRlHJYpxwkB0gJQjDUsFffpXJSZOdra5yUtygCGNb33E.NCPdgPKqPu99J9BDhDj0Kyf3kzQAnxTTNDGx7ueyAJu5UMOqd1Y2TV4ONquH9yeFUOx899O3kOx6XCukc07luY791e6479It964m5dmJol0DBdAFyfupakUy7mFRxQN8O3.veI8oTXutduxgiIqpTph.fvXpRYQoLphTb7wM8N6mKo4Joc12JykY82RdZOs0SBaGDrgLlvg7leCjw7iflOB+nu9ar0GgCYt4Reud+k9DOTFFpfodTAycq4CpSAu2AE7pRMsVsITFYpXtpHWue3vgCGNb77.mAHOOPDrTAXc.msk0hnJ9fwGs84OOL5a79zvVgpTacJaZSs+J27P+w8lgGsOiJAIyAm7f+Wm5UkY9+y6kV+iemG7TG8Qs+gwsLF7yhz6Z9Cec28e0W9z+uNtcGPb2y4LLiL7O2VMa+Mgn857TONVFSkJP0JppotMaH0PDQPW2nqSGXmSa8leTc8uclO2pYFc9C1No8wASnwj4xhm6a8qdjYND4NweJA0pj1yG64iLzbelnoaPg5I0A9Rz57JiUpDVjx.Ud4+40gCGNb33GBvY.xKDd3LI34kDinIjnHVio449hniVdBt5FGw6s7PsDJUyda+108HOy+GdCq8GsmP4j83Ch1RfDK.wIzVsdfeNj9W8mavOyW72BfoqUhIfjgXHa3NC09nOcy2xtRZcBm7ywxWTESDSIkmrl+jj2OJpnTq5XcbLCkkiy6W9QtySa9IabDcpQpDehSw76Xie3WYbiuSRRRi4E+95yum277y949XOT7Avv3iyMesvs7wpapUJBQvdybSIePd2sKP8jqUp2taOdHLlJHtghkCGNb3vwyCbJv9BgUl0hjL+bjjXXdQac11MO48XWKzlpXGcDz2ytFv9OZlCFCD7d+jzlszt0tJ1yINxGYy67ltb+WuGfPhQDvZM9HAMBeM+jW4Us+G3WXq+TC07nLtFUccMPDxWol75tsYMyvLx5.s2KyEDAcr7l7SNo20El1CEG3NOhG.nkEpTA.9GsqP8l2UntuJiYtwVH.mMt4c2x19HBpWawe84LgWtz9fD7FteB9oJte8V+BkaWhZVzxlhTwTjQMBkAPRiaHN6Nb3vgCGNdgfy.jWH7OY.6iNJycxBibMuK8H9E98O3p9wpbEO1VoTKkz..XA4lRhJUVUJGSoxJS+fsom0NK3M2+O+es4ue66NeluosPXhV1CRBJ7MZLvF+Z+kGNYazFdz18xm0lexI81WY7FE3C7dWaxPLjsFXadLiDMgYC...B.IQTPTk7ywxWpUC4cLRNcW6byIMImtycs4jnnyYcv53ypQrMYDFzL9TX9Halj60i4yc464JrwGbNa6G1GS14M9qJrwC7AdvyzOd+hGAOgJPYUxWKxGFG.1C2gW0pX5DLc5FjBcVh3vgCGNb77.2DY9EB6tdxQo.GEHpl.fkZvPQELTu.LD.o8Rgj5AcTJgEpaAhUEYRx+jjA8RM6rLXbqC78zA14gzJiLUx30vbeGEY20paqFUWE.udPkYcJA4X4M0YFo.8ovDV4BLK3vzP9R+IGKnxwoQsIPY3aQ5enaclDue0Wa7C8GWGyJWowav1Z1QRlwxJdnlbp7kwevQwdjMGJSyzlb7ITnS4ZpnKTV1gCGNb3vwyKbeA8mmzMP9csR812N0SFJpfYnnBlnnhcTFJkZUGSDFSQUEUoZUVXXhHTlljSKPeZMlR.z5EHdP9L10xuRR3N2i1n1MIBpN8XQ5it2hZ2wlN.A86TBxgC.n1DpHzoCJpnTAMpVMtsa6v7K7F7lm0gBkfCdqs58xHI2vbJaquWOXa1xKXUVuLWQticzO8CLvZHyr6.yg2A9qcmYWn9wGk5IEndRmfOX50QUmCfvgCGNb334ANCPdQfwVjq3rBSXgIr0KPZmfDUvDoQlB02qeg560uTjZiznEx2OTs5VXBK.JUDEQFcxoM+bbZyGjbZtgpnTI0SWMBqSKQDoiCc3fy6bAnNV9R2gaUpA7cP6XStHZoRjLRuOXalZpj26wIHh7JHZyigo22.s58Jt0spsOpA6bglf0DPtByd16+W6AOweBqXt+V7eju9VAhXHFxVYgqZQipE8RM9nhy.DGNb3vgimG3L.4EFBnFnp20J0iucpmbG02i20VeOdEnO8PS1P.XC2421+z8+lMmt+2roqRK6m6va+bGdP2nsdUpwTBSl2OZD3Mw.16hgr8UHUIqRTqiwFkrf.hyC73X4Mhfs.0SfIrkJQBZ4EaTf.H0Jk2iRk029DQs6zSjxiTkl8eFRxNKyaac3111mXFQCZ46upUEz6atmFeuO4827yQlj+Njb6EsFUs.TmBd.9SxzlxHKLQ2c3vgCGNb7bCmAHu.QoBoFEfNFkouB6VgzdBIZjAs0AN1tdMwCblcZC24N0HpHcUnAfRQkUzxlRcGS4MyoiLYZOiTi75DTw1UQmyYDRm88q3hAHNVViHB1Z0VXRgu.ciIHUIJdWbxfRT0hpTFQnzHAQiQbOyR7ZV2G6Uztw96oU6GzyZxzvDtc7xlOb1u1G3Al+u.+5eRLo16mVl6q+vyKm4g62aJhbk8b3vgCGNddhy.jmmnJlpUwTWuCu8qE765xNm.RpWX2wiQYpvD1UUqtslTKodgJISAsONHPE4Zk5wWqTuM0lpyWRUXRNtT6ZGxJW0TsKEUVo1TcTxoR2d6HcJ1ppzcXX4vwxYpRjWoRXqVESwwG2.PYDYnnBl8qE7qv3l6jU2FDgJi5MEQR4pSE+M3VBdqqkjGaqblr67ir4336dljVGHzpwVwePaP3U3+JZSO+L8feUv.JEndR+a8LIeys93oeH.WOf3vgCGNb77BmAHu.n6XPOcnVUQmftwkizgAxXTNMpICBxXJhvDUnaOZjZTwjU6ZbgNBqSgpoapREHJuBoJT0Y+stI9pCGKlpnTV.Xzwm3Is0Ms6IRcBDfvHqSO93GW.353ckbC0wVbbh8tdhy7i9gyaiOXrxYMXxF5kYm5jm3e+AWyoIXnBXh.ifpiwHIYY.K.UqM1y6xhpho6xy2ygCGNb3vwkp3Tl8EHcUfPjWvSH7EOLR53MedFHuF1Oz2YOvMdOh5qiro63J99gLGGfVcliHhpomSQvdNkcJZDYh3Wf2uNdw.UE1Egq3vz2rO7+tCFz2n8.nwyLdid15Ge3yFyLckmphYQums32UVNyEVGlBmW4xEWVRtvcMRw789anmjyhbpu.8d565y8fgAWYhOMCRZbOsey8+OaGYayYp0OIDQL.QUJIeDNj4PS1PXpoR.nToNe7gNefftwAnycWVlNFBQ0pX56ZF1+pxtVye+YNSRzHSsPYwWDpGwgCGNb33hdbe8sWfz0c79hvoJsGNRWVtqToCGOaQufEfyqbo9ztuJLYsJdm4w1ax.+LD2dqzz159iswGMDuU1zDrNuu3w9Heu6LK8w1P13Qu8rL93lZRM6YqTWiZlSihP6zSnBolYHQT57pWsRkz5Y6zSMB.qL6ZM.LzH4bk0c3vgCGK6vY.hCGNVdhH5TQDe86d2y+P+R0Lgag1YF5W4UDO+8b11sOZN0qOQC2Z+.r9QvO7M9NrL9nI.7IF6C3U6ZGxJBZ2O.gpHuCJ38Q3PlNSLdpUCYrwVXnYRUToTIruwslo8w2Z63BTOoqwRtd+vgCGNbrbAmAHNb3X4JBxXd0DwN8mIZVpAY8X1j4+AZb7YmOlLI1LWVxbO1G+Ql4aSe.PIL.56iaM9t3FLc5fkya3VkkFKjt6Pyp6vuBfpnFXBaWiOd43A0gCGNb33hIbFf3vgiksnTNQorTUvL8DL2puNlu2ehacXq939VQ8LAaNzK2Umz3a7u96bxOK8R9zgZ0jLpbCraa2yhhJHoQAwG5.sNmAIpJowmjzcnDhsDR2dNwM7qb3vgCGKKwY.hCGNVFSEsFSIQEQJy3lCtZZGzKsssO7LZxzsw3Ih+F7jfWYe1F3ymiLot.6wskn1EdtjBTOYc6L0KYUAHBLQTQ53wqjtwmDGNb3XoltNoFGNVJv0XnCGNV1RMvLIuegYPpvnVpTgUbCzZU23u9UE27KKp8TIhWu99YuJuVGYO+fdmgdGLO8LFHPTmd.oaa3UPDzBTOoTjZGCUONiKGmwkZ0PpSAunnhxEznuSA.GNbrjPsZcbG3t3Jlik.bFf3vgikqnkPRpvn1R0SicOQkFyeGuWhs8yrq8c8w2gs8CX.6bDr5.S3NVQiiWYp4gv07SROE2GdcFDUpb9dfK53FrYBF2tN9rZsnH.nNybgMz6Z32gCGKIzMVlIc7V+Ks2MNVtgy.DGNbrrEUwfJTiwZIH1ZU01.LTAlK96SC6b2WCayCYL11f+5D+ddi8M6Q+TGddKYtm8SlBfeg8um.PTAQuQ9.gP5bAgRiDDwTKzn9sS8jBTOARcIucbKut4AhCGNV5Ictpk9S2PyxwKC3L.wgCGKaoBPIhjh6qneZPDrhLAUr0eTRN4IY9d2xu0PIM99wIwGsIhIVxrUqI7J5YtI9nO3beOx9n2NAm9qtUCkUCDE7E3VaooeIQC0lpE.2.Gx.vTD4ZT2gCGWrizcnYsTei33Gtw8BlCGNV1xXTliywkoGbZS9IGIH8eqnLFZ4MSxYiYlU7J92s8349+jQaejVnMxXB1Zheuu0lyd6+lOZy+qDzt+cIEqfgxUiga1WPL5h5Xi6hgrGm2ubbd+hfph.0nhjZ9iCGNbrzv4E+gjwztNKitCMqEPcyQDGuHSYLNCPb3vwxdZE1RdKOTKIhoDR8OtRkIvxAk4O8JoYOuhJaNo0cmnwOwb.dh+55yK7pa05dISyuDde+cQOEqfAcOwcOmkone9J0VTC2iBTQPKSIDaGCPbCAKGNbrzfpRGiKd5pGJs9KQTmQHNdw.UQnrZJ7NTOmAHNb3XYLUz0w5z2cPa40lqs7Q5LbopsnIjYz3z1a6zN6l+2bE1FSZI4TM7D03YVSXyC+INvr+.xoq.Yl5H4qHAUqhVhQ7qvn1JUN+.MXQF0.U5LwOGyY7gCGNVxoaOezMcm3Tjs6zYqye1wkazwPjz0BZ4zgfphTdeE8qpQdefO.Y1mVzWqhmVEuxT1.QdcL3wfpcF1pP4xXvMA3WVP4xXt06b3PpTg9Jf5L.wgCGKeQDpRMMZG8ZW+lCzBzmVsJlnTiDT.pUqDm9Z3LgYn4F2vG7Jo48JjLqU75WMYdkgycuer6CfG+6i2TiDk.PUhhqQEQDzZRsjIXbKLN.TFQ5FSPbiyZGNbbIEKzaHURCxpiNpAfhrOu6XzYjmfCYt4aMuNZ8YjudssDxmAoB.TKoH3M7sdKAQTRhpTRTESkzMpjZDhem0bi2HY1uVHnScjAcu7EKR1t0apfTkHuNmAgx6ymxoFSoJBJo8vS4xltFN00fmE1mNOUuDmqsrmxT1bT1X1r6Z.KTQmnjy.DGNbrLlzHXdYFo1TI656bvXH00TJLlsiqoLfR0RJNNlgdTZOGb11M+V9ZxSzRDwyDrIiIbnLMuGVQxIQhhpRoRXuygWcPTQ55oq.NmK4cjIy6OI48ixm2CJZ570G6ZLhqgPGNbrjQsZKpNnt85QmTc733KZ6ioL9nI.LwMOd3oOvOmYu.MIm9o+KdL+2Xs2Xq5STPpvnFPkYpuWYfr+A1eWNdPUNdvmt1Vx.fRYSYJ5onc6wX4NuyhIElrgLI48QKmPwsmk2vVxMw3ka0cdqbyTv+Kei07Sq6TY3U2vCTDADAoPc0me1ekdJVohgQG2CvqxHcM7nn2sJCGpT1PpAPo8JS4h9.RgBDfq93W3nouyLFioe998z8BfHB0dVX.xhabz8059gElv9LuONtXBWYuWZnFH0XJoVoz3zQsZSn.TsJdc1kX.Y7IHgMQ6eLOleEq6+zFRZNYXR7IaaLYLlvcnyen+s28reFB+5eHBIuF7vCbK1a4H30YddHHiYqVaLIpVMFZjb5H0yozL2BMtedM563hFJiZJiZ5nz0S0hiKB3eX8STIB0q7SVeGm76omt8HQmTkMK1M8lREMJhfp0DCiTRXiUZNvYxZo9t4lu15Aen23izpFvsyumNFil.hVuvilLztir6.3q9UOVvaMp+jt08UgQs0.oLE8V3ZOxfl+tZmwKhoDF8vs3q+KLOTQKTPChP81C2Txs99Hcd2Ih4f2x2nMeicF.3gpZ8amjB+q+8ZAPGCkr.LdELvD1ag2c6RmqWWrLEBUFOoZULCs+HajplBZgfx+oaOqtuh9c58Dia9v7rDUkHvPA7KrG0u+OzCm73ieSd.VkJKx.CJa5zUVA.R4HBS2VQ+p2c9vztBqnupX5z37SYkvWXEAtzu3mtyuDxqgC7pzUI9usoM9usoeUaSWEWs1amwV44IaVrQjUqhmRYixB6G+Cc8boewO8B+uV1vMpY5qntVS+ezFga3KMSl08+bd+9Jel9yqql7Z3dzBA6WKDb2UyG1UwXEsq7673hkmuWtR+B84GVnWGjpUwawKphobY72uVHP2egfpnd6tfF712ltp25UnaL6.25bY23WNNyVmblv0821vrhe6y1WQcsab2ZO23vZlabXMSGkdjtmuEc8e5Tn87WRa3+o88mk57+KUS+Tj+k9N.pWUTOH03ihaWyFkWCofFz8q+VE0a2rm.W4uk9x6zsr09SKidAsqIfJEJnA+xaQyUNuFBQg.hhJcjgxhiB3Oque5L4sWpyOdwN+7YX+eRCWomz46bSpcVz9dd8ZhpX1uVH3t0t5Udd0GZfT8KUEid24Cq9o1RtEz4rrZnfFDkWCKtcMaTmxpOW3Yw6TOkx4E8QoV7NJKt9YGKBUkHU8F9CnY196Qyt82ilcKeMM2108kMRi71uVH.UwjOO80oanfy8xUphpZQ+82QAnturrnWX3BWWtL9Kd6ca30k9EuzcjtR97ZX+40Ua7eamv2+s+3WfAHzsPy4Zn8bFPtnJpOO49ECOe+PZZCbtxGcUxE.5JG66W+rga3Kd1Lq+K1vq2OZiMLrNH40vtJ.qZQ+txpEY.x4U96hnm2WVR+B84mtMzsnkNaag+u36bfU1swRnPOefg0LevsqqLL66+IBW2+emMyV9Vsys4uUbv5uiVlApb7dJnabfWstRLuxiwt0fEqnxhj6KXjwS0+sv82StA8EdFdJtmWxkGWpjdwFY9jyG6LVwQMQaQyYj083P2IMaUupndJpoHumruPe+yk9EV4cnixh2c9P8tyGl1tV4EZ2CUkgGVyr6Mp83Iqa5tePfxTzOsNzyWumm02OZ5bJXoN+3k65Oel1+EYnwErVeJOtK33OukpUw6C+yr9d08WHPqhWTDgo0EpdFYcO9t2n1yhL.4Y395Y86SOeeO7YZ+VVgpcpGsvdBHuFh40c7Ad05JGrr12FKq8fpR06NenTVwbG6Eu52Ls6br8fpMV7IKhRlpTSqUCYxHzwPUpfPETR8m8Nu4xK2HhlOuFdzlj6zOza6d7QBe8a5uc3S1GyN0TR6e4O0Vx9oeq8mTCXnQxoElrg.P8QxoEndBRYfJHHJpS78xNKL1ZU4FGlvuqgUb7i7abfL89lxBHy23abp9VU4q7mnOls5TUhAnFSIknV2IGc2tH24dDeAfhH0ofG.EnOsDqSqQ0EFhhkQDlLu+bGLIyVdmIs9uylSl3c7oBeCemB58FR3rS+acTubWqJgawWk.MI9H913GNwa0+Su7VOzOy2Zsex+5s0yuDw6fwiWGeVsJGuirZBa2qa2q8S0PiTNuBmo00FQISTsZ.vB0G634MQTx7yefusO.6ZmGrsPYnREXLjaXH5aeOvPStketCMbv+zcpgeiCpSVg3ZRjDQdUXL6Kok+tPOOjiyip0DC.4ix60jb5sWotl544J3cqbZyuydm0aS7ns4Sw.e2C7J+tw58sMzJJxXBPBfKucIhxHREf5Tv6P0paAnVTmgBqTKARMtrRELiDk2L42bVycz5ASp+Wpdx+6cdv2xkcfQVUVZTaJIcHV8CixwK1J+un4DjpXXx7oeTzQlJtVMjWWTwfc.PsIZSoTqEKrQxM0o9vGCIPxtgems7DFZdi.W2AGOwLEQR8cWNsfH6N37L93Z2qO.0npUDrkJQxBM1Uoqei1Y7wRES0Bo8pH.LdVrL.P+mAOTkO8G5Qlu9H4TlZpjCUqts9H4z5ibtwbtvXp.JtvPvRJJHmpIlY8wBXhQRhkDCVa1r9od9CgJpPEJQUKok+5JzdRecbGO2nVMjtM9UmYjiO9wkTE8ApfLFk4N9pSo8Lr27mbxPc5Im1j+m61iy7vz9I1JyupA+X6Ht4OncR7iYPv2OyUzzK6U6aO4m+dkvK2Oy7DtVvLS86aACOtvqaA5SqUaBs6XgtVMjtKcuORWpjdOS9EJz5L93EGloUXpqQtVzB4yEJfYU.pjifWKJC+AXjJQI638RHjVG5R1MrC.nTIrQQnSUKsctwpnIU.p04Ctsocuo10qCDSaijKagBXRkupEJ66p+boiwP0t0CVpT5by33ie7N0AmhHpN1XXuqZOgOutdsTXOv5vZjdLqKFyFZw4MD59gNtX+8yNyiQQvVKJhevANhNISagztRFEtuAHmIyvFubu5fybzOzCMPax8cmEuSN7ndTT2mOUi7fpdJpL7ve9LCO7mOSwhp+hGejKHj6Nl35tsEk9451coe9mFUEtQMy.WutJIy6bZI3m7wGX65J4Mn4JtO0mhpepGcnyhV1TX+6In6R5vI3bdzBm76k+zJpTrn5y10roCAqeiSGtw+WmMbc+cya5627D8mWWM2nl47jimmL8bxmElfkc9em764Q4oKH+Ls686TFQU47KGoAE1uFrwaR6o2qRWevp9rmLbCeo3ra6.I4tri0HyVpG6ul8bpA9o0UscUyhpKzE8Uqh2BxvTdRMxrv9sn6myMgnWDWjj+cIa5tkiVPNzYakUSgBZvUbE5ZDyq9Hq4mTWwfu+p8snxWlE1WW4uk7zr.c++xFpF4wtK2CCqYtpKSWuu45d3gGNs9zHTuHzyq70EJ+tX546GtSW9bskcd0KlNeqztxFUks7K+0xs5aT62Xd8G4pGRWW47Z3Bk03b5w7bUelm0x+Wld+3BWJmNjqkK5d+rKKbutn4rXY0j+t0v9izUGt1+hSkay0OSvf+2h8V8m7IVwqSWSeWuNnr5aT62qAV6wPLdoeY03l3YBRsHUSPDOz02YaOVxxywz1ESnCjJCZuBBZ2hdZ889UuWhk4xrke2q1aPZ6AwdsR6d4txuEN1siXag3OMIlSgZu.4ow6I+eNdoiWQBx8DheqbzW6C+YuOurup.jv1Iy7s0vA+WLb37Lm+VHViOeYhbZWWW8RIZmx.dgXSZgQso81XlYXdyFPMgnMOFgl0is8iSX6YatB8re46wK7xSDSVeqNims48116UrqKKXyzz+aSr3g1s7ksuz4DjYlz5YWKvieA2CKtrnlfbYVjGvbN49hKW63Ylt0Et35Duv5G69erZH4X30WH8dzG5m+Km607m9FxrJZnSiXlA658Pa1DuSGfyiB9xL5Ez9z409VmsIdnrFv1Cl1Glv0zFuibz2ycman+rKOneZm7XX7y1YHX43hF5paCmLM8JZiIaG4zzCfn8iz5rjsw28W7ueCa9+7OpICytoVDeZOzKr9SGu7RWYWWcSzAPRtRLlCR+ydvuv8Yx7J7QRv17AaE27qYy9FFamR1qT2dqG5C+8EyfwhwrBjdOsnRFj3LPPKPsnVDTrX6TP2R24trf2KsJqJcMF94Y87Wpd7W3wsnzVIMs30imDrZiH4PSZE.14rsNhGD2xXSxJ30V6bbVYQmKUQHtirz7RqL7R07+WrN9mALBYrRtXBWsH9qNvDrEKZbnM9zyowOV.sO47XmUQsnjnJFQHVM3KjJIck+dgfrnNTXQWCkjNQqbBwD1.vXEQMIVeH1SwZQ7ZohwHRtrlvMYD+MlHd8kQLYEved0dBeaqijnsOQrZapnssh19I+rHFLHR2vNrpwf1VUN2vqxSxX.AEivB0C+b346RU42K0x+NzsrE.3IBVChDhDrRqZakAlQTM1hJI.wFaqdMD1vpuDqC6Rc92R8w+LfRhtP6WKprrpsSkmFxIdqnkXVgU0F4P0SgsIhct9QIA7Z+zctunfKxy+eQgEqaSGaIMcrCQPTUZmEISCqM1GODQB8DS+BRXSs8Ikmx5TeQ7d5RBVhteWndytpgzU2REQEeD+.OIXKIlvKKmwe0FzXQsyZsyejVpdh.+VG9W56hWFAM1Go+Sg1NGDpPPyNWACnXSaPVTDQTEHQQLnD+rUA1yMoYep8L.O0a+bUvu753UfE+AZVb5y88dDP8PhEgf4U6oyHhWChmKPjfVf5IZRZD1QOmYiJI5BcasncNOOiboU92EKG+y.V0qkZrInmrGRjXKdAHAsH9ILjLaLZrIs+jshhZER5H+iMok+T0U96Y01epYgyuGcKXkV9vl1yChWKwFGB3YL9yijDfDz.aKCZRnnpUk4RrsO17XOYOFyZNKjKqIyF7DoWOuLuRQCZ5oseBqlbRqF+XVRZjJG6dEU51va5WPBAEQOeCMrly4v5LBOa+3sK04+K0G+y.oMf1s0SK3YDPSqvDQUaqLBlDUxjflDJhDqIMyhj6zpc9bcp.8Y2k5Rw7uk5i+Y.AC1TkT.M8XscKaXrh32ybXsYPQEMroZO0JTZGKpYdL9sIsr8yFdgd++Ck4+O2QkyuLiWpdIJjV+VZn5vhACfkXDI2YQazGdYZfFmAuvVfwGabFPiWnRzmgKLOWd9zmzOdwhWBxeUA0nOqaS3o53e1WO1EnGoUDQQ0TcPR+eQAKBInVODsQNH1fUsHhAqoMzNCj8rx5+w0d6dherGCFLF4BGBN5.HhOpI.01NcalS8hujwwyMZ4QPKC8L+8+gmTRD6p19u2HIsXtmttV1tRjKbXWYbCiikThahmYCXi2A99yPtmXeehIMhuw15f5JV2+oKyKjDwCcGsw7.FTVMH9ntxeu3R2xDFOTF7b+uID8wdLXMyi4BOltCQpSjA6fwHsBvucax17gF6GDzyOROd41oAIzyZmOw15gZms2q6piCxNaNkYdEctd2+hFVVs8HvqYZYWS.ViG5z9mSN+TU2rq76yerqDwDz4S6zniNrKZH7jz.uAZS1G4PumuUOu9+rqNHKsDeT4Lnq8DfmG5zKkO.KywtRD67XrwH9cK23gZWY5P0AfjUiW6CPFNNz7n+7e2d1we5HYVKyGOKdgs6D.6b7xFKt9qEFtUcP7Q6J2jGHsb4IxjNDGGLFIoOLI4vjbDBl6g+E+9qZG+meswMYtvdepkiS6iNX7KkFSs7jt5QBrPSkOc0CFuI7l+zjq8C927H9gWgEQrIy+.Z7be0VYt5O9URw8Uzu39J52cxizch5bgqWXx5svjDREVzDSYg8yk9k9z.JpDsPfH7cLcPv6LMPDlWC6NItRmDqclTPcWdJl.yK4OO+PP5Kb8yp8eAgoJC+40LC7N0Ut9gz0EF9ycxgFRGf7ZHKdxGu3Ifd5AdQyy+kZoWzZYgIM2B+e5DXs39J5W9tyGFoQcC9iOsSF774u6PPMClW6aK40Umcke1Y5aieslqXaOz78rs6OIyF+eG6s58bxU75z0rwaR6Y0Cq8WlzI0dw8UzmB6IXwmaEUHe4vzutU4z5aKetIi4Rc92Eaouv0Oy6uddNUfEJWEodDkN4juwg0LW+1zU4at1SwvZlB6WCnbQepF4UkHuEOwLWpe9Wtkdg0KRd0o9PIRi7Jp6yORUug+7Zls+dzrWyv5f9lq8jQcZeTI0g67jzy4hjmuKUR+BN+S0Ezornp9cWRkkoxyTmjjZnn5Sj5QQMaf4Mb52Pdc0Q40vKlxOddklz1Vdwr9jKb8S09uv0qy0+474OEoyx409X28u39T+Ad05Jyt5+ry1yl9psytt+GsB5+Sdl9dk5ZGrn1GcCvfcCDV54NAFPMUWrmfYQKZm8QOm2.ws9ko0cW98GVyLv1zUY7e6G22+lN9qZa5pniW9P0znMZZfw4bASxyK.3k91jrT+7rbdMcLrnv90.JpY25kqax2b8G4FGVybdEz65UW55wPVz6BWL7bbo4ZDsJdkKieZ5pciB1BfT8tyGVUyGtGsPP25F6tbNuyRYeHUYlxomayUe0ZuW2koqO6J++NtmM822pms+.syss6INbCi2zq+Ow78jW2vFuIsms7K+ox8d9S2d1O+8MbltA40HJGVl842od2K0OtXu...f.PRDEDUP9BWbju8COqAjyo754uTNuF9AFVGrGy07.efg0LPUupUw6tqlFv65XDxEEOGKWWuHEfDsJKDQzWHvgpodZve1qPWSOlWyCVNuFF0or64JCuz+brbc8SdAzEFQcokw.jNqATy6Y6Z1rlW6g9odk5ZeOaWyBWZ2N3Etboz0cAiPpF4c9cLQGOKVY0zedc08NveXiUr1pykM2u5SjOut5sucM6vCqY7yRCoI4znTAt.vXfVYgAEVEU6XgSMlpSvWpx40s+ZZ.xpyZPWvhnmp0UdNt+t0W3ZnB.bxPzMGhbO.doSybxGhNUkyMNCihJJ0YFoafHjnBlBTOgy6bVAm7aoasL1XZczDxgooGmA8ndW2lI4KHRNUoITzTm6Pt87MjofjZhX6nnbmQ+pq72yu0kEhFSGAnSY.cRF2TkHSD405ibGZVZHi.rppXnTkEp2Kp5XPDfPBkqHGjc0drwJ4C0Zso4z3FAjPyCNcrjckhNRr3uxdMAabdx8ZjlO7uyAMC8qsid2zGpwgeuen44.6zCfZSl2upNVrHiYKSQeX7y6SMoT1PUQTPnTYcoO+6R60vXoqVjebPqhgHTDUGePrieDlOQmIieSLPIMZnBok6pNlTqTduHpDuT+brrdc2RjciYN.jsgLxjvjizPpVSLelCq9axi3D8L8LBvQKf4lquWtA1cpm9zUe3KCqqbAqS++KLV5nJl5TvSqVWfw3+Rog8UJ2lpiQUvqTIQOLJI5oxjSX9y1K1pTRfp5kpxuKjKottZZ7ppTTdknJvXU5d5jw57ifDZ2t8CeVaxzgWyk869JxLKyEsChqLAVoyW2iUsnfACpR2HdX0p3EEwBAIK.JEo1EEQDkpUwTpD1pUexiS5Kjt62y182wSMkJgsPA0+fON8d1irq6M.i4Uto+1WY3fLS88S794ZWv3xBzmVmYD.5FzezNVuJHpS9szPToxJ.6h+hfuf9taiTQJtcB9JOzFlbsq6O+pO1i80ZP0wjIix6APSxockekYedUXTqfXqVEOm764GCEUv7IXHaMoVBpJKRYTM8KwUz.yHrnHUdcJ3kkFxTSlZ1RquzaQB23p0oh5LVjSkiq3q9vW+8j8p+Jup4NzuwA8xcc8XB1l.Zr19nDO+2NI2+nO5P8uQN6QeBlmpUz2yscag+SeSA5L6LTuqadJcu6obxBA5UQnZULQCUvP1FBiLXm.Z3D5E9L43YGcZuS6H20tJ+zU1N4UMY7TagL+2Nx5OrUerMgVQqVaL4n8MrO.ablCFGEsfJvr31Hc7ROCEUXg5u57Q0nNE7RSm1l2Gd79zI9riq2zWgLegisoC+OQezMVCoybj7Fy.eg463ZAUW8guzQWcK6lGO4jHiLRZYmnHTQVX6dckqKJ.El1iHJZIhjZUpplO9FdzW+lO1k82+FoU0HAW6Yu7R2585FE6SkSJU47kAk.K4IPtmq6nY2423U0XCbxB+zj7n2bkfGkJMM2ECYuKF5bubnJPkNiOuxltWjghJXhhJJ0hhHhRltauqP+Yqv+45963oAsrTuQpEnfJIflzGR8SmluVf5IcM9na5tUR+TgS9sDP0wjZLk7930DiLlRYzIVKIi7pN1U+i9X+DMGkCGBvHj6Ioj4X7lsc6ILvI+dtP2F3FJpfod2+TKa5TuGnkWPQxZ0lPS2mIrUpb94YG8gZIs1yTR3a4KoCN331B6cLuHlRnHxz8xbwW0W4UjYazr224u4P14mbN8+e16MO93n799we+77LW6stOrk8ZDquFgkAFaiCgjUIbT6lPRZy2QgVHAZRq3aKAnDHeIWM6peoIMzfSwDHIh1FSCER5tsEBjXiIPkb4LAsABVR.x221RxGRVG6wLyme+wrypUBCIo4fZG+90q4kjFsGyLOOOed9b99S9ClCDXLoZTDpKUYp+6+1sk6+BRXHHi48ITm75VUgwWXM7W7GXqZzkQwukjLfjrRiWZtQxreLLOCFmUtRXmE+pgh62U1XMXF.Xr8EV..zIAJc8vxYoGYdM1wiohzCv9NeGHcSqct1dFe7F5Z8mE+VGkOmWCSwzf6ZB2wO284RmdKzNSmw0gp+z6W1Wkv5iegGbtoid+xv0CtLfGOGf6X2uIkGN60j+h96eeCMaZvaoEPk+bHAAdBB7xM9nnRtD.b.HGFChF1zKIgwZWs4O4gi9BmGbfNnzll+d89Y+tFSOtEmWZMFbijnIRRtGsCf1A.SJ1kB17+n+j4V2pwwzuW3DrCPGBImJsWjXHBbuCTJ7LSmOdt0Qf6OK653rBb+s.H27q6WtmskJB822Pbo0bjHEqAj3T2Rk2cQSTbb0abbliymE+ZAuBo6W1y68uKNNSHAGvsvIQGFtECarAUK1Et4d0vyFGLl55oXpdEEsWMa8aw6ryXQobLl.2jLEdOOeSjy49dPBt2Xk2qIUJH7N+MtFnRofnqNfL..hRZw6ljhQjZjalpHzGkplG3yNlRcO9TgZ5Uy5atuTdsZRkUU6u5nqIFEdMwHU.C+cQFxqmhodIuuHUV10QIYwDEWx8XZ4x+N5w1YpfghioEe1psKJtFQwk..CQ2flaQN6RV.DA9pWM7kBlhNPWx+N+p8Wfbkee.ku9sORWoORWo3ZEdBDWp70oljo.Dwz06SIAHN.bqKxxWq58L8s53MdQ7FN+rziZl+cw8gK++eFE9U74zr+o2gWspVb+QdGnK4NPWxwitAM.v81CznWRFW9lCThPc9Ecc7K606usdeuUed+l307qy2+rNJed5oZt5LF+nD7DD3w6NtT45WRk86F81krdejRThzZZc60WzDaPCnCYu55gghJmVlRMukKrJ60760BB+sA9etAHq8vyv.jYyzUn33XwB062p2D+9Ddy1jZZC+9k3ivUvqIYJJULWIHNPBIu0kcQFxcQFx5EM.YVFRd10g+OEkMN8VJzsTg54JqDEet2A5R1UoGSQBSnPltFkfhEfmNQJQ2EoUqIELxxoJTC+2OYfFdh7AZZq4723ylWKx8Lw6ZITiMoSU4wzRkaPj22CHhkJEDkSlDmBGG8FjKeFqBOmJTNqxbpetLi+W4FR5ddWCPbObIEfRLGXJWCUasUD.EG2KNe3ToTxrGKlwQ4iquA48uUJ37VoP7o2fUlA9XV5YLCLaE7S0mtRQiEcWyUdwoSzrF66P1aL+Vul5CPdiCk4rNShDdGke9S4U8r2acVNHX1FfbF331z3WjAHS++dyVOTZevT84QxCjfhSRcXPdq0z5hLjccBGIJwXVkMFL6uqY4jlomKTVF9L8k5rj++KmAUukq0+U941ahtD+J+49KKdSL3d16a7lZC.QtrNW2wk5pnLShhKQEkqFu63Rwo3RwFb8p5TJEChjcY4Lv5NAj9M18wYwaCvy.D4+fg3RuO2HfDmzdq73f2Dj2dtfOyCddP2KDxk6I8xYcrxTzfA35wf3cGWxnKHeiaLlJ0qgbeozUHBbXpq3YDh2mumfg3T2RHkofJ5Eu2tu++eK3sRf4aoB3dzSMRHQHQ4JjJ..zS.WC9.wSftkJs9oiYXDueBDKAhK0mdJExnWYWRBHkHNQRFcQxnCRNRTpBccpJkfewiqzvO11WSuVNsFegIkqZCS36Bn4ToIEo9akBTT.sqG3A.RPb8TITh2cbIpOck+o+oEGxike7NJaiqRap6MGjn3REoR3hEOHcFiAIEUZUADwzSkPATBtIYJ5kbYCIWEa8TL00q38RFx2xy0ju0SwT6hLji2cI4grdIWFThn3Z8Q5JHko.FcUJscJa9DG.73T2RF81krdp9TJlRxhTofqwnEWiRofvkTA.KQBH4wpZIP2RjQuxTbRpqNfb7tiKYzaWtaPW76rjBTdJLUTo3yTh9UpTPrFDSkL5UlL5U1a7AtFTvJ+9tz74dMju13PibqOU2neXzkLhdsZHAwQzqsTTq..yD5Jo.ILQBulNHqiNPQVmSWAHkviIBaJ0s3yf5UVmHEidIYid6RFqtIeo.IRApz3omxSwotkfotBQFxzysZeCtwXpCVTd95tkl74s1yn2tjM5kjwL2G3zcv7n5+R2eEelC.3cdcJkBHOlQpaoDnaoRrHWJHtw0.UOiO8j2B.Vom4tN+gsl0.UuLEv6y0f5UN15uQUOGzEcCQ0L5sKY.h0UGPdvMFSsCyJi3JSOgTwnVx.kfq2mdwqK20rab8wT6KktB0qgLRDWpz8S45SMCZv2M82cmm5sOxuPCRJermMy00IJuzFlc.AlwblxV+y.Po2+aVfDdS2Ob1sogouemog08ZHS849rgR44jsoM.ob8TlgiWIhg3tiIdxJQJyR6McZu.reeGTYM1m4C.b.Td8BvNSXSp+2LLSmF5HMM.LOkanLc9R5lK+EOsScsUGg1.l5cpyN7qlkC.7y9GOpLRCFROPA7O2tJ.vP8LDaHLDCIaSDGPLb5Z4vLkSZ.zS+mQrI1aun8zEU9LoSZjj0d6f8jOI3DAxnKH6KoAsSrSd6HoTx3sAjFr1ugAzPWue6ha3nPDx1tISNIsEmVFHsc5LeLlIZGD5m1BfcvN.giCmQ2CNYKigoZtoNi43L73NHKiIEVgotXd9c8Me8Q23e4dmZuP8mcYHB.4kasJHYRL.FvF.n+A.9DqVj6o1Td1ic+iH1oG61gjLjb54CkSbHYv3rzrzE+7NyxKrIM6TJUJXm.LVKlCXahAX..6r+oXXmt4m7ZwMIC.Bf.iAoclNiS3vgs+FaC3qssQ400VcDfoBAhYjNiyl+TiMsg8lobvn84VajDg1ZCJq39J44brkzeSJnwhnZMG1AHIkLI70roAOotN18OJp7lNjaAq2Bpi..qm1hiGpmfD.DIQatiIimgU4k4JSXzmsO93Y.C81gE.jbyC93kjgGGswAltHPOcGs2NblOh3rsQeVNxbGrze8lTOXFHSD..ycbHs6XZ6vj8XIyPYL.t+a.EZuccgtNbti6.pn2CZiu1jEv.fgq69yCcPfANABlnEaSiLbSjztnwFr6qqD1Lj.oQ+EPBSBC.Vl66Jkq27psFcaOK2WFPYtiaPMyi8PDdg8O02A2jjoQF9M8cfzcGLlzvEKf5wyzFKdp60YS28n7z+q6Prv4qPKb9JTOacDQ7ud8uYM5PFvYFie..oR2IKiwAsyXjzFrxX0phiaCr16Tq3dekj8jDswaGtxjt6ONrVKdPY.fZS1syNwN4.f0OZi0O5g0NZQJCsBoO9lzIzdZA5pWK.f7a6Prij9Akl6M8J1..U1+Tr8bcWW9L67Ic.RJ539RX+f6aBwmMUq4dxmDbfNsuL7jN.PfzCv70hOBoamCScgoIn0dSauvle9wDW+8kAHYaNi7X2+o1AeIS58arh5fepjoRDUZb16YxrGyK92IIfjThhrxmmLL2Oj2vbEF.Xs2Nr8JbePI..PBzILMAUVsybJliEmCDmWxHEuwKVmN.IIv5bFDLU4rKWlV7QvHHkF.kXuroesPGooDEYwkR5cxX9POWW9Lq35KrEziSFiNrRXll..d1MM5Y0M8zZnSJg0op7h.Ro9.RYgf7TmSpmMBH+lBk73PYdft7ziojmAlsmL771PQuAP8ZHScYHm.Q0lle5iqEmhKU+Wq0.wotkZ5VVmu3T2RwotkL5Bd8tmyh+GhxiPfWH+SA2wiK+VqOPrAioFk5VqoT2hO.h2mdJEpnW6bSUN2PM+AiGohDaHpVejtB0mtBswXpOmYS95Kka5x454GRFFjL.IBsRpZdj+lIjq6gmJvbe4bgZ50xq03SaKW2+4I4Q9RSE77oZQLREd4qNAdBzsTIiGJ1L77RgfSUJX4kpId2enj25.J60cZMRkBh0kpIe6hhq0gYkQFbiwTKF8BoYViTcHih7RuqWvIVic0g+lRcK9hs9aTE.HEHwFhlPaCQSn4l+xw01P2Q0fY7ftdBmjcatclh3TwF26ZhoFONzRrgnZ8RFx2x5ZxWo4TcYHS2nqmvKN9Hg3cKoSjRrAGTEfXo.IRftk5.FxwiCMu4JwV+F8jgWp1TlsGJOiI05biziaMVkHpFM7EGZDZUgox5MYkdsEi.bbpaIzjoOOOQSTbo9HckNRzne2W3ZTc6mNwk1XLnRFFxqAwTK06Bp+xC3F0pDJ5DofOvGOj6miaTrgotBJVedDAdWc.YBIJEATSxT3Fk53RwFbP0F6pK+nXZj484XZBkxS+J24OjWTMOsesWQTJ086NAj75YG.toRt6KY5zVMdbnAPtMdP8DJXMwTAfWp2IC3FQoRQvLEDoPwzQkVsuu5Ot4HdQ9MQe5Jw1XLUCpWYbKl9RkBh0cKM4CESEuhzTOh1cbsJu8JijXCQ05KktBEGRDAt6XeJk3jaTGQGI76FwCxsmVDuaoS45rYm1c84VCRcSwkJ2y+SmNdyplBeSR0oxe8dyCSLqnVLyT2b5HP3E02SQp6NiTMq7T30quSkvMRdLuzFtrwvYDAjx+tJkVpEeNjHAjdie1kcuj.d0kkOu4AcULBj+Fbt3YwuywYM.4scPoJqwNVVHX8DX3kdVEe4yH2T8Jv7tRzn+W9ZpO.ciwTIXJ1Xr061gdQBIchTVMsWeFDIaPjLtESewI2z2xqCceV7qN7VKrgtcMbn6DPp6DPxb0vmqRiw0RzmtxpIxmwAH+E6Nu7qsnvSTzHxt5.xoVWS9Hxv+gNTqAF9QVbnQdfXgoMFS8Vul5CXzEjis9Mp5UDdwIRppqlBGnUpNdfuvnZUugb9aXKSEno9mx2beobJMrwIEU82kO7popfNo.SRA58oPfXwhQpQSrKs3D4ZPy0bqAlUX+Kk9Cdy+NU0BwrN+osvUwDckG3EhEld4VCLxCDKL0kg+CzQi9Kp.jD.z.QrlL2qO.hGONIYBRnSjhNQJwotk.fJEmjHDWhR3Z.I8nF9IxPFoLEF8RxwVOopmpOEu0iql1qOidI4DIfTeozUV2szjudIC40uwXpoVWS9nG0vO8nF9o9zUtw0.U.homhTZrWxeS6k7UzXT9LReCuzeHQbITTgroUhsr5QnXpVb593m68JwgQWxDRv6MQi9OQe5UQ6YYU1auF9mU5d3CljPuORIRhGthXajTKpPufHv23fwTu5arpvkR6sD5JzszjOZ8wToaLlJULMX0Q7fI.w06ycrn0CQAhRjFnDbSSnT5RClhMDEZ8cO5AocEWi.jHXJp9hQHuzjyfH4nDoEkHsltkmym69tlJtF7BfRJsU79b1oyyo4vaOrdICYxvPtjbQ3UKqS6TmtKpjJnDbzgQozvgh6pbZrajT06iTZJUJeQ6NtVWEUjcc2RSto0FspvcuqkWAc.C+zFio5YXWrM599lNsgbS2xNLHYD6FUi1cBsn6JpFQF9ot0C9xWS8A1PhntoodGue+Mstl7YP8JW+lo.MsWxWrMRpMcKqyy312Xs3MCEymlzJ7Tn26YimiH7poET9bgSgiDJWA9DIfT4FTbJZhzdMlQ9rSAp2PyldV0TxrSEKu0KofYoixuOKgxL7vygLkb.VYyClsANWabn45.s3kRw4x+t+szTyyhemfyZ.xaqnbgLyVIu2fhCSm6nkX1JhhqQCtpvzKrpvzUGKbHF1pB.wAyAf6.I0BrJq4dZkn.58QJFc45EVCxPtnQMpus9.3zb3sVnTjKn0nR6Jt1K8ODshwtyEUy7a.5HX84a3KQQi8BT3ncmPqORWYvMFS0ayVJEDzysZeztVdEz.qrZ5GaDoRerAkDfXB3.gDAIMhUUi2y7eEpR8iPAaZujupbY9pvmy4P0qDL4Q8W+lr7Ou9rTaZq4Tly+UAQ0eirL0ql.eYDX0RPTCA+y6dZ54HeQIRqwdI+Fj6l.kyFWn3FGdaBUd8C4ce2KYHu28tZet2ym9pDqIYJhuqnZOxqt3PT2KuBJwhpoNY1Nivfa6QFLKl.YgrLIZ9xtzF6k7G8ZIMnSJQSrKMShDnISenXAQR6JtFc7kWA0qQMmXc5U4WBC.vs.Sg.SIODZNrpZ7aGcWTEMeLJxpIxmIQhRr1SJHn9zUnCX3mdkkUI8b5UUoO11UXfXPlfveA3KhCKRSqGfXvjDQ2.osZZu9bq4ftJV6CvySjnzXX44MNNCgAzJUWajDvZTIJtDMxpBS8oW07pE+kxbPJLPRf4vgXJvTrEyesu2ncSUXbfhy+QBI.W4vabvhF+8xsFf1bq0QG77qc+ek4TcPErCNCDGrbxPxgAEGVv49MhsQJbqDEHXhtpINQtQUL1MVzq7lBZ8wToAVY0O8Ws44WoD1teNJv4ffhBAoH4g+48Mh8.T3USEWSlnW+HAwgIINko5XoBc2Tblv32LL.IgtRoZXDtQzpTQj6V2EtQwKdTsDEibv59DgqhLaxWkHzZgZCGqt6hpu4iQQLnG0eSzs3KZ2Q0HZMpzfqJbe+P8FndMpo5.rs4mCRFR1LnPPMhCKxb91dFhDcCjVzD6RyiEIA.HJtFcvyuV5kasNZCQqvm.8yAyAblMjbGOYAm65Z8ko.s9xEMHso04yqFU7TP2sVTRTJhNSWuXEIEjh0aV4QBa5ZzqXTCRP7oI3foiLwavvfxhdPo5Yq2oMDAkYjvzu+YxDUy704FUHuqOBI3dFNbpH7jYdTFScN65EonwPk9Lei0YR4xs.Qfu3EiPEO2Y0C8zZbVCPdaEkmBOXlKzlNOHSDWZVFf.hbKlX5EVUX5w0q5BmK+lCvAo.3HAVNF.ANyAJJD7GLGzBSnYyKooTtdnwvqniOyIT9usAOCPdtT5Us2T5UQ6Z4UPO7xq3lVQfySFRNrPMO4b9Nz7h9RTEQot05lhq0auF987LaeozUnWt0.imRuAiEvuc+BPxLPbNHvYV.bBRpDzBQveEj3ceUWdrQnv.jvTmTt1nj1hVDUi+vqar.Mz8DpM0Wd0n8SJysaaoZ9GOIS4pHvuPB7ygfR8NPpBRbtW5ZZkn.FD4uTAI6sQYpooRXOuDN6P9WbNaQ1d5zWkf5kLjeYp0.CO7EGJ1b3+k9YfBwgSPvs0.2MjULPLArfZjBPqVR687TQi1Moo2GoXRj.InhxDMjotWdEzqbd0upEy+zdii.bGvjIFjc.SlfuvVHPUjz67ScIwFgB6FUq3R.PgtwXpzO1HB8nKplyKJ+SoIAJfBxK6Z.hCXJDj8YCkfDX9IT463h0OBEL5tNdE0u4C4Q9.pSW37f4w9V3LTCPhs9aT0ab3Vul5CbUq02J7o.xmLHMgqAHJfaKCIhAEBxUSvWCSJu5uvxVMQ9L5xMsYh2cQGI7xsFfdzEUCskkz36boR2lOYPRhhqGAJHAVdNjsgHDA+0QhUdsW5ziijDnDtoC6mdwgnGbYUt7l42tOAH+txmINGNPRkfTDBhJHnFgDK3B+CzOBEr0C45nnRoXzLACEUhyiNmOCHEZmNEh7HeAOYNESsJuBNGljvK0QIxPldgUEld3kWw0r.4kKCEa3K5jUc8GTewDEpU56FnwCzqecRWYOO37qjFXkUegmK+17KARkCRlAGNjywfFAdHGHEwAxgHrvK9coeDJXQYixXMwT235ioRu5hCQOwhmypNW9mU0S9raynzFbPPvIH4mfREjzxt520heFJT7tcEeTRgdOErKdLCiuJlBuTIk7OEFf.LcAr+KnfuKO0qRj.kH9jhQlWpbmcVtwFkS.Ny1HDuB5ubiP7d+k+dmtXxSLint5cc7FcHBwPYLDIN05jn4d9TBOCCSnSJFMR9+s3byyheqiyZ.xaqnrvvJMsRCuAOeMcH38B6LYHSOyhCcxu74T+0rTkOTEbWEkfjLAlf.fCmChIJ5sMeQrYAadJ4K49MhtqhaTZ3xzGucbeelD5pnRrz9WY0zVVRizCs34bQMv+T9AHNBQrf54q4FxtnVODEH1fqQc8jacFzUGPt6DPhd4VCP8oG7C2r3RC5pv5TfqRfIb..ovAI3EKHP0PNrpil2+0l57WMQ9Z5VdNeHFotgnj15iQ0FNTh7p08D4zl2qk027GbReMtkB9prqIjU+yJFIj5IvZffulxG5ld9Etr8PUFm5dFdHq77N1qlBJQUkyfxPmltPe6cD3+4XvMFSk9I5M79dmJ+QEM3yFBMGvTb3PtfBfseAHMIPbHHHBQrPmS15SL0BLHxeThzhM35UWOES83uzxqfF77q8pNek+OQJsdT0Ff6vAyoz3HS3.kJHVjXTkW2qtLOkWAkfSO2p8Qcq2v07N78gBnBhKABxBBBg255b7RF0DjfVsV99vcdQKZLplVoRreFmfonXNrWp+i.fxYOoyLb9Pwne3xNTIjnMDUasWr7GIrOFIyKpYCCjfCaEvIEH4vfFAVDhEr4I7eEO1xa8PTfZ6NUv3TbIhViJsgnUPcsnZ5XIJuuJEf3xffeEB9TrAmQbVQCKYJDjhPrJZ1N3e1Sp23iR9QJSA0qg79+JyoZ5+XYM8IVsxUJ6JGNmajLUcinISPfoT.Py8yQMzjAL+BKaY6gprjgLEqgfYlZPtFfXzElNEsN8FynlFcqeCRTtyNPYDgimwWq+FanV5eZwy4o9X02RsxrinBMGnLu7MlfpIF4lZcwVO4xHUOvRZ7ZaU9pBI.oICaH3Dj0J.tJwfBwgBIfpC3AH3uZqp9BeuktjAnFW7vCGJNEW5PGp0.TuFQtpyS8xCx.ANKKDJD.2gyAIj.IjgEDJDjhXAeMYE78+3KwKBat8TMhMCCPJZ3Xh2nCHKKCHhKMyrif7pAuxxNhhQWnrVlvLo.5oin8aVJ0VRmtxh.9rY.wYmcFXly6J02OJO8olswwk5aYdF4LapC26myturXRhRGf3l5jhtNEzLJ0vexhnZNscymyhyh2tgKKTrkhGkN6rYdBFXLWlyvTmx.CANHjwyWv292qiumZmE5p.AxQVgXUD4d02pkJnDRe+WQWc9MCcAxCTXBNkOulUe28m8DcAe6FPxr2NbNygGUd6ADAdiYf7xQPN3E3e+ezIpH5ML3q7ZC4rNfF03z...H.jDQAQE.AXPATAVNqoTyM7KBZtKbJ62Ih37UusiJ2wkAm1L04fSJOxW6n07T6096kijbfjeMVE0+sz2pkVpTPJ2yrZ+WZqxmuOI.jeRFMYd4o17Woy87PHf3q+NnDWMy95jA4CPkM0qLDkafBNVGfCxRQRpdHqtDgp+KJaCQyrJFaQ.rFAJDPd7+sO08laXHFGs4xzUFm56w5PaDPOkeJFiAhw1hs6AbN0uy+2OVH.vwbXCOr0B4B.HIyY9C8uU62HWXG8WJPt3PchuWyUrf532peYa.6rfrI0gt+OvmajcCkH3vBkE1Hsx8UCuh5YxO3cdvF5YvB2UdBvQ1GXgq5aGmrU9VcPp499M4+RaU97kfMC4m.v1x4DO1090jxBYsQFQ1.+PAp73Ra7eejZ2xqkcCSlGvg6CrPU+sLrrBfK7aprw0GKb7lkOOYtCiQV.14EYe9+8+lrCB4IADCCvA5nrM9KwDZmw1omOvceShLFIsI.mzu3jRa7au3dZddrD0WE9SbHH9vNlRqbUHXNbAJMA5x0PAvnBfxY6epW5K+UNwvPow1LogQc7Ce3CJg5qTdya9n07nauPWErAbjz.q155Zw68.Una+uo9JN5pWx4orDYjGvdRP4ywm3Gcq2Y3pfHtYJV5sbDo4tjvnuW5jU+judgGrfCHRNhBKX02WiuP1fF+jBJfrDAIrbNxANUvAEx4axmN0WdpbPJP+toUhYOsQtrRmKyGlpbE+53MYw5oqfRvLxjTLLZiOD.KN5QDum1Ds0Sbt271Tofnou9yqb+sAoa5K1bVLdAo+hGcnMk2hpyALFHw345EpSrBH1BC1ekatcqVNtOom6wNd0O8dr9FYsAxZqxYgq9tZcuSUQreXVsuHxIVDxuXAxAP4AryKN928KuN65.ufPvuPjStAaUsez+59p9Id0bOXdh6.kfprZpqKSxV9O+OGJauPbem6hkuPtSd.qIEvxVLwy9o+6OxVgVA.kci1jLQYq8R0IKcwesSPjAxXWb+ep38ImHv5GCy0vTLCDjf6+jkpXM54wNgTQFiJdxd3dyUFB8vFB83NOI8.rherLFy8WRm188SDXoRAdZlIKMyjg3I4.IYDRTT4eWlyKCFubiMJmMtJc9NYfXL3ryzYbFZaixGZakwNUIHN.IRpC4j5Pt8jjHcRRztNjM0IErFRsoOEzZ78S9q+Jf+p+wHPUKDgpJFEtpXT3peE3upWBApse3qpXH3yXgvaeGe78+CG5+2.+fC9E1yu1y8NKdaDmMBH+uATjUJnR4.Y4gB0q36RPf2kWt2+JKqR5Gp2PKUyVuOHaAd.hMml+FwFbrZc8lJw135ioRCtpv2vGM7Jjj.AQHBZycL426WtU8iPAiRjVr0eipyvaCmE+RihqCznSr5pnC0ZcKpV1c4m4FheI.J.jHMDgfTymzebpAitbK33Rd0JEDT2Q0n+okF0Xdr6QBLaHEhXyu0tNmcP025gn.ljoXya10Cb27GJz6PU.B7JHVvlmx+G9e4Bh9RTEoRAAs5l70Ly+cFl0Lwk+iHQ02osxbdlI8M+WuP348pVglyKlUt1zEDUeWGmobUDi+tHVj2gcfKe6mWLhTK5oLoRLMSGtonW4Em3rSkfxJ3vSaQeozUnGYwgnerQjErXwe.uV7Qca3UjBLumft8NB25r57mC+1T3ffViDaNqZiwNHUaLhBGmhKQcqGj9dKdAuiEH9VpbPP3iXMsjuUrCR05VmGEGGOlQja9CD7cGPBDXAIDpIq.WWWKa4DUQBROHs+UV84OW12JHCDjiPr5a4a27NnHsdnWNfQucI2UhF8S8ZD4CcIxFxLPfqPrpiVv2G8gVQrQnv5Do3xNVlhRQSsHC2LKd++Ll9.hW+8fnhLA3K2ZfhQUToWxP1nXCZsuT5Jz6uQ+WdshqPCRD3ymXAWZ1ZuGpgXDENFESkFYUgomXwywnQ18DDRVb32hM+EduwFbjlhQTXCpW40PwTGd3KNzMeUgtHEI3l5MAquPfqqqk0JQA13ftoQmQSruY.NHHEhXMz58D6EJFoqDtLEzfaLl5knqnqv.AlvFAajB9msQ8USjOChjilXCkRoK.fDnaoTvcsnAYTdDPNcW9cw4njvnWR1ibGz6SWwnKHmHAjJxpbR6cuq1mWMVoWKa8AKUqVAIHeNi46ho4XzE4JasKC+zmYIUu5FY2aEBPPNDwpeYeql+wTDuwgtS.I5EVU3226Q1fK.AMUhUSzBQtsG970o9BNBspvz+YKm6JmK6d7AYaHhPrns7sOuC6JeFTB95R0jOZvUE9ZuH+FpbPLDgfu4Mg++zuoQrCR0t3WkBYP85RHDuwHP350+3Q0PJWxlgn3RabvXpdo3ZhMDUCE0OvK8r7ZFzana25gwkU8HlooaOPId2wkhGGZyfcMIhgNbWKXRlh0rFn5IOuO8TJTbxsmBgD7tS.oa8ZpOPonh+FXgqxitB4U39txU5SWIUe5Jt0qCIg3jVqsRAz0optzkPUujkPUGMJ0vRVBUcCwnZCcoT09tLZNZqflGOTxiJp3aeR4ZdfbJ0j9jJ078mz6mxU+8mRol+8Ijq8QlRotMMg+F9wE72vSU3zeAXmEmE+u.jFf4xm2t89CSy3rLvPL3gbET0RZvT5YDgOebITQ.1Sjd3FN1j3ijCpbnVwIa5N25eGOPHpwhdPpqe1v9PU.2yWYIGd4w3eFY6oHjarP16smUBUnn8ZPFqM1au2zmlB2MPhywHEjwIJn15kr0+t8cT5lyS.E.rCqhOgFr2pFrfvtfCKKnLWOb5rSXuyzYlNhA4iH19fiGbjwwelEj3LsvGutuvi9UwD.Gq.bRu1WR5JlqUADVP2Uhl26hlO+yKbx4PYmPK6t17J8UKD5l5h6thwlyDhotFKZXPR6yNvkcCKxovOWXmaGNV1mzxgqJ3ZK0Vnrr.7PuyIXJKEXp5342S2q9XIgZr6NoLHxt89iy1ROTNWdxOIKcZ29Tys6xq9HcZv.0YYOIR865G8+FECzdK12+M+5E1VgQy10q0xybqCr3GQYgcQ421ZYF29MjyHybD2MN.gJknqvHvyv..3N.Vid41i.tB52Y3jagiAyJ15yOd3CeBmqIGI.KPnIq8y8c+Z..SBv+oI8KeEWgbdLhftqaeg647OG9eiDMAPtSJlJyicQ4FChEraYo66d2esG4X3O1lDfoEbp59q68qxi.ZeO8OQJnwhnNRtn7a8v44O72bI6L1b3+0bju.MQVobu7FOO.fvXeBP.lPurXaNsLkx6GHmozGPRktyoU.emYbfkbdXImOSK9nL.3He8iHMDFh0Ry9HDuV1WdUUucEX85.N.NjyjO0+bME5oGdgdJv..doWbpJNx33ikCBliVfBMdGc+UQvpyU396gO51dVdHnP6e7ID20eey62XQR2F2dRfbYklZfMtpS9TH37WnB8.+a6up8dL7QxS.L+gyW+s9y+Z9uHXKe2ahPm.loRiEt7Hhm9dW5AatN9mQF1DrAM4S+O1VgCB1T.rEj75rFOy8MsRpEgd+8Kd+t8tGuyM6d7voUHUJvSktSV5hySqEvwWF26ofKJNkrEP3dAaee8cHOuC5Hisxjuv1eoOw1FgtIKNbbaJGDXVjkPF4y7PfNb1V0Pnbgd1oFql8ON9Smf.XApbpF+Ru3+f7kAmZ.rQmLQal5bDC3G9Hm+tO2l3eNXmCzT4kN4S98M7gVbp9n.650mH3HSf+rrPvX9Bc75+xO8e2DCAH2.Hr1GT9SYVuEFylc+ex4evXUyucIjkP9S5O+15dkBYHq0.DifSJRPf6E4ioiZLwPCWgezytyAScZ.XxxfwYyegJD5eXm6umcijW2dxC.pXuHB..W4c3RdL0OWYpMDmObxsvIzl31SYP52+OU9FFdKzMbCnP6sCGjtcNt9U35v3t50JMR4LTOCw93ebXwXt8SkAFvzFaANWelLfgjTOcRNWz+5gydkWYuxI+X8xt96vM0mfNofVfLZOoDZOoDhSp55HP0KFApdwHX0KlB19eZ+x+ke39UqdIICD4DHXCG.g560+36a66511wSuuu31299StqCbzuT+ae++M6eniz4.Szah8mOyc9ZV6dCupv+EFR3+BUE9VEI72plj+UJK4e4949VoP1+JEb+mmpv2hj4ZQgEWSXwCL9YM.4r3r3WOLiMPXL3bGnYGuPetnFA0d6tul5mqLUCyhg8MoziOv3myjYo5cTBwXgZ9Ap6Ow+IjlCFCXeXXLL+pu+4N4QqF.1115UI8ZgfE4mbJPSMjQ9WC9sWBXm7Gj+rQx5WQLauFOVuSFTv4SkkAXoF76cAe3Jq9neF8TQjfjO3PBXyvvffIDwIRzuWyerYCNBjieGO0vsdhwH+P0uC7WwiT+eQzg7sLb78+Q6oPpGeaVYNOeDNv3NXgJ1my7jdUEjGLqIcnisqyepC.4B6V1+yb7rsLgEUWVP.MT6+bk+e0rC+W7W0r0jaNagI9IDk+PVLF2gqLGgv+E3WT8kay72JbrJr5JtDvvMAT+s8D9imrGDG8Hv0uBIjd.FZOssoIHCjw93lF7iaZvS2utDnNQ6Hsc6tEh4osvD5z0USu1Kb7sa8ZXRqQqInsuG63RQV3vNYLRZm4wdHZu24Ik..XVNS.Y.H3.ghzCyATdzRg6Ev4P8Mox24YN5RN9XTP3ymMptwuaUW8JGUzHx5GvQtpOB0FaDAd4wcvj4nKrY0s5iSfkeJhF8.WX9gg3JWfpyS83GskIyR0XCUGDt9Gx+6SaJEa3zrowjaIYRr10tEwxVf8Di9isYWPCR6VEPFN.zQO3E..bHLOJNZSjNUmdosCGLFYlNM7RkCOvXv4z4zmCvcsX+55hLvPjlYxR1dbVxUDjRuhlcVAKSgGB2IockeZmASNnx1FZTNFeRwIHKUNPU.f.HQv5+DCg1ZK6BvBrP09b9ZOxgtfwlhBUPUArZq8gp9hm63EZDmbAWWaiu8EdrBWF7Qm+BBXi8TPrzJj2c.F.JjylN5geWNM.VKaKn1le4iurwyRUUfqAT4bt+JLQ9Ccufs8adsE..glK1bYyUfeQ0K+ykIHfkCiF6vKcJIvCi8I.5AYLNnsWiirEzF0NRSyoEekFGOEcD8SqLpjHvM00E5l5BBchL6rcG.ffFfLSOfSOCuEJYZHvebLw7TCKv+0XxuuqYqqZ6624qVPh4jWB+4g.5K.HKIX6yYXHYtEPMLOlLVDEL8dF+BO5jTEET0bv7ly+QvqTs..PlVRx.Pgj28wk12j7B3mk29hpQ5UCB3NqXjCtp8+.fczMcL729HGdoiLN4mT0.BU8iN2qtxS3rLL5n28lrS8w2t017ZFd9kEWv7kFTimCvNKrG8vW.czoYYx4.CQylF71gYQVgp3P0+2mXJzN3.IodZKsuL.3yj73RW+cO.ccssm7LFXvjDONt6BsC3vPmzOLCJfclwYCe9sS..2ax3NaZaGPngoXsDXOEZucvaucXCrFEzdJGbetMdQjDLzVOhszVO1s2dBV73DuSpM61S.hEaSxuN0AASv6LFjuilQvSp.kmJOh7jGGU9R4QjFsP3v.ACsUDJzwPH+CiJFb+24gFcjG7viMx26Hm7n+aGQ9.eug898IO3CeviN5itGoHsqgvWVPD585iG7cqwC9NCwCdYPJvEWgju2KI7cgA4J5Rb4EXykCHANShfCbPNlCIrffDNLhAB1jSVamB6U0w9UmvN+SE7rFfbVbV7a.XVLVlfHVZnS6LcFGCjwd3NMoTvj4JPA3D6KGGG2hu6gJr.YF..CrJV7OaT.6ZQONigWvdhdtW9gPd1tyXyfhs0+uKt997yYiHCKIjM67fO.7S.d221sk8s0a5y.P34nLYdKmBTyMnW6CriN9XopN6gN1w7oxfOIXANHPUCdrKArgA38zVb..rsgFki9KvO7wrZvMS8EbVcK7YFEvtEztM1x6QAnc..ze+teW+edOUtM+B6QTgCvXiMeYYXe9bG1gF1ZI1P.Gt.h5C0mZkfE7pvjA9P2UyUV0mbAExt0BN42mDAKvEMVfKEijBsRad9vK5XOLpP7rPQ6SdE1C2O3ii1XFczgaG7FS6stNPF6NPF69SOfS5zm94o0SEXnSZsY9W3r1Imu58Mg3Ud9iPerqLf8sioXXsOnLkbKN24ssDa.fmX6YWXda.lD.7osaMIXMW.6PnQkFqRxd2iXEE..jhfEYQ8ZU.ExBT3P.jxMMNcCXUEvgxW.0yy89Wb3cDRlcPMPLL9jy+DOvqnTcFa1QOp0bbHUlEDfEY9+DD.Xh5fEv0CzRczi+3HOx5ihnh72ZrpFLjfsaXwcvDmX4..0.vGGqikreHXSqLJyKZGYv3L5M1YjOi.tQ8IIZA8PsC24taI82jhLllSxjyovBqnFNPVo680GewV.gAbXPJ7lyu.jK6s8DhaX3sP68ytK4ibTZtts8QAmU8h9uUlOxIe2f1BC1f0IquMMJGPlPDdtOwJB+5gkXC4GPfobp.CCfWdbo8bLqy2l..WFRyeQunUdHhbCnPbbcJ.L59tuLXjWbbA.vs1RU61u.6E1b.qBKDC6ZH4vo6g6lC+sAjDr1AnDI.uRLEqpVxyNSpldZA0xy.CQJjFaAIc1BfcxNS3..jLgN5e2YCfSNt7mdC6cdaYe1O1D4YfEx+2ddOdzumeYVDevhQvwhWErSaBflcXn.T1ygl57b4MRYtXNm6yv.nf.1vLoE.vU10bJLu4UvB+zr1qaN00mOabTT..Sjst7qOiT0SFwZ+CWT9LWvX0u3mo.fUMHi8n+m+gxMaZvW37UH7Syygps0MsxJ2dHE1IjgEgwOQTFARpBP0fP1GDYry.fhcoc.TzAAc1tDR4Fohg6IwjOIZ1wWxKI28cen.KIAPjCRAGDuGNZsA+fH.hrX23kqkNEU3ah5nan+g4a3wxxOOXZ0tI4fVIEScRYMw1DVSLnf3PEq.RXyPE4ZSFyCZ55I015Af+JWABGLCpJRKq02K+gPPe6CMDLBB8RG7uZWO+Hegc7BG9Kss8NzWdvce3uz1NxA6baiumu3Nl3fI1wD+zj6H2g+VCx8uRYg+KTQDXEJb+qRVDv8f6eExBeKUVRc9xLoJjgTUSBNG.bB.1.NDfvFTdFbnwIqgXN42lvN6fiaM0KRVS9hL6r8Og8TYrrm7EI6r+rrVYeAl8T+TxN2KexPK+uPuhOxmK5Y8f5YwYwuFfHv8JPLWjjEGswa2DNf0oSJLc9WNddEZ3.pNUTatBCMg8EJb.AKaFSolCUX2fgE..jFxsc.B.vvHXNrsonW4kFiX.YA.QScxKK6KApoqEERuh6iiLW+o0dw920fwfiaTP1hy1dwX429gP99+ouiuX60L2ISm9ShaByUFUsCaFfDGLXCGxecPLw4.gBf0VZqMGCzCu+4OkLdUHFYL6koB.PxNL4ktm.8CmJ24ynZRl45GoomLYixccCKBYesSnEKrLKHiMEAFK6INQ7g96fMN2B7SNJsPAzXfjrDAaX.q5wDNODX0WAFe6NfEtoacASbj6baBtS.H0fJioAvZx1IW+qh1QVl8XZrweMHiOAJLV5zry0bQEJd6xIj.fkz8dGLG.33lGvEMBg8FHMgSm.833tyiDfMGijEFyX8ryIiOoZpSlnM8B47RytSr+IDGXTmUPB.FYC4EtxGQpEjqs9agajbQb7OcT4gydfkJC.jkANN+sWS0n.PZ19wyigStYkZSLP1e9KVuzxsTJrhiHFkkCYUgLl5Di8tXS15nG4NOl+gOIsDavsb3Jxp0rzsyNInFAX65NKnD6CdRKrwXn86HCkRsdp5WmwTJvTkXLtc9oV1XcAeJ+4Xhv0UmTvjcW.c55TC2RUkQ8RSWLoEk4bZczO7PxVp089HUmrjsCGFdOSGg.yzT+o6m0xP4YXN9452+gtnctO6GNGj.TYj+2ym6yOu0.qJWtRNyLF7C8zGPJ631QYE.fjjib0sbfQ1Mb1SW8SHQKLjLA8b3G57XYF24JGRxopiJJnZCGefiIGdj0N7WC.qbLjOGUOH.vEDyeECoLGXMA.aKzBxCFwVTiLplOXvr39GQjeXaYYaNIXB3jcp24XaFJgwPnEyjSM.faFFA..FkrEP6F0xA.dQrcvdiDVxocn+V..F1I7lxya1z.IPm1cBvRijLy6sSF5oB0Vtkv3Y+j6st6emS9vSQ9gSnp9Ohrta8yeU+j++T+2EvxpfMyAExosBHMd+OgFFVwASlM+nG2YNLK.X6.Jq1dHGLtL.gCsBQhDEMfKcFG7vMYggA74nNgJoVUtSbz+fiu8sxv1GWbzwsaU..HTHoFW4AxAvOV5GTxnmXExbPH+81zQY24kWed77E7q4vs7Kvj9fUkm7ji0Vt9AotDXUILnNQBj.cZCXHLvOTzKRZmD8v.RUvUFJQ.LmzDwPK0E.InIwODB8V.K+g1DKx51myngu.Krs6V4j+f7RU+TOQAzOj2YKoHzBP+.15ogzD+Hv2yvfdBE3OjBBnQHejciBT.vE.11SAgPAA2wAtqsRR03yYTFisOYK.GNwbDLl5jVDWSphO..Sgwgf.CL.hbIVtRYOFAtBiIpjwXR.LN.bXtkChCAXCxdB3XObNGqCCx4v9I6Iy6RxNNNfxqBG4wENVxfxZYaerr0L2u6xx5CEXxvQLAbrTfjHKrQk.rQAIl6zxr3DHq8A9YM.4r3r3WSPDXtJ4kD..imYPFJQzIoP+tBp3X.lcn2Uq1naGkwywVgqDTZRe009tO9ea+9q4ubvSBs9wmtkHNuSTLOg29wPDUlMmCMIGhCKtMcXv1w8BAd+cjCYt9e2eCeZN7LBYr0FwY9XpQugjaSwrkmC+g8GUFKSSFJZBNAO1KAnQWk0qEvAHIkAqfYLL.BZwGaR7tkHAAKZJsZZ6HGcC+bYi6bN4eHLDq+90E2bReEFYjBZ0HIaO2BpNJLDREDjHjW9EdMMrsSTXzSh0.HJ.FWHTiMhlOXY+ovjaGHuwyAoLAwjAN2aSepm9qragZqVb4EXyDgEbon3juvczmUkINWoJQ9StOvB0lYdzC.ts6SB.V.IYHN3o2BHBD+LAkdlAH.zRRolSlzNc5mDaCOu3JMNWBHNGa5.BHKobC20dWvvGi9rPVFHREOQCe967m4Gv4hTxy.JvflE+3YY+gbGxRhojkMwxGcrzvN+4+cXXgKkGIY9BSssXh15NBg5rbdlzETk.KhJDjDwg5iAk5qwN+wmDePGHjgjbdmPwNVfkiBCk9IUp91V7TSzyP7.ie0NoS2YdXvkl3jNLYHDxPBV1Ngcl.770A9jG9XzXMLLGfYkFDOE.qcL8F2oSOcDQNcGtqC2Ro+zs9jRTjgf5jgLFhO2maqwdhcjueG..I3jmwAT0fn0q58V+F9P6UtRPiiai8c+2OT3OVrf3DiejKUAfPdddgX0CK+nfP+s3ZPd5A3n4NfT3ulMNdj7iMQdhAn5CbGYKpPnWCNPwgc7SBSAjIXwsBbtWwNxdR3fz8nYdcIKjFLZvCAVa..GlXyAbKN3RBn3XaAV9AfrzeZc4..Px1DHYOSeC2rAeAX7hFfblAFH8.1llwY8u1g4FHHY.fNYcR8i13l2dLA1w39vjNr+3McnMOksx7cDAFdNe18c81WvGsv09yqW6QsOAxCNygAMRFL8+gqn.F9VX3+Nu5QNJcYbRALRZTQku68L1yB1jqF.WVyNIMyP8mdJoM84fzZmvlUmrrsDSJrLDrBPj2o1qapGda2TvSNAd2xEmO3qt26PERCd8lWs0121iwesQNBc02VSE.pkict6rUXK7wbP.EvIJqyTG6QxJKc.MqW4Y.gzIoNojH11VKGae6fAlUJWiN.baHv4iGmj1BCN.CM0ZdPH+39gz.eGXUYn0pUHLxYerNXm7+FpJyEVG91flcUS6bRqCCEgDJPGGL9wu1cLNuJ4w4QlBjsLw.gS.G33HARk3Jy0Q1+E5CxyMOmrkA2QEPxBfYClcHPvhryS.VVDMtLfM4VsMv85kJJOovIImBCy.JL8.pG2ZRVji8XNj0gcTmaxkvq.1LMXSYgfoAawwfsSAv4SA6PA.293H6g7Aq32KbNvq.gRW8SlCzhUmw6gidZyF.vDsySmF.8ODCI6wF3rchvyhyhesP6vjoizTmnSBnS2ZF8JA7LFoezC6PXPFv2Szd6vh1Uk1C8b6VxwBUJAFDjjflfjp7KzxjAWvvzsmd.G.cwdep7rVNmw4XIUg22GQZ7a9IFcBIvArvjScDPg9HvBKHIPmuEWbmEuovU4mLHY+5R0ZVa91OugcndqwF6Gp30OhBwfkCXL.NxdTXW0tf8VRBGzICF8Z.zfMCOmCi4.UIv.mXxvpNp5KZ4Etd79sMxLGgO.55u96Cq8K3Xg.VYmeDIgeNaj7vtRNH4yiujIw1mqji0QlzBbYHImSTw7y5KBrm39Av0AjICrSDGz8LHlTJxmqwwO1craleYAXMI3R0nJ4KNK2l+G2gy7+KVrfg7YeNXO7ECGjoCafqm..K8VloBqDXrYF0tSiQaKPMd+2uU5jfPxTzXIYE5Gg4a94GS9ScsUwwfVx+re9TeLB.PnA4kZr9fFHWA.qexme6r0dWQrwwrrDNHqLXRxPVwlVP9AtWvM5YS1G+G7OqfOHr14KuYAd2iyflF9.WYjQu0e5HG2xwoZ.3TwTPFuTNGVAbRFS0Ajj.mv1hcXjmadYV0h+VGeg9Soh8+WITvgoethw36.GmCoZfMKub1o0BH+1NDC.79QarVPOTJXxA1I..RaZh1gNNSYgOCIb+k16zF.LPIQBvX.w4HeNoZ7SpxbfbN.4sYDqpp9VmySt0j7lafjFCRxUh7uqev3ZerO6bAd5IDLNKhDIXR1BaqCqO01+tvA2LXvrEIX1hclUb8VGIQTUb0BZUWQ3SH+iN5X4sKToBbr+fJPfmUlyxiQEPqFPBm76a+BE0nz4....B.IQTPTMevJ700VtdRlzW7timsxZGlg9mBHTvBMFH23LbLaFXbPbxpvjRxN9og.X.83..NRlDoZAbX.b3CWf0PCxmQr1iwfSQ1ThfmQxLWJousDuGf4zpDxI7szOvV+hGsfViDKzwQk+wqowpwX+0YeAeK8jJxBBNBn.IRlM01Agz.Xd1LbhBSN0XTNN7Cho5WdJhGzD4vlfCZOkymZcyS6q+G.6VdDcB+K1hC+bS5m1ag86vnHNvRs1qXH4+nNNmrelMsUYYGIBE.yZGAJjuIjOSRCaz41s9G.v+.1OuuT5rVN+vEl29rFEa.GPF9pPXAtyIzNwEzEnqtVvF.fOD.aGKbobM.Gfs68XfCf7D.65GGr5zgD.T1eV3+RyC68rcvGRA1ijAgYgA4bbHN4Sk30kjaRlIBHQPXQvQ.tRdPfCH3RgamyEgy57+O68kGebcVc1Om2261rnQqiVrksjkkWxnX6DlXiSHvnDBjjRRnE3JJEnjRAGf.guDRJszVlYJo7QfjPSXq1TfDnAnyPKP1bfFvRP1ilj.wRdMNdeQRdQRizLyc4878G2YjcVZ62GvWSSHme+tRyL2YtybeWOmyy47bX+5HRykgiAHV.H8Aj9fDlrbdSCTtd.gCTjKHeIXMWPJO1eVV4cPh8mfX+IJwpoAXOE7ACR.hAjrBrZRtsd9xKtjObYePj7j6IHjf6PC7Q.PmiC9Hy.d+..VPsxvPyyGTeB3fH.4APG.ZvATwsCZ9WE7G5ie5dYAHdPnJfjZ6Jf3EvXwiqFJyf9fxHAx3+pFf7anTKYV+uBJ7+u888+semyccXlPe.bjWYDO2ubTXFhAl6IoCXAqL.ERBOPYAizh73qx8gb7FRABCsABcWzu0NB4BIJ6AF9.NntvrySCwPO9WkGzF7FuUG5hWBvDNEksXZHwgYSJvUK9.TX1GRmmFhTc2uXHj8UDghwKEBAlSMd+AtFhAgQJQnMo.KJB6pfupVXZWAb8VuHye0ckR4bLdcImw1k1LibFhtFoaiIa5I34eUuMergOIuf0cCdnY1ES5p7YDl.SL7UGU.yh7wfRA2fU9Un7X6P2EvaMWNb2CxP.Y4rCASNEW5t1NL9As+I66GL1me29hHkgdKVB84SfL0T68quyJUdlxyN5gpT9v29ogDXFLJyY.Pl.kCHfLf4+ea8heWt90uyElIje.Wf4BmLr6TPqO.UeKuMBiCsA9za8rOzQ3qBTHPgZ5N64e469n9.tSjY2x40H7wcCfCooH.KBjuK78HMOQhqDp8es+TikbiuYu8m+eBul0FyGkU5vzQGlrEI.oTJF.BCc3CgTAFgTfD.hxjWSN3H.FsCd7QFWDO4RUCk+qFnnVXcEJIzT.ZJnD..dkglwXnr2QONYL5wX.v8gAY.fQvXTOu3s.uBHePxv.YplXuYNk6khDfNXATL.zD.NJVxyN0GdWmaueXwRV46uum3g9Q..q9sJqbfofw70Hc.TA.LAMIlcbMTeO.f3TejTpwGLubT.0p6KRvX4iYHC3gTB.P+rKgR.vxyClDjDfnLzbUn9.1PKdlLNCA3OH5O322sWjvwb0z.WD.fHP5qHraIMHJMBD.PMDxnRM3fBaan.hxkaG96F.11oHfg.Nkb8o5++up+jddOdt4kmJAa7hMe8+py+aljIndmz2.DryoxkKqzdjDRz2TRHXi2v64oeu6+H762WX3Yr3a4bcNi+3movU.u2yDMA7Hiyp4VjEJJRs7jrrrgoIFLTLowfzUTj18c2MDQVHXfqP6lS0l2fO9Dx9WcDEjkzZuKYQ5gbMXnHnq6UZ76NzF+g6uhqObAzIMXTw4HSJ1+sAOrgLhd68dke1cdwdCfLTe1Y8vfIT3tTNtb8g.UOLnNzzGEggEJO5y.+7o.21MBYcseyxicLf3of9G9vfZFLXePsHAGcBHqnC8itu22NDhlUPXYvjtK.LUPuBlP2TSqcOiHq1RSqSEIhvLwFf077YWSE4RBkmRwUfhcBCHcXx0pJK95CgRBkh.6yJ01BwpJkX+RDwvOnlAQJ.TgUSAk6XksZ9u4zo5gR5AORBFSFzPWWTPK1Chhdv8R.JkYava..Je.BIp.p.e.Qs7xplbEIg7BJ.E.7FIEnLCAUF.fjaPdH60UFY.Wn+AkXc86C.ib4fOPJ5A23ADuwhFbe1wU1XHEQD.X+KBWkwqZ.RfErJNGjvFbUOCN2B6O+MrqAAdAjLnZXZWPKad3hzLga6xMvdt8JLChthjRd8E7yORBsDiBv4F0G1fymGz.C.EizT9pEon4XilpbFNPFNWdR..Lfc5fBbS9rDJjTjKWAZ.aVkBPtcanMyOALHoHPW1WU9uawNedLhMvbKDmIC.kkA.MX5rh3.37xR9c9ZdHq82J6.bwBT2wzHIrTBlflxPqoYzmWRfkNubzUPmkX8erIw99iZQrfPBfRJ5w25QrT.0q.QPx5Tqv2XEPETj4dU42FYn9Gz2FCDPwoMVTCjuFluu..BBRHf1by+sy.J+nLgjjO1wZHztqxWB3.OFPEhzi65egfZyvw6RR9k7QlujXH.FHIfPQ2yNlMBjb89vm8Aqs2PvMplOS5HhmqmKfmFU7PdSta3m+1.CjAIGddZS7zeV+Qhzm3RulQ3inJGZik17TSQ0YpnkSBs1cIsXlxHqtLLVbXx+3Fyr6+tCzX7OcGGuC3l8PnRV.NEtbiAQ2NnPR4MeGGQKWt86Lv.unJgbp4Z.UacNlK.h.ClAPFJMxhQgMkuZBC+abtjTihR+M8yORNF1AJ.wLP9atSBWSLIJ3F9e5F1aC+7c37Ub708fUTJ747o9a7bgqKf6dFsa20kOMia4NDXFHjB34QJoG4RMrl5DHALrreydSAnZy1kOa.crWGIlfEOxVlIJKQHWOexC9t6v+HBbFZZhGGkPYW.nLn5ixnMfievBZMB3UDWKYa2CO1lRIwS7LXK2dkHLXKO3CxTZZ1ObB0JTGYn6j+ys+hd8AVLBFj5C8yYwP9WJR9hsW8q.L.A.CDrOHxkALxhq881VnMt5I8VXGF9ey25R1x27GFOzgO3wicAefM+t151c9G7EtrZKO82byssnju1i7rWWFjAY7uAO6VrJ4KAUAdrKTTzlhBmt.ggYrrqfH7tRo3LCQ6XiND.vSr0hQbXDxGD6Be56Jgwkq65BBJE7ADrIZJhPqHzlMJ7vN1gGV5RHjZHruKqSsEzjPa2ddM.32.fOfFqiH.NsBgaqPf9.OLtaMq9KU0PggT24F6kWRu.cuj4ClwIAhjN4eNUcNnpD4a0m97YPqpU41SNWM4HkHTNDybATUWC+pm+4PiyLODHBpzUMJIK8b02opAJzyW+m4PrhxF3TCBD.wo+VcYXi9TOx80rIVkCAyFB8Neea6b+Uaw6yLiC.h26qagez+3csy+Mn1TZR9.GbExys0HvifRAlATjYEnGZdfanMKe34qQ5P344RfL8Uk2qUKcCNnMXC7f2EP26tK.mPLNzL792iaCJFQUDX.gIGKgHDN1rk8QEWHHeP5QLWU4UV.nGjgGw.bd.vHiJOMJY+sdLu2yC9ZZvk1VrJTqfzVLKzpD9WT1rbQCfng.q1LjiOX4vS+PetmRHmGADpZnO4YPvnzjf0HnAD6syLYHIxPQjFA3pqSRMh07fPFRHBAhBC.eIX.e3wJxkfphim2gzYdxJbkCpwnDA35BRqD77kPnj.vETIF9GOT3y3a1k9AgiP+4tNtPBV63PcHevXVnfQUsCiFb92L.fFPw5.iBvmpZzQ0hnLAPb0v9jApQS1LPA3sgZeICUCCVhQAnPgqn1K3UcDiy.C.v7Phq5hO4uuSZ3Kg6CnxqXXhgeKD94W14woLQ++LFiIIhx8m.J.ng63pzwkeaN.vjHXf0OrWF.zyoP6dn50pFCXXCvUSzvSoeHCmZv9eAEHLa.LxtJ8pnc7+vj.94G.HCk7RmabDsozAOd79.ay1h1d2msWpbCRi7U1qNVRH2liQ2kG.ffbcbNjlq.Tq.75wk3ilL3Er.SFs..oq3fE80cUXJWPDYJczi.c7if0XANw+UGS7ap7bT5sHg4EUf5B8BaOGGnTifFCfRkCz.vN38DIJZLLe2LAAydtHltaoeIz5I45T8MRBstQWZ4xABVkHTmg5b51Z1JJLYI.Roq64+ZfFNOOQyQwcSvQGJmRy8cNHDXvAESF67Dn6tArA1ZoVzV3DWmuzaqkbK+jQTd6njWkmzf8FaVeUESMiN7klKQWKTRL0g+jGo9VfYSqAQZ6MgvCgaygPV9JtqCpm5layydfzU2LOnk3Tta4m2ywy4bDw.Y3rHMx+bpWEuDHDwHC3gxzOfcB98dssEx9ssXdpG6DgwIpH+b2+DerR9Vs5hvRQry7Osiuv51SKMCW+74Ijn58dLWBQzTwqitOkf.zIcV6nR.fV.7CUXC7a3lOhFfNio8IDVvgHguKCCWP.5Hj16rMGbYZ9MDC+LE7.7cJAyF78NJnFmWROzGvd6ufYNjmuxwGhwT9TbcgmO3fPtVJN9za5wanzXPb112rygthf0NBntURkKGDOm5OS.RAuxv3C5JBXQnDfAkkyL.ztwE2r6o8DtT97iBJis2HcOtp8UH3M+cWwO3S9dqOotOSv2i4oNwU93m66neGXacMMp6f3N9Qix2iOAAH3yrKgFAChLW25ShA6uHk415xXIm17I7vSo6UrrvC.U.HGRU5wlGbO5kJrZtI7SX35C1SoIOllWTHpGva9KYI9.CnkeHadAWXLeLtkrkVEdLwtdvAPWIjyBS0wqN+IS+RKTcO67ATzdGE2o22ZImoGvPp74AELghnmqwGoDAF9mRjK2K.wi4j7+GMOsZ9GVKWgpoeSATjFAieRcM9OYuipEbufPgCoD0zCJMxBaLJcRzTBtD1WdDEFAFu8KsSI.Lej6bhldnc59slsL.Sg9CS7gF9oL5.LFBp9uzjDMkiGB6NaEE7p.EwvsTEI7lv.R75ZF3zMQyMh6GvC.dJxT3UZRHAfdJlw4kEb2uk83tgBE.LcblYRUkJPWVARhrZbFKq0JOu7rPhUbeUn3folX1mj6bBD4g6DFiCX7y5EQZtWD8CtvbwN6+1cSaad+aTY8WOSgN2RxPmg4zi8sJLwD2vNJM9e21l8g+z69X24maGy73e+ekz30XHrVUHsPuVesvmotd3TyHBshPxPqfHitjjdaDDQ7YRHXvDSZkTrG74xB1aRGGm8VtRomPqRoeUoJy9Tk7l8Q07Ks4hdy7nB+YJTVui28xsV900c3y9S2Ujy5yzYjjoWRzE92snncd8KrtFt9dpq6apm5R9M6nnDSe7cgo+naCyLw1PwitMZ5I1FJN9nTwCdHTB6mJgcRUvnjyodju5QgBja1.TS.NYtA9h8eN37uXG+mK0nK7+inM7euGAjZzZX97fFfpEpBmbg8mmWB4ZS7RhB9..mW1fNnbe1ujbjQ9RhLHsCUEJ4r82kwnC1iaN6wHPAHYXWsPfQHqppIiR.n.RqAJKmKWVpG6jztxC9jIaXFN+.iR.ve.LZszDBxQASy.Fru5U6JeoS5GoDYqAEd9QI.v82G3Mb+PzncBwEfcwe5MciFchXN8ckKzcrLaIpjvT..vwIp6gdFiYeRH20ECAgrhMmOA2Wlh9XBScr8oggqvaVEaNK.PcwdjHWFT58.+VekfBH+OFI5Knsbtcps.gQ.FxF9IK.sVSB9v0U1ucxw2S.kOAvbkHN66en8ns982Gv.Hd9QUwATmGrw2Z7GSb4t5zviVzXZGlJCCEUeKOVqWIHLdTJzuRvhi6pfmdDmwNPSQlA6uqKGn6KueuwA3Y1zxjarwiKu1u67UG9O86vtSY.VYBezzi23exm68dh+oqdqB8SeJnufnR8NDBitjxXWT4hG3VNr4h93c60.pz4MA09exOg33Y1a4ckOO1.VmjACBDyLn74wof3ZFFDwDAl4By0dLGiuQ.AJAS.H6uciA+siEtHFDkYTHxRC4++hS57z2ywhthdpCWx66oNuwKxezYoHBJTq+qwtfexFmYqval6n.szLwc1ucFjuurTBjP0TcNBkE78IFvqhV4sdOwmZzUu0QeK2lD64JbFd3j.vThxg7wLyPwLLpTzmcmELnFa7WzzasnAVTbH+pOqNgRdjRDx6WeqKWq46XL8Bf+j6ZTk8P7LClgjqd2coASo9j9S46Aovm.HynOYcu2UeBzJvXneZ58BAv.p6GWf..J6pHmCDf3ZNahnWwL2eCdfVO.NayzXStYxOn2F6Mq9EuS30GrYjYPQdaf46xtMDyR727Am2Q+IOxz+UE1dkqmBUmTUbr2kNvn0iq4DSD9evyS.sfPAv0r7dt8NvLmwNRiM4kbjqTruXwj1qNhDgGGnYcULV5T1m4YfGSsD6Aa5K7HFMuz1EQdjCaoNRYIXY3R6Zys6LM1myC.+n2..ry4OPtL7m3F+E523GpKmi9WOkumFpym78Iqv+b82Nl1xE9g.7WSlA4GDmEmD.4GvF4.jCLPdUPTymlhmNKsin8p4bwFLyi5UUAMwHXbQxprkkscJOlG5TyYKFH.5A.v4.KrQFFHKRhnbg9BdS6J.8CFbZwHHKi7f5wN3bEPQ5tpdwxBlsQ.aiCjgHjgSCh5KOndrSJRVkEu5wNoOPA+LHkn.1EsAjDo4B9YQZjHSV8QAv40VCTCcwF3A8Lem+sOyOYlRbc..ju2OZz+NC.nf.J1X07b35DB.JnfhK0xL4ic3Y9ANn2k4c967az2tMiHzHLqBPKr2wex4qbvQAf+tAT8dKLSCL.CjPsNj0YHXM6LTcyRgZDTrU9znEfngPrRQ9ifa4m.jHZHvh4E1DG43dvn7gtomgzaNDTVtBRqxSnlNFJY3XF6sPjrN3Kh3Rv0PpbInpHIBDHSePBcRDlkTctJh0Aq4CLSDIXV4OoT4e7xr6XfUiKY+Yq.1CfcMHx73reQKvGkC+Zu8dkyG99LjX6.FSBG+HPHmAJyYfmSYHMzfurNv6eWvCQgL4wg.gf9kPnBbQ.aFFDBTLAZtxKaMRF4kKjMxuWq05IshOkXfAFxCu3dU5E0if0BkppmWZC.j0luXbLcFvMHL2tbmwFbPw.82JmGY4bfECPyEy909t7QUtMKCRI5wNftEssAOv.PC4PPQn4TqZwDwCklUXD3WeUetKpAV6qJujHoP+BjDLRlfAmlP9rXoc.tt9BgB.n4qsK2RijgxmG5ugFEbTCZ7fOoOTS7P8nV1G+o0AzPZtxCdHRh7In9RUhQYg9Ac8BUFZs6PBP0GaG5ggvGfFCCR.8+R4s8qvjhpZLDht.hJ9uvHTJZxSY8gd0UlQn8UALflfEU1eOyFYrmDHm64kk7AfLEOFcQGtdIdLeye0AbZnDSyqDHfvg2pR.p3psDVgww.AAD.BuIWdQE1B0O7ZEf2claSrzLayoqw7rP85Z6nWY6dGYhNXTGnPG7YLmOpD4O7K1s+iCCmC8E2JCDVXzkiPuCCHHsJ69qsyxaeTgpzWZAM25MVYjLPl+tAmFvO+ord2IUxct3vet0SlS4WavLRSYvfhrneENIKv7RhvHMUftaYlTETYpkCOKMp+24q8rM+H6w6KVzkHDxrbnW+08YieGX1yDvarKcZZnAtRAxOpvlgW9adJo85VXY429YOrKC.MM3d3sNuouGXh0b4SaumufFtqR3m981u7M+AZPgG2U9O9nGosxJztKDfLs1E0M3cEAT8MKOH1smFy9LqUN1wdVXZc1v6Sc6PXiLtli1od2eDvX29zC7ybi4Bu1gvGvL5Nik.vAPr0a73lenMhRCP4YF43MfWHK2Us+3kEJX7ekjJAhz+n8WNCd3J.fG.CpmamocuF7MLuYjnRxK8BD4wsfL6SyAMTQOTyVXYcYtkmXakjrmBjhWPksf5BeZIOwDs.XFh1mBLfxSxpCzLVHnr80OGazojmVTG8Uu5V4ot2iYDaatV26nSW+LLZqDQDUu0gC0if1cXoLRCxcK07.TdvapoZtzC.Ssi.5.GXiRz+E6hK9NzSc8cxPuhXniOa3htbSPWAXXscoB7QtqGjZbloD463ao1kMPOnGkM.FAeDBHO.mlHJqBYAya1PfQ.PemrMYzQ.5qOfcCftO4Kep82y0+GDpLYCH2HdH0tpNWsZnWQ.fxBlyUU+fxHzyYbSJLnbL.fL8S.YfcFHxBaLr8tDVnD8v6Sm5XAl7yuPXVSRirXtJDdKdzr6ujwE8Wss22IllWfKCn.UMXwfeP3aBe.nqXPRnwtANQ.RnwdL.z0vwmsxLk7cU9f2BivBfnPMUKc4taL5Q1IjS+cPHiIfa7D4feTHdcSlg0bcpu3dtvEQFKAZwdmG33e4+5sixvyiBQT3W+IHnBU9H2x+ZYOGeHqyPFYMRgdqtPwZDKDfDkTbYCeVvLWg7YGFJOOfx5PXTTBkF3hVPIpvdGm8PYChIGEfhYkKIfK6Lgou2gUlK8ybZBC3SUfhZFJwXP4KglgApH6BJudfbAuK3crlfZwOCbGZPnRjeDM6c1mWV.fCQpb4f7PQ6Uqih6Tc+CjDqO0vd.vYjwgnu3PcMCs.8aN29cnW7vn8kMxuWa.BPvh48XW7TCkkp+OCU0SfAOMHIiwbddZf4rvT..U9AXQzduUsMV+UoxWnZxgMPFAxMHxiA4ZerbfECDXcpBbZQ5LYE+jeBzoGIaY.3iAfde1veW.zS1NnzHK.xRCvAHn.JKyHsHe1AnaHYNdmS7JiMhd4nPDT1bOTBjmQ0Jd6bx.oYjN6bZmEpvwYjLDr6KtKJLd41+lGXGA7PmF3R65Miv39lBPlLC7tBBdeg5NZ39PyFnHE8edaS+G3AIfVHHqad+ZRhJgA7Cn629+u2a5WgILHJed.XCE1cJEZ3DdXZhEDINUhhZzQQvz+L.4QB9y29X9v5Db8ySaazgbA7LIV4lrC6V+AOIfVmW8MIN6a9QbVyuZaVs2HafobaXvCN646CBLXhf3ozWClcxoL0spWrExz2GLKYbryVBbOs0MJmu+AILzkW4eMyWVqKQCDlrnw8dvoNOCIK.lATzHOZ7K.kjKDpJkQEQaW8hK8q9B6lIGKg17DBs18ALzgwhqT9gui8La4svd8b8K.MgRaHIzOzkfxHKXjGh7CXiAPdERCBYlKzMDEPRQO1.6JeAU97fr4rbVJaMm076fNfeyxAjZw.exjY.JVfxLuyxJy2EBL9wL+LemIt5iWgiqLpiDss3Oz7ti+rcdzaHu0CqeMN6+Z9yqfDwAPNF4GfRbMw7wN7zmWSFOsGJAHjL6rm2XWeNj+Xe28YjO+nk28t6x7MeNc5f6rnEXgwCtuJudO1DPyjons9q8K64zS6dZwaRaqR3APJhc2yEFpS7.B.2n255JS2J.ORLezWCl3mVz3eqzAdKDoXn7Hpo3Ok2gg.0CnesuQ0fnQAvP907xMPs7NLvHP5jH0+xZgYHPgjU.JRzYQbPbnmwk..m7R8thBEjG4NJpIisZd26dPU2uEoClwPqIHOlFfqqimNNwI52z.U..t6uygC0cGZO4V1qCfmOXqcc9I2HtuR.9eCDy46BMQKPmPaBF60U7iNQ42rCDDLCApo4+jZstP0XaYxoafjOF7ChGJdr8kJ7oiedrUAQzK+hc14.fx892o2klLk9L4G25q+qK95qwmnT3FFwuGT4ne6+ZuilcHE3znT9DzH.x7HS.YIXyhjEfnP5L.Y.W.mEC.jjRCFPPTVl4Q8FAIz..JfPAnUvLMWNFBfb4yFfX4.0BglfwI4ssQBjmetyqxxC.3ybg4licVDXvYnhExPQSBFY.iLAN0JEFC..6cGNTqKw0qaXxDMT07TcP+zfnLHfAHGavwnU28tE+xM5vm2p03vghv9DDv.vyoJqtJACEj.RnXeIXABnNKhDPCLL.QQHv9.9kwwls9ngFWskctiniTlZEjbAfOQSu9IuyJap7flkibPPSEAQpbf+tQEx1oGihPFP.qF+XE8zCYhoTuSMi2nGz7LkjfXV5oQ5kfvsNnDNPFwkDlVPI8.6PJVwBVpAhIOTDPcbeemsqydmnD7cmEpYpCPuBwNSy9S50YmeiSeBK3o6C2xlHjoEJyS.RaAvGsBHVHXm8BMCS3g1.NxHvq2k.ryGBp1NALtfOGJ9jWEz1+cdaz9a4xIT3rrFEEJkE.osg93HtgcOKrxscWSP18ALBhxiLddQewsU4G8Jz5K05cNab1NCNR9W1uFvuWa.BQPkKGj2.5QkFDkspI5ARF9T1T7T8LXMgykCxQFAT1rv+9SBw6J5U4meHv2PGYLwgxTBiMHMz.8yHQ+H.jCFUqNxbtbP1CtaQR6DTlKMjGcVE..3rIXOXCNQ9L5m4slw6U.6y7JZYrAGix2OqPFnRkAh4X0kpxtFoDg9BwE9a9BAFnrQnvgcD8zlwg4M6.3WFn3Q9Cq7jy9WhkFFwVLzZ6MAiq8FOSOrkiZg8UwaWG0+S3BC.M8JFc+ldDgApT4A2pnwW2ReUiO+coLy3JT12GkjATSDT.031goAgrfGBPgL.yfwUngF7WTmgO588Pm.P5ALyg9fS+yveeSuQT13O+ZJcA3rDyWvFnon5HTQ2sLg+GsBzgRSujd2K6wZA4ciDyQrfEZsa0i5JgzEXlC8d7dB74lcEnXpA6GCQj3AeOMEJ4WdABTwSr4iqtxJ..FRWqUc9C6cbPmsMb9EO5O0xrt2bEk55VRkQ97aAJGSRKt.jTGTiR8vyqBKajm9Y+a1czlt9EOamvqyo.uevUv.PYWMndoryg3qZjQNYXaTKbPCLBwVlmx++HH8hQJApuQ+DpLqOIvCOi4646t20bviweDkLBnnsbuK3G9K9wgaF9FeR3FGKVsXzuXn9FkAFvGCjV.NOf+jbOMpcv.2BUgvTG7O5v2Mt11ulETb+aKo1tO6IP2KSWCOsq.kEXGE4KuBH.okJ549wujmtRvB..f.PRDEDU+V5tAGbBOzjg1gMj.U7bAWb72coGAe1XK.kJt0EiD92dkc2WbQ2SWzDru4ny3uNG..C3V+q8C+fhN.qvN..v3XbAX1GTP0ACnFpGETm0Ky834yWJjD3tFoDg0kTCqOiOn9DoQbhJzuGRmjRdo.ERlwu6qRWGOnKgyPvisqR0QrPCRxClQ+288f2AG790OuKowJG6dN1j9dN.jiKl5.umwdPjMzhNnyw2den99GyC6pnIpHzwDdxcNC+gcgFftoa8mya8WV9fsqVyo01LQlduGRm.zYkx8Di+mV4Qve+j1PC.tXrt0rSjPgCLqYj3.aeZ9i6.AfTVNzY9NdntA79TGZH5Ghd0uOJqSngYdxX63j4KQtzLJLOf9texFfrPIpODTLFyf9E.Y8CH5lfWa.zJmGCGrN+nf.xnps+RO1IELWnFS2Q4yCJgcdF.UoxXfrmBxImRL3W03jrbANiW0qGYmYTJOx4CLH.NKsVWR8pjnf+IM3Mf.JxBlyRDmKWd40cOPq0ay181Pd9u5uZ7v+u+TKx4AKrpuZgB3F20tJT4qXyz3i.w3YgQba3LZFf2N.rmBxk1DDu9MupmxGZ8pKh6Guq6aQSeNXVQTnZ9ZAQKqxyJd1O.PnEOMOs5cb7Mr92IUozwqvTDdp3BY3WigPa99jHjF6S9RBj.Z9P3vLUQ.kWI1ujjHGMfJ0ADpLHkI7qPr6w7TbQPpxk.qHOgz.BiRLJKUNOaHqt9KNSogw9vz.hRAaBL+HP33.ucNe3f9gWx4AJ5RQowGGBfQPnddPtvcb+ZotwOh6PY5uDxOhF5qOe7ZAuypFNdDJ6LAlMrNAv58vd..J3lNMz5yNgHQ.RXNu9KYmQ+k28jSRDz.FxquQGj6Cfyf0Wdfg5SaLLiXnrnBdkRtf86sByjMaKqcDTkfYBUgurZxXcpd29Td8TZLmT21FF.rnq2GaAlIXyx.u4vAzKHmVfzAIZdtbPNLmTm4jg4wOm5l36zaLNcWVLB9bw+xbzUdHNRGCygSvrAxYKSmFZ09dwIsHgv5X85WA2HoegioocIishExMhdYySEMmS82esGybpeu1vyeGKmrOlSKBF+jVvHsfq1WuINkFRyBvoEW8M0YH9QVSL99W07WP8z9z.wPudlVvougdOHGekGhijjSpOAulX7NWYquk0XXaJ.CYKJp9S+G268xwRxb3jCy5uZBn+auvLD0RRSd3j57ARFlupE01pLD6oGXv5TaSF9OfaGoXszfE05GGlSpyaYY0w4RrvtZj1uDfgV8LsvWysujmjm+JODGI8lRDkm5LhenGdUc+1WiwaMDU88zzRuyksEttDrsAu80DqP5ELuE1.syPBvHbTl5b4e0DalaJIefvo3TZ71WSLN2Rl+6+0ZbYgIvfjJpikrwksGddqk4P3psCkhYsD4Xi19DbjX1bShvevIk082eB8l+1SXz58MSj4WPUWmaobn1+49Zs7OOqn9LECegbGnWNnPtCl3fxfq.fELXAizBTcMj4VWjSKRwaJX7bZVbJqW9RS+WNH+guu5afykn8e0GZdKadQniZ.vvJ9LQdqeyUj3HbztX1JIuN8TbJsd29sXlb30qWc8X58kBVbtDQ4uvRWTOMP62.BWnWOScrhu8R2J2RRl026dWaHdOqnQdqIa4L5UZKjHXNaym1OnwqYnEzKylOvCrr53MszVVTXZ20SfgUy9zBSt9dOHGeU7wanWtWyI30D6XENytdGmeH65sHFPvTSccWKcqbKq53bCKa7Gntt1TJqDbBiZ6AUaM6b4f7THKkm+dAu7TXlRv4L5L2UGJ4vrN..iDFCij5IGl06ZSaxJ4vrdtbPx1cFhu5Nah+S5tqEEl1YHHYHhvzhOqaaYyvyKIygefGXY0w+SmVWKpYZu5DTvnNl5dUe8kOJ2QuLadmCmLLOwZhM8O9za6s1m7BsjfgY8L05Rxsnu6zssVlCs4bILF502RGcoSiTO.CyFXZAq7Ku7QGs4j7cF1lskS7c5MF+nIZ+xds5+wFDXHsXp8k7SWzCysYyrjSlT+VPul.LkbXVu58FsozPaXNo9l4DF7vI04Mmvf4TV7lSXvHsHX9GnzyoawyYe5myd50tN0NFlSpGnWQvm6jGAieRyPXymTWBtl9IUud0tN3Ep2C8hbTqCj..tH7wLGFI04TPie1TV6cuqMzUeScFJ4vqWO4vrdhbrQm2DGp4KiqqtkyMuvkyc7YWN27muKt8FCeU6Lb3qki0z2ZJyV9dN5w+9kza86MiV7+4Yzh+O6Zz5FKZz9O0wn8eQEiNdfJlsOTEi1+kyXrfGyyrqesq0h1lu0hdFeqt1km0B2UoPctUGyNexhFsc2kzZZCUBG6lmMZ827QCW+MVwr9u7r5M+MmTK1MeBcqq7DclfaZM8xw9HI3nM20g+CI82JSg9iXJ9G9dBmhauyqlCg0xgZ9b35PurYueL1LQN1HwlYi19DOUjZ2aOm0BS0k0I0ejIfbxZsyoSCMNXNLA.K.Pn2OlIxYKWOmT+V3dMuEtWy0yI0SsoTZyo2nMWcdusABJ5g0jW1ShTur+F32ERdjSkC4Y670hlwLUw9N8bS1psAPtbPLLmTCHoDnnwDSXZYmNAPiCz2d9ma8.0cAe4lRkCDPFY.9mYQZjEHKUMVqSJRBneTH0vTUDKYcOSAqOydJI.ovOzxa7qq9oe5Suqqe1+8m1bF.AFIGmMK3bvVjC1ALSAyDxYK507j8epmC5Mup7eqBcpIhaFBTVEcJIm61QwfvZ4rlm7lul8WAVk8gpL2UyzWxhXX3NC3CsmO3NSdlW1wbg5fYNn93Pi6o+M+d+2K3jqBKALzIQuo9x0uJ3ATvsmjCnpQUyup76HYWETvIpBiW1W4yUoGxWn2kRg9E2.5QgJlJ.W+k1n7VpS.n6MiBm3Pumm4ce9usi4B0k2ebuCcXfK58+zCbWEb9QkfNC8vv3ze6eQYSUutKIjyqosFJ0aiz2Jj.PysHySrmO7Vuzdt349Bi36k75dl+z+kgc9wyBoBQafz6aseIylBxOL6aNmyP.9wsgx5zgeLfRMtfMzYnN9T81R8u2WCWdTWVM4LLojR8t8jgVEzBeVFUF9K7LQihXXkbjt6BlmUxZJ3RJ5454TNcFRlFDYiQoh3ZojW5FjmBqu8RhvLDHQB4e3GrcersYMe6+KGdSSWlaxG.vpqqnq+W+YO6LsButwfdQw13wGIfAfJkbcDtaHSClt8gPkwFA.VTktaj9ZgEJMM2oAO4gdW67RN+KE.3QlZJ+SbLAuvK7Ieuade94TFV.l5Prr92vBtt2vwL.34+5Z2E6RQmdKxupoj.UdJAO1yttccdmykN8wafK+vkE7DZ7a5O6oeG24PkxMom.HTcP16Z+70sL351.7ZrkC50c+vqOzmOHRGmRevKR0O+Ecr4K6j7ifXHlegjY7YaH+Bw2cSmunvSW3MZMeffbtZfAfpPIe568nkrVv+5dd3IqvKtBDdPWCFK8L91rOblbiOplXgM5ASW+E2h7eLL.o6TB7X66Cr824a3MO8O8vZkSVxaBViW4Gcz+j6cK92WYlXHHHV547Mq6cEs3D6XGp99kNza3sEozRiSeeSI.UYFEO9dtxseIWxEpixbhL4olObX+U9N25G39eJ2umCQLLLgwou1aJ1xCBErLGrf9UgyzyFYzK7IFjO07FyBknHHt.VOOFsLW14HVffHwXHUvwbxb4hZ97fRBf9PbQeUSVcf.V47T+bEPQp.RJKfjxL.HGxy802IY9NtJpF4yCpuQ.5aj.cdXjlHpVIIfo4FpklozAOWlLIqam.5qsSNzI57VE6pyg0t1iylu12zfFIunGV9s2v9z10e45B+reDDZueED6D2Ihb76+CrmY1+0t2Cdfq+Wc866uc2YO10uKk4x5TD40MCasrvxvqsrL7JLkgVUXsHqQHsNcno2roonNJhzRFhzAQBMHEF.dJ1eRVUYO9pJaiU96.J+Q08b909dy7HrW4Gi0i+AWzqqkqt6HV8kEy9PFhROTHT7WDyJ1a5Srjd9xcZOEJcwyGytgQi99lbuqJO68Tf4QgwxSbqM8cvjm8MCGr.3bz2DlAkGPL+acP+P8rAF8kGK+FWUknIAO5HvC28FjHKwfHQtqbOtLHJUBDgyQBfA7AHjFojY5C7U8MgVUcH8W25fF1ws5jJ9XTYLov4WEdNCNGZPfTHyI2eu2OlI3Dd1rsWfixSKP5W9O8+Ukpxy2h+Zd.bSogFu4DF0N1btDF6cuqMDymScLu1lFe7ybdug2fwoAQqLz6Y1F+bb8cwrERyhK5hf4l4DFoWeGgm6ZskkU2jO5xadgKR7Q00AaIAqSUmgqoqftECinLzqmwBtvWeu2aMDMXAmCRlSoYy1xjCy5cdSbn5O2.DPDZukirhExMhTr0qh.x+sJD.nb4PMuKM2qm6T5up4MClgX3gSFl2yJZjykn8dBQOSqD3PPmIXnfloOzzYgFXoNXXXvvLBSck3qu78yMuVlCkhSosYNgw1u2dMedny8px+OJOGDPXH3bIL32bmMkPPaoKny5T7SD4741.phpYWuOKalkfSK3Mmvf+0qnQ9qr3Eb5QE6rM.VGZLjVLHoO.XMIXoFXnawHTSLsnWyWqmCwsl3HbzDbNia4d60jWeO0ehORm8tjFEOaTBrVvN9JPReHBXiJo.Lzzcn5akodW8+XuGjiuLN.Ek0yI0qdyPHMKPJVKYRVG8xlnSNTmI3lrh8+tb3VuuYCM+mpr0B1hu0B2ZEi4+vUzi+CKpW+MerP8xc1Tubrd+XrYUO1J.P.RdHs3lt5NCsYNgwCs20F5V3dMSjKswbnv8RDBHLmRayaNQTd7yotWWqhOQKRvl.r.jGfkBTXFZlLjBFBhglrBjBFRCFxnLvo85YvzcdIcDly0S8b5dZ8zBSOaaBvZPmgVcJ.KeB5As+BvHjNinQXZwK+q06A438bLt9t3MYsINkEumUz3TewkbZKqYw9hH.SPvPODCMKFBRQBvAnmPdHbSL01x+pINBGcsLGJIOrdJNk154j501GhQZwIWyt577WhQb5+OHA6qktKqimpqFVnNsy3BvVR3Us7MvfjLQf00feHpZ6ZnlXpqDe8DL2zxXttj7ABeQbul7VS1B+Y5tqkaQi1JAUP+nECMcFZf0LAKz.CMACqPL0d2e8UrGtwjLG1lYIyor3gS1B+UW1xVZyhiDFfEPxPPJHHVGZ9FP3KHvPSpPz5YZ9K4arpiyMz68t8XHmsjyAYNXKYj9TQHjxkCxMyILd1ZndTCAjS1mCDrehVMDzqcDb8Xw5v50YTcsGNkUtapyP7vI0YjVXizFLXQZjRiyAIObR868V50jGNo9lRCsbmz660RrUJGXYvQvu60gj54fc02GexwbAqqXcQ8xlqbkbjd6kiuvExMFKA2TrDbSWTub7Kb4bGVw97EsZ56TTu4u6L5s78Kq272ujQK+fYzi+iJYz98T1nieliw7949lcLXQy12TkPc7K7rlWgYsVvVl0Zga0ypqs4a08V8s5ZatFy6QKEN9OrTiMcay1ZyeKmFa7epndCeoxxl+Jkjs7klRT+mYZg46iI82NKp6cyZK4e7az5Uws0zEwwhmhi17kw0gTrU5Dbzlod90MPcyFzRYhVBKoNYBMwDrX.KFnAFFcvzRO+Mrrw44sRlijXyUQ23TPcpVaXNbJQ4xonC.WcuYdyUQ4p5b4bvVVqcs13fMyILNIRUWj4A3jgeVNk0l4DF4xAY05B2KvI3OuwJurVdUkWpN3opE+pZd.n1I6+RSRC93yHPewEnu3hx8DRaAKvTBTQfmYVsK77e528C+.NiBVWAkoqX6HRjwfVpLP79e+v6wGbFQlWWidX36VhQiagmVpOvGZWo1+dUeIOETk8AbYgG..wtL7q3AkK.CENxi+S260+Wz8ZArRwPPC.00byOi9EfcIl7A2nveJPpJOu9vC7J.uh8xPw1FOGuKcxyLjJ.YsfbHhHnRZUxCUB4CMk6WYsMbYgzoiXPtrN7X34J..TrF7YS.gInH0euK9gG4Sg5lBt3fD.vOI+TxkrPiWsu92RoVgEE.AJwGOtBmvxqLAKGvrOWQHlO7PMOPd42lySdqaTC.3V2qCgUzjKhaNysbNM+1CaRG0R34q4WAD6K.fqxWBeeC.gISghdWc7YuyOqU6vSSANNhqdfK9L8PiNN0OeqI+JmcC+AgMoIrDPoARAlInHvPeVe1..l5Hby247+GerOS8c.mFw975CvOIphF.QAHsND4Wn.4gcRUPrQ72ebL6Ra4ubgNy9HJ2Jathx6nSClIgVq5xPKyhBsp5bN1F90m3.WyybnGCMr++AXfTr.1Lsjdes5..Wy6tMOiM5Pmn7DpNFwfG0FdEtqW5J9oAaBWjBMuPxK+C7TK9oGWciN9.PBOFrTBljrOCO2pj0kDfYC.D.LsB.wlWYJIztr69PyhdZbVTFUVe2M9Vrznw0gKHux.jRvDo7UZ.BSFRSEUWr6awO4O+SGoC31ZivIB9ppu3CdXcDIjecqH7T2x6n4KIhIMlEo.4VAv22GJhXPkUv.fBKoH0eus+02xmdlVgmIFz8RvY4ek4GJfxVyimydP.oD+GT4peYuBHbNP202tCSrafe7yLVj4aPeMMMhIeHMIV.10C.f0HOWhDkHIXcCHV7o8mu3GdjOUHfxGav77AO3cictC.zhzAqxXleTus+1BIoiZ.OE7blEJOFJx2yWBEoCXDxmLCc2qbKO60UZgv+H6C7Xne5y+M1rNh63i9zl81+yWP+gCQGVW3CRwjPAW.A4CcRIBqfvhnn0+SW1na+uPqA3XbwKobZ67bA6jhQryGfN3bjXCi711XbDWskcb.F8EWg9hqFAiqxORIJC.rY6ZHJ5e13aXhA3f9bav1HAew3pzWOVm+Uf6VtwelCMR9wU1oZy6RuhB5.YPBjwq+TPjECpnAfZfan.cwW0NcQxB9mWV3Mv.PTCIC.VfDP+S0KzFXsv3l6LmA8wYyMzwv5WWW4z6sWtt3IP3F6gqu4kinQ+wn4F2GLeJfXadq+o6+YOvUu88ezO0tKt++xCTbeep87yOze6NG5Pe4sygWstHxYZJCeV5xvqgMCmTpEJgglwBzIYaLzz0fPym4JgXnb7gZFk5H59t6vzux1p3Oyu1welmpheomzyuzvLl8Qoysw20pUyL7zdyLXD+YeHS0z+RK0TCUGOyCFU49Df4mBbrC+yZ6VthzsrNLyJ1Hlc7ceadG8GihnU3loOpzGskC71Hd26G7tp.dePwGGLp3wPvPHAzkfhD5NW3sbOeVJDXuw.EpOvHSlf51VgjxjE.N98CQPM9Z.jCCHN0ofiLBliowFoOfQRFfxUtbPDOcdB4xib4fXjWHZl.nDMOD2u1mOXrS1ZjAhjYH5wNoHgcBYAjTdx5zxqJubWph3Q5pw8LKYvDaCIaW0CDCmTmu2dM4mZkQ3IVSLd6qI10cY0srliP6yh.a.SVm5kIQeGqi0yszKyw55awVfSKXNkVfmpuHS9AVVc+h+r1SzQczg.IYDpdEUeqeoN2KGBLSoWWGgO84iUZJgOAcFhnL05xt6ddpS5wz0WMVOAyTGWBGttUyMSF+ASLGBHuZNf7e2RP358hDyrOOOVL2hEUycnv71WSL9K1UC7U2YSWYO5qHbfW9B7zJoyPZUBItrDINBGsmiw0uRlizEyV0FGTKFeeo419UFByPjJErp8XlSo8CWU8Mzp.aodP9BD9XgSso1AXAZ6SDIEyZoXVCLGL2ZyIL36LYXd8ICyo6H74TONCCJ.USAjrNLURD5X.q7zSrY1HIygSxb33ejbQSNLqib1AiQ9X8ZxqsyP7Z6LTeMfUg.DPTfzYBFrApqxhs9LKn2OFa10yxVs8S3HIBTnl1T5pdLEoEufwbAwmrV8o3FZ5h3XQOWNtH1e4r5scWdgVv1JY00tbsV3NKaL+Gw2n06qrQKeuiKC+WMYS8xwPJ154mSH0NB77mcsXF+2lNfei7ne09JKdxU2bOKh1PHcvZDXQ.ZQ95vPoCSkNL7ADAdRWpwPS5.gjgVXFwW44lXyrAdOuoHIGd85LCw3Kq453KaY08lWpwxkBvBQPIwFRKOXVmR+be6qrmiw0WC0Bv1xbbBiMwordJdkQ3sulX781aL9FVVcutFvpBP2Vn.oyPOjBQZvy3cdiKM3yy0xEEQtZ6yTyq20Zqe9qWWs854kSHurUlK+VfsjAz92arw54KaY00WbwGIrLnOkHvjL.0Bpo32XuLGKwd2aSIXNZJl0RxI0SvILR+rcYs28t1PbtDQ4U0UCb73QWdGHoldM5t++C68tGebTdet3OeemK6EsRxRxqtXKY4HKiMq.CjEBFZZ1MmPSwMPRZOmY+c9AMG7mzFwovA5gjP4PaZ2YOI8BI.4PZH+pbCEmlPRO6bRRCPsID2Hssga83kqRBv1Xa7UrE9lzJsWlYd+96OlYVsRXxklSgSH54ym8ypc0NyN6Ly6662qOOBIHcIThdBrgTmWvXwV+JOPad8IjWc3ezitglNySs9N38cAKiGIYzKLNt.MUTVQ.V.MIPTGn2tayFew0cAmhW1.mjas0OR1kA.Q9w85GiQard+4rhTLqlbminkhGUcw8LX+WGBuSNoV9wSnGzqFHHSHLD9YVWGfoDIFWugntGbegWOht39xxfUp2CAo7lyB8dWQRNBq00uF2TOWEGs0OBurl+nbGsjfau4Kg6H1UxwCmjWkVKe9YzaeqUz53aMiVGey4z57+0zZK2prVmeuR5c9OTRuqGopdO+ik0WwiVQumGYNsNe3Y069QqEp2mqR39eQ2v8+xtgW0K4DquWxN5J1YE8Ne3ppK+qVUY428rJK+yMqXY4Non4aujn4aujnka80EwttZMeoUVaaCvs11.bqs9d41Z+J4VP+b3uvF3l10fbKWQuO94GhVCKnAXhNGFzZjPrpxg+fGpuMbTtoMvbSdioRoBjUEvaN5Qu+9CyO46oE9XIhctmq1EQBv.BWB5LPTITZ5TXv+iWzFXto0eFtiDL2da4Go0Dbd8fqQM1KVM1SVMlgx2rGAYFI3Qi6ifw4A8vSPVVZrmfxmGJMjsrnreVRdmv5+KYHpGH.Su+JEHTvmEitsjBrWOEn8fuXEQeWPq7YdxxJm+Ge7aepo3akX.cnBlZBNTX1AHb0wQ3HmB1te.PFvjJhKlRtoUR30mVCxHgusGcW+dkli6FJQqQsz68ed+Ki+mn2GnCA.ydZyw7hvd9HuzIN+evqTahxLIQsxenYevmMNt1K7P0J.kcXLPsu6lrTw1MoldWltkN1aSmwVB0gug.LPJAyEjAhF0YotsA.HuZzMo89WaD4pWyxEuzQJo7ku9A1+WlsW1DwB6V4FiT8hoaSheKCj7Jf.cBLkoYnvlCY2C1nxqu6Kj9lGNlb3zENqpK5R3mdjICTuwaD1EJ3oTwYMJnZ9QSL2G0V+RvjgbojGzYE+VPrmlKF13gtyJGGfN7WZ6J32+2PCLpZ9+dVwUu4H1IQQWTLoxig1l7q+3mH1G6SbrJHiCOQBnt8S7ZZkNV2kyciPfcc0v3HOT0h2qgbJSPoLyKxbwag3hCaCjgJdU+nPi+wF7knm2NZpw1uSASH+SxAbsCBsuWTnt7Gb+zW9wWsawqB0N1MdyZ4ggXpbAb7cNZ.ijB.fh.He9hxLVCoj71lfikFkl7qfvK6iiRhu5edukd7O6q.moCAslYRYYpBQm1hvsqwtyIDTD4YN5sejVq8m2maRDqzwvrKSfvCF2rj1wf5F5BNbQ3Bj2gVn+Gu0yHKxZt+SO6Ee6+C+Km3VOxdKaalbE1l2QQxXhuAFJhAOQYPSNIby7m.dv12tFv1wJu4uj6TS.QsC.J9PPl5q+GVsvG6gCQU4JC+xWbkaeiutxW6yr9C18GqsHVXJYlMEKbh67opL8zPoq9AcrRf6qMTC3Nv+os+LpXS5725g1kXnqtImuaMGayMsR4y8MeoP+nKn+WFkVttUwAjYde4ott3mKzx9cu.wr+nynsuO8iJNVrOnKxAjGFjQc0T.dT38aJLOaLx3uvhzikRzoQmrElQkQV6q36L1rXkGV46++p6+mqrGsuIRu5JEWcI2O0Xw3oROlX5u52OF.PK80W4ogkamvhuWTV7W70Og1ktwlc56D1t6+eXV194zreVLk3EGOwK7o29Ihco256qBPdbuuOP6pYn21eAbdc.QSS.4f+dWiMJtEblVNinm0pyuT2s4Fxt5b8Bf9zOJ+L2PhWDWcjVLenhbtb1NCdS0Bcx1QntMfbFFJs01Qr66uOcsScA4hbzCTyS2tF5rMu7vdOYlFH27YK+UAps2asrZhg.NERpbeYrTAPY.3PfIXZJgooK.vjCAfTPAoYI.j8bzGJZa8b0NwSC7R+YHTGWNrm7xfBBAtmzPTYRnoeZ3TwE5JqEtH7mD64qfPRcnL6KbsuJTWtKTiDBNZ1PkBg8DphPsKWQzjgTU6FLQQ.oUigSDlqJ.bkrbNE.3B1l.6HfTZC1gX2YUXTtBpUEfcAXxQxLH2SKjNGyVakYOWJA3P5P0VhJzI8zHCGBZgWMJGIEbVyWBbmuJrs9XfSd0Po8G6lE2ZOuVkMYZn7CzwK+D3qGskVtL2IAvDwgLWmPncx+kl0dvUVafggzBPxlEHJWANOlTXlAJlYaRdjgbclFKS4999Ieou3C9JMaz4TkyjopGsi+3OZjjO5Gr1QJBM8W3u2c4a9iVqGi1bhf6fyhh.Xd5z2WeU.yvWs5CzGEu9to95w9AUgAQCXjTTDkPXTlpfHLRjPPzj0P89vwilyCrWXuKJnNFFfwDy+58+yzHrkvunffd+vya2clTi2YRsrFnNiUL9WNQrNWFcG5BvgDfaBfeOnqO9Jnd2SShyiIw4OcqY4k0+93k0OygGbaCFZmrOy57rani7BXHQ...H.jDQAQ0+t+yccd81LMSXETFQ6b1NyVdfjL2ZhwOVLj0uGOxlPmugDwN+1D2pNAlZtOVbgYtgMvbS90lsN.nTilRMQVVukOH29B5Ajkx.xasvmE0BpQzF5ofED0jF1BB.HqOyjjZT+59d7D5LekgXNU3cssACwHqHaJVcjjr1F68th..gwc0ajA20UFJAmWG.jAR7yeDnWB.9QWz+uU47P4vnmn6BWYHvyyjMIxOtdBl0SwrZPDqGgSpkc7D5oFMkZ1rPcAQ9DYUy6kQUwUN31BwfE0qc3DY0gAqze16Obh7iqC+rvd+Y6O734SnavrRJdT074ghwFQD+HhQYwnpMV+wLxJBp27fZK9wOvFibfCrwHaaWC5wXJI8Y8ICVIQdVuiON2bquWtsl+.bGQM3tEsZdF8Nejxw56kq0b+62NZeSZGo6enqV7+tSnD6yVJ554dZIA2dPVQxBVjErn+9u+vuccAKXdri92tglxmefVe7CrwH44D5+1eptZJnl4CNWwHqvv.5AQhNQ9w0QpQUAXJKRodkXPu4LS4wtW4yCk6JuWOujfSnmfMz64v6L5faiCACVAIFWGYYwf2iGC1jZzTpCtqACkfSnmzqebByvP+KfMzj20pgq2iNIx6c+CxGv5hYqGgzcFzKO0yH+YICH9i2emRFP75MNuee2y1FLDyoByilHF+E1PS7ClLJOdB8O7GuilQ1TpIXVuelC26A3HoXVEYYwN4jZ2U9diLBmTK4HPC90aO6Wy8LmRc77Iz21f2SnwSv5Yg23.uLR30CSoFMk5MssACkce8Gdebpv44MFo278FI0nyyhTIxB8ji.Mj2PAYYu6iXVumCORz3iZDK3ZeJNkZR+nXO7vPq90IeFjyebqX9dufU..cOaavP2U9di73GXiQXNoF1XuQPVV30qUin0+nYC2+nYCmf8XgofG8yb3t9a4lZyfas82C2RaI4Vicgb7VOeuw2wdub7lNOtK0V+7GKb6+0U063q4nu77UziaYq201Osd2O5b5qXG1587OOi9JFqp9J1gs9JFUFpuIlKRe6tZ39d4Jg5aBmP89bNgV4SeZst9tUU679lSoi6bNwxLKKZ4O9Thn21o0i7oOoR3euWqoKk6p0qgaq0OhWFWeOCxsbsCxsL7.bqaXCbSHEGFWIGpiKmaFIYMjj0PVVEaji.vhgSxZ4gWlaFbW6JT+LGdvcsqPHKKXvzvHo1UhaJzn984lg+mMYRVKqeFC7XkT..+9mIOTxNdB8A20fgRwipFjEpDYgdv3VOlDbT0f6qPhr5fYZTNk5nAYs.YeCU3vhyJx7rEn206.VOsd1M7xjg57NnLe1UZj0x7O9an5J75sj.FOKfYydqbn5R3s.b1Rg1m52tqlx9dZuEd7D5sDgtiPpfaVCVL5MBGyH9pod1aLw4xjXnSE58+iViWoxLZ3A20fgFmSnyidAKiexyu2euqHxuULuz+IotR7WOvd3NWGyM20y98axfYE.eGPti007Md95e3ko.Fg5ho9t7u5FNpeIWjbDM.PIGAZvf0a8B3ksjCHuMB+Iadyb.IXBnF1hELAUvBLIGAZ2y17teYbNgdfQmimf04jrVpDH1N4jZI4jZ8leiQBZfPrjCH+7hfIwqOlvyn9D5rWSChD4GWO4NYsjLq0yHiDcv64lBw4gxMXDOV16u+voFMkZpQS0XSdpGPWuc8qglfOkLdkCtsPAM7IpWZFyufH.z37PIUJDN4NGQC2hQjrYg58rsACkZzTpCOLzXjULLFQyqDC.vhnMycxI01GmJ7QO5FZxirLBJ+OuRRvyv4sEJEypCdObnt9BbSQuDtakV9Kd8Hw+10hthmvIZuuXsnqZ2NgV4S6n242eN01tuxJs94OoH5MNaKI31imfi0Z+7xFNIqUuQUeKF0mKKqGYLLteI3rSeZQe9RECTxjHZfA.AN94uaDCijZYQpEUBKYEYGOg90c+8GNAmPuiaccMGPIr0c.r+qKbik6Ru46MRBNgd.E+Ndh75imHuteYTn2vgtWvCXCkji.sf.XT+3aQkj1hludAzC+6Hb.IKG3.hxN4jZe47Ihwbpv7MMXnwy6Yr0HbRs.iCCB..vvZ4AqbkWIB0XyAiroTCbtDvarDyPLLFQye9Ru4r8MvD4mO3Q6pw4eCHNDu4GzMXOGMMXCkdMPjrYgpAanjntSpIz6ez9CmHeV8T7np3J8HHj5FJV+557AQfSwpdMUNSiLLz1ImTaa6ZvP3JGLTpTrZGqyqIp68t3H87fbzt9TbSsekbKM+Q4NZ9ixcz50vsE6p3k2hA2drKjiKBu4SKhbKmQz7e7wDw9CJKZ4OZFQrOSIkkc215c9HkirxmoZ39lzNRe6obj91UsP88BN5873Uz6dzp58rCa8t1QY8t+Akz69QlVK92orV7uUU03OPU0k+MlSc4eyWWYYewphV9iJEYi7Ji9avcG8W0KvDqX8bGIOGd4sOH2R+WGGNw3rtAyJvvK3K2EtkHbJV0mluajNeaZ3gQPiZGE.HOLTBBrVxcxZ8b3cFci7AhL38rsP.y2ODdk+47iSFNIq4OVSInAtSMZJ0rFndCcW2AigyF06uSoNX11aI095ObRNoV+WGBOpePjBVedT+.CDDnG+i64IqnFb.ga757hb.YwNXj8MXS1Bez3PjFsa6cZMg9RXw0T6hl72v.0Ypf65V5MRzv3O9BWNVKeOCFhGdfV4002J5GQekHzpYnttyzzuM24FNJ2Tu42Xjg4jQe7.Nj+4O+A1z6V6yFQ.FpgXwE7gt1.1vIIyZoXV0fMTxmOQL996eY682bkWPuZzwfRmRpqK96upmmaKntiChzSpTrZq8ujCHusheBNfXvdb78h+70M1ALArwH00XA+LhbOaavPyafg20y9uNDNouSHndzzWZRnetfuQH9uRA9FKtNb4MWOhWbVQ+Yu+vIFm8y.xnpYMfNmMgte1Npye9YyB0rLD3VLhjfyqmX7fnhyTROC1ogGFZid+8Gda6ZvP8ZfHMv1ITv2YBNudBl0wvWUzFbPQgQVQV3GAsrdbEuAanjc7D5ivI0BLlsAV1QkWXz6zlWyixJ.XgQBVumygW9.Cvcpur64jZc98pEp2msV39eY6PqZb6P89z0zW4S3n2SgYzW92xQokO+YZZ.tylWO2AR9iWOZ9It.6Oi8.xh60pcBu5s+FxFOV180e35Z4T.C0jbDMC1PgGOg9s9w6n446eEemBxOuglLxJ1HLh..sfrZjbmin4EbHudgw2YE+iel7Lr0P4VtqdibKOduQBNutQzajfLXrSNoVpaHdLlgHOLTRhqJp2lms97x0MrvOKMANB8NdGPRNhVimGtt6u+vL6csXXjT6VtKuLQjhYU7g+3M6c8vyH0c5yXS0GS.DFbVAtEiHvvio5xNdB8aZaCFBKbdR05yA6Wi+CijZr+9x.Ip6.aV3GXANq.ar2H.A5nQVQ1rPc77IzyOdB8DY8xvFxxhffDB.MvYEd89geuiYvJfYeV1rgGAQ9GPw.rxkuNt4Mlfa+ReWbWc4OVK554dTa4NmVu8+1Y063AlUuiu0L5c7sJos7GvNR7uWoHct8Yi10Onbnt+A0B0SgYz6dzY06YzR5q3IOUndK5DtuWtb39mTFdU6tZn9lvQu6+4YUaaKmQDKaIkX+ImPuo+vSoE8SOiR3OwLsjfausA3VaePtk1Gjao0Uwsgjbzt1.2TO838LFjCsfGWIGJQVeGDqGge+L4U2AD+qQMnYVyudXJ0gCzSDu6sm+7leFG11tFLzMsMuwkd+uQUQh3wpOdOKKRtyQz50.QBpLgqKkulazXu2.nCloT7npd5UxHZ.PceWW+g+BeptZ55t+9CmbDnksgdTxKiZduNvgzFsebQ50VcDLeUv8Qd14484OKyI1nCZTiN2z37d.A5LxuXieoKENugECAQuA8TvevCQPlHAjEQIxbq6W8Sd2qwd1+V7m8M9JIdU7AzYzti.8yQApVwAN.DDBBtQ6FxtLrcV6yYS82mMAkvB7BU0KMibE1R.nDgolZ+Tgi.mY6DNkslfJUbKzd2hkvvHtC.P4WqpP0AtBIATY1TN+ymLlMftF1q5.CaHMPBsMbXn.FdD2I.N.AF5fg4Y2nzF6Wfylm1Kge9PRTbArBTv46cfA7UR1EAy.tc+Ip.B.YrTKjdL2ifht+nMcQN2wof.4MTvvWrJXld0sls1wt6ioFC2I6U9nKge9gIAi7R+wCL.rAPnWBO1rYfkJ.XroGPa0la1IREvS9w9zZEvXxUzF3wvjRjIKOLRxdB4WVZng.u0MC8jW6U3L6XS3o6DSTlPpwTJVDt.DOxHvM8kzjbUqUmuaCTy+.QzP6SnFGFR.fjC+P1.oA5axP.vkPN4jFEDvLsRJe00cwXuVEkXn3RTIBihkpee2FQugYFtFVVn6s+Lp6DOrxMckjV9IgyQ1EN0YzP41W9MuN24d5JtUdVGY083xNSwLbDJZcWSQq2nJQd2tJQeOgpbhuz9m8.+We4VeczT7gPSXibDjf0Skxy3Y+xg.+X6Qo+URmrdpBt+uUrS4X4RgavLds1WsFu2sXIvlVqeFGLUvUMrqERv248eBsO+mrqpVXRJOxHxmGtIGAZIPBkjEWgB.jaBOf1mDnF.bdkm9UzzqoywRdNrkI3gSBECXplCEbZ3HQzCNGF.3tS0kyuyk0h6ybyVp..OINTEjOGYt090Cixz0buqppoo27s2Fdnp..Hi0BZhz4+cMVvbC9uWAYiNajO+7ayOOyg+l3THsnGugO6Ot8yOkeGyicNrieOsnQf4u1l2bMxxftdrBkQvU4dY8cnZWS5RTAqLL9d8M6Uk75cMrrfA7z8hcfqP.XByTiAFbMXNlH40dENF4A58tuuPqXnHb6qRmAmM32iN.bAQ.Ckw622lVq9UfcJmHgghELo7XBmqGqPwBSRqX3BT7I.AJmDO4gJmGLyfIKXRl4xJgIPbqIkSlC0foIv8c2gvUMrKXFfYGb8lJm4qMrnvlfxqb2Pq2MBcrVnu59g9GbCHxux5PS+JqCMkoLZ9d6GM2w53nOZ+n4c9p2vq9z6+12+yM0+8cc5i+41U4C8Y2a0W6u5kzZJYXsnWhPO56VOTzKJrdzMDQO7E5Hz6MDo1pNnvPPpPvtQHH.IqFBNmHrr5q35V64bbK+7kcp7TB2xOSM2xOkr0N+DmarUYtp96L241cG+oCjb0eg9uvUrkdWaDLyo9XXlStaLyIuVT5LGfNEJhJ+kOOp7dOpoyqogZ42CbvdPMbsvF6F0vkB6ImDtEROV86b1bpb5HeNJcgUqZgLD.pByw7tO3h2hJLMAV8l8JUTyzR.fwRW+tC6BDwEHxE.XG6.hR0z41WkNelGabQohfJUbWDl33y58wudU7vaQIVxygur7F0xCK1xBzp6zeNHJGafIoToyoCfZfHpfYZY489qPEud..3t5Vz3K97B6d4ad4tCLrgzD.Yx3s8FHAaYAZhI.c7wNN0Y5NWvZvMvBlMBJnmPC1OVHAu3Ou+m4Mc9v40kEO3sdyu3G7weg+G.lul5I.fg7mDOiAO+BejmwZilEpO8z8p8Iu1tb..lXukogFHBasWuF.hHvvfEHg+EZSv.ljAljtMrWAPfX+.fsThvQJGBuPoN6+6b3scLZ0qqlVzYi+wd90z8mCkZq6zUGCknm3fZpW1omMLxOSmq8+wq9nGnTzUUSukYi8aduWRG+29MO5xuPLaQ.GPlJLmSBjTA27Yhruu8b87AN5Y1wQP28VKZT6d+tO+pi7qMSM4ScW01ykhRfFhtxAMTehHH5z65iraHgcKI9dm6xtPT4U2+XNnv6OnYoBblhm+0oD0MLIYQ2kZj42VQvXvEO40Y+8CLZiVxAj2RQiFK+Sy49Eab8h1l.iwdSG68SX6q+Y7e+Eu+VrwdKb7ei+irHCrTMvDtSjBzV1EzmqSniSAZliu4C.0dbEgFfD5mSTE0t.SZDyUIfJUY6SJXmSyr8Aqo2ysrdRGtQaCyMEfCJ34XUVjVXBOCKrx60Lm2a7TTg63vJI+b2pLVROC3Kj4FEHuguwnlDnbB.3VmNZ4b.Xdizu23onabpBblLPlMKTLMSgIvThoPb4XnfLm24Ax2vSvHWv4AIfOwQjHgx8NUbYmo6jsHKIfuQ.b1EstnIufy+bVAnbAW2H..Owo0C60pX8qoAjBPPSlt3q2mMGPrLLfEYIymGh2DhrX9iL.LILn4EQWODXrCX+Meg2+Pd66TD7EmQTIBi8VTFz.7Vvjl.iQCgzrALYLtmiUEGJBmD0Wyfxm2idPA7Vazxx6ZRdvhF2tIFxidQaXaqetLERKJfztAB.r2QXNN3XbBLkHfZR2qUQoA.v85M9vpPFNCrbMPV87vzALgsfjJiu8yHZeU5r4PwkYxTPXYAa+KuB.HCnC0bloDXnNYjwB.vE4MTv89ungBuZ0qKEBs06Jo6D6sLM0DSJmJmAaf79melebjAfbnDSnMowPN..IFZB0HCLDW9g.cre.B4LKTfDjrS+JQ3zfjyBsZG5+9KqnsBvhlTH.E.RJACHBIIJrFQpDnPtdQ51Q.DRJTZQ.QDVg7bHkXx00cZoz4PJr6IK6ZebMvxpJvILybEHqn35dRmXc8WsFkD9zl8IAny.tKEvyNKbd0lf24Teb73Plt.j4.s34ll2gTvD4EDr2RWGp97b0uwFuw4FaXdweJ2oug4Q81s3rG3vEs0+T+8b1Q.wc7u1m+EZ7KGkhS1TpbtzRLTNN8.c4L1K75Jo6RiGJFvm9+wIztyOLp3cyFSHAX7vPo222SntFbY1.l33XLbG3qHCbBoNlys9MmDTXlELoAVqavdKMXx8hp.OWYWratpaEHUnv.rhd0WbugasaXWdBPXH.fbtvBBX.fpR5cYqcFATjpjJWiI3bTnJOZy1QCa5hLP8lFDz+fDgcKCUBspyjsNaCQkmAJI0R6lLIq9xw.SDbYlpeSKQfymu.aXjBnXIZImOdaGuYShb1e+kb73sG7y548eBe9ehi69o466msioEnQMyu3ZNvHqCfIt2BaU6nX+UvQQELHzheoasmZmDZU0Qy166K97rcuZj1xYHhoJTaWiB0pBzcjxZcS0N1WcWRmCTt7tNX3V6796WccP6DUfcN2wnwVCrSCfG9NLohEIoA2IizosKhi.fgYXlVA4MbvkcegPnsxXr8WEroKHBDxICLJnwLeT38Wvsf+e6EIwRB.f3XJQZjBlbAzXDC8l2ya+jOOTLL.aYMo6X9F3SAmep67gIy9h3fkUNQF.OGT7bLjafYbXffrelR.TPlrQq47yJ5BeuyNBb1v.V.7OaFXXXjhJhRTRTz0+7DG7CeQfZLCJaWuFsp0pyCgXLRBlPNoWYpkACAv.eEXk2hLpjjCz0.S+8y7Gywpeb5yRPj24qbfQBLwPd+ujM74lGlbA3aXroo2iEd9fpqKBA+.x.oeze4Lvx+bloaFXpZXA2iL6qqb8atI4+6wlUTDQ34c9vRfrLimZs5SXrG6id8PAaofcC65PvHeMLApgw.9ZDU4lRBsjIiKoLv0.4EmJIT1QYPGeVHhnA9QzAiSgPPcHBeWnEuMPGbaCERUBGa.s4l3FdIHVF.Qp3UEB.mvfZ0VQoaWQSWJA01BKDs5Ez.3pqPBlYYU14DBloY.JGCPoFjRAiSnwxSUlkyFxAPRTnxfmKLbJwN1Gtb30+YWu1YfC6BQyJPFC.UzgaUfZIhiJEtzzHUZ.eG2cecvBS.jCjbgtuBT.mUL+3o2lx.+7ya9iwufeNlq9rLu7+V+6j+474egFuiwADS+mW7.IXkQ.ywbQNSZrI.kd.fcs+ZhzqqGF8DhuyuNpB50j816cGoqtfSQ.WbUvUY+WlRI.JVCWnuCLfLu+DdXGfvwiyHRXREBEU3RjqijsCFYjF.Ej88JorO72dtnqTSXKcgqfckvwopXEWzzUeEHlcUPIYwsv2VdH2crAUW61OCPHAikOWHdJaGBND6nVglBrcUX+7W5p2uvNRsuBhppJ5gjpqVizWSYM.Y089e9.1N6qzjxozl.0bj7zXzTGXkfXWlIguPKJrxLI.RHsvjjGgctDVBKgeQFKdgy2LGbVz6yCOLzvH4bARItKrb2+KWFE5I6iq00oeM0vWd2NgZAt5gfsyAuk9qcXDp726+xAIs0xj961Un0kjIUgPuCURb9jP9th.3Vd149V6Wdp8SQVwsudkHv9YlBtmREUWwbvIKX2f3b6EE4LTFTPhbE..pvLnzikVoyzcxGezTdYyFcxIfEmyKp9rWCgZJx3Gg1IL.m.kolPbwrXJYZT2YENPLuXFDJlTLZ1hTZ.FTVXf.mOxwvqbjYuLkjRTDWLgIR3YjcBfcxQDdF2STlLdBVKfIBng3f.6jIyOQCCVfkSM5jzOqfYPl.vZhITvPwkIQL1zDhb4fyh+dZba.RQ9Y.mO3ZaUd+X.oWYgjFfgf7b9p91XBfLTQaC1PwBI3T3NEfGyi1Q8xXk+8TlLXSw7aEy.jyPK72aPTkY.Tu7my3I5d0Ke3fC.STPNILnDvhmDFzwiGi.mlHS.LIDvhY.RZ.vFvzgxjCIR7pplaNYUjFxGyemASPC1dL0UdyvEX2t4fIvVx4.flXjsr20RLuyHqdqgPVt106s7HM31f9+x+SPOyiA8YEPGg.lUExlZFZPErjfVsW4ytqSp1ghhVWyVkkgXRQSq0OhBSZR.oBfZEPhJfgJHMMHzz.0jKDPvbUEHgMyBvtGKjr1qTRV6Ui.hlERGn3xBIO2oBuh+xKJj.U3Vm+BDEGrx.PVcJnG48fpZBHm4eBgdsSiJcXCsSbdn5g+gaWI+PEbFHcRwis8AU.1ijfEA+R8bIrDd6.uiwAj2TXjWBhXB.2zSAkzWMjCazlySMxtBeM4Oyu5ANl6C6BEfCo5d3C8GwnnPA.xWsu+iqx8tuuSE6SBafzvBiwFXxENo9tTkXPRRP3SELRvg.U93PDqSuEW3TEvJ2vf1UOsaGJggBJ6J.4pwkFOj65+2Qc0Anx80FMwCA5BuT.rJcFUqPOivcYRXS1vFfzccphZQsgrie88OfbbH5P30DkutChNyTelmmgq1FV4e05tLBUZWGtSCftcgc5B9YKcIrDVBKgEgSMhgzDVXxabxv218tppexOIpkICQGi44RgwTlBSIps6iJsW6M6T6gfsd0ubm0dQDtxA9B6Rn0qNDM4PhXDTawQQsSM.8PjRbgPoco8I95uRMmWylsOh13NycxisxQtnCj.yM8zv8LMA0glENu60j2FE.mEiIxg2OYZBtSyNYOCcmuNqy4YLK..ETdP.LAF7jHCcfc+LzxBWkZoOfhnDYXrPGvrr.YL.P5qNIg8VrdYFY3akLAuR9wxBX.iRTxI7h1OFJt.SLkLXe.32CFYBxxM7xZBkiyXjkAxU+0+a8yDAIyPXLzjNAGa4xsvxFInD17cxBVVfFvnDkDdmm1QcmOP8LPXfLhhHoHP2BlDCHArfkYdtdFJp+LZ70T8W6i4KUFSpgxVqdTbMl+Mn5YgBl0yvTNeuG.xBCLI..RVbEJ3p2BJhgcAHoOivIuLjID.pL4jXVfhzigjJeguzkKRcyioT5pSSwRtI28uUOad55aZpbrjl0LJC6g.hdIyBmqC.esU.Q6MAUkl1rz8Af9deXPx04kwHmWA5kOzM8rjRqgXBJfTjPPgHQyRRD2UI56VQQe0UDjXYDovfENLW1gkNRIpXKkyEBLpBYUhwLLbssY3vLpJfTNKPsP.JR18zynu1+qaPoSTgJCV75vEm16LyYZCyt9Q.Nyi4cLo+A.ig.Nwm9Q05M+GrDfEhfA3V5Kr6JAPbioJW3x9XZ+Y+YGplA.L25qqzdWZ9kNUlfxNbIrDdaAuSvvzEDwDqE0CHFHiHOrXh.O7vP8x5oekMazjDSMqX0+Gd0Md3SfQkPALT.fv+YLCV9udxTVe68gzdeIdoId9IQ8RS88EBqj6XsG4Li9ZnmAKooWZ4e5wOmN+8wLQNHpdaWbF4EhYTW60LYT7gZZ4uuOyt9zO09ne2ZJsTQ68+GrwDV21AUWFpECnVAhjiLLTFNYRf8TJ73O0Y58C7OcrG83ht6kh1R0Nu9WZUuq6DyruOFDG6fvMYI3VzF5MAzT4ccciCWWtiU7MtfdZEybxS5USme30.6zEfLfrD7i1FeVpywkvRXI7KgH0noTCLxeuawRT75gM.BC.oAa3B.bbbCzTVwEXhgvoJ5Y.WsSBEmYghaYnN2Auo8pp8tTPnUqpFZPGVDVWxNDXoMKKyPdlPP5TQ5dTUT8.Nqn2rCZKgcSRT6hzQEqZ6l38r1ZTpwTvXo8JGGJcHfBU7p+c+1.gAYYAJnLe..irrHk4XhNwWgSLwDJsOTM5jSnySNzPtdFVaFTJR9y6kR32mBtvOqGAmKBJMofdZnQDzWGFFfKhjJgsJSULhv2AFPdbbCTALlLELEELgLkIDEfoLERKJXl160Au++G74fdTrdVdB5WF.PHWiYZXdvYEYQNb0HY8lZOIhwDUvOqILxmmDFIRnfghK..l.SIGhLb7x1AU2kMvYIXZhTl+3ZD9w..PmHMag23ZMAk41hEvs.XfLB..CKKXY34tRcGlfICxRjMkAkqfeYbASEfbNfYBVYDoLxS62b+pq1b0NcBvSLATpMBHkGE5SyHzbUfaq.fifHMWAxo0gxqczO6jJpw0DJsBWR3xDqCn4BQHa.tIB5dN9Ptp.QcHHHhDpJhnfEgf.5RBvUJOkFaeTHclxww4LkkxYYvUzgbVGPSKidI+MmixogiHNXwbPJz.6dXHP6.ZsBWm9fPuO35LEDSsWX2ayPzRV3N6TlhlRaJiCHK.3hKn6n34ds4..vEzcT7at9pFldiouBrWQR.7oRWT4Fuw4yvy8F2K6hiktvOUYNcIrD92B7NxLfDLQkAfHOr3K6xPH.TYKKfhmRL...B.IQTPTYANij+UknRRwi9vmPgATjd0xHAvtdoIU..1FxWWcpwfHd5FGPZ5Egq.zyER3jOKKgFjA8unFnZcBAlBDPd7r3xDq87APqBUpInCxQ.XGU3rmUTVAGscfpc5sHAO7U.INEDHpKcdmSrYberWqEnCIZt4GeY+lnbH.60+0ANlIjE+98EJwUcP6C88gCymVA.UqDA1ykBNG50fyWzBxK6PYDfOtnHRR9LzzRQ6XIrDVB0Qmo6jela1RcOeItFZKC.rBCfJ..ILsTMMgjHKU.tFRtEUbUCWIkIDkJBJ1LfKXB0Vi7WtpHyBsSdz+38HcOcDod+yBRsIHBoQBchTGnDfcSD2aMVoGb3i+WcP19zUgywp8ZI9hqsC20Vs8APXbpzNssFndpNQsjIGy41JBEK.XAVBPrkkWSYyLDDAYP+XTvLsDliAbdV14yCQXijhb9FolBio..T.vOKAEZbNv5rKUlLvMSF354jR89nnNBZp6f.cMTh+ukhW0jAatvd8fyU2msy5mG4HuxI93TQThJhRAz+LPCov3fGrJ0Weg3gl..4yQHSNuE4BpYdJmDLDEZzwhFYlMSS+uuLBfzxrfnbAYDwJi.F4kD4cMn90gE4jhERv4s7xFhEY44jAyTPCqmLogHWIngDvApPCSYx3bLUwE.kt5JOdg+PnvstZ5Y+NHhPGRaWniR.kOzM9hJhVIFt5kTBWgNol5qIZhTzZMhZz2MTT6FBklIEB5RPD.o3JqRLeRBRa.hYvBG.1EtUz.rqX695Lj1pBhrIYMMobl4X6iH6tWyycFan5FBypTAttggRn3nlZIHOpJrytC3la9dpfQJVM6O.xbYwBbtqTQHKOjE0DlTFo3V3o16QDHSN.f4.Qp.vA.ygm+XHAfR6W5fJkJUQ.itbBb9XhI.MzPf2+VKn9d1pQi8+xRXIrD9WAH.zfZRNuv+3KteTiOF0m6t4wSnus6wSrf.XAPV05poIyTfRoVmGpWr.QAVgQpvbze0d5mZaW5zZYJ54Oau++wq7BXOkPG.hsMHBM8cdNKmObx0+QSE5OUm.CklYsK23SrlWf6aiLGIPPqXFhw4D571FrkO+6M1uR6gIlZoKlF58e+aj4HXvsEBvSoOMXCkDYY8VeubaTneiYH0eiWusA3V6+5XOAxJ33bmApr8aHJUAmSVBKgkvubBpt9EDnV5fIeA2JH3TJLXJEttvFIFOPX8PcsQ.rn+94v8zCGMQBNVqqhaSD55lVD8+1IUa4tNkZGeiR5c+H1g58EpEt+WRFdUuXsP8UzNTuEKquhBU059Aqos7u0bZs+2LmZy+Ey1z.bmsdA7xvF3lPB1SrwZX9rr9Zqy75HfmvlEn37Mn2IHXM.ClUBLxMPL4BzCf42eKT.wdCOBluzeaV.u7G7+eK+44OdylEpMp3xAZJRv+OP6WVfFvvANcLuxqCDn8.oT2luP5legqePyqOIKTD1di5Tf25xibVDhsEQ6u00Bk5W6Bz0A.eJGcdMy.yq4Cpc7g4lawfau4O.2QzjbOwRwKO5kvcG4h3UHh8YlUYY+Uyo0w2bN83e6ynubqYzW9e2L5K+aWJbmObU8N+9yo28OXF8t1tidOiVRumeXsP87jkirxm1NZeiaGqucWK1p1WkX8s6ZQ68Eqo2yOrlR6ekYDslsjn0OyrhVtsxJQu8yHh7IOkH7+oSG6B43s9g31hcgb7.8yHdBNV+8ygQBVGajijpeNrQBVecqiaNaJV0v+917vPYzrPMPmZFttxdyBXjHPHKof6eCz3BuqarXivHh+XSB95RTv44jI8D4u526Dn8Q+qjFrWBKg+OEdmvMfKnDrl+M4fTuS.0qKVMNuWpZM2QOgt5QVgsOs.xKhjXT.ytoP.2qOF7nIP3kJ+5B.S5PnoCzZ+ycx+oihNNGmHQK2wm6EVSKaFy41FptYP0LKlTAwqEC1JK+Ft8c+t+a+1y92MqLJSqYCa8c8nOgYaCfWGEgMvVvcl7axcC6Hq+zyp79uvW3FdpCJ+SqzROP8htxqeCei+luQwUZVy.VBi7S5dGFIEGyZmpm5qiVl66e0OMXasV54QV2xd+n7qtZTC4tdEfsXy6LoFBWlvPS5Tmou7OkgyVJ5WBKgkv6DwBXso.DzXwdkyxlzAtTWFPFzy.LXjACokGS3..rIbyZOB9KqcOaaP8ezltHGKK32mcVB.CFaDgvg.ZSG5ZLBOSKPs59+y2sPqWEgV2075QjV.ozFQDovvEfqBgqiqq8TNxJS.W6iTFtGmhdd22Z0.rUiAWgN3iUCtHB3DWJ3IOJXrE3lE.l.rEfvHEHqBfM7sPEfXvLkEDETxQ6chxj0PC4ZYle99dH34IAg7luIrOWNu5l+MRC1uctFJGjMf7V4nFKcrjnnqo+eOILVvwnERvHioGiOliVX4awicVJmpBxFKs4FOeBz.03Z.FVfr.PPucXg4Y2qFQPFrRdwPs3YfvPG7BHPlZf5sBDszBTVlKnn1yG.smQyKKIRaHNyw+DG.zxDfBKAqIgRslHzZERrbPpcpno1ilPoE.RPR.HXWoqrjhjKWlkyFBRHghpCjkCAFNLj.vlfzwEri.P.AXV.I6XeXVeU25ZnNfqXJuiApDX21gZSwwbhKGrxzfa42AtwmBRjFnfIjHGXf.sFikL.EPiud2qV2FEvHKYgIICjf2Dd.sGA6oVv6OV1bB.uhZang.GeBPMRMv92y23YQEDvvXH67klVcrf9xYIrDdKG+BeIX0fNWrnARMjrh4etlE7nfwq1XE1MtOHZAbdsC.n5zCHROeMDyvy.9wRIv88RJ3oCSzjUUzH.aaaIO9KQgaa8tm5HaQr0Z8qOTxxx+cHlaGGmmoSUk8Eh.bfjpcxW6+mpOD9ys+8AokDnLZiL2+9Udf16TGJjX2mfuAWIjfzDs89F9Ie8ZPZ.HrvjtVFrbvcuaU6JPPggDjSHHYWgZimCFwgQOhhIeXjDwk9hfU8InZP2.VxAjkvR3c93rNNOfU+HOCrqB7HKfwJ7Y4IaZ94Sq4w9R6wFX2TJCPkJtEULx0ihsYHgQ9Jf.sgTvtvgQEbBH5XnauqZ1Pe1I9c2Cn3PnOfPMz4pBstkdkjplsjjgTz6ggRDcRVUPRaT8.O3qViKKccNIy1Ggi1+mcchHv4v+ivsi1gyI1HbF5IQs5ZxPAHuWrYcCrUewczie+mz.Zl2F3hIAN5ApQFSZAqbWuBxNhKfIa.Hrdlemno9d2W4B.bBybplCA2crCHN0HFxDvhO5vPcjQf6l1Dos8sCa+FlVk42VqY9f0sDFfkdZSluFOENgpwP.CgHr0DSPXxIcyjAt0KeoDf8LL1GbNXMQB0KAwEG8fUoWnOami3SgvacyP+K7gfsgQJJ0XoUlLsA291eFA.vMuo8XOyDP32pG.vy4i.mI7JcsFt0i84.MCSEjAJ66LHbq0fxSnCp0Rf4XfXIHV.BQPncen67EgVmr.hXrn4SCtRDlYAIzqx.gUZ5inPTrp.jusLtLD5BBhPBJBDhvDHufQJXvLjrq7zRYsWwVV6HLfDfXIbK6.ZNEHKUK5GZqqG.PCnl34gjcAQJfWYHHedGXiRfuxZdqe9HdRZGupOA.R3cDDoQAoyDrWUsEnKYlDQKn+bHvYABXXAO8OgfQJw1K1pDI8nNeKLIgbFb7rVTZ.LUFCjFIjVvjNKNd.+fjJmebaNG+6XVZ89kv+WC9EdGP9Y.KHZ+ybV4j72brvRXJk.oKQXaKSf3UBSvg7yofqSmqubDbDYKqnM9n6GXhwf94mVk6Pe1J2v4z1A9qoY1SM37tpNyzQOxeQxapue+h21qXZFZMlC4B.VzhsXSW9joJUiWoMzXnG66pM3FO4xWMbMfozB4jvLsht4XLdxEb.xxlWbVfxw6DIAfWDSBZxRCiT9MregklLZIrD9kXbVDFuf.5v.dMlcPDrqGEbX.KjWlBiIJULMA.D6bRwFoCL7jjiUfY.3RfnSbPtBtXn11k+UWsbJPZUQjoOxc8JPqKvJQlEjayfCIXk30HgttPqCIQpZJfUY1FB24p55bDp1wt+WV5bLU3bLB7byF6bG4bu9Af945GQ7aTAbzY2pC0DT6vEgNQ2v1XJVNwD.leJvSV.rU1zbuStGcviTA..lf16UCQpu28UtTQPHIvjlYcx34PlD8bbECSCXbEVRSSH191gs+4lH.nL.DKteQdKF9QO2jrHCJdVK7zS2q5m7Z6xQe6mQLwl.FXnH7Eed9UA.ATuw78fB.bt9qGpCORDdrw1OtjzM49MGKNWHseUDrUTMCQQymuPkB6Ho.iMlLQNXmC.emTPz4TPbG0.0ro+8I..Q.iy.Q7DPy02XcRArXHS1slWiVayP6zG5F2EDMKJcBMhg.3jLARA.ZnhZbgnojgHkNAIzjDTZAvwOBZpLfK.KmkkmoIRZ6xDpwt0z.OiNyRWlNksiaMvnRXRzzrPVUWxUgz9X0zR7oNeACGpJj7zfTaB1h0CoZb3FZMvskec3dpGaKpGMwvd2mjijm.f3.MTIigDHuj.wfyJlLiIkJei2G3U0DYAQoQJwXvqYuyAlAaRfHNaVnNooACLYCMVePFiJIlHYYpQJLF.H8PfMm.TNXET0FdseJXjEDkq93Yy2z6I86gpkV6eI71NdmPIXs.7iggmp6.R.an381E9YLBVoD.9pHt4q2D9A1ccNOwo96ON025mFZSG8C8jmy5evXyTFvAXHXhVThe7oUVS0Vb66AmV4Ru8W5SruRx69zrtzFBBhH++lx8je6ofkH99uUwqj9f23oNt7NKWAPJBAkK923C9t9G9NOk9ODUlLCb.HFCmTE8rS2dJhvy95H7LO8G5kIoT17J195muDrHNedHRXjndpxGZBf.lMA.N.EjKw5EKgkvu7hflONnjqfeTYCbDoXCkZi2q8vNv.xiiiSAMsbA3oKDfL47Hiv.IXjOGgDITJNTD9poqR6nvrR+8CcWWPszBTNbIn4tAnvKChx+82zKBQmQTT6EBsUppnuppBJrlDtZLKckbYBrsKipJ.bE3NSTV5Vk3JJPV0k34TcrOwrg6+1VuHBbDUluLchIAczvnLZCtIuF3FaXvG9KAkYm3gTN5ot5pHAXXVW397OOvDv0qBLhieGGS.ljG6RwT.aKEHpg+jNO+loP8+7hwLgHctrRSLl3n3Znq.CKM7zlCF48K6GOM1fr.HiFBBGEnz0AYEwZRBF4Wv5AAkgbASHwCrcMbsaxF4.ckCB0WzFQNM.bWNTwL.j.LKAwc.AhAHmEp1iemurPqaEBpdwnKPwoAQfTIhByPnS.B.gP3w2.9s4gHDHklTHpIIpq51N9YxWRRmyPvYJov8Ty4V6nP5dhnJrxzt7bBVdFN5492rdsoQMzFfbJHBpP.0vvEwAlBvomRPbz3vE6A.sBIzf5fWBj64wgD6DNvDDL8NbymGBiLY8tu1GMjom4ytD.BXZrZGTSMZeyITgicEDgeHTzMGxhfRladwYrQ6PVnsIDxhfRkJednXY3E..X4yPX9061Uf8JNBJ5NjEHiL776u2.M76wDb0OtWBKg2lv6nc.AXANgrfZf9MegfytiIVVf7VnoAGPt4yDA6zosy4IO9NNNspAmFJyrr+8i2WS2Epsl9fcZPxKc2CpsrvKWbYSOsKFoFgWCsz226U14os4UUiQMITzc.yPUggzAJfEL.KEgHJV6eg0bpi74ZEvor0DNSl47pM+uEFXiHbKSiHyrqq5kT.gAG7gN2WxAkvtMsCDTqIvThlPbwpQIWfXJdJFbLIVxAjkvR3W5QiNfjMKTFxu7QBLp9r4.xNv.0myvB4kdFcY5ynpLkGYHCjfAOlv5teEMie8VbQkH7XOTQN8PfgA3Kf90h7b3Qmanwg1o1KTmaDDx80fhbVn4bn+rcA8kGRHZSBQStRnnPJMYyDhRJgHfntB0VpAoSHlgMwUUYfZR6iIbq87Jr6oqA2ZLfnl.hvB1tpq6I4H89UVux5fiTCBsJvllFrPC7T6GNX0.wATm5vvFKGBLsmgYMJf46MB3ibDnczihJHITvquYE7pesJ9+64Kol2Bed3gg1V1BrAXJK.YkXBUfgvJUg1xbfchY8VmaZWu0+l0EzKqCYDMuquieQPbH.WbPnfPfa8jHhXV+9aP.1sIHDpfqcJDJjviczrUgVa.5GZeehhPokvPMlvqhe7WhUPBPDQJKWnnkPQQsKADBhff..jLIA4RLWErbF.2Zx4kRKRBH8HkREofcscAbHPTMVNWTBjCCIAFtPNWUY0WyosU9Y1fNiZyUEN..JZPxqFzoTQkDebvwMfrfYCqyMI7JAswFSfzokA8KIPdEvFRjABXsIUfsWqdIiAD3DP8dNMHyWMlgvLYfrQ5bVE15..WvDN1EGJBmDEcIvbdKRfDITFXnEpx6.d8uSveah5ZgBAqIoTwOt2wSZS..TBeZuLPNVL9ZR6oqK..VjkmXYx4Vzd2y9lhnD447yR1.rDd6CuC1AjThEM3ZwMg4ahCIoZvwD+HPzv.zE74xLYXTTs8A12z6XJrh0LKoTNxu5KNX7shSu42EpkNKIvp6WM8lWM9c9CFW69tttphulane3Dmo8q4e7XOwr03dpwvwFBUlTAXgMfPEBhnli8fwuyGX3t+c+.kNCf6lAUanIRnZLTbIPAoIkRLV+io9rLhL8Q9vurJIn0t1+90MIPIiIx3lu3dEdMedbw9Avp85qELAlRLDhK84B+kDhnkvR3WtA4qR3J..ES5oKD9ych7MTVIFFfMguAQ9QxNf9TGvHoXuVEk9JANyf8i7ZJwm7teEsVl9P1llPNgUB0gR.rkuzj70uE3jHOqcr8gPwdOv18+e16cON435pde+t16p5GySMRZjrj0Cmwi7idrkcniMxNO5wbbbhf3DBjZBgDNIGfHA1mXt4wgb.9jz8vkKWBg.XCNbkRfXfDRnaRBgXr8IXxLCAaGBpON1VyXaIaEaKKIqYjkrFMO5o6p1qyeTcOZziDy0Pbvw02OepORS2UWc0UOSs2+1q0525+Mxr2IoL6GmwhFVCaidvetc+yuWrckQ7VaMI845aL85I9qzSjtafD5iXLhlJTYNipyVWilIEXqiSEiHVU7pQzLsoZMTMpFRCmFVyWhNQnD9z9qYk+1m2IRgMJCyoQH1ZDElBOu5D1YHFWGHMpg25fEpNOM58BvL0BDU39nwXPzok3qJ7hj6BUDI+0uS6g22i3k4x+kcopuIM68fV8uBa+GHticmyfF5P7LnO17DoJhqi3y3SLCpaSXbsgmbPhhllz0m726aK1UlwXaOxQX6h5UGiwIXc3h7TsgUDKXxr.Xxf3AVOCNaydyhiXwDNPxfXVFhjFZ1mshwgp0QaLYjq9i1v0Xpn3Zy1gADUCUUCUXdvcDu1uzO6qPOFF+totKDwNKtnrX85jPWaXbowz4EPsntPXsPOGjPF.HGjsFZ0uJQLvPRgdmTNvWZL6icKZcDIEvBm52UwoSEa8y4yc8aGBANJGGkABxclMgwk1+U10saAnx9h6WLLT.Akqv3My.gZzT7QyNA+I6z6wDPNu3LTnoYwzz7DFnUZONTq9jRqd8RIEJIEXPCDGAxhLLKZywmkZ8nUleTkYjVMYxVhcRDgjvOH3kS0.Bbp0Ax2kIdOlaohPN8+vrU2mEFyQaaLjUP8Y2WcOmLKn9gYxxb09ie.KbYL3vEcrqaOhwmRdaqqm5bOYU5mner1hN1ybEdWx63ye308E2SiGPg5.9Xr9fYA+K7smuuuzm5orKGkmAZ+bp3lf.g+0ukouAxp4AFfUo29JIhohqDQ.ryfRGm4mnya7obLvDN.FnoaazbhBIjPBuLl3IBUv.ybFO2oK9nREjgGhHNoiCJA.iNNR99f78k2TtbUWyIKIhfKPWkj6CL1BCKnkJg767u7r9+k8st5a6Zws8chch.ZT.bvnL0TiZd5WcoSz58L+Zwdvche1s7ms9v8isQWjJRI0BOwu8CIKrrNMoVYCDSHp0WLc3go84QqkEweNzFYP7ASViXZOqwasQp3rpZ7fHG5BdZzw8jvMrvgl9SsuvviEAyWCWsLHQVHUMQwaZDrOqKElTSejvoSazipyOymo+tVAt6e.x1SMhj9Okpr96WeUsHhEUiP3yAO1d2lktgoqfH9nM1Koa6DH66ougGxyrLYTw1r2Vsjgwd1lmoBv+ZXJLYV.WJDSO91LuRq3uBOjThGoafPJvIFrJ3DUCUm5hPmuMUqIngNhmz6IGaMxEFWy0ypNcJCRH3LKdgQIDzHGMNjK0Z+PWfwQCwD+ZWcHlYMny5gyVinisJpehifiGivhfNZALS0XbSvCMP3vEiOdEJgYpJiafJjsu0py2yAkdCJ4FanaLCku0YIeIYGrOyAGedYfWKg281EucBK.XeirIu6j2Yi3b.iv0Mzvo+EtSVXXYHEvFDDnSN5jxXzT.xR6yIMiDUrqUEKdm8EKVPImvPEY.c3vVKFZyHlbJhSGFUKhH0HqRsSVmUmNwFkCtk1mVfR5IMJmQaILQZViOm9Bt1jwb4of4+bzCaR3k67CwQ.IlyHBH5o82iKYkBNaok0RJVqyb+FOmGSPJ96mMjc+DQa83XtqtwUXWnis8RoXGTSYTy3UlxLwPCDE.7gVckL+d+l4qSsia3+RJs5.Y0W01gB6XWJ.SMd7wN6.nG+VvvV2KcO8lbUeURX4xXHWNakAFHphTQIm50EzwL64M8HFDt309UuvGpClkwKEpL7obyrfgJFe92LjrIq3QBIjvIqGtSZ0pPqzJofgwmxv.8ZX7obKlBIBZKaasRy7guk.kk1v9pTA4icLLO8eCoN76MnFAkcEQju7kQ1G3AKNOrXsm3oJsVIVCpFwfiZyciCZ5sWbi8wvxAwi0R3J9NjxKMtCCr74vpciz.7mahekw8r83GoQdpXCgFoQ5ptwe0Vi+JyX8VqAuULup0yh34hqkfHTWMvEUW0EhvMSaHolE.b0xhjod7x6XiTZjFmKBBcpFALaFvVCUUQOa2J0z7Zo66aJRT0gJNu3J8HUcTLwCyY.w5KRpHPLwN.aqM3jhQbf3Eh1HEXDwt7oQbKSLcsP7wIJU7qUETbnDorfUcGGMbJUiNZcM7npFMmCmqoUv5vpN.GgtoiZ6G8VuP6xHz7znxwO4XnGsMh1LvwONQOY63nNBoPWZJuMYu3V0TXXBhxA5eDuqNNJe1lBTGxGpz.vGnNTzCFtU2sWJipCANzRR.SHEYb6.jUoRUGCUTqPIYbFTFlwBKVDugGFsXw3lzWP.pHwBRZMVeUxaOok8eltuopEZtXtwYcwRSsw.MvrXSTbwu6hOtCQfjiJZoyx2umLsuOIBMUc0zVnOCyw4jYswo75N81TvhGuj4AjvO.4kSBPZsCm5m4SKTkmkW+YMhIsF3tRkoxDji5woTfFWj3A4Rk+COtB6j9xe2txTQKIiXlfQMkgvVEH31uaLO56nfNyfyHU2zUaJr2aI5IFsjW6Sgahfl62fiZYUCpTIN8YKWFSkf.pTAnTYaWPGspAjSJ.gFM+bs3m0lEQYh.jDRHgEQalBURSgCmzo7No.j82UW10O8zQzL8OWp.Dgg0xkwrjhY8TxQ93BlsYeFYvQsLXIX3wBAUTJEu5wkqvniiL5DXJUlPQPP03bwubIkse6V1wtBiyMeIJ90RrenGfv3X6qFYWUFrOMPTHl4RSTjEOWM7p8z+lOj3spLFamdXSUGGdXDP7Ew1lGjxgqtA7qi1vCi5glpFD5Sqn.XxfHYBEwlBIsSvOTkFooovolEAAtlczZSyVStq4JdclO++Q8yt39zmfINy2zHUmwW0EpgalLfDa+p3yhcKcUAMzEOnfwhHQn08UMJT04UzHmRjmf3TwYEweAbQdJMrfFpQOmScGMp6KozlqeBpYp2T7nAcYyf55.47Cwr+PZj4mi4yd8MSCpVD2WLPonzT.52UQZsZ7kamcZuV1laHjHV53Zkwr0g526N4c1nDCZFfOoFPNc6rV6Z3Bzg4ZhhcxsBx3UlxL03S3Fb3htsyZs6fCFILbJUoNbpS3u43i1xka92BMSQwJ6KNBeKJ.o42ukqDKCbn.0cFo+j1pUeblKhYq2yE+apSqlMNc2n6zDfr3iWoBRqzfr0w6TOENsDE76x7ZRHgWL4G5Df7hIK0MsDYrvS6IEXI2XZnybB+sFruRP.UjJMGqpUQuEmimKtyxo5RM.P+ZptRQ6mXuuwGwp9wBPRwbrWp2R.Rq2iktxjwmuIBPRHgD9ty2kHB+e9tuQQ0TXzX6fENoyDQcDZfrl5XB6I94bQHZyp1nQO3O6CeSON1trnhCQLKFc.Ub3Dv5kRrYEwrpFhc4oMdqsAlTYDZqNxISg4u+Iv368OexSViCsgptZQZ3A7bt8Oqqwj9HMhqIEmws3v8pyQjSEErhwSDyBpqNQtiXW848oN+Y8wYlEmwOtVbZccaw2tU.FezodbhHyR98gSKBF6KKZ0cw2u6+DOeyg4TpwyWn+96+de8uXPS608+zd9kPBmNIBP92IOe2X5E7y+7DoF.HmlpKniSr223iHpmNvZu8K5zEfrTAGKs.5OCASIjPBI7Connhrnc5FijGuk2KYa7r3Kyh558r3Lhy.pGV83Xp8zej8Hdq1JdqXAjnNExVC00rQv8CJ7Tj5Y.+Ybt48wMKtvohROvuQNwGmYcD2vcOHXlBm5hGOvLGtN6.oCGxwcHazC2iC06EpOw.DQNTXPCkFrUek3jeFKgbxlXXRisKgDR3EFubqHz+Obd9VwgWvOeRGKMgDRHg+CAo4DkkkLg4hU0naOOy2wQndVeTN.rgtwsy4WxByMMVVNlUnXl6B++d0K2hWzBwVSaCvO0wo9Y4s66OeFZV74KVD5KgvT3IyFGwBuLDMEDgAkigxSg9Fqep6+VSA+yfVIDgyE4PyPD8hI2chq+aR7dkkT0OCnA..f.PRDEDUBBqHiEwvsZVsCuzW+2yzlJgDRHg+sPh.jDRHgDR3kcLLhVtZfCvETnb7DrGqj6ZYBIfxZEPt0B3Fbr3EIZBPpTjZajmH0Sx4UmRnEEjg+A4jwa9NWTNo.iI.oRbtjIAMcprwKfTZlpx3yuOYfItUG.qgUoUzxt7U2oG.ym4l0AGGyQ2Z+7ZqTgS7FI0ccWmo.qlNmVy9CSRejHgDRHgW9QNMUW4zkK9ugIMd+DG9R2f1C8qoWR5aIphoUpW05+eRG6HgDRHgDd9PQO8zU9E6zWVNa+awhXZllsBnRAJ5onRd1geb0oqRQTS7VQS4xX20Nx6u6x4Ro6Ju+N1Ud+BEwCESfFXu4at+zinE7VR8+zzVsheOTEytz795tykR2ctTZy8coiyjPBIjPB+vNIBPRHgDRHge.Rh.jDRHgWHjLQzDRHgDRHgDdAQRJXkPBI7BgjUrHgDRHgDRHgDRHgDdQiDAHIjPBIjPBIjPBIjvKZjH.IgDRHgDRHgDRHgDdQiDAHIjPBIjPBIjPBIjvKZjH.IgDRHgDRHgDRHgDdQiDAHIjPBIjPBIjPBIjvKZjH.IgDRHgDRHgDRHgDdQij9.x2mnUSY56lGoeFOeylGnhHeudcK1jAEQ+O3S4DRHgDRHgDRHgD99NIBPd9QNaOnRQQXXEPQUYQAAZQC.U41s.nZ0umMpoxkwNzP3JvnV.FhflBKpbVee+tgoovkSmJUV77WDAUUDXrjFGUBIjPBIjPBIjvOP3k9ofkpBkCrnprXzAHdh8ph461FmTXg.HphobYrEFofWfFXa8bJpnTTTJJECvejhXGoH1pb6VkhBEUSAvRQ0D++KYxWcs16giapueeuJimySonQonoLpETAvqREjpj2163HkKi4IFcTu8bvOep6m62abF2hVT.ksQdusQdOkhBPr3jRwmWzE13SROrHxZ5.gTbJQFYngvMzP3TN40lRsttsjqWIjPBIjPBIjPBI7hAuzW.B.A4TnzoLY5f.dAkhRqZvUovISQJnDTdXYu2wmyuz+s9k8euqN8fiB4oOWIF0.vST51731tsT.7fCsy1O9jay7wuuZley0ejEizPEJIAfliAaWKi1We4Sm+f3mazdyD7M52y+bWt1i2lM1G40kZVtUyZ1d9LTDYmrqnqk9bWe9gyTtLVnjvsuSq.DLMQxLmsOmkZInZwslxNRHgDRHgDRHgDRHg+ciVzbVVQe4z1NsWyh6ebsWnXJVDu.MvFnA1EifRYr64N5O8iLxErR8IuzdzQx0QFKiaDTChCLJdomEIkiNx8ZVWYM6F+CzksEUy16HAcz+czeZ.SddSsoDX0h4Roe6M2tNwUrhm5Sroy8bxHOZmFTiAkLoUx1Ujz8Z++ac2qls+6PSuwOilIPUa4cmKkt6bohEgDGAm74U+t2f1iw+MOku+aYpqKmtbxooJLRAOcW480cmKkpExD+um0H.kDAjDRHgDRHgDRHgDdAwKbAHzJ8qJWFKkCrEULpVvaWZd+63l6Osp4aSm9x6M2EY9Horn9dDYDTATvDKBAiCSVkTqrVpqZGWTdU6teU6JmpoPiS+pOyFIidy82k9fWZO42j42nm1DsSCZ6R7wCOeGdcpjdYJ1NTtvW6U22Q0tyoZG407927cze5hEWrtcD1hlsqb5xEuqeRe+2xTW5FzdHmlJPCrmh.j3MOUK3saMWJUK30THSh.jDRHgDRHgDRHgD9OHN6BPZI7n4VqHBTtLKVGIEUL6RaNA9cmKkp4a6p2h+6r6tD0XhEdXPhDPsFZXDzTVTCRcjtU5X8ytlx5Ftfo0Ut4CosmeWpOnF8l6Os9Gm6bdWupTWeaVTqAEiDgXivHNfvlQUoF3qz9xbc9K8askKbJcs4Tsi76ZG9wmiEMTTMa7cqY5ZK5xEuehI87dSSdQWjthM9t0LEzQ7hifSrfiuiVHip48iEhjusSJH4GRRAuDRHgDRHgDRHgWxPxDPaxPAZy50njLAARd53TpshYNQzZlqlRyJA+K6PS8WWFue2ek00Uz8u4Nt30Zd+9V0GsgRi5s8LezWyukeCxx4.cjGsXf3wE0l2iumi24+zi23ub9HHxjAo6U9Gs565o6hOhyajhjYKaz6GIswk1ZZ.gQLyc9k9eFcLLy9D30Q9sEWqKUlPxe8XqedM+9SBwQndn4hcaqUwf5PCgqRkwT.lkobL97BiOkC5HwArRHgDRHgDRHgDR3EJmYMMnM2ddpwgSKRHMezEecphQ2UdesXtTS82dgcpSe489peco15x5jeN.nnZPUY2ZtT5Qtxtz+gKsuAuXueCeAE+NUI2VtiKd+5l56nZ2nEMG5uXysqepbK+JNG4OdYVTrcnxpF3OJ+Az15+NzzEQMu6BjQm5p67c+VZ6xa2fZv5H6Zzru0+xqneUSWPGwK1wuhq4k9eeZ5ttNc4h+0MoXe8OS2WltrM9t0LTTMJpQoXbjbZlxUs1ZkNVMSCqDRHgDRHgDRHgDdQiWxGAjkzmK92AkZI7H1ArnnPED1WU2nLgak8aWf5oV3qL1keO679x8WiVzj+5wlqRI+O9sMa70vLva6pV12vZhOBLyw2Z3ygWO8.koh24rkL169a+bqbx43sufCjrcO6pd+65SzXJjycqDMAHumAIbe1EL21mn+CNv5Le3LlHArrvi90ujUBlCr2GzVH3FZ1HBgG6eDkmFvXLfJlSblNhU9pw+63iizxRdEYrHXL2KTmBKgDRHgyFmlQWjPBIjPBIbV4k7CRblSh9jFaUyslBTJ2Z09iK9ZQha53hnHCKM0dDKBQGFYHRKCg6ZFlvJSLQDOyL0dFloFSLQDDmVUY6as5U+dVYDpmxjT+vGnlpJf0Bs0wW21FQy.tq4HKK8wdvSzyeyCerMer4zUNuZfk26mqm2QlE3xhOop.5f2ddoud5Hh5oith0mduwm3Qn0N3U8bGf1ZaSC4MESYX62tsLXBlFqKDCp2BhXEWHln4h+7JrcKTJ9Zy3SYJUBW70i3GRDbhjH.IgDdYOpd50KmrnobrzHBuTQEmES+nbYrUIukwy4w347zck2mhpofpdwai30xgAO82u3C4y+3QeOD2bl072+w1mi9tEQ8y50sS+52Y8HdpQf+640+++w42Yt0xkH+25qWKZZ1PcOkiyREWVPGwK+tTeJply30mXtIIjPB+afWxK.4eCb5Sx1uXwEGfn0MTUPRCHAZfcfR3oJ0TEokqSUYhIhlnxDQCETr4wazEOf2yi9rP5nvpO47c0vYqiCvOySH8vBo4q47d5Ys8ziw6fGI5hqGB3mUkd23+pJw2ndlp6TTJw802g83ANlxyVy8l5n8mLivgP8fF01P8if8H28tyzEawxNdSQcz+d81BfcABQbcoXMFOb11Z84cGgBxYQfgbZByRHgD9gcJpXJtjzUsLAVnUySE6RRcU5+8QpiEj27M5neuBiTvFnAlJimyqJ4imTrVzjuJdE.aQTCzbRn4xYyC9O0wrsyT9ss2G93Yye8XmZbxL0jjYpwIy3Lt891+5RQyl7J7FSAwMN1pj2VTwzxJza1PXOkI.CELPgyHJKKsgwpJBkCr4qtSuk94Bs3o1PZWLUcUA3LlvMfnkwpKMUUaZBHKZS6TTJSfoHiXUJJ4BxYW2V1RpwuhM5Stb1kbtYJSfs0wq+2GoyyqxaiiVJcAnYimEFoHVsLl9Bxa5KHuobYLEKhM+NvuvHwoM6HwiIYN44yIEWnnRYTS43uWf.0juZIay2CSqq0KJxXQwOMGVnnJ4qtVatJ3EnAlQJhcGaCuQJhkp4sesu1lyVgbdSMNYlOyjoyEfG8+9RCkMai7dDKdx79dijdwT7Mog2lPBIbV3k7BPJwhsXO8z1ZQyavNji3AwpWpTAB5KuInu7lwImWoctlL6RyGUrHlIGcRYfRAQauzZxTY7bdWeo7RqnrLzPrXAbOFi55K+c6pwwMO2yMu2rc5ju8TtqyYylBaajZS+Hkkd3DScvunZpufkmMza5YiNeGDg3IR5tNnsapMGDlemaG1cEuM8Na2iKqGgcMsdoOQpYaOpsHuE7gmc5W8bUQW1lu1Ed5ee.Y.Yqo1j17Ss.d0Q7pGlBO+tPYhXwEkIvR9NzpCjsYpkcRaGVUhGnNgDR3G5YBBNk+VeHpnfn4u9lSRrH.UD.16sPi0u2iadGWxJMad9CXuV1mYKc0kMCyKknnMOkrymGYpJia9b8em9katXF8MPV8u+uepza3RL5AlXlNu5a3wevpawq9C+ZV8eZXHYxNvf15TWtpOPWQZ7aHvc1.PacO1ApfTlJZNpz79aMu00RXblxTk71XwHmjJLgP4gkJUPJz6jM+7tzO1kNkiir3hwHm9XFmx9U4jO1o73wmCwL.CpBCq.bjIaH.bnmptD+5GRHXXIXG6y7H+qWXajKm8w9KZ+pqt1CdkLXIl5jiCKWyvDxoEU+AF.siKnfN3fisTCDQQKZJhHEQj3lMKzZzvwYTAfBkasHWHPIsbYrAAnkqLrDvDBUFxz7ZL.TnDl4yuMgfAXerOyn.G7XwGi8N4wMW2ORGlO3ldz2vDa8m9sEsZiL6.XJr2aIhf.1I6JBhGi7R1.KIEeSFlIgDR3GBo0J687raKtBZsZnee7O3pa+odpsjU0BYti8ze5sUbMsE7IVW1BiTvqfVvaGZd+cn48iKh6St5XsVgtQzBd2wd5O8CqWcm5wtrk89eO8boVKJssxHYU4tiK3QzUdgp1YAsfm94tzdzOdeWxEsBySklzMH0Ja3+i+ac48eDsqBp5Ud24RcuO0VxdnCs410CjuMMXcKW6cc8+JjtNb6lKzg+kL2p90zUuYUau+aVSWnf5UbMZaEyocrlKPWoIy+0IM9uyC26F0yg0nsst0oYKtQMyHETOEcIq3W7Jfkjm1IjvK6H9dfw2CPJWFagQJ3keW6vOmpoJni3gVznTzLRQ79L+JcuL8au41UsPlCcnM29iez7cW9v45XK58lM2g0N1hpY6+l0zkQsZ9c4qTv6yTbiYzu8laW+NW1xdMax7q2seyl0psc0b4+X+BWjpqXi5HY1gl2Wa0PU0hFJGzZh7RYBrwQmg3U1uXbTZNYTGJ3oMueYbOMJ9dysLcixkwtql22tYDTV7yNKIMhVLJ.mLEhH98VssLwjV1w9tz79KZS6MQa1qnN4wWWL5BEKh2huF.sLVcjMlQKma45HWvJW2Jk+ewlUouexWyZ1k1VNsbpkjxSmdSx8TRooVe+gpRfFX2gl2uUucZoFxxR2uVQ5nUzS1c4bozcsjqQstNzbqfpd4zxoBTsUTSj.ZZI86Je2uxb12r0mH5rmaYCexaumb6V6n+aVS27ZoTrHdmVJjkPBIjvYvK4m.Zolae25uGM2MiVFCUyayMAvSUW9P+2unn0u9zZkJS4s05ozsUZsM3CbU0GavAcSU4VM6DXm.eL5yMDABpRfFXJQASQF2NHYsacSmq+x+VOW6Lu3+W+Uet2mC.qwj5hG7VjKjElsRkvAKMF70lV4fRs5KnhhmG3UOs4UTCfY.YbfesnCo+L0NdT00RCXg5jl4M3lwpNAWjgIg41K1o9Rj8A2Os+.cS1QCIywhHqXWeZuTqqiM5geP6zdPWjc51osu0yPVVx..BC6TJZpHABRQpHAICNjPBurhR.wlRwL6Yr3+9uRINvs7krEXPSElPF71yKuGWuyy+.vm8.oNmc6602Qr569Rm3W7eY8C8aWOhrSOI1y8lHZHD4Vp9yX1JGvV+POYTk8DJzHsat400iCLPHFOzm8YtJ2iFeuncemG2TA.sHEXPS99t1kTiBkO4opHPoRwaMoRkwzpCjU6Z8SGE+yHJEkJLjTgIjf.z7zglmNzxTQWxhGQ4xXpRd6RibAvh0.S.4TXn3cWUFFUaYG6UBBnoYkrjZUYLGw0LgfhRQ0LzPDM7vD9pjpgKtuAuQOlp81nurlK9mcu+lScT8+I1r054m7O9ISkGW1pG6jQ6IPs4qtXylkSlNUwBQZEkkkx8P1lOVglKvTAKkGtYDtadNiHKsdIGeeyK.DToBTYBYwqwCKtwfndo23nsTpDTTkJLQiwm.3Dgxu1uvZplwvAYli891+u1uXQ5EZbSHEJgghpL7v3BBJHsRgLRDgjPBIbVv64eWdoOaaaXFmbx.fNPNf1OWgieL6exM7jo9kuwyc1e++zosq+plndkw2klC7d1GG+UjaWMpm5VjI2zl0wXzEC8cUlQx..SY44B8VUizl29POxVNxyouWU8Qxj8uai63V2Usa6u0dUumf4nBVXtPVY6MnAyZwGvXWn9zoacLGcpdcGXf3v0+AGsCcz8mNhzNipQNDmBZnsahbSib76cSSHQo7+6HaMiYkYcd8avu2ZJdQOzA19i7PgemoE2QRA0Cc5zbkEdpycPQcnRxf.IjvKWQUfRhHwoaz.CfN.nCk+fJ4gb7Z8Nvd+X1g3tVPqVTKU81rk1xQc2ai4W+6Z7G+aL4B5Jm2jB4759ylRIa8UwBOzm8lZKPClcMiOtdWCLdimpj3OdPu03q7LYaKk7DhnDg3iQPR0y+jakT2euOndIasa23fVfAM6Ym6IUOaaagEXT6XPT.kTHGsRongjgaZdFHzLch9pTMBhSWKFJHN0q.BJWgJUPpDrJMGUzAZ5PhZYnRyIAmuJTIy7m18BKIkKiTggaZpIEk7U2osi7WfJLnSYXpvap0kQCUPpPrAnTPGwNECZ.H60iVcXPoHUXBY7JUr80Wdu74m1xUlM8q8M7.usuyg0e4EzTpY0W76tma7bm9D2XEup25AqCkzBLpcpxCZlmJTjgjAJivPCwoHJC.snnHLDArcdSQEXPy1YTWQFlqm717iOkPPAy3LkqHCGNbk.oYZjQPIbUpLQrPjJMMwEohhVTXXo4BTMjLDUhutqEEnjxvJSMt33st4FAugtl+19T1eo+w8Dc6KL2r+JOxVdc69U9O+O8Wcf0hklofEUmQ5ZxiaB.mRwypvoDRHgWdyK4EfLzIys4SK+diywXUG1.DQ0rwq50SUWFeeS40nwrdexu7w27M8mb7QUCgQ+AFOnclvrLEq8DG9d25qYiO9N16LUQJjGyXPTNpnmfBZFlW.ek+k4MOvW64V8+5CV6unQTlHxzYMuK40+qmoale4umFtu0scd9AAzfw61PHdHzEh0g54kc8u1Ym8dIUp9nV0AGLJO2t.vfiNFz+pMKrfzAD1YHpf0DsfNW51Ou1pulu3d6O0WDWzbHye.7pEQay+PumGOLbAsy9+7qe5iQMtdZrspvwph6ZFCmphHBNZtBZkKiPPASP0YDdUD8h1WVIjPB+.jRJm9DAkgcnpv3CPpAFPQKZDYXUQavSt1zWx4lV8AinFvKaDYWtSZGeuom1uy20O0r2OuWu6OEz+sbSolnTwFkJMrozaXKg+s+b884tz+fG+c+bSyEiM0Wbc+l+ye0UtBZbjO2iAaBpTBurW+dzMtsspO4Aq5k8P6oQfFXDY3nV0o..kIvLNSJCVbLlBzVl.R9pq0NbvAiJSIINpEw0pw3AnUHGfpLjnkKig.TVhcsmaBXhkbIn.CZBBFkpLiLD84JvfxT4GTlGDXTWkJHLzvtxkwPe4MzGv9p5JsjiwrfIadh.jJLAiyMHkNm6WHeZKGZtLezO32I28+Xg2RcWJkTc+rK+8+k+F02K1b2ZvriICAZIlo5dDxOE.rVxaC5CFsXEcpgGZI0CSbDMV568LU2iTH+fFXXG.iO.DxwrcSuwe9BtAYHoRT4xXDJBAkbJhToBxhNgXrPO.HfIkhTPFlwVr47BCHSM.5dO3bgaxkM0e+uwq3AVyM9368YltwlbOydu4G7c8qb+880u48jK.chgIb78MuLPtTJS.IhORHgDNa7R9TvJ2RKXwSgRJTRKUJ9y3ne0pw6yFRoC7Sza3ketQKLybj1ZA0IdB1HDCMMCkNS2wqZln8izQdzwXvH.FFU+jrJc.xprWmO623+K+4Oz683ypcp1zVy4bku+7e8O09N94LZzQ16elakumUF0WPdC+n.mWJYUKiJptfgn50COwtaumWGKFl69nOWezm6Gc48aYMKyLYmddgRX3BTSEOMSlKusZohvs1qmFq78Qz4WlFod8DI8Rj5N1BnyMi3iaiWGt7aC14tHrBhSOYjOZk9.RPPAgpy7uYquLgDR3GFnzh0CvPApqooZXPDB.xx9zBiNpAvBCA0qaS2leye1oDEZMdlvFGCe5pK59Y5wtR9sMv6ite0WxIKP5m6HtULX6yLwe9lu5.8m1ai25geWq8mkZGBzW4McKgaipQc8+Ba07GLZZ9lQo1yW00Q9+J8ZYeFUwDDfJTDAUas5+64PKQ.Qk.uibhCZKvflg.WbpSEyvnZy68K.LzPDITjgBz3Im2J0iBPWZQoGGY6SFYjYACTg.lXooRzhzWPdyRKr+0PEYdpHf5FmaPJQIX4MDN3Bo4Aaj4u8aN8ayXQUuNDy5tpe007S2asU+Fn1XBthrwTkqHl9xe2trUOllkOldczgk7cXG75yKAkqr36aAJYJzLhKKdtm+fQshR+Gi9b2CY0wXtv+NNfNJibp2euxDBkFbwTPqLAwN4UyZWgxCKiVbLFfUosb.fXFJZngvsoYdrPVmTmMjVNuUIetTTSYgYZKbOi8gN5s7TqZ1AvP4.4eri5B0xpMS0tjnumPBIbF7R9HfLrzxYpN62iaXH7PGB+crChpB164NqK2zVI7F+UWHyrVlKJd8+cp3rXbg3NgGgdytvjeS24u92aiwDIh3dGRDEKXmbPfyqCKib31uga8IupGdR8Wd5HKxp68N66Kb624bfYkLX84+1iJroam6giaLP5W45MdYVtoinmYFPjr0O58rrPya+.tAP3m38jZxAmLrzfv4tIfLMLxQUI5agWDpHKqmut5gTeUzX.vU4qhxGbTyFOuAcxgQw4TT0vyAO48f9j2FgDmpEK8hRqASher7wowfHrTmUIgDR3GZYot.UIAPKiJvPReCrOc4bbyQ6cdczcjWYm+yoHa6d0NQTiEbrPDBPHtZSqdql4Xbz1F3xbM3xjUto8aRyiGsK1oM+.qyirorbAd0W1Z6vUlJ5fuGBmARAnU.23Ux4eeewrBb6YJMdkvaevrQ+rfjGfp4sjuCMe00JcjGsBnvn5n6..jBLpLVPkvBiNp4FqLrNJEEgRfhq.XyMN9.jsVIspVJDPBXHoLBiGjyNvnjBf8dm8K5VGLRJMnaULgdB5fp.UHmlu5flnUgv5CHnxPjuu7juUTTxWMhpw0PRPkJLTPNWAfmXzwMsOE.ADGehUoLvTd09Zyzwey2538t+Cq+RyGJpzYa06708K9..3y9UXCTp3FgMbksGvjtJ6a6yWIe.vj1m.37NY5hoTByTAXfAYzAFgUwmTUFlJUPB5KuoZ97.Uh9qXDcpJipDL.YqNnT8iEeO9XQW4nLUfwy4EjC38c+BOXkn.PY.zJ.CMLgAw8MKIOkryONxDEKExvhJCgU00FxCOU3aeKK6tFeeGsTC2BnGexel4t2x6XC2zG5HsGT18qTYnvi9uTQF9P4MDjDk8DRHgW9hcwFnTAxTd2wtmR97z1HEwKOqoMBTagQTuBindjSSgpB4JlBN0lAU4cmKkd3bc7M9ut5ANuNji3KDR1tq2y6+ydoab254jW01BT0RQ0DnA1O1mdEcpZ9Up6I+4u079CmRPwlVMW10rs9Njtp9+lwNgUQEyt0bozCjuM8abo87Gccc85WlEkNWiJWvf+Y8eDsq9UMc+27cjFUEJLhG4zTckSWt3+Flz38Sb3t2ntL5WSuD2Z4TJF+S59UEdIuvyDRHgWPzr+QzrmPfZKSbyAT0BdehxqKq9W1eW64JOmbWTF4YWInYI1Znv5ozVaJczghMkhMqR5tUV2U75xuC70u4U10lWqritsn9FTwfZPTDe0NvqdvbGV6.sn4n6Je253uxM9JuP6mJaJTig5aZibw5tyk5UtQtXqAEOqCaZEyxTr8drU9a8Dq4BeXsS11apsuy6diYN2zrsNLno.ELJ9YUYEq8OruGW6N2g0N5W0zrshsAHwNYXgLpd0cpO2VV9gtmMuJ8adkcs7NjOtXPYoadocrx9Krt6Uyla2ZJVRO7Xjh3os5+GsbwqVMtuxAK0Usr56q+z5W9xVl9U17q30rI6mtMAEIkJqru466anaH2t0k2upoKWFqVN2x0G7R66JtX6elmfBlY587o+aV6O8FWCWjs00Q7Trcpjtmi206+Sr79ui9SOxmYiYzcjusMzE2XVOb.N7RqjtSk1WysRflhBpWtb6N0hm6McyJ8dys7879Nmd6NM61Hnhs40.w2gzsROW663B+m0NuvGV6Lup9TLdbilu9UpewKZManK4oy.JYWsJq+J966eOZua3A0dJnZbuJI+N7yuK0+GH+ldBIjPB+m.7gSNA7hEw6jSFu4fHApMWYMUqt16ZnXaMsiQehEgv67Mt7tzu4U1k9ktnUbAcK+Ic4iRprp4B1xu3kcLcYaV01KLh5AayGPzcmKkN0U2odvKuWcjK67dW+n9+Ls2bPN4ULvN5e+55trioKaiplImlK0e2tx2lpWcm5sm6bdSuBuOvxrnjcMp2q58dC8eDsqMpZl76R8WrIRcZBPtzMn8jH.IgDR36AmlstplVhPVbh5kys7o9IVS9KqCyIVFn9wQO0g0nwadMmLbaJ9cqrgs7p2slK0I9JWxpeMmm8S0qunoMn.gFrND+Ha9e7qouipcmWy6qOR9UpemW4E+icko9BsYQ8Ebc0Nu8ro42xWPaJ.QwOqCyxTL8pjsWU5879SXCapuzVB6xh1Yr.jHvDQl1iHSWJcrlFs+V9DW5EpZmaT0LnEMi7Y1XF8XW1xzm4Gc05g17pthblOXJCZFeTeObhfZ8WT.hhWaJ1NT5YKuZPM4yq9EYDuVMtPUItoB1xpaI19caY4CAPuw...H.jDQAQksEKhmduaIq9m1eueqO7FekapWyLY.Eu1TYSa4uH2AzMjW0tKnZKKwck58doW50b4de9zVTAeGsm4mgz9eB.mAQMXUgTgHcn30sRprJo8+DW9JYSsYP6xGWp354HDalF30ohsaEYEyvJ+eroBindnpTLfT5Geysq2wk26qoOyGdYoPyHnd9n3KJd1HLYiul6sFUV0EUt+6P6ciplofNhWrP0795Cegcp+o826UrV4OrcPwqaUV94E101+bW4Eo5JhEusMeTUJnijLdSBIjvYvKWx++F.RqpgnTIbUpfL3fjZqaEeUQHG5DiS3p.cretOT5CQo40XeTODsnVtL1O6sr7E3AdtT+zez88ZO3z5uzIZ.RGK+uquuv88U7li5G8CbetUcMnJ6HRUjJSPJNVnT89p4wzQyeos21d7EvKrtvycjew5OxwSAPl64q3mcmSnWe9Nb68NmLCckJ5AmL5lpqfjxm1uh21+B.0dfulsi7i1pnAUpmXugIjPBO+rjNg9IWbhVcvbfw4Fj7Up539VP3XgFuk4qFKp0zzBpr3PDEwF6yQhIN0MEGz9rlIljTxxBMhfCUiasef3PAQVzlc6fNT5JRvC+17zTBfphbhYMeg4Wv7qEoVhbF.ScbQh3p0.2rfqgpSezeINv9e7FQVanhSgFQfAbPiELnpiP7l8e7O39m4K8rcuRHc9pkrWzaraKQYaGsV1bW0C8QevG086g.0CgvHDU.WTyACc0gnvPhTGG+Q9mome9q93WMlIXPUZVFchfaHpDILr1TTh4tuaLeX1mYWb61RA4LbUoszmQ+BiL4FO1y5ZOB.iEu0so+AIC5wAcJpXp0WVOZrfk5hW6dl5pBp3fZ74ot7AfLphenCEkPinggR3BJMpGQc26+AOhcOgNOcgHDwPDXTbNKgMbnNEwzNS+Yq9ve48shK7qPGCWtXHG7nt2w+WOb9G9Ib+NgMhWlsHGfZhSkWH1BjAjtNmQa+pnwZZ0rICxa16cdbCeyZMXJW8Mzl4tECHgy6zYl1N2idWuJ8HjNtVPNlCJILZou+8K1IjPBujkWNH.oUA2o.VQhq6gf.za7FoQm2YP34bcjkgQoRIuJTR4uri4UPJwnFFBCUlP9WuqUzF+Kjd+eq4VV0mnwedc.0K8I7tle5OhWCbcrGp+z+A+uZDPbmu89FZcoCxQ8GXS0hx+Ss5Sb7Gy03W8JWyS1su73sKJ5b0L6++1U8gOwtPq8peKMptcBqVZOlMstrgWyM9PW8yLmtw4LoU5r8+9y4lttCkJBWmiEEdiUtFUqLr.n8uUPaGAwZLjXytIjPBmclf.oUQSWtLlxnllVSqF.ZoVVM9ZRqbkYCe1zt5K.9hCRCHNrXrBVOvKEHFCtHvJNa8os28px5Zeyome1FNmSAqGXDLfSwZURYLldPGiUEKMIzZMViDWlyFTx.l1LNa5PLVP0TDUelrrfW6TGpOGDoK.owQJp6rl5N7w.VCFiKDVXVgElChhrG92689lm4Hzte986k9.9dL079ukepG9c8jOkdiNEpqBN6h8XVG.dVB8TEqV2yhCbFX1Qtqm7e3KsowKikhmRCBbQJSfbsWKt7zglg4kwgTS+sNbZRkw7MdhZWe7NGmwVhWayDlgHKnSPk3Ziv3DrQtHHa7cwMQ37AxBhmQw3At48vIYogWFZnF0YE0HPVWHYjFNaXiHwBNqngRJBEeWcDWc.WmG499.aU+wHctwK4QWV8gdl5aUZVl4QNwojBDeAm.ZD3V.LtCt1+3Q9Bm3nnM.YF5T.XSaHkxSztiGNZgkg2BVE7ITPbQQemG8s5dDxrFPHHm1+MMbR5WkPBIbV4kCBPVZwWGRy0uao6vq6qETCDXhgCQFVQF1Irc6vLXDkKoZPE828MuR39MoF7u9.iM67ZWNUpQ1t9uuoO4Muu1WGy+3+b+99kaVjm+Yb+dKj6oaTcfr5aYziGs9JOdT2efrmfHs94mU1YFOAyByo5jO8112O849Faux3thLhM+QaOZSW23ui6Y7n+151zNrojTW5UeyM7IL6pv8X2zVq+M9yvam2MlV4iaBIjPBOeTgb5jiNoTooczd2rSy3LpDOaZws8sMrszrazmyCdtm.N+etU7zi+622Fl5ZVe+qLk7rYgHbFj0b9e5K74l8b6OZ9t2nqV1dJ9oW9E9XOw8VEZ7Uebu5U+5WwG9HO7kupMeAdejroAwfgnPA2bNKnEXx3685EEUORanBDhGjpGkzKag1eu264l6AqmlO+a06KeYcu9UmhGeY1HxpQfykFoMHUOyGt520qnNp4Atnbo+M6qiU0aZ4fc64b9ZcHbdz5G8p87I6brdSOe6YbOvGepddzGN72PbPnyWwuKGq4h94W2SF0VtuvGM6CEkK8eaoyYsep2b2uhdxJOqk4EXA.W6gG+luQxQp9KgevhiYpRyne.TlgFhnpLiL896xdNCzgoqtaW3XgliNGETGXHMfOhQly1FtzfiJP97.o7szo0n.dd.puEoSP59Hc7i7n8Rv7d5tx28deKarmkacORGRjIMJB9pSZWbo5dV2k7ttzW4tboTEueq9aaU8HgOSWzPrLOPMzEN1+EcN5J6.3869OLi+wc7laF6Hb3ansK6p23u97Y4iFZwsfgO5yYW2a4Y5e9m9QZT2m5GAbcvIzpauZreGOvDQzkudNFY917E7EmP85VlY5WSsIh+crBLp4wtkhMFavASL5jDRHgyfWNH.I1pIi2ZIFQEAFZHnRo3ADCtgdau7ty4AnnpPwcDQ4gLALg768gVcVNVM6U+4er24yMut1ZNPQxvLG+OehyI8zUWW5YO3S+q9bucjv2N1v6h8U6ZF1bzWk2CT+IugtthtBtK6qp51f0EU+eLXc+ko73gSQCwTeFLSenuviLzkN2+O7iUO0e7iU66Lo6Vaf.oyZj0rwO8q3N9z+uMmO0lGBUD406sF6AOVr+zO6xwpmWyLG3TrLwDRHgDZRyzeZrAGzMzP3BFRcWK2sa.9jJJfVzbrcD3t92yJifYhV1O4ZlmKvqNSVO76T20QaFhrJFv.c1YV6LzV2Pp0.x09gClYhJCEMeopRs7yG9LcVKh17cqnCCVGjwCvZU770N.yTrJCs66XdMLrAQw2Q1Cwqsn1txu3VN+hW1rLPEJSE9IutyIZeW0Ft9t83D9DgwIfosiuh23A5u2W2scDT3ddMSn+5uk1m6idIc9Sl1g0m5.Qntn0pgjdgliw8k+lGa80NgloYhEA87J946eGO3WBfdCFzM71OT1sd0Ke92yaXCG+24Z5NuGxiCDh0CzFqc5oI0JAyjM674kWxXmCANzhlO3ncnqY8o0U7r.qE9522IZegFrLEOfLJ32vac4OT8CQzg+ZOCAAv92uuRWYBwYbNK0Zz.DrBl1mtyK4gd0oO20t.4PIy7x4cUV8+8kt12bGF44RgMRAA+1Zzya8ou399J21g7yueuJ+9qK8u9MthF+OVYl2VVqhOgMyAf5qQrj53f2pd8cznyLb6Xac0vNGYttIq83XKLHFJE2UyO+xznC6E0nq0SzJgnwXT2A2YAkQmHVPQpS38QtjUb31RwBdPHZDTug+yN12pyC8DniwnQ.z+sbzjnfjPBIbF7xAAHPrHjHhi7gWy+M9wFXU5jiNo7gu0MrPeCjUKWFKa+U4k+5wlib1xLo7gdSqP9P6bxM8vG18GVKBpqwY4rnJM2TEME.wolL0ASmHV0J99L4.bjSbA16DfKu6ZEe8K+s1VZ4ISKJ9FEqnVPkFJtHwCroP5pmuzF9qenORXb8qrP1cJZogv6Pq8PMFsxFMAkhWkI4IRrQ2DRHgmGFpjvPkj30fojDTtBAZEMe0c5kiRd2+deMdau51XzRUUJ8TJOvwiP7b8FINOQ7EAAiASpTRTFryCNX+TgR5tB1m426c1ubEzqoQi1bm3dOlwVW8SqBRD.QhW6cK.9yRNyw2+rJGSEslKTU.iGXr1Lq6hq214f6v+p+xoCxkyRa0r3ijxJSIHhhBNwe9Pbd8Deeuscs33UrB4sd98LSWsImvinF3bf5xpoQ5f8Ydz8Oc5+wIqs0HWqveqvgeja6wt91OxSuA6LiIWS8u3m9XG09iMwI7ugG5n2vc7bOQC7OeAOOZ.L+w+wCeZrG6HGwaFPnz+m16tO5357t.O92mm6KyL5EKKaIK+tcTjSZFk5rs2jFSegQgVfFZR4P4LpEZYaN.qBaZc4PSgBKK6czYW1RouvlBMfbWH4PCPYFnbNkdRRg1UR8kj1MZfzsRpM1oNNww1wVN1VxRZd4duO+1+3NircbJmVVvrM84SNSrkzn4k63yy84282yueOkV6vpBDJhNnZImkGY4KjY8uxJdetu7o6uVSYiIjAspCEw9McVZGqxVnQV+2VRHy4rzNVJgMTuAcpZFupQzB.dhx2ui3Leq0Mv6fFgnzUqbVWd5Xc+c6DmwgSC3nPCZmkksit6MfZUlRu8haGNWh9teUabgLNrT5RIqIJiIC.teyuo2iwpt+GdCq+OJJRPgBOb5Psve3AO4mZyO6iW5w6ZnaFu4qbprGrJ98cGjPk4nKlRnx7pgYSRkoKJ7wQgd85LqKC4zpFhfqBGjnDmFU+rCz2eGInR22R3V2+Uj+Itkk02e4GTB.osztDxEuqoWLuroQ1zkl8fItsD.xM3VEXY0gOXcmG5Iq+Nhjzjx2DhDDkPRCgDU5MiHoOtBX7.CjXTIKrR8yduG2zW2ijbeumWQLE6N9W3WY6m74+jW0MTX2d2.jVueoEonRS1NWsye5e4q+5d7C+N2xqhE6Ap8Jf3O7wQFIOl67.DMc3QZdpWjM9jmQgMKHVVVWJkRHOBkunKVQQjQaUSH4pd.omkxZ5J3ZjQFOzvmMmvN8E.7yIZTsNOgVAfiST50T+DrCIeowcCpBqOae5x+wy5sicDE2c+cFk0f3BoEit.XRzKddTaggU8zsSZkenQ2dDSDul0O+yk4YeT3+xuauMet+AWOHQiNIJIFOWTnQCJ2HuUpm04MfTDziVAGV.1xFjFYTpEUpz5BAzhYEzKRhbsCzWxYpyaNskUoPgVgPSLwd.JMJwX.CNDiNNJMuAHZDnIjzrYt3k0.zEHLNxbLkJsFZTRv6Gcs.T0XvzwjOCvUmMtuN8qGIPBdRB9BhexpG6qu9df39FY4jkN55b5j90r9tUDIJEnzsSJgR63z+MrxJ2D5u8xCjIX29FNsuKaFzZ5.LBnP4pWWltpqLKg5L7Ol94aW9trsblbdpEcVqkCnRjHTcdcWW7MTZmM9EeKa7T2R9L+3ZkfhFhGQZU7pcu3z+Pm4I+I6p9B+Ru52xV2BTaJxrRwg0ahQDFsRxnTIciebSHzgi7ke9k2nVQhRQ5mOMiQ0vuV06jD3NcAveO6wddIKKqKyOnE.xkIjwAR2AY+fLnYzhgs1gbO.2Vvclbzi54N3f8xb+m1Y3xehqcc+EkwEILmPhF9w5AIQWP9BdHgt.NkKie4x3AFERSM67a8XWSos1bwuxCoA3QqYh+FqXTze1jG5tttuc8eq7Y9.+xauiGSB7ym7WlYmO5419.+1evmckMQ7o+XOjoJkRpnTl01IfkPc9gmyc5RX7OBF0JHHI1rfXYY8c13JAkRJCZEkDUqkr4sk8dTSDb.ts+16TlVcKIkXJMu+pFFNmvob8X8dnzoswbDCJeuH5B7AGOP5ejBlpAvmaokRV+uvtqeG2+ocXy0ShZmvhzhLf3yUOoyDhNA8KryNUzmqV6qcRK5ZWvQ644zoZfcg5SejHk6s1kls1glFfwHIBo+GJ70WaVC6CNb0CnKVjDVMQwYbbcRSHc6FMbhtyVAb8kWD2DkiuBQSVRv0f1wGeWPoTl0pkiDv0SKdNh3fBcjBmZPljOWtWeWqTuu9hlVoRDJoFlQjQACghtV.plG5PpbbXY2.brFZpGqOcmhehBhR6qUJ7bxkay21hK973d7Cf2V1QF4jOeMeVoQF7DeuLZm0lotXRDy47.3A9vO2pz4SGwloAYc7TdJS5E.CvwyfKJkOMuZdyQmq9oMbccFQtHeWG7DAHQgHhn7PZ9Ln+y4CKytu9V9u4uZ2OZ4e1MrityFeVO04wiyiOwJmnXgycp6u5Uuoyej+f+v8vQH6gasLlGaLbQFGd+AZNQcmW6553rQIoOOpVEyuDsTqF+xDISWBS+XyRukk0k666C.4h2mK9myuaIJnuKNkpB4kJjuUvGkTUCFKtDEz6Hm18bKGqni9ZxQcZbhtFxMsydnD3gaRITvHooZVBUCVLPOXw.cZO0WoXlRISWBSzYNopB4kyU+zl0u2NqS+zbtcEGcqes4Uu2O5y132+9OsSN9fh5kSsju3Tp9fjWw64ViSegFptyCP7sLNw.LewJwLtxz2rW5NL6NkKOqHVVVVvkmczCyg0CCb34poJVIutLE0iyTIUZeG1mqolNwS4zZh8ZmDIJVqZhTGL0qTQ+tVXZInJL9vyE8mSWxW403Iz2FQIhJgV6jRsZPetqGYKrfBbEzJWsK5zfEtvv20beAikqUWXN4.fA+dqqGvAUsfduv3c0Dkds1MRq1kaiV+J8qDshySZqGFzNqr8OzxabWe0U5M3wh8o0ENBinyGUOWO+Du+MjOtQlg9LqjcuesS20K+Kb3etkZPxtSydN.TrUCGoPozWu8rzdLCxflC8PGSXaYLzYmrbMieZZwMjPBf3JNmvqSGz8N1LwOFKXtpMlyfxSShQqTqM9c6vnva2sdOLZnvYOeBaPTNZzWTOOTnNzwlwLMijd9fUWIsqdoakypzGXOc2XzqCYgJ8q+81wNZdzN6M9V22lpcx6YOW6xe5an2A5R8Q8zw3SSkiw.wht1T+desy7A9KtVOvkhhZhIHAJj9YzOgm4jMi8UsNtDShF.kd8wElDMg.kPldTal4srrtbeee.H+KgQZ8mEnjFJofRR4JJMUWVU8S+b50+pbaR.QiL075Wys1i4S8wBLgEwmKZYPMcozqxS6VwXVpopRfSgolRWnzT5mtzczf67y5rbSe4T6HJlgmO95Gc93G9goohPx7nOcxfLnoupjz2cLxJmrRE2CW8.5hTZsjnm9+G2fZ705jWpksCtaYY8OsKbgZFM8aTBEUGiAGNmL3v4trwPNzCsX54F7.c6IdGm3XZ1PvPyXH5pKVLhQEpbiCZPoXSrI4VeRfyFqLZtPiAWo.eGUymo84aZnIiQ6hjNQZo8EHuCZ5f9XQWmzruFoSl1r1lpJpuSWekNbDVM5RuJ6s5IG8fi54uQOSjF+F.FZ.NIcuvC+NuQuAvqVVTEIzatQKnJNpxKW0CHC8as0UluDwO4GbpjdOKM58FnwUuChZOFuhwEEiKfRZeE9qFTJARaQsmatFZNabx1x3tjKfGIhPcAcTrz64cLqG0Jf9W8NlWuIVtAFIlXuzwyEPobTnTHZkN5HnJxnZjwgd61gmSkVmHxZm7QAvINBRHJ0xMSW5bMWw8RN2t34FoWF25qmj4qLbR9RUT6XGYh3cOvJbyYqQzy23aL9086r7WZuCbsaU8q5ScHIBRzdK+Eef67zOOdAkQqThPkoExVSw4SReIno0GVpH7yzHyUcam6H6F2cwc3ycditWxR+yxxxpkWxD.x+bxDhRgAlt0sRxzTZsAJmaNTyc3ZpfWS1Zys0ZwpfaKY5oBaBPvb0TkJRhTFEiqR+8FWInFW.nNomPuJ.iThi8wpklR5CTMl4mO4vUpZTDBgsOSx3dugCTzr4ash6LApjAYTy5JVLwK3Vcezih+PG5s6k9VLTOYHtgg3BP0ZnjtrY8vxx56ccEbMR.cI.rPw4MedNrFfQKFJO4Po2GGbaFIslNuj.m+7cWeAZxC.SumC4b1.zehAt8rAAhaEJaF5VA5ugVqak0Dfz4Hmkjch5Y4QALJhDkiqVqDZcGEvyinyitu87yqaRWFN9pF5RTZsRmbQCs2borI.zO8aJVDgUSTjALRqI5JBDmHJ+zKNizsirsMou2FJAkiHfgleiu56N4wP27KfJegRlgYSxckGyfAedS0+y+w4JTB8t18HtSeuHKeinZG7QKsqbkzqvOj.kDFshCO1J50u9nXNZb7dzdqlyUcBGhTNRCEp5Xpe3bQftOP+zuohQUA3rRLq1H1MsmjgAC3n03s5k9AVVGAinHAiS6g8ShMjE57wvLbETCNbNgyB9MhMRRqWyZEJkVahP2EnKbWindaqds4XpExVYtELumiuZ7Gqqrlddkzjlh+e4929m1UmbrzJSTf3F6TeZ7WDzDh5.e9VeXrmMvJdPSizcZlrTdnHCCzE84ituRylTbhAMEYzWxLOCKKq+kicfgKQIAJIBJ0H.KL27lpCmSdWS0uInZImfpkbNPoi6cfJm0cNx6TpBNkKitcfGol1.oAg74YPyxUOn5Im3q0ZwQIL5nXFcTDFsR593QvAbAIpH4k2xMSxgdng75szWNS+Lk4fui+FOmu.R6h3apvw001vPoAyHB65lPKcZC.wxx56NEIeqINWBnDU4BctoCP0DBunwS77Lc0gzHwHYzJPEmHxycz27S8l9ge0aa6rZgssmjG4z3L8B+120yzEYJ.N2zQ6SSMkmqiV+hs0n5v5DH2K3mj.X.2kT.DwqQ87rbBMzBZkHpKLe+1VbqosE10VNPqpuvDtEMXDIpARSFTerexLlQxm6K1J8EJUTrQN8Yt8m5st0m6I+u+qukO6xoum6e375duyJZ95mbqewd2RYu2J9AuAzc0UZgmy3pztctzZCITjzlyU5MJWjD18ti+V+lmTwyrhoXW8rXVWVxgHzTChq6YVY4tkmgLdfPwxoude1kfZNIMhMo46QkHsKah1KAqpD3PGNBmJNIIhjzrAkF8Viyk0j6rHEABpBbVfyhr1wC.DwU2IlZfy8LxYy7x9oxttW0XOw66seSy+A9L49Dpe4a8sGQ+zjyFU6t+SO10Jv1AC34hRm30XQbiZ0AvFar.X390Tqg9+y4Z3rzpRGFQkVR9c5uXmuxstRzVQUkAM.7Zen+Q6dVkkk0k4kPAfTPCEzeulIj1mIgzsH8VK8p.m9GNudggQtwQqoXjRTK.UsCOm5.kFqduCehFCOXNoz6OPFrXfVDTxEswTEP0jarxflJjWpdiiEy7kha023UDVvgxEUTtXLkP31FKgPPw3YGoDl8rSeYhh8F+tpbKxYdf2y4e5iPy4gnYKm2ajcuKW.FdXj7fW8Weq8ADkyKg9bzxx5eEzZF7kZ8ko0vvgmql5EdexWA2itmdLze8DxXhTZ0yHB3Prhn5h4ol4S8EukLQeoo6twC7LaqVSYkeyZa83YO1gNjy42wpZpk4RGOp0yr24vzGmHApIjSatPHEFvDKvp3saLdjHGtRUCq3mPGJIQeQgenMnLXhNBp1uGReHzIMEIwzZnewjHtFh8AyYo2jeieiq5auiMqtWmDHCIZcbCnYsXN4evg+Gplo4ai+p52vaa9FG3.TiSex4klQ+TO0uyu3M+r4ve5QdgKgnRpKbC.TBgpolC0gtki47x9QGnAe45QzEM1Qmp6yyQgKwfzDodsLpMltyhSkQ0AzkvV7ZkoBHI8cjBSrAcyzOOnRq2mm0fQmXDwD29HRRB5EIo1wQwngBGtpgm2yfDmDqak4pzsaxFlygNGjrsS2kdxO+Y274VUd2lF7de5ez2XMb+.I5W97Mx7S+sN8+qCl7fwJZltudrJhu2SjaaDskVK2q4NbMErrlskw7rKWOWZ+r2A7yAcugGp2e1r0AXWk5vqXkJ7Zt0drKAKKKqKyKgl3Z6kR0+rI.phs9hgY9jhEQn7bQKToeMUli9KNro8I8RGD9xkFGCFJlWZ0u3UkA0mmCnAkgg2jvbs1MfqLpl4Wquxu5nixZWonuzeBthpjhwQPoX37vTs9YEKZq6CKKqu6oTHoK4zKTfy.zdIg1tK6Eb63zewQLWCcIzUFCaJW895j+XsFxnDzwMg3lBHFEtpDxH31kJ20rUW+8rGuGlNLjqgoQhQZuCvhwPxYqkrRBlZbV0h3YHQ2nVhjtOffALIRzJ0S7mCyRrizRJHqiPVcRhl16XgboMToRW38wlbLMasDlPRf3njDSZsqTBhwIa8Rux998VmqZgtUlDepgxrpqhlJgXQThaZZGzNXTJkqOlm3q7tx3f+tJgeqLCs1yWP0s5bwGeqTdb0HCirG4Iit+6ed8gpj0vysnY6az4X.nHAThXNySbUNMv0CD9SZkYfZ9Nj4hKZeAvnT0qa7qfLNRZ.Y.XhRhUzpmfYPjXQsLl4GmjJLuhJ.m3bFx3jDCXT.IIHMhUprzXQPd5mtg9S9PKbUm9jlM5K.wQBFhE7nonkUSHptn7IqKR7J3uk89oZ1Awm.DgwY9itjywAvqg9fmNdaNZEfOjnvYSC9kLJTdfr6R2QL.Yq7hetRKKqev122G.hRg4E612CO.ooPOknFkDBplnFkDkBCJkLewgilu3vQSCInTxniRxvEmOlfpIATMQovnPYZ0FBSetUiaXbkATxnnLGf6LFPwnULL9zInF2vnURnhJoUQkS4xDyv8aX39M+9OLMTLto847pL+7IceG8kr7Vdx3JUPMeIhy9EHQcDL11vqkk02MTok4rAfMwE1+iFahzNp2hekGRub0QT2KaRX0NLLfesouicc+cjU8sU.ZDkVLJEnMjnPoTJO7oenIGR+4XoD78aTqtzzHsxIrXfjUD+DL4p9FjdHJgNzMWotoQZeSJQDogQc9usYkNItelxTD.y4LzvzrQBwFDLXDLMEm5jz4JsFms5xJ5CHtgw3fxfjVCHQ0RLdDsHHPI3lSp8lek8+bGcWCLruV8zNDilln0QnbLJQAFTBJmzM.jlMP7x7HpWMReb7WzySFvmcsfPlaNTTDQoPcGOcXy8vqHlcpk64MMvWsytYUkBvXTIKcpazz.8o+Z3Q2GJlpKqXUih9bxd8ncD..zfGIQTPTQZnHoUk2CzDLKcoiqu0sBZunlfIQABIfDap0ZoVUrPYEUBEtZsvF7aVGwj.oAzDUKxjPTOTU4FDE+UNT8eXgzs1EWLJkHZTZP4pvMiGN9fXPuws9Nt5G3C++t4xzb2LULTPW78d0xVIRgSN8gWN5pMFgXbLpr4jt9Qdme4DOhNdUXZ0sXJBL7fWdSNvxxx566C.4eMbYAvbg04qbw2muKC1Q9Nb6RuSqsrwtrL4H.RwhHATMoXQjQGkDFWYd5Gq09.hkkk02KTJohpRxby0Z7iVUB9SdlaMBfJjWvOJls1LlaJS7w93W2qcWaV+q34hIMQCFDRDbVA5Hy8s4amF8viqxwqUXi4ZdxyaTtYTsVRQFXomqwBSeJ.3TzUR8iWOZ4ZRci.hxnHotIdokWlRvzpao07v8LKuhaR8DRRKB8DEpHyJqdDfz8voo9Fm1gqxQv0MtIniaORZTr3bJLc.IGozQbQMS7e2i77BQYN+yN7l16u6M16N6zmi0pP4aOFpCZGveCu0c8Ve9b4e3G++wV18Qar3g9qRVa2OuzKdM2M93jnTHDJhJrDixbNbydlM8yzSiqdmN+2DMoYlod8c.f+U0N.J3nGtlgt8qUqdqLfKwHMWMJ5TyXHOvnnmaNTTewD1re7pBRT5mYfogVe3iGOYATrPEMLrhOmiPWMSZBwsy.BKsjwSQsZjM4W5QOi4I9Sdk+5m8Srqd6qa0uumFDh.wjlDHEn1v5+ixenmXi63oe7+5bahFCrChmtx8JTcYESsfKK1QFN3xdmpQxfMMHFuNzrtcdea9c85OVWalUNweK0KSQEev.Mevp1KPlkkk0KojW7WWdYCJue7SoceSm7kuSoWFRxfHWXsIeQ0DS6+tHErEEnkk0ZZW+ZDJ5fYDOjvzwJdj8kS96C5Qdj7aPlInmO2cOPmiQfGHJBE8V9LRG68wkNu1E9e1809Meyc2eXwtJOade4AGZcm6ijeCxDAdHhpfHtCcvClofLo6SIExJx91fr3MsQY179DJ5fIDu9KHcQnnIslJzx9GJi71GZcxcOPmBgZBDude+ROa+Qjb4mU7KLYAWY179e6IFrG4Crydk24tVuT.27yJ92vYk0+xeZo2.Q5nfHt.dhfdhwvS1+PYjvgV249OtydkYB7JLYA2PAMhnHP7nn3jO+r9Hg5.IvK+r48CCwUHrUAlDpKLYA2hRwKYYXQ4hNEEwo0yGxirubx4u4Ad+uydFoCWDzNhZfAiV+69S951qHcRgIcu6AnSYx7cIm+GZSO0r427rR5widCNSOLl3UXRwc6+JejbhfdlvszgbW46Rt6A5TlIvan64AyLz8HYFZ+Rl8OjjQJHtBkcjIB7j+9fdV5CeM8ISD3Qnn2qHcNjHqaKSLVeCcv2XlYj.uG+cLPmx89x6UJmuqICwkPQiHpA9PenNuA4rqevybld5+tJ2EEEm7kSOd7gt6A5T9lWa2xA+20+23+5Nt5skUchb3Hz01aj6s+Yto8dBoyfYDuxHN2CCkQHTKk4RONYYYYgMCHVVVV+.uzklEv3HU+aIo.inKAfeTLc50jNbaL2WsVxO1Oy1ad.pFCJEes83s0sRzYN360zasRw2z5OhYjRTazqe9nG89pG0SW4Nu5NqFwHS4rbUTaaOGKYZlxb+ysf4A9ZmN9qutF0qNbNg+r2iW0iSxBivpLNR6R4fM3KLTTS5Jss6Rs4Ta4miZMdfobxUO8NM0ishdvda1DkqgqumnCbsnX94vc8zTsSZVChO1CsGGQJHkt+c4emughlJutmL9nqqdTOaRUi6DdW2xljwUHriQyxsQB8di5hEudyL7Ycd2ScZmxCCkFFgxiu1dwz6ZgokhUpbgCfghtPwxpCWE8xUQgDp+jmeUMcEm767gF5It9q08WyQmfrz4bWZ5+5Wl2wQJL0HbymrX8OdoEfYVb0cOb+ma9JymvTSoeOU687AUgomByU+QeuQ.Db6aMh9WIlWe2wk9Fm1YaumbIK9DU7545w7wdRh9nS+d8fOthqoKYpYOsp6eltWk.fwUNdPyy+0+6R10XugUfakaTUM9S92eR3jKU6nGcojCdhzVJOpQ8dYuu2Win4d73d6sVzBKTrFUvL+bCGSk4UuuO71axh8nX9Zd+V+kO2Oz4ZHatFdFUO87mssva+HqtYhG7Fw744.5svqHVw3FUQwlADKKKqWRwlADKKq+0Pq1LqHnmQB7DofaqwMz.TtLNEkhNEkhNSHAd+oet81Y38rg0kNVSqweDQQ9P+Bh3hDllgAITOz9IyDRf2DRf2P6m1iWo.TkQbBof6DigmTFGYl.uYKm2OM6ChZWgOU17kE+Bh3FJnO3CNTFo0se927F6NLD2Bh31eXXW4EwufTvMb179yJ48eG28.cFLyDdTtnSXHoOGEDWIXFuxHsJ9iPcQonyLRf2c+gFnyIB2RGg22txJB5xkw4Big9B51hsxxSAQbG5d1elhRQGQB7D4U2sH6aC+A+ZCL755QcTx1gn1vt9L67CbtdClP7.QKjlsoxoYJvEfwXBu2H6OS6iYHhZrwva+uQxHkwIb179EjBtaub4bAyHdfnJRdeoLNgiskNDoP1zasdMNz9yTPD27RY+gtm8mARyniLSf2CdOCkQJiiPnNjBt.pgN3AyrkiMSGoYjZLOBlvqnTzYx6aWYkIug0Kej8rs81m52UiigbaHpy+8+168ZNlz2P6WxLFS3MCAdkKZy7gkkk0KMYC.wxx5JMQTgB5PAcgPbSGSoniHnCAMTzADEkEGJKNL4jtHhJH.OZE.S6e+1OjkKiSqIfq.bBa831dR+6ismiVcM81Szmvzfhtuvcks7r48EAMkK5z9mmubne6fIdvCNTlYjfzm+VKyK.JleV+GbnClY17k8AQSvDdAyLgW3SsqrgO0txJRqkZUq2yqMFZYbZsr0tPvVEReeVTJ5TtUPOhD3ISluK4zup0su849pvEgL4D1yOxqaKeFo0D7wCITSw79j1N20kQbDRCF5hBRixTzQHTGLAdARfWdorefHdLz9yzNPFQJ3NiD3058aGoaLJRq.3dmYClYBuzWxnCBnixkwoH48KSdeghNRYbPB0CcO6OCgR5wKIL8yhiEzg72bCq+8Mb1WS2ZDzYDmf2xsL3Yjd1qHcRf3IAy3MyDAdWo9miVVVVVWoYC.wxx5ktVK.kKax9kK6PXnNLDsHnZUCGZlXFuhh3zNfmwFCuIkBtxjEbaUKBcr1igjNYeAQGxjtPnKuwgxDHAd6+AGJyDRfWvD3QXA2BxjtEjBWHnHB0qUSHse7.eHcL1G7fCkYVIMiDRYbjmpP1G7AGZcW0UwqCMB45oQWu2i0WZ1gDUvLhWZlLfxHNoYjAm8sOxkF.TnlVYHZuLPmElrfafD30yO6qs2z2uoAHDvV5PJmF.W4x3zttNfPWnP1zroDtVfcs+ZgP8XD3MwX3MYHtggzptXR+4TtniHEbk6aWq+ICGbSapC0b9JD13U81G7amF7wtDIaHhV3EuP8srrrrdoBa.HVVVV++jBEvkxEWaR7kmMue6LCfDpSKL+I7Bj.u1Y+HMCEoiy1Z7UEfZLB7jYB7J+Q1dtIuuckcLlvSPzhTvUdj8k6gC29F5uWds32k3j+V9Q19G4Yx0doQUPlzEHSHEbasjvTzJ6HAyLgGElzc17h+r4K6KB5BSlFXDiE3EFhqboAFoR+8DOJdWc0NKFsO2fHnKTfz.RJdg.XlQB7JOad+0xnDnYr.OJWzYhvszg7Ixuge3gbtcOWD5L66X6OijaehjaWhjcf69t67hN2ikkkk0KYYC.wxxx5eQIBJQHcaOoU29JXlzkl0Es7qzBxZiqRqZ2HrHoY8PRCD4BAffVBy6exv7cI6enLr88d8rmW8qK+rheZ1ORe7AHMHBQml0BfvBq0gpJleV+Plz8M9FISgIK31NyHWHvnhNkoX5RYSB0CcOOXlfYDucE9Nylddgw7.TuvLffDpCEzkmMue6Z94hVRbTXxzk6lbuu7d22U4b6c2Ou5sbrI5n+vvtJHha9Ym0+J9GTVVVVV+aDa.HVVVV+aE0K3umVH8spmkKZB7J.8jg3JSD3kViEo0xR6kB1Z2dwereAjKYbc3Bise420W7G6Wr6+Kr.6eg+7xkwYxPbkYRqolvYy6290y+jGkrrrrrdIFa.HVVVV++SRKV71YX3BARboe+05JXxk7yun+T+h+8uzw1+N878c54+616+K3qu3yinDA8SIEx9HOy9xIg1V4ukkk0O3wF.hkkkkkkkk02mwd0KrrrrrrrrrrrthwF.hkkkkkkkkkk0UL1.PrrrrrrrrrrrthwF.hkkkkkkkkkk0UL1.PrrrrrrrrrrrthwF.hkkkkkkkkkk0UL1.PrrrrrrrrrrrthwF.hkkkkkkkkkk0UL1.PrrrrrrrrrrrthwF.hkkkkkkkkkk0UL1.PrrrrrrrrrrrthwF.hkkkkkkkkkk0UL+eItgKrMMD8Ry.....jTQNQjqBAlf" ],
									"embed" : 1,
									"forceaspect" : 1,
									"id" : "obj-10",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 17.0, 36.0, 218.0, 152.599999999999994 ],
									"pic" : "Macintosh HD:/Users/stefanodemo/Documents/GitHub/SDT/MaxPackage/media/friedlander.png"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.0, 7.0, 571.0, 22.0 ],
									"text" : "[sdt.explosion~] simulates a supersonic shock wave. "
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 8,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 242.0, 58.0, 498.0, 131.0 ],
									"style" : "SDT-comments",
									"text" : "The Friedlander waveform approximates the pressure change caused by an exploding point source emitting a spherical shock wave: the explosion instantly blows away all the air surrounding the object, generating a sudden increase in pressure (initial peak) and leaving a vacuum behind (negative tail). Finally, the air slowly fills the empty space, generating a blast wind and restoring atmospheric pressure. Turbulence caused by the blast wind is rendered by bandpass filtered white noise, modulated in amplitude by the Friedlander waveform as the wind intensity loosely follows the profile of the initial shock wave"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"source" : [ "obj-3", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "SDT-comments",
								"default" : 								{
									"fontsize" : [ 13.0 ],
									"fontname" : [ "Lato" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "SDT_package",
								"default" : 								{
									"fontname" : [ "Lato" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "SDTpackage",
								"default" : 								{
									"fontsize" : [ 12.0 ],
									"fontname" : [ "Lato" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 454.75, 23.0, 142.0, 40.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"fontname" : "Lato",
						"fontsize" : 13.0,
						"globalpatchername" : "",
						"style" : "SDT-comments",
						"tags" : ""
					}
,
					"style" : "SDT-comments",
					"text" : "p parameters_explanation"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-61",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 316.25, 400.65486725663709, 65.0, 21.0 ],
					"text" : "blast wind"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-60",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 39.5, 400.65486725663709, 65.0, 21.0 ],
					"text" : "blast wave"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-47",
					"maxclass" : "flonum",
					"maximum" : 10.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 336.5, 428.65486725663709, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 300.5, 458.15486725663709, 80.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 300.5, 428.65486725663709, 33.0, 23.0 ],
					"text" : "*~ 0."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-46",
					"maxclass" : "flonum",
					"maximum" : 10.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 61.0, 427.65486725663709, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 24.5, 458.15486725663709, 80.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 24.5, 428.65486725663709, 33.0, 23.0 ],
					"text" : "*~ 0."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontface" : 1,
					"hidden" : 1,
					"id" : "obj-59",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 583.0, 185.0, 157.0, 26.0 ],
					"style" : "SDT-comments",
					"textcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"textjustification" : 1,
					"varname" : "bubble"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-51",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 466.5625, 368.75, 57.0, 21.0 ],
					"text" : "press \"s\" "
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 11,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 50.0, 130.0, 47.0, 22.0 ],
									"text" : "sel 115"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 50.0, 100.0, 50.5, 22.0 ],
									"text" : "key"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-17",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 213.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 390.0, 343.5, 52.0, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p boom!"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-83",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 454.75, 343.5, 63.375, 26.0 ],
					"style" : "SDT-comments",
					"text" : "boom!",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-32",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 390.0, 334.5, 58.5, 58.5 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-27",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 553.5, 598.65486725663709, 219.0, 38.0 ],
					"style" : "SDT-comments",
					"text" : "- left (signal): Blast wave\n- right (signal): Blast wind"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-30",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 553.5, 580.15486725663709, 81.0, 22.0 ],
					"style" : "SDT-comments",
					"text" : "output:"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-26",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 484.0, 126.0, 83.5, 57.0 ],
					"style" : "SDT-comments",
					"text" : "blast wind speed (m/s)"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-25",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 390.0, 126.0, 83.5, 57.0 ],
					"style" : "SDT-comments",
					"text" : "blast wave speed (m/s)"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-24",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 201.0, 126.0, 76.0, 57.0 ],
					"style" : "SDT-comments",
					"text" : "amount of turbulence"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-21",
					"maxclass" : "flonum",
					"minimum" : 100.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 497.0, 185.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 497.0, 214.0, 84.0, 23.0 ],
					"text" : "windSpeed $1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-19",
					"maxclass" : "flonum",
					"minimum" : 340.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 398.5, 185.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 398.5, 214.0, 85.0, 23.0 ],
					"text" : "waveSpeed $1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-16",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 310.25, 185.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 310.25, 214.0, 69.0, 23.0 ],
					"text" : "distance $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 24.5, 214.0, 76.0, 23.0 ],
					"text" : "blastTime $1"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-1",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 281.0, 126.0, 102.5, 57.0 ],
					"style" : "SDT-comments",
					"text" : "distance from the listener (m)"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-14",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 215.0, 185.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 215.0, 214.0, 79.0, 23.0 ],
					"text" : "dispersion $1"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-9",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 553.5, 316.654867256637147, 337.0, 116.0 ],
					"style" : "SDT-comments",
					"text" : "- blastTime: duration of the initial pressure peak (s).\n- scatterTime: duration of the turbulence tail (s).\n- dispersion: amount of turbulence [0.0, 1.0].\n- distance: distance of the explosion from the listener (m).\n- waveSpeed: propagation speed of the blast wave (m/s).\n- windSpeed [float]: propagation speed of the blast wind (m/s)."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 553.5, 297.5, 147.0, 22.0 ],
					"style" : "SDT-comments",
					"text" : "messages and attributes:"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-8",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 116.0, 126.0, 76.0, 57.0 ],
					"style" : "SDT-comments",
					"text" : "turbulence tail (s)"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-7",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 114.0, 185.0, 63.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 114.0, 214.0, 87.0, 23.0 ],
					"text" : "scatterTime $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"logfreq" : 1,
					"maxclass" : "spectroscope~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 138.5, 495.15486725663709, 168.0, 87.0 ]
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 674.0, 91.0, 67.0, 23.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 11,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 766.0, 224.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 392.000000000000057, 93.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 415.0, 393.0, 128.0, 22.0 ],
									"text" : "set \"bursting balloon?\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 339.0, 381.0, 56.0, 22.0 ],
									"text" : "set Thor!"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 332.0, 93.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 302.0, 93.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 272.0, 93.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 296.0, 346.0, 151.0, 22.0 ],
									"text" : "set \"blast wind comes first\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 272.0, 316.0, 131.0, 22.0 ],
									"text" : "set \"slower blast wave\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 242.0, 288.0, 102.0, 22.0 ],
									"text" : "set \"more distant\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 212.0, 260.0, 123.0, 22.0 ],
									"text" : "set \"more turbulence\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 182.0, 227.0, 147.0, 22.0 ],
									"text" : "set \"increase scatter time\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 242.0, 93.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 212.0, 93.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 182.0, 93.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 122.0, 93.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 519.0, 153.0, 108.0, 22.0 ],
									"text" : "script show bubble"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-7",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 475.0, 433.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 475.0, 186.0, 103.0, 22.0 ],
									"text" : "script hide bubble"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-15",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 122.0, 439.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 152.0, 192.0, 136.0, 22.0 ],
									"text" : "set \"increase blast time\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 152.0, 93.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 122.0, 192.0, 29.5, 22.0 ],
									"text" : "set"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 11,
									"numoutlets" : 11,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
									"patching_rect" : [ 122.0, 48.0, 319.000000000000057, 22.0 ],
									"text" : "sel 1 2 3 4 5 6 7 15 16 18"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 122.0, 9.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"midpoints" : [ 131.5, 311.0, 131.5, 311.0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"order" : 1,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"midpoints" : [ 131.5, 153.0, 484.5, 153.0 ],
									"order" : 0,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"order" : 1,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"midpoints" : [ 161.5, 138.0, 528.5, 138.0 ],
									"order" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"midpoints" : [ 221.5, 345.0, 131.5, 345.0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"midpoints" : [ 161.5, 311.0, 131.5, 311.0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"order" : 1,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"order" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-2", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-2", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-2", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-2", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-2", 9 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-2", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-2", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"midpoints" : [ 251.500000000000028, 81.0, 251.5, 81.0 ],
									"source" : [ "obj-2", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"order" : 1,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"order" : 0,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"order" : 1,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"order" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"order" : 1,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"order" : 0,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"midpoints" : [ 191.5, 138.0, 528.5, 138.0 ],
									"order" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"order" : 1,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"order" : 1,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"midpoints" : [ 221.5, 138.0, 528.5, 138.0 ],
									"order" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"order" : 1,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"midpoints" : [ 251.5, 138.0, 528.5, 138.0 ],
									"order" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"midpoints" : [ 191.5, 328.5, 131.5, 328.5 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 606.0, 126.0, 53.0, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p legend"
				}

			}
, 			{
				"box" : 				{
					"bubblesize" : 10,
					"id" : "obj-56",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 674.0, 126.0, 107.0, 46.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-18", "flonum", "float", 0.050000000745058, 5, "obj-28", "live.gain~", "float", -0.703412055969238, 5, "obj-7", "flonum", "float", 0.5, 5, "obj-14", "flonum", "float", 0.300000011920929, 5, "obj-16", "flonum", "float", 0.400000005960464, 5, "obj-19", "flonum", "float", 1000.0, 5, "obj-21", "flonum", "float", 100.0, 5, "obj-46", "flonum", "float", 1.0, 5, "obj-47", "flonum", "float", 1.0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-18", "flonum", "float", 0.200000002980232, 5, "obj-28", "live.gain~", "float", -0.703412055969238, 5, "obj-7", "flonum", "float", 0.5, 5, "obj-14", "flonum", "float", 0.300000011920929, 5, "obj-16", "flonum", "float", 0.400000005960464, 5, "obj-19", "flonum", "float", 1000.0, 5, "obj-21", "flonum", "float", 100.0, 5, "obj-46", "flonum", "float", 1.0, 5, "obj-47", "flonum", "float", 1.0 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-18", "flonum", "float", 0.200000002980232, 5, "obj-28", "live.gain~", "float", -0.703412055969238, 5, "obj-7", "flonum", "float", 5.0, 5, "obj-14", "flonum", "float", 0.300000011920929, 5, "obj-16", "flonum", "float", 0.400000005960464, 5, "obj-19", "flonum", "float", 1000.0, 5, "obj-21", "flonum", "float", 100.0, 5, "<invalid>", "live.gain~", "float", 5.0, 5, "<invalid>", "live.gain~", "float", 0.13624432682991 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-18", "flonum", "float", 0.200000002980232, 5, "obj-28", "live.gain~", "float", -0.703412055969238, 5, "obj-7", "flonum", "float", 5.0, 5, "obj-14", "flonum", "float", 1.0, 5, "obj-16", "flonum", "float", 0.400000005960464, 5, "obj-19", "flonum", "float", 1000.0, 5, "obj-21", "flonum", "float", 100.0, 5, "<invalid>", "live.gain~", "float", 5.0, 5, "<invalid>", "live.gain~", "float", 0.13624432682991 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-18", "flonum", "float", 0.200000002980232, 5, "obj-28", "live.gain~", "float", -0.703412055969238, 5, "obj-7", "flonum", "float", 5.0, 5, "obj-14", "flonum", "float", 1.0, 5, "obj-16", "flonum", "float", 200.0, 5, "obj-19", "flonum", "float", 1000.0, 5, "obj-21", "flonum", "float", 100.0, 5, "obj-46", "flonum", "float", 2.0, 5, "obj-47", "flonum", "float", 2.0 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-18", "flonum", "float", 0.200000002980232, 5, "obj-28", "live.gain~", "float", -0.703412055969238, 5, "obj-7", "flonum", "float", 5.0, 5, "obj-14", "flonum", "float", 1.0, 5, "obj-16", "flonum", "float", 200.0, 5, "obj-19", "flonum", "float", 400.0, 5, "obj-21", "flonum", "float", 100.0, 5, "<invalid>", "live.gain~", "float", 5.0, 5, "<invalid>", "live.gain~", "float", 0.13624432682991 ]
						}
, 						{
							"number" : 7,
							"data" : [ 5, "obj-18", "flonum", "float", 0.200000002980232, 5, "obj-28", "live.gain~", "float", -0.703412055969238, 5, "obj-7", "flonum", "float", 5.0, 5, "obj-14", "flonum", "float", 1.0, 5, "obj-16", "flonum", "float", 200.0, 5, "obj-19", "flonum", "float", 400.0, 5, "obj-21", "flonum", "float", 1500.0, 5, "<invalid>", "live.gain~", "float", 5.0, 5, "<invalid>", "live.gain~", "float", 0.13624432682991 ]
						}
, 						{
							"number" : 15,
							"data" : [ 5, "obj-18", "flonum", "float", 0.050000000745058, 5, "obj-28", "live.gain~", "float", 5.401574611663818, 5, "obj-7", "flonum", "float", 30.0, 5, "obj-14", "flonum", "float", 1.0, 5, "obj-16", "flonum", "float", 800.0, 5, "obj-19", "flonum", "float", 340.0, 5, "obj-21", "flonum", "float", 8000.0, 5, "obj-46", "flonum", "float", 5.0, 5, "obj-47", "flonum", "float", 7.0 ]
						}
, 						{
							"number" : 16,
							"data" : [ 5, "obj-18", "flonum", "float", 0.100000001490116, 5, "obj-28", "live.gain~", "float", 5.401574611663818, 5, "obj-7", "flonum", "float", 50.0, 5, "obj-14", "flonum", "float", 1.0, 5, "obj-16", "flonum", "float", 2000.0, 5, "obj-19", "flonum", "float", 340.0, 5, "obj-21", "flonum", "float", 3000.0, 5, "obj-46", "flonum", "float", 5.0, 5, "obj-47", "flonum", "float", 7.0 ]
						}
, 						{
							"number" : 18,
							"data" : [ 5, "obj-18", "flonum", "float", 0.021999999880791, 5, "obj-28", "live.gain~", "float", -0.703412055969238, 5, "obj-7", "flonum", "float", 0.100000001490116, 5, "obj-14", "flonum", "float", 0.050000000745058, 5, "obj-16", "flonum", "float", 1.0, 5, "obj-19", "flonum", "float", 600.0, 5, "obj-21", "flonum", "float", 340.0, 5, "obj-46", "flonum", "float", 1.5, 5, "obj-47", "flonum", "float", 2.0 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-54",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 553.5, 480.154867256637147, 330.0, 69.0 ],
					"style" : "SDT-comments",
					"text" : "- Size of the scattering delay lines, in samples (default 44100)\n- Size of the wave propagation delay lines, in samples (default 4410000)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-53",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 553.5, 461.654867256637147, 81.0, 22.0 ],
					"style" : "SDT-comments",
					"text" : "arguments:"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 11,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 124.0, 55.0, 22.0 ],
									"style" : "SDT_package",
									"text" : "pcontrol"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-46",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 169.0, 35.0 ],
									"style" : "SDT_package",
									"text" : "sprintf loadunique %s.maxhelp"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-49",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"hidden" : 1,
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 715.5, 61.5, 65.5, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p see_also"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontsize" : 14.0,
					"id" : "obj-48",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 669.0, 10.0, 112.0, 23.0 ],
					"text" : "See also"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_color1" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "color",
					"fontface" : 0,
					"id" : "obj-43",
					"items" : [ "sdt.windflow~", ",", "sdt.windcavity~", ",", "sdt.windkarman~" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 669.0, 32.0, 112.0, 23.0 ],
					"style" : "SDT_package"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 24.5, 611.65486725663709, 34.0, 23.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"local" : 1,
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 705.0, 236.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 11,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 70.0, 265.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 70.0, 15.0, 28.0, 28.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 70.0, 114.0, 49.0, 23.0 ],
									"style" : "SDTpackage",
									"text" : "-~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 100.0, 85.0, 75.0, 23.0 ],
									"style" : "SDTpackage",
									"text" : "onepole~ 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 100.0, 58.0, 75.0, 23.0 ],
									"style" : "SDTpackage",
									"text" : "onepole~ 10"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 1 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "SDTpackage",
								"default" : 								{
									"fontsize" : [ 12.0 ],
									"fontname" : [ "Lato" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 24.5, 495.15486725663709, 105.0, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p removeDCoffset"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-33",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 126.0, 96.0, 57.0 ],
					"style" : "SDT-comments",
					"text" : "initial pressure peak in s"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-28",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 24.5, 528.65486725663709, 105.0, 41.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 11,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 766.0, 192.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 40.0, 32.0, 58.0, 22.0 ],
									"style" : "SDTpackage",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 93.0, 249.0, 22.0 ],
									"style" : "SDTpackage",
									"text" : "window size 100 100 1000 750, window exec"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-21",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 40.0, 156.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 528.0, 72.0, 82.0, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p this.window"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 528.0, 101.0, 68.0, 23.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"style" : "SDTpackage",
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-18",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 24.5, 185.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 62.0, 566.0, 22.0 ],
					"text" : "[gases] Supersonic explosion sounds"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 86.0, 544.0, 22.0 ],
					"text" : "Simulates the shock wave produced by an object travelling in the air at supersonic speed",
					"textcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"fontsize" : 16.0,
					"id" : "obj-5",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 24.5, 330.75, 344.0, 66.0 ],
					"text" : "sdt.explosion~ 48000 4800000 @blastTime 0.1 @scatterTime 0.1 @dispersion 1. @distance 2. @waveSpeed 1. @windSpeed 2."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 36.0,
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 10.0, 425.0, 50.0 ],
					"text" : "sdt.explosion~"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 34.0, 282.827433628318545, 34.0, 282.827433628318545 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 224.5, 282.827433628318545, 34.0, 282.827433628318545 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 319.75, 282.827433628318545, 34.0, 282.827433628318545 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 408.0, 282.827433628318545, 34.0, 282.827433628318545 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"hidden" : 1,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 506.5, 282.827433628318545, 34.0, 282.827433628318545 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 34.0, 587.65486725663709, 315.5, 587.65486725663709, 315.5, 490.15486725663709, 148.0, 490.15486725663709 ],
					"order" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 1 ],
					"order" : 1,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"order" : 2,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 399.5, 399.0, 378.625, 399.0, 378.625, 324.5, 34.0, 324.5 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 123.5, 282.827433628318545, 34.0, 282.827433628318545 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"order" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"order" : 1,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1,
					"source" : [ "obj-43", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 1 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 1 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 359.0, 397.202433628318545, 310.0, 397.202433628318545 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"midpoints" : [ 310.0, 453.0, 212.0, 453.0, 212.0, 480.0, 34.0, 480.0 ],
					"order" : 1,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"order" : 0,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [ 742.166666666666629, 177.0, 789.333333333333371, 177.0, 789.333333333333371, 5.0, 678.5, 5.0 ],
					"source" : [ "obj-56", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"midpoints" : [ 712.833333333333371, 176.0, 667.416666666666742, 176.0, 667.416666666666742, 119.0, 615.5, 119.0 ],
					"source" : [ "obj-56", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"hidden" : 1,
					"midpoints" : [ 649.5, 159.0, 603.0, 159.0, 603.0, 97.0, 537.5, 97.0 ],
					"source" : [ "obj-57", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-28" : [ "live.gain~", "live.gain~", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "sdt.explosion~.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"boxgroups" : [ 			{
				"boxes" : [ "obj-48", "obj-43", "obj-50" ]
			}
, 			{
				"boxes" : [ "obj-53", "obj-54" ]
			}
, 			{
				"boxes" : [ "obj-30", "obj-27" ]
			}
, 			{
				"boxes" : [ "obj-83", "obj-51" ]
			}
, 			{
				"boxes" : [ "obj-11", "obj-2", "obj-6" ]
			}
, 			{
				"boxes" : [ "obj-13", "obj-9" ]
			}
 ],
		"styles" : [ 			{
				"name" : "SDT-comments",
				"default" : 				{
					"fontsize" : [ 13.0 ],
					"fontname" : [ "Lato" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "SDT_package",
				"default" : 				{
					"fontname" : [ "Lato" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "SDTpackage",
				"default" : 				{
					"fontsize" : [ 12.0 ],
					"fontname" : [ "Lato" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
