<TeXmacs|2.1>

<style|article>

<\body>
  <doc-data|<doc-title|High School Competition Mathematics
  Reference>|<doc-author|<author-data|<author-name|Arnav
  Kumar>|<author-homepage|<slink|https://arnavcs.github.io>>>>>

  <\bothlined>
    This is a reference or guide about the different competition mathematics
    techniques and results that are useful. This is not sufficient on its own
    and should be supplemented with reading a sufficient number of examples
    in order to understand.
  </bothlined>

  <\padded-center>
    <tabular|<tformat|<cwith|1|-1|1|1|cell-tborder|1ln>|<cwith|1|-1|1|1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|1|1|1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-bborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|1|1|cell-rborder|1ln>|<cwith|1|1|1|1|cell-background|pastel
    yellow>|<cwith|1|1|2|2|cell-tborder|1ln>|<cwith|1|1|2|2|cell-bborder|1ln>|<cwith|1|1|2|2|cell-lborder|1ln>|<cwith|1|1|2|2|cell-rborder|1ln>|<cwith|1|1|2|2|cell-background|pastel
    green>|<cwith|1|2|3|3|cell-tborder|1ln>|<cwith|1|2|3|3|cell-bborder|1ln>|<cwith|1|2|3|3|cell-lborder|1ln>|<cwith|1|2|3|3|cell-rborder|1ln>|<cwith|1|1|3|3|cell-background|pastel
    cyan>|<cwith|1|1|4|4|cell-tborder|1ln>|<cwith|1|1|4|4|cell-bborder|1ln>|<cwith|1|1|4|4|cell-lborder|1ln>|<cwith|1|1|4|4|cell-rborder|1ln>|<cwith|1|1|4|4|cell-background|pastel
    blue>|<table|<row|<cell|Definition>|<cell|Technique>|<cell|Result>|<cell|Note>>>>>
  </padded-center>

  <section|Number Theory>

  <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<cwith|1|-1|1|1|cell-background|pastel
  green>|<cwith|1|-1|1|1|cell-width|25ex>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|1|-1|cell-tborder|1ln>|<cwith|1|-1|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<twith|table-hyphen|y>|<cwith|1|1|1|1|cell-background|pastel
  yellow>|<cwith|3|3|1|1|cell-background|pastel
  yellow>|<cwith|4|4|1|1|cell-background|pastel
  yellow>|<cwith|6|6|1|1|cell-background|pastel
  yellow>|<cwith|2|2|1|1|cell-background|pastel
  green>|<cwith|1|7|1|2|cell-hyphen|t>|<cwith|1|7|1|2|cell-halign|l>|<cwith|1|7|1|2|cell-lsep|1ex>|<cwith|1|7|1|2|cell-rsep|1ex>|<cwith|1|7|1|2|cell-bsep|1ex>|<cwith|1|7|1|2|cell-tsep|1ex>|<cwith|1|7|1|1|cell-background|pastel
  yellow>|<cwith|1|7|1|1|cell-width|25ex>|<cwith|1|7|1|1|cell-hmode|exact>|<cwith|4|4|1|1|cell-background|pastel
  cyan>|<table|<row|<\cell>
    Divisibility
  </cell>|<\cell>
    For <math|m,n\<in\>\<bbb-Z\>>, we have that <math|m> divides <math|n>,
    notated <math|m\<divides\>n>, if <math|<around*|(|\<exists\>k\<in\>\<bbb-Z\>|)><around*|(|m*k=n|)>>.
  </cell>>|<row|<\cell>
    Modulo <math|n> and Congruence Classes
  </cell>|<\cell>
    For <math|n\<in\>\<bbb-Z\><rsup|+<rsub|>>, a\<in\>\<bbb-Z\>>, we say
    <math|<around*|[|a|]><rsub|n>\<assign\><around*|{|k*n+a\<suchthat\>k\<in\>\<bbb-Z\>|}>>
    is a congruence class, residue class, or equivalence class modulo
    <math|n>. It is often implicit what the value of <math|n> is, and we can
    instead write <math|<wide|a|\<bar\>>> to refer to
    <math|<around*|[|a|]><rsub|n>>.

    Additionally, for any two <math|b,c\<in\><wide|a|\<bar\>>>, we say that
    <math|b> and <math|c> are congruent modulo <math|n> which can be denoted
    as <math|b\<equiv\>c<space|0.5em><around*|(|mod n|)>>. This is equivalent
    to saying <math|n\<divides\>b-c>. When it is obvious what the modulus is,
    we can omit the <math|<around*|(|mod n|)>>.
  </cell>>|<row|<\cell>
    Ring of Integers Mod <math|n>
  </cell>|<\cell>
    <math|><math|\<bbb-Z\><rsub|n>\<assign\><around*|{|<around*|[|x|]><rsub|n>\<suchthat\>x\<in\>\<bbb-Z\>|}>>
    is a ring with addition and multiplication of its elements being defined
    so that:

    <\enumerate-numeric>
      <item><math|<around*|[|a|]><rsub|n>+<around*|[|b|]><rsub|n>=<around*|[|a+b|]><rsub|n>>

      <item><math|<around*|[|a|]><rsub|n>\<cdot\><around*|[|b|]><rsub|n>=<around*|[|a\<cdot\>b|]><rsub|n>>
    </enumerate-numeric>
  </cell>>|<row|<\cell>
    Modular Arithmetic Properties
  </cell>|<\cell>
    Let <math|n,m\<in\>\<bbb-Z\><rsub|\<gtr\>0>>, and
    <math|a,b,c,d\<in\>\<bbb-Z\>>, then we see that if
    <math|a\<equiv\>b<space|0.5em><around*|(|mod n|)>> and
    <math|c\<equiv\>d<space|0.5em> <around*|(|mod n|)>>:

    <\enumerate-numeric>
      <item><math|a+c\<equiv\>b+d <space|0.5em><around*|(|mod n|)>>

      <item><math|a*c\<equiv\>b*d<space|0.5em> <around*|(|mod n|)>>

      <item><math|a<rsup|m>\<equiv\>b<rsup|m> <space|0.5em><around*|(|mod
      n|)>>

      <item><math|<around*|(|\<exists\>k,r<rsub|a>,r<rsub|b>,r<rsub|n>\<in\>\<bbb-Z\>|)><around*|(|a=k*r<rsub|a>,b=k*r<rsub|b>,n=k*r<rsub|n>|)>\<Rightarrow\><around*|(|r<rsub|a>\<equiv\>r<rsub|n>
      <space|0.5em><around*|(|mod r<rsub|n>|)>|)>>
    </enumerate-numeric>
  </cell>>|<row|<\cell>
    Number Bases
  </cell>|<\cell>
    Given <math|n\<in\>\<bbb-Z\>>, and a number base <math|b>, the base
    <math|b> representation of <math|n>, <math|<wide|d<rsub|k>d<rsub|k-1>\<ldots\>d<rsub|1>d<rsub|0>|\<bar\>><rsub|<around*|(|b|)>>>,
    satisfies

    <\equation*>
      n=<big|sum><rsup|k><rsub|i=0>d<rsub|k>\<cdot\>b<rsup|k>
    </equation*>

    where <math|0\<leq\>d<rsub|i>\<less\>b> and
    <math|d<rsub|i>\<in\>\<bbb-Z\>> for all integers <math|i>.
  </cell>>|<row|<\cell>
    Multiplicative Order Mod <math|n>
  </cell>|<\cell>
    The multiplicative order of a term, <math|<wide|a|\<bar\>>\<in\>\<bbb-Z\><rsub|n>>,
    to be the smallest <math|m\<in\>\<bbb-Z\><rsup|+>> such that
    <math|<wide|a|\<bar\>><rsup|m>=<wide|a<rsup|m>|\<bar\>>=<wide|1|\<bar\>>>,
    which is to say <math|a<rsup|m>\<equiv\>1<space|0.5em><around*|(|mod
    n|)>>.
  </cell>>|<row|<\cell>
    Euler's Totient Function
  </cell>|<\cell>
    Define Euler's Totient function, <math|\<varphi\><around*|(|n|)>>, to be
    be number of integers <math|1\<leq\>k\<leq\>n> which are coprime with
    <math|n>.

    <math|\<varphi\><around*|(|n|)>> is multiplicative, so
    <math|<around*|(|gcd<around*|(|m,n|)>=1|)>\<Rightarrow\>\<varphi\><around*|(|m*n|)>=\<varphi\><around*|(|*m|)>*\<varphi\>*<around*|(|n|)>><math|>.

    Let <math|n> be factorized as <math|p<rsub|1><rsup|<rsub|>k<rsub|1>>*p<rsub|2><rsup|k<rsub|2>>*\<cdots\>**p<rsub|r><rsup|k<rsub|r>>>
    with <math|k<rsub|i>\<geq\>1> for all <math|1\<leq\>i\<leq\>r>. Now,

    <\equation*>
      \<varphi\><around*|(|n|)>=n*<big|prod><rsub|i=1><rsup|r><around*|(|1-<frac|1|p<rsub|i>>|)>=<big|prod><rsup|r><rsub|i=1><around*|(|p<rsub|i><rsup|k<rsub|i>>-p<rsub|i><rsup|k<rsub|i>-1>|)>
    </equation*>
  </cell>>>>>

  <section|Series and Sequences>

  <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<cwith|1|-1|1|1|cell-background|pastel
  green>|<cwith|1|-1|1|1|cell-width|25ex>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|1|-1|cell-tborder|1ln>|<cwith|1|-1|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<twith|table-hyphen|y>|<cwith|1|1|1|1|cell-background|pastel
  yellow>|<cwith|3|3|1|1|cell-background|pastel
  yellow>|<cwith|4|4|1|1|cell-background|pastel
  yellow>|<cwith|2|2|1|1|cell-background|pastel
  green>|<cwith|1|6|1|2|cell-hyphen|t>|<cwith|1|6|1|2|cell-halign|l>|<cwith|1|6|1|2|cell-lsep|1ex>|<cwith|1|6|1|2|cell-rsep|1ex>|<cwith|1|6|1|2|cell-bsep|1ex>|<cwith|1|6|1|2|cell-tsep|1ex>|<cwith|1|6|1|1|cell-background|pastel
  yellow>|<cwith|1|6|1|1|cell-width|25ex>|<cwith|1|6|1|1|cell-hmode|exact>|<cwith|4|4|1|1|cell-background|pastel
  cyan>|<cwith|1|5|1|2|cell-hyphen|t>|<cwith|1|5|1|2|cell-halign|l>|<cwith|1|5|1|2|cell-lsep|1ex>|<cwith|1|5|1|2|cell-rsep|1ex>|<cwith|1|5|1|2|cell-bsep|1ex>|<cwith|1|5|1|2|cell-tsep|1ex>|<cwith|1|5|1|1|cell-background|pastel
  yellow>|<cwith|1|5|1|1|cell-width|25ex>|<cwith|1|5|1|1|cell-hmode|exact>|<cwith|1|1|1|1|cell-background|pastel
  green>|<cwith|3|5|1|1|cell-background|pastel cyan>|<table|<row|<\cell>
    Telescoping Series and Products
  </cell>|<\cell>
    Telescoping series are when individual terms in a sum or product can be
    split into two terms which cancel out with the split parts of adjacent
    terms.
  </cell>>|<row|<\cell>
    Fibonacci Sequence
  </cell>|<\cell>
    For <math|n\<in\>\<bbb-Z\><rsup|\<geqslant\>0>>, the <math|n><rsup|th>
    Fibonacci number is given by

    <\equation*>
      F<rsub|n>\<assign\><around*|{|<tabular|<tformat|<table|<row|<cell|1>|<cell|<text|if
      >n\<leq\>1>>|<row|<cell|F<rsub|n-1>+F<rsub|n-2>>|<cell|<text|otherwise>>>>>>|\<nobracket\>>
    </equation*>
  </cell>>|<row|<\cell>
    Arithmetic Series
  </cell>|<\cell>
    For <math|a,d\<in\>\<bbb-R\>> and <math|n\<in\>\<bbb-Z\><rsup|+>>, we
    have:

    <\equation*>
      a+<around*|(|a+d|)>+<around*|(|a+2*d|)>+\<cdots\>+<around*|(|a+<around*|(|n-1|)>*d|)>=<big|sum><rsup|n-1><rsub|i=0><around*|(|a+i*d|)>=<frac|1|2>*n*<around*|(|2*a+<around*|(|n-1|)>*d|)>
    </equation*>
  </cell>>|<row|<\cell>
    Geometric Series
  </cell>|<\cell>
    For <math|a,r\<in\>\<bbb-R\>>, <math|r\<neq\>1>, and
    <math|n\<in\>\<bbb-Z\><rsup|+>>, we have that

    <\equation*>
      a+a*r+a*r<rsup|2>+\<cdots\>+a*r<rsup|n-1>=<big|sum><rsup|n-1><rsub|i=0>a*r<rsup|i>=a*<frac|r<rsup|n>-1|r-1>
    </equation*>
  </cell>>|<row|<\cell>
    Sum of Powers of Natural Numbers
  </cell>|<\cell>
    For <math|n\<in\>\<bbb-N\>> we have the following results:

    <\enumerate-numeric>
      <item><math|1+2+\<cdots\>+n=<frac|n*<around*|(|n+1|)>|2>>

      <item><math|1<rsup|2>+2<rsup|2>+\<cdots\>+n<rsup|2>=<frac|n*<around*|(|n+1|)>*<around*|(|2*n+1|)>|6>>

      <item><math|1<rsup|3>+2<rsup|3>+\<cdots\>+n<rsup|3>=<around*|(|<frac|n*<around*|(|n+1|)>|2>|)><rsup|2>>
    </enumerate-numeric>
  </cell>>>>>

  <section|Geometry>

  <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<cwith|1|-1|1|1|cell-background|pastel
  green>|<cwith|1|-1|1|1|cell-width|25ex>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|1|-1|cell-tborder|1ln>|<cwith|1|-1|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<twith|table-hyphen|y>|<cwith|1|1|1|1|cell-background|pastel
  yellow>|<cwith|3|3|1|1|cell-background|pastel
  yellow>|<cwith|4|4|1|1|cell-background|pastel
  yellow>|<cwith|2|2|1|1|cell-background|pastel
  green>|<cwith|1|5|1|2|cell-hyphen|t>|<cwith|1|5|1|2|cell-halign|l>|<cwith|1|5|1|2|cell-lsep|1ex>|<cwith|1|5|1|2|cell-rsep|1ex>|<cwith|1|5|1|2|cell-bsep|1ex>|<cwith|1|5|1|2|cell-tsep|1ex>|<cwith|1|5|1|1|cell-background|pastel
  yellow>|<cwith|1|5|1|1|cell-width|25ex>|<cwith|1|5|1|1|cell-hmode|exact>|<cwith|4|4|1|1|cell-background|pastel
  cyan>|<cwith|1|5|1|2|cell-hyphen|t>|<cwith|1|5|1|2|cell-halign|l>|<cwith|1|5|1|2|cell-lsep|1ex>|<cwith|1|5|1|2|cell-rsep|1ex>|<cwith|1|5|1|2|cell-bsep|1ex>|<cwith|1|5|1|2|cell-tsep|1ex>|<cwith|1|5|1|1|cell-background|pastel
  yellow>|<cwith|1|5|1|1|cell-width|25ex>|<cwith|1|5|1|1|cell-hmode|exact>|<cwith|1|1|1|1|cell-background|pastel
  green>|<cwith|3|5|1|1|cell-background|pastel
  cyan>|<cwith|1|4|1|2|cell-hyphen|t>|<cwith|1|4|1|2|cell-halign|l>|<cwith|1|4|1|2|cell-lsep|1ex>|<cwith|1|4|1|2|cell-rsep|1ex>|<cwith|1|4|1|2|cell-bsep|1ex>|<cwith|1|4|1|2|cell-tsep|1ex>|<cwith|1|4|1|1|cell-background|pastel
  yellow>|<cwith|1|4|1|1|cell-width|25ex>|<cwith|1|4|1|1|cell-hmode|exact>|<cwith|2|2|1|1|cell-background|pastel
  cyan>|<cwith|3|3|1|1|cell-background|pastel
  cyan>|<cwith|4|4|1|1|cell-background|pastel
  cyan>|<cwith|1|1|1|1|cell-background|pastel yellow>|<table|<row|<\cell>
    Directed Angles
  </cell>|<\cell>
    A directed angle <math|\<measuredangle\>A B C> is always measured as the
    counterclockwise angle from the line segment <math|A B> to the line
    segment <math|C B>. Additionally, directed angles are considered modulo
    <math|180<rsup|\<circ\>>>, meaning that
    <math|135<rsup|\<circ\>>=-45<rsup|\<circ\>>>.
  </cell>>|<row|<\cell>
    Sum of Interior Angles in a Triangle
  </cell>|<\cell>
    Given a triangle <math|\<vartriangle\>A B C>, the sum of the interior
    angles of the triangle always sum to <math|180<rsup|\<circ\>>> or
    <math|\<pi\>> radians. In terms of directed angles, we can say that
    <with|math|<macro|body|<with|mode|math|<arg|body>>>|<math|\<measuredangle\>A
    B C+\<measuredangle\>B C A+\<measuredangle\>C A B=0>>.
  </cell>>|<row|<\cell>
    Pythagorean Theorem
  </cell>|<\cell>
    Let <math|A B C> be a right triangle with <math|\<leangle\>A B
    C=90<rsup|\<circ\>>>. Now we have <math|A B<rsup|2>+B C<rsup|2>=A
    C<rsup|2>>.
  </cell>>|<row|<\cell>
    Area of a Triangle
  </cell>|<\cell>
    Let <math|A B C > be a triangle. Let <math|h> be the length of the
    perpendicular dropped from <math|A> to <math|B C>. Let <math|b> be the
    length of segment <math|B C>. The area of <math|A B C>, sometimes denoted
    <math|<around*|\||A B C|\|>> is <math|<frac|1|2>*b*h>.
  </cell>>>>>

  <section|Trigonometry>

  <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<cwith|1|-1|1|1|cell-background|pastel
  green>|<cwith|1|-1|1|1|cell-width|25ex>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|1|-1|cell-tborder|1ln>|<cwith|1|-1|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<twith|table-hyphen|y>|<cwith|1|1|1|1|cell-background|pastel
  yellow>|<cwith|1|2|1|2|cell-hyphen|t>|<cwith|1|2|1|2|cell-halign|l>|<cwith|1|2|1|2|cell-lsep|1ex>|<cwith|1|2|1|2|cell-rsep|1ex>|<cwith|1|2|1|2|cell-bsep|1ex>|<cwith|1|2|1|2|cell-tsep|1ex>|<cwith|1|2|1|1|cell-background|pastel
  yellow>|<cwith|1|2|1|1|cell-width|25ex>|<cwith|1|2|1|1|cell-hmode|exact>|<cwith|1|2|1|2|cell-hyphen|t>|<cwith|1|2|1|2|cell-halign|l>|<cwith|1|2|1|2|cell-lsep|1ex>|<cwith|1|2|1|2|cell-rsep|1ex>|<cwith|1|2|1|2|cell-bsep|1ex>|<cwith|1|2|1|2|cell-tsep|1ex>|<cwith|1|2|1|1|cell-background|pastel
  yellow>|<cwith|1|2|1|1|cell-width|25ex>|<cwith|1|2|1|1|cell-hmode|exact>|<cwith|1|1|1|1|cell-background|pastel
  green>|<cwith|2|2|1|1|cell-background|pastel
  cyan>|<cwith|1|2|1|2|cell-hyphen|t>|<cwith|1|2|1|2|cell-halign|l>|<cwith|1|2|1|2|cell-lsep|1ex>|<cwith|1|2|1|2|cell-rsep|1ex>|<cwith|1|2|1|2|cell-bsep|1ex>|<cwith|1|2|1|2|cell-tsep|1ex>|<cwith|1|2|1|1|cell-background|pastel
  yellow>|<cwith|1|2|1|1|cell-width|25ex>|<cwith|1|2|1|1|cell-hmode|exact>|<cwith|1|1|1|1|cell-background|pastel
  yellow>|<cwith|1|1|1|2|cell-hyphen|t>|<cwith|1|1|1|2|cell-halign|l>|<cwith|1|1|1|2|cell-lsep|1ex>|<cwith|1|1|1|2|cell-rsep|1ex>|<cwith|1|1|1|2|cell-bsep|1ex>|<cwith|1|1|1|2|cell-tsep|1ex>|<cwith|1|1|1|1|cell-background|pastel
  green>|<cwith|1|1|1|1|cell-background|pastel
  cyan>|<cwith|1|1|1|1|cell-width|25ex>|<cwith|1|1|1|1|cell-hmode|exact>|<table|<row|<\cell>
    Sum of sines of the same period
  </cell>|<\cell>
    <math|<around*|(|\<forall\>a<rsub|1>,a<rsub|2>,\<lambda\><rsub|1>,\<lambda\><rsub|2>\<in\>\<bbb-R\>|)><around*|(|\<exists\>a<rsub|3>,\<lambda\><rsub|3>\<in\>\<bbb-R\>|)><around*|(|\<forall\>\<theta\>\<in\>\<bbb-R\>|)>>

    <\equation*>
      a<rsub|1>*sin<around*|(|\<theta\>+\<lambda\><rsub|1>|)>+a<rsub|2>*sin<around*|(|\<theta\>+\<lambda\><rsub|2>|)>=
      a<rsub|3>*sin<around*|(|\<theta\>+\<lambda\><rsub|3>|)>
    </equation*>

    And specifically when we have <math|\<lambda\><rsub|1>=0,\<lambda\><rsub|2>=<frac|\<mathpi\>|2>,a<rsub|1>=a,a<rsub|2>=b>,
    we see <math|a<rsub|1>*sin<around*|(|\<theta\>+\<lambda\><rsub|1>|)>=a*sin<around*|(|\<theta\>|)>>,
    and <math|*a<rsub|2>*sin<around*|(|\<theta\>+\<lambda\><rsub|2>|)>=b*cos<around*|(|\<theta\>|)>>.
    In this case, we get

    <\equation*>
      a*sin<around*|(|\<theta\>|)>+b*cos<around*|(|\<theta\>|)>=
      <sqrt|a<rsup|2>+b<rsup|2>>*sin<around*|(|\<theta\>+arctan<around*|(|<frac|b|a>|)>|)>
    </equation*>
  </cell>>>>>

  <section|Inequalities>

  <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<cwith|1|-1|1|1|cell-background|pastel
  green>|<cwith|1|-1|1|1|cell-width|25ex>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|1|-1|cell-tborder|1ln>|<cwith|1|-1|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<twith|table-hyphen|y>|<cwith|1|1|1|1|cell-background|pastel
  yellow>|<cwith|3|3|1|1|cell-background|pastel
  yellow>|<cwith|4|4|1|1|cell-background|pastel
  yellow>|<cwith|2|2|1|1|cell-background|pastel
  green>|<cwith|1|5|1|2|cell-hyphen|t>|<cwith|1|5|1|2|cell-halign|l>|<cwith|1|5|1|2|cell-lsep|1ex>|<cwith|1|5|1|2|cell-rsep|1ex>|<cwith|1|5|1|2|cell-bsep|1ex>|<cwith|1|5|1|2|cell-tsep|1ex>|<cwith|1|5|1|1|cell-background|pastel
  yellow>|<cwith|1|5|1|1|cell-width|25ex>|<cwith|1|5|1|1|cell-hmode|exact>|<cwith|4|4|1|1|cell-background|pastel
  cyan>|<cwith|1|4|1|2|cell-hyphen|t>|<cwith|1|4|1|2|cell-halign|l>|<cwith|1|4|1|2|cell-lsep|1ex>|<cwith|1|4|1|2|cell-rsep|1ex>|<cwith|1|4|1|2|cell-bsep|1ex>|<cwith|1|4|1|2|cell-tsep|1ex>|<cwith|1|4|1|1|cell-background|pastel
  green>|<cwith|3|3|1|1|cell-background|pastel
  cyan>|<cwith|4|4|1|1|cell-background|pastel
  green>|<cwith|2|2|1|1|cell-background|pastel
  cyan>|<cwith|1|1|1|1|cell-background|pastel
  cyan>|<cwith|1|4|1|1|cell-width|25ex>|<cwith|1|4|1|1|cell-hmode|exact>|<table|<row|<\cell>
    Triangle Inequality and Reverse Triangle Inequality
  </cell>|<\cell>
    <math|<around*|(|\<forall\>\<b-up-x\>,\<b-up-y\>,\<b-up-z\>\<in\>\<bbb-R\><rsup|n>|)>>

    <\equation*>
      <around*|(|\<exists\><text| triangle in >\<bbb-R\><rsup|n><text| with
      sides >\<b-up-x\>,\<b-up-y\>,\<b-up-z\>|)>\<Leftrightarrow\><around*|(|<around*|\<\|\|\>|\<b-up-x\>|\<\|\|\>>\<leq\><around*|\<\|\|\>|\<b-up-y\>|\<\|\|\>>+<around*|\<\|\|\>|\<b-up-z\>|\<\|\|\>>|)>
    </equation*>

    This has many other forms. We know <math|\<b-up-z\>\<assign\>\<b-up-x\>+\<b-up-y\>>
    means that there is a triangle in <math|\<bbb-R\><rsup|n>> with sides
    <math|\<b-up-x\>,\<b-up-y\>,\<b-up-z\>>. Thus,

    <\equation*>
      <around*|\<\|\|\>|\<b-up-x\>+\<b-up-y\>|\<\|\|\>>\<leq\><around*|\<\|\|\>|\<b-up-x\>|\<\|\|\>>+<around*|\<\|\|\>|\<b-up-y\>|\<\|\|\>>
    </equation*>

    And from the triangle inequality, we get the reverse triangle inequality.

    <\equation*>
      <large|<around*|\|||\<nobracket\>>><around*|\<\|\|\>|\<b-up-x\>|\<\|\|\>>-<around*|\<\|\|\>|\<b-up-y\>|\<\|\|\>><large|<around*|\|||\<nobracket\>>>\<leq\><around*|\<\|\|\>|\<b-up-x\>-\<b-up-y\>|\<\|\|\>>
    </equation*>
  </cell>>|<row|<\cell>
    Mean Inequality Chain
  </cell>|<\cell>
    <math|<around*|(|\<forall\>x=<around*|{|x<rsub|1>,x<rsub|2>,\<ldots\>,x<rsub|n>|}>,x<rsub|i>\<in\>\<bbb-R\><rsup|+>|)>>

    <\equation*>
      min<around*|(|x|)>\<leq\>HM<around*|(|x|)>\<leq\>GM<around*|(|x|)>\<leq\>AM<around*|(|x|)>\<leq\>RMS<around*|(|x|)>\<leq\>max<around*|(|x|)>
    </equation*>

    with equality iff <math|x<rsub|1>=x<rsub|2>=\<cdots\>=x<rsub|n>>.
  </cell>>|<row|<\cell>
    Cauchy-Schwarz Inequality
  </cell>|<\cell>
    <math|<around*|(|\<forall\>n\<in\>\<bbb-Z\><rsup|+>|)><around*|(|\<forall\><around*|{|a<rsub|i>|}><rsub|i=1><rsup|n>,<around*|{|b<rsub|i>|}><rsub|i=1><rsup|n>
    with a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\>|)>>

    <\equation*>
      <around*|(|<big|sum><rsub|i=1><rsup|n>a<rsub|i><rsup|2>|)><around*|(|<big|sum><rsub|i=1><rsup|n>b<rsub|i><rsup|2>|)>\<geq\><around*|(|<big|sum><rsub|i=1><rsup|n>a<rsub|i>*b<rsub|i>|)><rsup|2>
    </equation*>

    with equality iff <math|<around*|(|\<exists\>k\<in\>\<bbb-R\>|)><around*|(|\<forall\>i\<in\>\<bbb-Z\>,1\<leq\>i\<leq\>n|)><around*|(|a<rsub|i>=k*b<rsub|i>|)>>.
  </cell>>|<row|<\cell>
    Trigonometric Substitutions
  </cell>|<\cell>
    When dealing with an inequality, it may be of use to consider the parts
    of the inequalities with a trigonometric substitution and then trying to
    express the inequality as a sine function.\ 

    For example, if we want to maximize <math|4*m+3*n> where <math|>we have
    some bound on <math|m> and <math|n>, we could use the substitution
    <math|m=r*sin<around*|(|\<theta\>|)>,n=r*cos<around*|(|\<theta\>|)>> to
    see that

    <\equation*>
      4*m+3*n=4*r*sin<around*|(|\<theta\>|)>+3*r*cos<around*|(|\<theta\>|)>=5*r*sin<around*|(|\<theta\>+\<phi\>|)>\<leq\>5r
    </equation*>
  </cell>>>>>

  <section|Miscellaneous>

  <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<cwith|1|-1|1|1|cell-background|pastel
  green>|<cwith|1|-1|1|1|cell-width|25ex>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|1|-1|cell-tborder|1ln>|<cwith|1|-1|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<twith|table-hyphen|y>|<cwith|1|1|1|1|cell-background|pastel
  yellow>|<cwith|3|3|1|1|cell-background|pastel
  yellow>|<cwith|4|4|1|1|cell-background|pastel
  yellow>|<cwith|2|2|1|1|cell-background|pastel
  green>|<cwith|1|6|1|2|cell-hyphen|t>|<cwith|1|6|1|2|cell-halign|l>|<cwith|1|6|1|2|cell-lsep|1ex>|<cwith|1|6|1|2|cell-rsep|1ex>|<cwith|1|6|1|2|cell-bsep|1ex>|<cwith|1|6|1|2|cell-tsep|1ex>|<cwith|1|6|1|1|cell-background|pastel
  yellow>|<cwith|1|6|1|1|cell-width|25ex>|<cwith|1|6|1|1|cell-hmode|exact>|<cwith|4|4|1|1|cell-background|pastel
  cyan>|<cwith|1|5|1|2|cell-hyphen|t>|<cwith|1|5|1|2|cell-halign|l>|<cwith|1|5|1|2|cell-lsep|1ex>|<cwith|1|5|1|2|cell-rsep|1ex>|<cwith|1|5|1|2|cell-bsep|1ex>|<cwith|1|5|1|2|cell-tsep|1ex>|<cwith|1|5|1|1|cell-width|25ex>|<cwith|1|5|1|1|cell-hmode|exact>|<cwith|1|5|1|1|cell-background|pastel
  cyan>|<cwith|5|5|1|1|cell-background|pastel green>|<table|<row|<\cell>
    Pigeonhole Principle
  </cell>|<\cell>
    Suppose there are at least <math|n\<times\>k+1> pigeons and <math|k>
    pigeonholes. If every pigeon is in a pigeonhole, then the there exists at
    least one pigeonhole with <math|n+1> pigeons in it.
  </cell>>|<row|<\cell>
    Generalized Pigeonhole Principle
  </cell>|<\cell>
    If <math|q<rsub|1>,q<rsub|2>,\<ldots\>,q<rsub|n>\<in\>\<bbb-Z\><rsup|+>>,
    then if <math|<around*|(|<big|sum><rsub|i=1><rsup|n>q<rsub|i>|)>-n+1>
    pigeons are placed into <math|n> holes, then we have that at least one
    <math|1\<leq\>k\<leq\>n> satisfies that the <math|k><rsup|th> pigeonhole
    has at least <math|q<rsub|k>> pigeons in it.
  </cell>>|<row|<\cell>
    Principle of Mathematical Induction
  </cell>|<\cell>
    Let <math|P(n)> be a statement that depends on a
    <math|n\<in\>\<bbb-Z\><rsup|+>>. If <math|P(1)> is true, and if
    <math|<around*|(|\<forall\>k\<in\>\<bbb-Z\><rsup|+>|)><around*|(|P<around*|(|k|)>\<Rightarrow\>P<around*|(|k+1|)>|)>>,
    then <math|P(n)> is true for all positive integers <math|n>.

    Here <math|P<around*|(|1|)>> is called the base case, and
    <math|P<around*|(|k|)>\<Rightarrow\>P<around*|(|k+1|)>> is the inductive
    step, where the assumed <math|P<around*|(|k|)>> is the inductive
    hypothesis.
  </cell>>|<row|<\cell>
    Strong Induction
  </cell>|<\cell>
    Let <math|P(n)> be a statement that depends on a
    <math|n\<in\>\<bbb-Z\><rsup|+>>. If <math|P(1)> is true, and if
    <math|<around*|(|\<forall\>k\<in\>\<bbb-Z\><rsup|+>|)><around*|(|<around*|(|P<around*|(|1|)>\<wedge\>P<around*|(|2|)>\<wedge\>\<cdots\>\<wedge\>P<around*|(|k|)>|)>\<Rightarrow\>P<around*|(|k+1|)>|)>>,
    then <math|P(n)> is true for all positive integers <math|n>.
  </cell>>|<row|<\cell>
    Strengthening the Inductive Hypothesis
  </cell>|<\cell>
    When using induction, it may not be true that what you are trying to
    prove can be proven by induction. The result which you are trying to
    prove may be too weak result to give you enough information for the
    inductive step. In such a case, change the statement to something
    stronger.

    For example, proving <math|1+<frac|1|2<rsup|2>>+<frac|1|3<rsup|2>>+\<ldots\>+<frac|1|n<rsup|2>>\<less\>2>
    could be tough with induction, but it is much easier to prove the
    stronger statement that <math|1+<frac|1|2<rsup|2>>+<frac|1|3<rsup|2>>+\<ldots\>+<frac|1|n<rsup|2>>\<less\>2-<frac|1|n>>.
  </cell>>>>>
</body>

<\initial>
  <\collection>
    <associate|info-flag|none>
    <associate|page-medium|automatic>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-3|<tuple|3|?>>
    <associate|auto-4|<tuple|4|?>>
    <associate|auto-5|<tuple|5|?>>
    <associate|auto-6|<tuple|6|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Number
      Theory> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Series
      and Sequences> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Geometry>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Trigonometry>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Inequalities>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Miscellaneous>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>