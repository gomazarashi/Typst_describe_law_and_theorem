#set text(lang: "ja") // 言語を日本語に設定
#set text(font: ("New Computer Modern", "Harano Aji Mincho"), size: 10pt) // フォントを設定
#show figure.where(kind: table): set figure.caption(position: top) // 表におけるキャプションを上部に表示するよう設定

#show heading: set text(font: ("Harano Aji Gothic"), weight: 500)
#set heading(numbering: "1.1.")
#import "@preview/codelst:2.0.1": sourcecode
#import "@preview/showybox:2.0.1": showybox

#show raw: set text(font: ("DejaVu Sans Mono", "Harano Aji Gothic"))

#show math.equation: set text(size: 12pt)

// 表紙の設定
#align(center)[
  #v(200pt)
  #text(size: 18pt)[
    Typstにおける定理・法則の記述
  ]
]
#pagebreak()
#set page(numbering: "1")
#counter(page).update(1)
= 微分積分学

\
#showybox(
  title: text(font: ("Harano Aji Gothic"), size: 12pt)[極限の基本性質],
  title-style: (color: black, sep-thickness: 0pt, align: center, weight: 500),
  frame: (
    border-color: blue,
    title-color: blue.lighten(50%),
    body-color: blue.lighten(95%),
    footer-color: blue.lighten(80%),
  ),
)[
  $lim_(n->oo) a_n=a$、$lim_(n->oo) b_n=b$とする。
  #line(length: 100%)
  $ lim_(n->oo) a_n plus.minus b_n=a plus.minus b $
  #line(length: 100%)
  $ lim_(n->oo) a_n b_n=a b $
  特に、$k$が定数のとき
  $ lim_(n->oo) k a_n = k a $
  #line(length: 100%)
  $ lim_(n->oo) a_n / b_n = a / b quad(b_n, b!=0) $
  #line(length: 100%)
  $a_n <= b_n$ならば$ lim_(n->oo) a_n <= lim_(n->oo) b_n $
   
]
\
#showybox(
  title: text(font: ("Harano Aji Gothic"), size: 12pt)[合成関数の微分法],
  title-style: (color: black, sep-thickness: 0pt, align: center, weight: 500),
  frame: (
    border-color: blue,
    title-color: blue.lighten(50%),
    body-color: blue.lighten(95%),
    footer-color: blue.lighten(80%),
  ),
)[
  関数$y=f(x)$が区間$I$で微分可能、その値域$f(I)$で$z=g(y)$が微分可能ならば、\
  合成関数$z=g(f(x))$は$I$で微分可能で、
  $ (dif z)/(dif x) = (dif z)/(dif y) (dif y)/(dif x) = g'(f(x)) f'(x) $
]
\
#showybox(
  title: text(font: ("Harano Aji Gothic"), size: 12pt)[基本的な関数の不定積分(抜粋)],
  title-style: (color: black, sep-thickness: 0pt, align: center, weight: 500),
  frame: (
    border-color: blue,
    title-color: blue.lighten(50%),
    body-color: blue.lighten(95%),
    footer-color: blue.lighten(80%),
  ),
)[
  $ integral e^x dif x = e^x $
  #line(length: 100%)
  $ integral a^x dif x = a^x / (log a) $
  #line(length: 100%)
  $ integral 1/x dif x = log |x| $
  #line(length: 100%)
  $ integral x^alpha dif x = x^(alpha+1) / (alpha+1) quad (alpha != -1) $
  #line(length: 100%)
  $ integral (dif x)/(sqrt(a^2-x^2)) = arcsin(x/a) $
]
\
#showybox(
  title: text(font: ("Harano Aji Gothic"), size: 12pt)[定積分の存在],
  title-style: (color: black, sep-thickness: 0pt, align: center, weight: 500),
  frame: (
    border-color: blue,
    title-color: blue.lighten(50%),
    body-color: blue.lighten(95%),
    footer-color: blue.lighten(80%),
  ),
)[
  $f(x)$が有界閉区間$[a, b]$上で連続であれば、
  $ I = lim_(|Delta -> 0|) S(Delta) = lim_(|Delta -> 0|) sum_(i=1)^n f(xi_i)(x_i-x_(i-1)) $
  が存在する($I$は$[a,b]$の分割の仕方、$xi_i$のとり方によらない)。
]
\
#showybox(
  title: text(font: ("Harano Aji Gothic"), size: 12pt)[合成関数の微分],
  title-style: (color: black, sep-thickness: 0pt, align: center, weight: 500),
  frame: (
    border-color: blue,
    title-color: blue.lighten(50%),
    body-color: blue.lighten(95%),
    footer-color: blue.lighten(80%),
  ),
)[
  関数$z=f(x,y)$が全微分可能で、$x=phi(t), y=psi(t)$が$t$について微分可能ならば、合成関数$z=f(phi(t), psi(t))$は$t$について微分可能で、 次式が成り立つ。
  
  $ (dif z)/(dif t) = (diff f)/(diff x) (dif x)/(dif t) + (diff f)/(diff y) (dif y)/(dif t) $
]
\
#showybox(
  title: text(font: ("Harano Aji Gothic"), size: 12pt)[ラグランジュの乗数法],
  title-style: (color: black, sep-thickness: 0pt, align: center, weight: 500),
  frame: (
    border-color: blue,
    title-color: blue.lighten(50%),
    body-color: blue.lighten(95%),
    footer-color: blue.lighten(80%),
  ),
)[
  $f(x,y)$、$g(x,y)$は$C^1$級とする。条件$g(x,y)=0$のもとで関数$z=f(x,y)$が$(x,y)=(a,b)$で極値を取り、$g_x(a,b)$または$g_y(a,b)$が0でないとする。このとき、ある定数$lambda$が存在し、次式が成り立つ。
  
  $ cases(f_x(a,b) - lambda g_x(a,b) = 0, f_y(a,b) - lambda g_y(a,b) = 0, g(a,b) = 0) $
  
]
\
= 線形代数学
#showybox(
  title: text(font: ("Harano Aji Gothic"), size: 12pt)[行列の定義],
  title-style: (color: black, sep-thickness: 0pt, align: center, weight: 500),
  frame: (
    border-color: blue,
    title-color: blue.lighten(50%),
    body-color: blue.lighten(95%),
    footer-color: blue.lighten(80%),
  ),
)[
  $(m,n)$型の行列、$m times n$行列とは、$m times n$個の数の配列であり、記号で
  $ mat(
    delim: "[",
    a_(11), a_(12), dots.h.c, a_(1 n);a_(21), a_(22), dots.h.c, a_(2 n);dots.v, dots.v, dots.down, dots.v;a_(m 1), a_(m 2), dots.h.c, a_(m n);,

  ) $
  と表される。$a_(i j)$を行列の$(i,j)$成分という。
]
\
#showybox(
  title: text(font: ("Harano Aji Gothic"), size: 12pt)[ベクトルの例],
  title-style: (color: black, sep-thickness: 0pt, align: center, weight: 500),
  frame: (
    border-color: blue,
    title-color: blue.lighten(50%),
    body-color: blue.lighten(95%),
    footer-color: blue.lighten(80%),
  ),
)[
  $m$次元列ベクトル:
  $ bold(a) = vec(delim: "[", a_1, a_2, dots.v, a_m) $
  $n$次元行ベクトル:
  $ bold(b)=[b_1,b_2,dots.h.c,b_n] $
  零ベクトル: 成分がすべて$0$のベクトルで、記号で$bold(0)$と表す。
]
\

#showybox(
  title: text(font: ("Harano Aji Gothic"), size: 12pt)[ベクトル空間],
  title-style: (color: black, sep-thickness: 0pt, align: center, weight: 500),
  frame: (
    border-color: blue,
    title-color: blue.lighten(50%),
    body-color: blue.lighten(95%),
    footer-color: blue.lighten(80%),
  ),
)[
  すべての$n$次元実数ベクトル$x$の集合を$n$次元ベクトル空間といい、記号で$bold(R)^n$と表す。
]


