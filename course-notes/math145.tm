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
  yellow>|<cwith|9|9|1|1|cell-background|pastel
  yellow>|<cwith|12|12|1|1|cell-background|pastel yellow>|<table|<row|<\cell>
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

    By convention, we say that the trivial ring, <math|<around*|{|0|}>> is
    non-unital.
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
      <around*|(|R commutative|)>\<Leftrightarrow\><around*|(|\<forall\>a,b\<in\>R|)><around*|(|<around*|(|a+b|)><rsup|2>=a<rsup|2>+2*a*b+b<rsup|2>|)>
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
  </cell>>|<row|<\cell>
    Zero Divisors and Integral Domains
  </cell>|<\cell>
    Let <math|R> be a commutative ring. We call
    <math|0<rsub|R>\<neq\>a\<in\>R> a zero divisor if
    <math|<around*|(|\<exists\>b\<in\>R,b\<neq\>0|)><around*|(|a*b=0<rsub|R>|)>>.
    If a ring is commutative, unital, and has no zero divisors, it is an
    integral domain (or ID for short).
  </cell>>|<row|<\cell>
    Cancellation
  </cell>|<\cell>
    Let <math|R> be an integral domain. <math|<around*|(|\<forall\>a,b,c\<in\>R,
    a\<neq\>0<rsub|R>|)>>

    <\equation*>
      a*b=a*c\<Rightarrow\>b=c
    </equation*>
  </cell>>|<row|<\cell>
    Fields
  </cell>|<\cell>
    A field is a commutative unital ring where every non-zero element is a
    unit.
  </cell>>|<row|<\cell>
    Polynomial Rings
  </cell>|<\cell>
    Let <math|R> be a commutative ring. We say the polynomial ring in
    <math|x> over <math|R> is the ring of polynomials in <math|x> with
    coefficients in <math|R>. This is to say

    <\equation*>
      R<around*|[|x|]>\<assign\><around*|{|p<rsub|0>+p<rsub|1>x+\<cdots\>+p<rsub|m>x<rsup|m>\<suchthat\>m\<in\>\<bbb-N\>,p<rsub|i>\<in\>R,p<rsub|m>\<neq\>0<rsub|R>
      if m\<neq\>0|}>
    </equation*>
  </cell>>|<row|<\cell>
    Properties of Fields and Integral Domains
  </cell>|<\cell>
    Let <math|R> be a commutative, unital ring.

    <\enumerate-numeric>
      <item><math|<around*|(|R integral domain|)>\<Rightarrow\><around*|(|R<around*|[|x|]>
      integral domain|)>>.

      <item>If <math|<rsub|>0<rsub|R>\<neq\>a\<in\>R> is a zero divisor, then
      <math|a\<nin\>R<rsup|\<times\>>>.

      <item><math|<around*|(|R field|)>\<Rightarrow\><around*|(|R integral
      domain|)>>.

      <item><math|<around*|(|R integral domain|)>\<wedge\><around*|(|R
      finite|)>\<Rightarrow\><around*|(|R field|)>>.
    </enumerate-numeric>
  </cell>>>>>

  \;

  \;

  buffer: division algorithm, division, mod integers, Bezout's identity,
  <math|<around*|[|a|]><rsub|n>\<in\>\<bbb-Z\><rsub|n><rsup|\<times\>>\<Leftrightarrow\><around*|(|a,n|)>=1>,
  <math|\<bbb-Z\><rsub|n>> field iff n prime
</body>

<\initial>
  <\collection>
    <associate|info-flag|none>
    <associate|page-medium|automatic>
  </collection>
</initial>