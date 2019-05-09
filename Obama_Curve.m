function [x,y] = Obama_Curve()
t=linspace(0,70*pi,3000);
x = ((-6/7* sin(22/15 - 13*t) - 46/45* sin(11/10 - 10* t) - 13/7* sin(16/11 - 3* t) - 69/10* sin(17/12 - 2* t) + 529/5* sin(t + 11/7) + 4/9 *sin(4* t + 38/9) + 32/7* sin(5* t + 10/7) + 4/3* sin(6* t + 13/14) + 25/4* sin(7*t + 16/11) + 9/7* sin(8* t + 10/11) + 43/10* sin(9* t + 17/12) + 3/7* sin(11*t + 22/5) + 4/9* sin(12*t + 20/9) + 81/5).*heaviside(59 *pi - t).*heaviside(t - 55 *pi) + (-251/13* sin(11/8 - 3* t) + 4100/11* sin(t + 8/5) + 31/9* sin(2*t + 9/4) + 17/12* sin(4*t + 22/5) + 115/9* sin(5*t + 22/13) + 24/11*sin(6*t + 9/2) + 201/10*sin(7*t + 17/10) + 9/4*sin(8 *t + 13/5) + 112/11).*heaviside(55 *pi - t).*heaviside(t - 51 *pi) + (507/5* sin(t + 11/7) + 1/5 *sin(2 *t + 48/11) + 73/10 *sin(3 *t + 11/7) + 23/10 *sin(4 *t + 11/7) + 1359/7).*heaviside(51* pi - t).*heaviside(t - 47* pi) + (680/7 *sin(t + 11/7) + 8/13* sin(2 *t + 23/15) + 51/8* sin(3 *t + 11/7) + 1/52* sin(4* t + 19/7) + 11/5* sin(5 *t + 8/5) - 497/3).*heaviside(47 *pi - t).*heaviside(t - 43* pi) + (-4/11* sin(1 - 7* t) - 303/8 *sin(11/7 - t) + 85/6* sin(2* t + 14/9) + 9/8 *sin(3* t + 19/14) + 126/25* sin(4* t + 23/15) + 13/12 *sin(5 *t + 21/16) + 12/11 *sin(6* t + 19/14) + 2/3 *sin(8* t + 10/7) + 2/5* sin(9* t + 29/19) - 2219/13).*heaviside(43* pi - t).*heaviside(t - 39 *pi) + (-3/8 *sin(14/9 - 12* t) - 3/7* sin(11/7 - 10* t) - 1/2 *sin(14/9 - 8* t) - 52/21* sin(14/9 - 6* t) - 19/6 *sin(17/11 - 4 *t) - 47/11* sin(11/7 - 3* t) - 132/7 *sin(11/7 - 2* t) + 229/6 *sin(t + 11/7) + 3/11* sin(5* t + 13/9) + 1/4* sin(7* t + 37/25) + 1/11* sin(9 *t + 13/8) + 5/11* sin(11* t + 11/7) + 1/6 *sin(13* t + 23/15) + 2209/11).*heaviside(39* pi - t).*heaviside(t - 35* pi) + (-1/2* sin(14/9 - 4* t) + 1037/8 *sin(t + 14/9) + 2/11* sin(2 *t + 41/11) + 89/5* sin(3* t + 17/11) + 71/14* sin(5* t + 11/7) + 115/7).*heaviside(35* pi - t).*heaviside(t - 31* pi) + (-137/69* sin(2/5 - 6 *t) + 679/13 *sin(t + 8/7) + 355/59* sin(2 *t + 60/13) + 70/11 *sin(3 *t + 16/7) + 19/6* sin(4 *t + 5/2) + 49/13* sin(5* t + 20/7) + 9/11* sin(7 *t + 173/43) + 7/8 *sin(8 *t + 19/14) - 3897/10).*heaviside(31* pi - t).*heaviside(t - 27 *pi) + (-7/10* sin(3/8 - 8 *t) - 12/11* sin(2/9 - 6* t) - 23/7 *sin(3/8 - 2* t) + 1171/8* sin(t + 14/9) + 71/6* sin(3 *t + 17/11) + 13/7* sin(4 *t + 6/13) + 25/4* sin(5* t + 3/2) + 34/9* sin(7 *t + 18/11) + 27/10* sin(9* t + 4/3) + 71/5).*heaviside(27* pi - t).*heaviside(t - 23 *pi) + (-3/2* sin(3/4 - 2 *t) + 127/4* sin(t + 10/7) - 3329/21).*heaviside(23 *pi - t).*heaviside(t - 19 *pi) + (344/11* sin(t + 37/8) + 24/11* sin(2 *t + 23/10) + 1694/9).*heaviside(19* pi - t).*heaviside(t - 15* pi) + (-1/9* sin(9/19 - 10 *t) - 1/7 *sin(1/16 - 8* t) - 1/13* sin(4/7 - 6* t) - 11/13 *sin(36/37 - 4* t) - 20/9 *sin(10/11 - 2* t) + 998/9* sin(t + 9/5) + 77/8* sin(3 *t + 7/3) + 20/7* sin(5* t + 36/13) + 4/3* sin(7* t + 13/4) + 11/15* sin(9* t + 60/17) + 1036/5).*heaviside(15* pi - t).*heaviside(t - 11* pi) + (-6/19* sin(11/8 - 12* t) + 760/7* sin(t + 12/7) + 38/11* sin(2* t + 26/17) + 73/8* sin(3* t + 35/17) + 17/12 *sin(4* t + 65/32) + 21/8 *sin(5 *t + 16/7) + 5/9 *sin(6* t + 10/3) + 24/25* sin(7* t + 15/7) + 8/17* sin(8* t + 32/9) + 2/7* sin(9* t + 19/10) + 3/10* sin(10* t + 47/11) + 5/16* sin(11* t + 13/10) - 3010/17).*heaviside(11* pi - t).*heaviside(t - 7 *pi) + (-11/14 *sin(1/6 - 8* t) - 12/5* sin(1/5 - 4* t) - 48/7 *sin(39/40 - 2* t) + 15/14 *sin(7* t) + 959/20* sin(t + 29/9) + 112/11* sin(3* t + 13/8) + 25/9* sin(5* t + 14/9) + 5/11*sin(6 *t + 11/17) + 6/7* sin(9* t + 25/6) + 5425/13).*heaviside(7 *pi - t).*heaviside(t - 3 *pi) + (-8/17* sin(9/11 - 21* t) - 24/25* sin(3/5 - 20 *t) - 3/4* sin(17/16 - 14* t) - 15/7* sin(11/21 - 7* t) - 5/8* sin(31/32 - 6* t) - 63/16* sin(4/5 - 5* t) + 2153/5* sin(t + 19/12) + 230/7 *sin(2* t + 33/10) + 69/2* sin(3* t + 61/13) + 32/3 *sin(4 *t + 37/12) + 20/9* sin(8* t + 31/8) + 36/11* sin(9* t + 12/11) + 9/8* sin(10* t + 23/5) + 24/11* sin(11* t + 32/7) + 25/13* sin(12* t + 29/9) + 8/9* sin(13* t + 35/17) + 9/10* sin(15 *t + 2) + 2/11* sin(16 *t + 7/8) + 1/2 *sin(17 *t + 26/7) + 7/12* sin(18* t + 29/10) + 7/5* sin(19* t + 1) + 10/9* sin(22* t + 2) + 4/11* sin(23* t + 2/7) + 3/5* sin(24* t + 5/2) + 322/17).*heaviside(3 *pi - t).*heaviside(t + pi)).*heaviside(sqrt(sign(sin(t/2))));
y = ((-22/9* sin(34/23 - 9* t) - 61/9 *sin(17/11 - 4* t) + 37/11 *sin(t + 65/14) + 41/6 *sin(2* t + 14/3) + 8/7* sin(3* t + 15/7) + 18/5 *sin(5* t + 7/5) + 91/8 *sin(6* t + 25/17) + 16/11* sin(7* t + 5/16) + 79/14 *sin(8* t + 25/17) + 3/8 *sin(10* t + 18/11) + 2/5* sin(11* t + 57/14) + 1/4* sin(12 *t + 27/13) + 5/6 *sin(13* t + 22/5) - 2434/7).*heaviside(59 *pi - t).*heaviside(t - 55* pi) + (-30/11* sin(11/10 - 5* t) - 143/3* sin(3/2 - 4* t) - 108/31* sin(1/6 - 3* t) - 1310/9* sin(17/11 - 2* t) + 57/8 *sin(t + 9/7) + 25/17 *sin(6* t + 25/13) + 3/10* sin(7 *t + 31/21) + 23/14* sin(8* t + 51/11) + 635/3).*heaviside(55* pi - t).*heaviside(t - 51* pi) + (-40/9* sin(11/7 - 4* t) - 49/2* sin(11/7 - 2* t) - 188/17* sin(11/7 - t) + 26/9 *sin(3 *t + 11/7) - 1143/13).*heaviside(51* pi - t).*heaviside(t - 47 *pi) + (-25/4 *sin(11/7 - 4* t) + 93/11 *sin(t + 11/7) + 290/11* sin(2* t + 33/7) + 5/6 *sin(3* t + 33/7) + 10/11* sin(5* t + 14/9) - 262/3).*heaviside(47 *pi - t).*heaviside(t - 43 *pi) + (-3/2 *sin(14/9 - 7 *t) + 286/3 *sin(t + 33/7) + 71/15* sin(2 *t + 50/11) + 253/21 *sin(3 *t + 37/8) + 11/12* sin(4* t + 36/13) + 47/14 *sin(5* t + 32/7) + 4/5 *sin(6* t + 9/5) + 2/9* sin(8* t + 14/11) + 11/7* sin(9 *t + 47/10) - 2032/5).*heaviside(43 *pi - t).*heaviside(t - 39* pi) + (-3/7 *sin(35/23 - 13* t) - 3/8* sin(14/9 - 10* t) - 9/7* sin(17/11 - 9* t) - 1/16* sin(5/11 - 8* t) - 35/17* sin(14/9 - 7* t) - 3/7* sin(26/17 - 6 *t) - 37/13* sin(11/7 - 5* t) - 109/9* sin(14/9 - 3* t) - 24/5* sin(17/11 - 2* t) - 833/9* sin(11/7 - t) + 4/3* sin(4 *t + 14/9) + 11/15 *sin(11* t + 33/7) + 1/27* sin(12* t + 7/8) - 3683/9).*heaviside(39* pi - t).*heaviside(t - 35* pi) + (3/5* sin(t + 35/23) + 22/9* sin(2* t + 14/9) + 23/12* sin(3 *t + 61/13) + 37/6 *sin(4* t + 14/3) + 12/13* sin(5 *t + 14/9) - 1463/3).*heaviside(35 *pi - t).*heaviside(t - 31* pi) + (-148/11* sin(1/15 - 3* t) - 3/7 *sin(3/13 - 2* t) - 1356/11 *sin(17/18 - t) + 19/6 *sin(4* t + 33/16) + 245/61* sin(5* t + 9/11) + 5/6* sin(6* t + 63/16) + 10/7 *sin(7 *t + 13/8) + 9/8 *sin(8 *t + 25/9) - 2513/12).*heaviside(31* pi - t).*heaviside(t - 27* pi) + (-348/7* sin(1/37 - t) + 65/11 *sin(2* t + 20/13) + 34/11* sin(3* t + 32/11) + 59/17* sin(4* t + 33/8) + 105/19* sin(5* t + 31/10) + 24/23* sin(6* t + 6/11) + 15/16* sin(7* t + 31/30) + 4/9* sin(8* t + 85/21) + 1/3* sin(9 *t + 41/11) - 4459/9).*heaviside(27* pi - t).*heaviside(t - 23 *pi) + (240/11 *sin(t + 1/8) + 23/10* sin(2* t + 23/12) - 997/11).*heaviside(23 *pi - t).*heaviside(t - 19 *pi) + (-380/17 *sin(1/11 - t) + 20/11 *sin(2* t + 20/19) - 625/7).*heaviside(19* pi - t).*heaviside(t - 15 *pi) + (-67/15 *sin(9/11 - 4* t) - 66/5 *sin(8/9 - 2 *t) - 360/13* sin(4/13 - t) + 28/5* sin(3* t + 9/13) + 16/5* sin(5 *t + 7/6) + 1/2 *sin(6 *t + 12/13) + 13/9* sin(7* t + 5/3) + 5/8* sin(8* t + 8/7) + 10/9* sin(9 *t + 40/17) + 10/19* sin(10* t + 61/20) - 28).*heaviside(15* pi - t).*heaviside(t - 11* pi) + (-1/15* sin(8/11 - 10* t) - 3/14 *sin(3/8 - 8 *t) - 49/50* sin(5/11 - 6 *t) - 28/9* sin(11/9 - 4 *t) - 62/5* sin(6/5 - 2 *t) + 169/8* sin(t + 12/25) + 149/15 *sin(3 *t + 60/59) + 40/17* sin(5 *t + 10/9) + 8/5* sin(7* t + 13/10) + 14/11 *sin(9* t + 18/11) + 7/11* sin(11 *t + 7/5) + 2/5* sin(12* t + 16/9) - 86/3).*heaviside(11* pi - t).*heaviside(t - 7* pi) + (-9/11* sin(9/14 - 9 *t) + 995/8 *sin(t + 38/9) + 31/11* sin(2* t + 31/14) + 129/10 *sin(3* t + 35/11) + 41/42 *sin(4* t + 17/6) + 32/11* sin(5* t + 9/5) + 2/9* sin(6* t + 4/7) + 14/11* sin(7* t + 11/21) + 1/35* sin(8* t + 7/13) - 813/4).*heaviside(7* pi - t).*heaviside(t - 3* pi) + (-2/3 *sin(9/8 - 23 *t) - 5/7* sin(1/9 - 20 *t) - 4/7* sin(17/11 - 12 *t) - 76/9 *sin(11/7 - 4* t) - 194/9 *sin(1/6 - 3* t) + 16/5 *sin(7* t) + 9777/16* sin(t + 22/7) + 234/11* sin(2 *t + 9/7) + 7/5* sin(5 *t + 77/17) + 59/16* sin(6* t + 85/43) + 4/3 *sin(8* t + 121/30) + 7/12 *sin(9 *t + 5/3) + 5/7 *sin(10* t + 6/5) + 19/12 *sin(11* t + 13/5) + 16/7* sin(13* t + 1/66) + 5/9* sin(14 *t + 43/10) + 8/5 *sin(15 *t + 32/11) + 40/41* sin(16 *t + 9/14) + 51/50* sin(17* t + 4/13) + sin(18* t + 35/8) + 2/3 *sin(19 *t + 32/9) + 6/11* sin(21* t + 16/5) + 18/19* sin(22* t + 4/5) + 6/7* sin(24 *t + 35/11) - 2103/29).*heaviside(3 *pi - t).*heaviside(t + pi)).*heaviside(sqrt(sign(sin(t/2))));


