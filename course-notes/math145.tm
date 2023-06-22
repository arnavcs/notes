<TeXmacs|2.1>

<style|article>

<\body>
  <doc-data|<doc-title|Math 145: Algebra (Advanced Level)
  Notes>|<doc-author|<author-data|<author-name|Arnav
  Kumar>|<author-homepage|<slink|https://arnavcs.github.io>>>>>

  <\bothlined>
    These are takeaway notes for the fall 2022 offering of Math 145,
    instructed by Blake Madill at the University of Waterloo.
  </bothlined>

  <\padded-center>
    <tabular|<tformat|<cwith|1|1|2|2|cell-background|pastel
    cyan>|<cwith|1|1|3|3|cell-background|pastel
    green>|<cwith|1|1|4|4|cell-background|pastel
    yellow>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-lborder|1ln>|<cwith|1|1|1|-1|cell-rborder|1ln>|<cwith|1|1|1|1|cell-background|pastel
    blue>|<table|<row|<cell|Note>|<cell|Example>|<cell|Definition>|<cell|Results>>>>>
  </padded-center>

  <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<cwith|1|-1|1|1|cell-background|pastel
  green>|<cwith|1|-1|1|1|cell-width|25ex>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|1|-1|cell-tborder|1ln>|<cwith|1|-1|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<twith|table-hyphen|y>|<cwith|4|4|1|1|cell-background|pastel
  yellow>|<cwith|5|5|1|1|cell-background|pastel
  blue>|<cwith|6|6|1|1|cell-background|pastel
  yellow>|<cwith|7|7|1|1|cell-background|pastel
  yellow>|<cwith|9|9|1|1|cell-background|pastel yellow>|<table|<row|<\cell>
    Rings
  </cell>|<\cell>
    A ring, <math|<around*|(|R,+,\<times\>|)>>, is a set, <math|R>, along
    with two functions, <math|+\<of\>R<rsup|2>\<rightarrow\>R> and
    <math|\<times\>\<of\>R<rsup|2>\<rightarrow\>R>, which we call addition
    and multiplication. We must have the following ring axioms:

    <\enumerate-numeric>
      <item>There exists an additive identity.

      <item>Every element has an additive inverse.

      <item>Addition is commutative.

      <item>Addition is associative.

      <item>Multiplication is associative.

      <item>Multiplication distributes over addition.
    </enumerate-numeric>

    We often simply denote this ring by it set of elements, <math|R>.
  </cell>>|<row|<\cell>
    Unital Rings, Units, and the Group of Units
  </cell>|<\cell>
    A unital ring is a ring with a multiplicative identity. In a unital ring,
    <math|R>, an element with a multiplicative inverse is called a unit. The
    group of units of <math|R> is <math|R<rsup|\<times\>>\<assign\><around*|{|a\<in\>R\<suchthat\>a<rsup|-1>
    exists|}>>.\ 
  </cell>>|<row|<\cell>
    Commutative Rings
  </cell>|<\cell>
    A ring, <math|R>, is commutative if multiplication commutes, which is to
    say that <math|<around*|(|\<forall\>a,b\<in\>R|)><around*|(|a*b=b*a|)>>.
  </cell>>|<row|<\cell>
    Properties of Rings
  </cell>|<\cell>
    From the ring axioms, we get the following results for a ring, <math|R>:

    <\enumerate-numeric>
      <item>The additive inverse of any <math|a\<in\>R> is unique and denoted
      <math|-a>.

      <item>The additive identity is unique, and denoted <math|0<rsub|R>>.

      <item><math|<around*|(|\<forall\>a\<in\>R|)><around*|(|a\<cdot\>0<rsub|R>=0<rsub|R>\<cdot\>a=0<rsub|R>|)>>.

      <item><math|<around*|(|\<forall\>a,b\<in\>R|)><around*|(|<around*|(|-a|)>*b=a*<around*|(|-b|)>=-<around*|(|a*b|)>|)>>
      </enumerate-numeric>

    And for a unital ring, <math|R>, we see:

    <\enumerate-numeric>
      <item>The multiplicative identity is unique, and denoted
      <math|1<rsub|R>>.

      <item>If <math|a\<in\>R<rsup|\<times\>>>, then the multiplicative
      inverse of <math|a> is unique and denoted <math|a<rsup|-1>>.
    </enumerate-numeric>
  </cell>>|<row|<\cell>
    Ring Notation
  </cell>|<\cell>
    In a ring, <math|R>, and for some <math|n\<in\>\<bbb-N\>>, we generally
    say that

    <\enumerate-numeric>
      <item><math|a-b\<equiv\>a+<around*|(|-b|)>>

      <item><math|n*a\<equiv\><wide*|a+a+\<cdots\>+a|\<wide-underbrace\>><rsub|n
      times><rsub|>>.

      <item>If <math|R> is unital, <math|n\<equiv\>n*1\<equiv\><wide*|1+1+\<cdots\>+1|\<wide-underbrace\>><rsub|n
      times>>

      <item><math|a<rsup|n>\<equiv\><wide*|a\<times\>a\<times\>\<cdots\>\<times\>a|\<wide-underbrace\>><rsub|n
      times>>
    </enumerate-numeric>
  </cell>>|<row|<\cell>
    Checking Commutativity
  </cell>|<\cell>
    Let <math|R> be a ring.

    <\equation*>
      <around*|(|R is commutative|)>\<Leftrightarrow\><around*|(|\<forall\>a,b\<in\>R|)><around*|(|<around*|(|a+b|)><rsup|2>=a<rsup|2>+2*a*b+b<rsup|2>|)>
    </equation*>
  </cell>>|<row|<\cell>
    Binomial Theorem
  </cell>|<\cell>
    Let <math|R> be a commutative ring. <math|<around*|(|\<forall\>a,b\<in\>R|)><around*|(|\<forall\>n\<in\>\<bbb-N\>|)>>

    <\equation*>
      <around*|(|a+b|)><rsup|n>=<big|sum><rsub|k=0><rsup|n><choose|n|k>a<rsup|k>*b<rsup|n-k>
    </equation*>
  </cell>>|<row|<\cell>
    Subring
  </cell>|<\cell>
    A subring, <math|S>, of <math|R> is a subset of <math|R> which maintains
    the same ring structure of <math|R>. This means it is a ring under the
    same addition and multiplication definitions for <math|R>.
  </cell>>|<row|<\cell>
    Subring Test
  </cell>|<\cell>
    Let <math|R> be a ring, and let <math|\<varnothing\>\<neq\>S\<subseteq\>R>.\ 

    <\equation*>
      <around*|(|S subring of R|)>\<Leftrightarrow\><around*|(|\<forall\>a,b\<in\>S|)><around*|(|a\<times\>b\<in\>S\<wedge\>a-b\<in\>S|)>
    </equation*>
  </cell>>|<row|<\cell>
    Center of a Ring
  </cell>|<\cell>
    Let <math|R> be a ring. The center of the ring is defined by:

    <\equation*>
      Z<around*|(|R|)>\<assign\><around*|{|a\<in\>R\<suchthat\><around*|(|\<forall\>b\<in\>R|)><around*|(|a*b=b*a|)>|}>
    </equation*>

    We have that <math|Z<around*|(|R|)>> is always a subring of <math|R>, and
    is commutative.
  </cell>>>>>

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|info-flag|none>
    <associate|page-medium|automatic>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|4>>
    <associate|auto-3|<tuple|3|9>>
  </collection>
</references>