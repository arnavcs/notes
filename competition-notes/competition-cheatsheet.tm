<TeXmacs|2.1>

<style|generic>

<\body>
  <doc-data|<doc-title|High School Competition Mathematics
  Notes>|<doc-author|<author-data|<author-name|Arnav
  Kumar>|<author-homepage|<slink|https://arnavcs.github.io>>>>>

  <\bothlined>
    This is a reference or guide about the different competition mathematics
    techniques and results that are useful. This is not sufficient on its own
    and should be supplemented with reading a sufficient number of examples
    in order to understand.
  </bothlined>

  <\padded-center>
    <tabular|<tformat|<cwith|1|-1|1|1|cell-tborder|1ln>|<cwith|1|-1|1|1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|2|2|1|1|cell-background|pastel
    yellow>|<cwith|3|3|1|1|cell-background|pastel
    green>|<cwith|4|4|1|1|cell-background|pastel
    cyan>|<cwith|5|5|1|1|cell-background|pastel blue>|<table|<row|<cell|Color
    Scheme Key>>|<row|<cell|Definition>>|<row|<cell|Technique>>|<row|<cell|Result>>|<row|<cell|Note>>>>>
  </padded-center>

  <section|Trigonometry>

  <tabular|<tformat|<twith|table-hyphen|y>|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<cwith|1|-1|1|1|cell-background|pastel
  green>|<cwith|1|-1|1|1|cell-width|25ex>|<cwith|1|-1|1|1|cell-hmode|min>|<cwith|1|1|1|1|cell-background|pastel
  cyan>|<table|<row|<\cell>
    Sum of sines of the same period
  </cell>|<\cell>
    <math|<around*|(|\<forall\>a<rsub|1>,a<rsub|2>,\<lambda\><rsub|1>,\<lambda\><rsub|2>\<in\>\<bbb-R\>|)><around*|(|\<exists\>a<rsub|3>,\<lambda\><rsub|3>\<in\>\<bbb-R\>|)><around*|(|\<forall\>\<theta\>\<in\>\<bbb-R\>|)>>

    <\equation*>
      a<rsub|1>*sin<around*|(|\<theta\>+\<lambda\><rsub|1>|)>+a<rsub|2>*sin<around*|(|\<theta\>+\<lambda\><rsub|2>|)>=
      a<rsub|3>*sin<around*|(|\<theta\>+\<lambda\><rsub|3>|)>
    </equation*>

    And specifically when we have <math|\<lambda\><rsub|1>=0,\<lambda\><rsub|2>=<frac|\<mathpi\>|2>,a<rsub|1>=a,a<rsub|2>=b>,
    we see <math|a<rsub|1>*sin<around*|(|\<theta\>+\<lambda\><rsub|1>|)>=a*sin<around*|(|\<theta\>|)>,*a<rsub|2>*sin<around*|(|\<theta\>+\<lambda\><rsub|2>|)>=b*cos<around*|(|\<theta\>|)>>.
    In this case, we get

    <\equation*>
      a*sin<around*|(|\<theta\>|)>+b*cos<around*|(|\<theta\>|)>=
      <sqrt|a<rsup|2>+b<rsup|2>>*sin<around*|(|\<theta\>+arctan<around*|(|<frac|b|a>|)>|)>
    </equation*>
  </cell>>>>>

  \;

  <section|Inequalities>

  <tabular|<tformat|<twith|table-hyphen|y>|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<cwith|1|-1|1|1|cell-background|pastel
  green>|<cwith|1|-1|1|1|cell-width|25ex>|<cwith|1|-1|1|1|cell-hmode|min>|<cwith|3|3|1|1|cell-background|pastel
  cyan>|<cwith|4|4|1|1|cell-background|pastel
  green>|<cwith|2|2|1|1|cell-background|pastel
  cyan>|<cwith|1|1|1|1|cell-background|pastel cyan>|<table|<row|<\cell>
    Triangle Inequality and Reverse Triangle Inequality
  </cell>|<\cell>
    <math|<around*|(|\<forall\>\<b-up-x\>,\<b-up-y\>,\<b-up-z\>\<in\>\<bbb-R\><rsup|n>|)>>

    <\equation*>
      <around*|(|\<exists\> triangle in \<bbb-R\><rsup|n> with sides
      \<b-up-x\>,\<b-up-y\>,\<b-up-z\>|)>\<Leftrightarrow\><around*|(|<around*|\<\|\|\>|\<b-up-x\>|\<\|\|\>>\<leq\><around*|\<\|\|\>|\<b-up-y\>|\<\|\|\>>+<around*|\<\|\|\>|\<b-up-z\>|\<\|\|\>>|)>
    </equation*>

    This has many other forms. We know <math|\<b-up-z\>\<assign\>\<b-up-x\>+\<b-up-y\>>
    means that there is a triangle in <math|\<bbb-R\><rsup|n>> with sides
    <math|\<b-up-x\>,\<b-up-y\>,\<b-up-z\>>. Thus,

    <\equation*>
      <around*|\<\|\|\>|\<b-up-x\>+\<b-up-y\>|\<\|\|\>>\<leq\><around*|\<\|\|\>|\<b-up-x\>|\<\|\|\>>+<around*|\<\|\|\>|\<b-up-y\>|\<\|\|\>>
    </equation*>

    And from the triangle inequality, we get the reverse traingle inequality.

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
    express th4e inequality as a sine function.\ 

    For example, if we want to maximize <math|4*m+3*n> where <math|>we have
    some bound on <math|m> and <math|n>, we could use the substitution
    <math|m=r*sin<around*|(|\<theta\>|)>,n=r*cos<around*|(|\<theta\>|)>> to
    see that <math|4*m+3*n=4*r*sin<around*|(|\<theta\>|)>+3*r*cos<around*|(|\<theta\>|)>=5*r*sin<around*|(|\<theta\>+\<phi\>|)>\<leq\>5r>.
  </cell>>>>>

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Trigonometry>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Inequalities>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>