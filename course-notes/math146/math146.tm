<TeXmacs|2.1>

<style|article>

<\body>
  <doc-data|<doc-title|Math 145: Algebra (Advanced)
  Notes>|<doc-author|<author-data|<author-name|Arnav
  Kumar>|<author-homepage|<slink|https://arnavcs.github.io>>>>>

  <\bothlined>
    These are notes for the winter 2023 offering of Math 146, instructed by
    Kateryna Tatarko at the University of Waterloo.
  </bothlined>

  <\padded-center>
    <tabular|<tformat|<cwith|1|1|1|1|cell-background|pastel
    cyan>|<cwith|1|1|2|2|cell-background|pastel
    green>|<cwith|1|1|3|3|cell-background|pastel
    yellow>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-lborder|1ln>|<cwith|1|1|1|-1|cell-rborder|1ln>|<table|<row|<cell|Example>|<cell|Definition>|<cell|Results>>>>>
  </padded-center>

  <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<cwith|1|-1|1|1|cell-background|pastel
  green>|<cwith|1|-1|1|1|cell-width|25ex>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|1|-1|cell-tborder|1ln>|<cwith|1|-1|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|4|4|1|1|cell-background|pastel
  yellow>|<cwith|6|6|1|1|cell-background|pastel
  yellow>|<cwith|7|7|1|1|cell-background|pastel
  yellow>|<cwith|9|9|1|1|cell-background|pastel
  yellow>|<cwith|12|12|1|1|cell-background|pastel
  yellow>|<cwith|15|29|1|1|cell-background|pastel
  yellow>|<cwith|16|16|1|1|cell-background|pastel
  green>|<cwith|17|17|1|1|cell-background|pastel
  green>|<cwith|18|18|1|1|cell-background|pastel
  green>|<cwith|20|20|1|1|cell-background|pastel
  green>|<cwith|21|21|1|1|cell-background|pastel
  green>|<cwith|22|22|1|1|cell-background|pastel
  green>|<cwith|23|23|1|1|cell-background|pastel
  green>|<cwith|25|25|1|1|cell-background|pastel
  green>|<cwith|5|5|1|1|cell-background|pastel
  green>|<cwith|26|27|1|1|cell-background|pastel
  green>|<cwith|31|31|1|1|cell-background|pastel
  yellow>|<twith|table-hyphen|n>|<cwith|43|43|1|2|cell-hyphen|t>|<cwith|43|43|1|2|cell-halign|l>|<cwith|43|43|1|2|cell-lsep|1ex>|<cwith|43|43|1|2|cell-rsep|1ex>|<cwith|43|43|1|2|cell-bsep|1ex>|<cwith|43|43|1|2|cell-tsep|1ex>|<cwith|43|43|1|1|cell-width|25ex>|<cwith|43|43|1|1|cell-hmode|exact>|<cwith|43|43|1|2|cell-tborder|1ln>|<cwith|43|43|1|2|cell-bborder|1ln>|<cwith|43|43|1|2|cell-lborder|0ln>|<cwith|43|43|1|2|cell-rborder|0ln>|<cwith|44|44|1|1|cell-hyphen|n>|<cwith|44|44|1|1|cell-background|pastel
  green>|<cwith|46|46|1|1|cell-background|pastel
  green>|<cwith|45|45|1|1|cell-background|pastel
  yellow>|<cwith|38|43|1|1|cell-background|pastel
  yellow>|<cwith|35|37|1|1|cell-background|pastel
  green>|<cwith|32|34|1|1|cell-background|pastel
  yellow>|<cwith|48|48|1|1|cell-background|pastel yellow>|<table|<row|<\cell>
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
    <text| exists>|}>>.\ 

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

      <item><math|n*a\<equiv\>a+<above|\<ldots\>|n\<times\>>+a<rsub|>>.\ 

      <item>If <math|R> is unital, <math|n\<equiv\>n*1\<equiv\>1+<above|\<ldots\>|n\<times\>>+1>

      <item><math|a<rsup|n>\<equiv\>a\<times\><above|\<ldots\>|n\<times\>>\<times\>a>
    </enumerate-numeric>
  </cell>>|<row|<\cell>
    Checking Commutativity
  </cell>|<\cell>
    Let <math|R> be a ring.

    <\equation*>
      <around*|(|R <text| commutative>|)>\<Leftrightarrow\><around*|(|\<forall\>a,b\<in\>R|)><around*|(|<around*|(|a+b|)><rsup|2>=a<rsup|2>+2*a*b+b<rsup|2>|)>
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
      <around*|(|S <text| subring of > R|)>\<Leftrightarrow\><around*|(|\<forall\>a,b\<in\>S|)><around*|(|a\<times\>b\<in\>S\<wedge\>a-b\<in\>S|)>
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
    Zero Divisors and Integral Domains (ID)
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
    Let <math|R> be a commutative, unital ring. We have the following:

    <\enumerate-numeric>
      <item><math|<around*|(|R <text| ID>|)>\<Rightarrow\><around*|(|R<around*|[|x|]><text|
      ID>|)>>.

      <item>If <math|<rsub|>0<rsub|R>\<neq\>a\<in\>R> is a zero divisor, then
      <math|a\<nin\>R<rsup|\<times\>>>.

      <item><math|<around*|(|R <text| field>|)>\<Rightarrow\><around*|(|R
      <text| ID>|)>>.

      <item><math|<around*|(|R <text| ID>|)>\<wedge\><around*|(|R <text|
      finite>|)>\<Rightarrow\><around*|(|R <text| field>|)>>.
    </enumerate-numeric>
  </cell>>|<row|<\cell>
    Image and Preimage
  </cell>|<\cell>
    Let <math|f\<of\>A\<rightarrow\>B> be a function. And let
    <math|C\<subseteq\>A>, and <math|D\<subseteq\>B>. We define the image of
    <math|C> as <math|f<around*|(|C|)>\<assign\><around*|{|f<around*|(|x|)>\<suchthat\>x\<in\>C|}>>
    and we define the preimage of <math|D> as
    <math|f<rsup|-1><around*|(|D|)>\<assign\><around*|{|x\<in\>A\<suchthat\>f<around*|(|x|)>\<in\>D|}>>.
  </cell>>|<row|<\cell>
    Injective, Surjective, and Bijective
  </cell>|<\cell>
    Consider a function <math|f\<of\>A\<rightarrow\>B>. We say <math|f> is
    injective (or one-to-one) if\ 

    <\equation*>
      <around*|(|\<forall\>x,y\<in\>A|)><around*|(|f<around*|(|x|)>=f<around*|(|y|)>\<Rightarrow\>x=y|)>
    </equation*>

    We say <math|f> is surjective (or onto) if\ 

    <\equation*>
      <around*|(|\<forall\>y\<in\>B|)><around*|(|\<exists\>x\<in\>A|)><around*|(|f<around*|(|x|)>=y|)>
    </equation*>

    And if <math|f> is both surjective and injective, it is bijective (or
    invertible) and thus has an inverse function, <math|f<rsup|-1>>.
  </cell>>|<row|<\cell>
    Homomorphisms
  </cell>|<\cell>
    Let <math|R,S> be rings. We say that <math|\<varphi\>\<of\>R\<rightarrow\>S>
    is a homomorphism if <math|<around*|(|\<forall\>a,b\<in\>R|)>>

    <\enumerate-numeric>
      <item><math|\<varphi\><around*|(|a+b|)>=\<varphi\><around*|(|a|)>+\<varphi\><around*|(|b|)>>

      <item><math|\<varphi\><around*|(|a*b|)>=\<varphi\><around*|(|a|)>*\<varphi\><around*|(|b|)>>
    </enumerate-numeric>
  </cell>>|<row|<\cell>
    Properties of Homomorphisms
  </cell>|<\cell>
    Let <math|\<varphi\>\<of\>R\<rightarrow\>S> be a homomorphism. Then:

    <\enumerate-numeric>
      <item><math|\<varphi\><around*|(|0<rsub|R>|)>=0<rsub|S>>

      <item><math|<around*|(|\<forall\>r\<in\>R|)><around*|(|\<varphi\><around*|(|-r|)>=-\<varphi\><around*|(|r|)>|)>>

      <item><math|<around*|(|A <text| subring of >
      R|)>\<Rightarrow\><around*|(|\<varphi\><around*|(|A|)> <text| subring
      of > S|)>>

      <item><math|<around*|(|B <text| subring of >
      S|)>\<Rightarrow\><around*|(|\<varphi\><rsup|-1><around*|(|B|)> <text|
      subring of > R|)>>
    </enumerate-numeric>

    Additionally, if <math|\<varphi\>> is surjective and <math|R> is unital,
    then:

    <\enumerate-numeric>
      <item><math|S> is unital with <math|1<rsub|S>=\<varphi\><around*|(|1<rsub|R>|)>>

      <item><math|<around*|(|a\<in\>R<rsup|\<times\>>|)>\<Rightarrow\><around*|(|\<varphi\><around*|(|a|)>\<in\>S<rsup|\<times\>>\<wedge\>\<varphi\><around*|(|a<rsup|-1>|)>=\<varphi\><around*|(|a|)><rsup|-1>|)>>
    </enumerate-numeric>
  </cell>>|<row|<\cell>
    Kernel
  </cell>|<\cell>
    Let <math|\<varphi\>\<of\>R\<rightarrow\>S> be a homomorphism. The kernel
    of <math|\<varphi\>> is

    <\equation*>
      Ker \<varphi\>\<assign\><around*|{|x\<in\>R\<suchthat\>\<varphi\><around*|(|x|)>=0<rsub|S>|}>=\<varphi\><rsup|-1><around*|(|0<rsub|S>|)>
    </equation*>

    Then from above, since <math|<around*|{|0<rsub|S><rsub|>|}>> is a subring
    of <math|S>, we see that <math|Ker \<varphi\>> is a subring of <math|R>.
  </cell>>|<row|<\cell>
    Embedding
  </cell>|<\cell>
    Let <math|\<varphi\>\<of\>R\<rightarrow\>S> be a homomorphism. We say
    that if <math|\<varphi\>> is injective, then it is an embedding.
    Additionally, we can determine if <math|\<varphi\>> is an embedding since\ 

    <\equation*>
      <around*|(|\<varphi\> <text| embedding>|)>\<Leftrightarrow\><around*|(|Ker
      \<varphi\>=<around*|{|0<rsub|R>|}>|)>
    </equation*>
  </cell>>|<row|<\cell>
    Isomorphism and Isomorphic
  </cell>|<\cell>
    Let <math|\<varphi\>\<of\>R\<rightarrow\>S> be a homomorphism. If
    <math|\<varphi\>> is bijective, we call it an isomorphism. Additionally,
    we then say that <math|R> is isomorphic to <math|S>, denoted
    <math|R\<cong\>S>.
  </cell>>|<row|<\cell>
    Ideal and Proper Ideal
  </cell>|<\cell>
    Let <math|R> be a ring. We say <math|I> is an ideal of <math|R> if it is
    a subring of <math|R> and <math|<around*|(|\<forall\>r\<in\>R|)><around*|(|\<forall\>a\<in\>I|)><around*|(|a*r,r*a\<in\>I|)>>.
    If <math|I> is an ideal of <math|R> and <math|I\<neq\>R>, then <math|I>
    is a proper ideal of <math|R>.
  </cell>>|<row|<\cell>
    Ideal Test
  </cell>|<\cell>
    Let <math|R> be a ring, and let <math|\<varnothing\>\<neq\>I\<subseteq\>R>.

    <\equation*>
      <around*|(|I <text| ideal>|)>\<Leftrightarrow\><around*|(|\<forall\>a,b\<in\>I|)><around*|(|\<forall\>r\<in\>R|)><around*|(|a-b,a*r,r*a\<in\>I|)>
    </equation*>
  </cell>>|<row|<\cell>
    Principal Ideal
  </cell>|<\cell>
    Let <math|R> be a commutative, unital ring, and let <math|r\<in\>R> be
    fixed. The principal ideal generated by <math|r> is
    <math|<around*|\<langle\>|r|\<rangle\>>\<assign\><around*|{|r*x\<suchthat\>x\<in\>R|}>>.
  </cell>>|<row|<\cell>
    Equivalence Relations
  </cell>|<\cell>
    An equivalence relation is a relation that is reflexive, symmetric, and
    transitive.
  </cell>>|<row|<\cell>
    Modular Arithmetic, Equivalence Classes, and Quotient Rings
  </cell>|<\cell>
    Let <math|I> be an ideal of the ring <math|R>. We define an equivalence
    relation, <math|\<sim\>>, such that <math|<around*|(|\<forall\>a,b\<in\>R|)><around*|(|a\<sim\>b\<Leftrightarrow\>b-a\<in\>I|)>>.
    We will use the notation <math|a\<equiv\>b <around*|(|mod I|)>> to mean
    <math|a\<sim\>b>.

    For some <math|a\<in\>R>, the equivalence class of <math|a> in <math|R>
    is <math|<around*|[|a|]><rsub|I>\<assign\><around*|{|x\<in\>R\<suchthat\>a\<equiv\>x
    <around*|(|mod I|)>|}>>. Notationally, <math|<wide|a|\<bar\>>> is the
    same as <math|<around*|[|a|]><rsub|I>>.

    Now define <math|R> mod <math|I> as <math|<frac*|R|I>\<assign\><around*|{|<around*|[|a|]><rsub|I>\<suchthat\>a\<in\>R|}>>
    with operations defined so that <math|<around*|(|\<forall\>a,b\<in\>R|)><around*|(|<around*|[|a|]><rsub|I>+<around*|[|b|]><rsub|I>=<around*|[|a+b|]><rsub|I>\<wedge\><around*|[|a|]><rsub|I>\<cdot\><around*|[|b|]><rsub|I>=<around*|[|a\<cdot\>b|]><rsub|I>|)>>.
    This is a what we call a quotient ring.
  </cell>>|<row|<\cell>
    Modular Arithmetic with <math|\<bbb-Z\>>
  </cell>|<\cell>
    For <math|n\<in\>\<bbb-Z\><rsup|+>>, we define
    <math|\<bbb-Z\><rsub|n>\<assign\><frac*|\<bbb-Z\>|<around*|\<langle\>|n|\<rangle\>>>=<around*|{|<wide|0|\<bar\>>,<wide|1|\<bar\>>,\<ldots\>,<wide|n-1|\<bar\>>|}>>,
    and by convention we write <math|<around*|(|mod n|)>> to mean
    <math|<around*|(|mod <around*|\<langle\>|n|\<rangle\>>|)>>.
  </cell>>|<row|<\cell>
    Fermat's Little Theorem
  </cell>|<\cell>
    Let <math|p> be prime, then <math|<around*|(|\<forall\>a\<in\>\<bbb-Z\><rsub|p>,a\<neq\>0<rsub|\<bbb-Z\><rsub|p>>|)>>

    <\equation*>
      a<rsup|p-1>=1<rsub|\<bbb-Z\><rsub|p>>
    </equation*>
  </cell>>|<row|<\cell>
    Prime and Maximal Ideals
  </cell>|<\cell>
    With reference to prime and maximal ideals of a ring <math|R>, we assume
    that <math|R> is a commutative, unital ring. We say an ideal, <math|I>,
    of <math|R>, is prime if

    <\enumerate-numeric>
      <item><math|I> is a proper ideal of <math|R>

      <item><math|<around*|(|\<forall\>a,b\<in\>R|)><around*|(|<around*|(|a*b\<in\>I|)>\<Rightarrow\><around*|(|a,b\<in\>I|)>|)>>
    </enumerate-numeric>

    Additionally, we say that <math|I> is maximal if

    <\enumerate-numeric>
      <item><math|I> is a proper ideal of <math|R>

      <item><math|<around*|(|\<forall\><text| ideals >J<text| of
      >R|)><around*|(|<around*|(|I\<subsetneq\>J\<subseteq\>R|)>\<Rightarrow\><around*|(|J=R|)>|)>>
    </enumerate-numeric>
  </cell>>|<row|<\cell>
    Prime and Maximal Ideal Quotient Rings
  </cell>|<\cell>
    Let <math|I> be an ideal of ring <math|R>. We have the following two
    results:

    <\enumerate-numeric>
      <item><math|<around*|(|I<text| prime>|)>\<Leftrightarrow\><around*|(|<frac*|R|I><text|
      ID>|)>>

      <item><math|<around*|(|I<text| maximal>|)>\<Leftrightarrow\><around*|(|<frac*|R|I><text|
      field>|)>>
    </enumerate-numeric>

    And since <math|<around*|(|<frac*|R|I><text|
    field>|)>\<Rightarrow\><around*|(|<frac*|R|I><text| ID>|)>>, we get as a
    corollory that <math|<around*|(|I<text|
    maximal>|)>\<Leftrightarrow\><around*|(|<frac*|R|I><text|
    field>|)>\<Rightarrow\><around*|(|<frac*|R|I><text|
    ID>|)>\<Leftrightarrow\><around*|(|I<text| prime>|)>>.
  </cell>>|<row|<\cell>
    Corollory of Zorn's Lemma
  </cell>|<\cell>
    Let <math|R> be a commutative, unital ring.
    <math|<around*|(|\<forall\>I<text| proper ideal of
    >R|)><around*|(|\<exists\>M<text| maximal ideal of
    >R|)><around*|(|I\<subseteq\>M|)>>.\ 

    Additionally, if <math|a\<nin\>R<rsup|\<times\>>>, then
    <math|<around*|(|\<exists\>M<text| maximal ideal of
    >R|)><around*|(|a\<in\>M|)>>.
  </cell>>|<row|<\cell>
    Existence of a homomorphsim
  </cell>|<\cell>
    Let <math|I> be an ideal of ring <math|R>. Then, there is some ring
    <math|S> and homomorphism <math|\<varphi\>\<of\>R\<rightarrow\>S> such
    that <math|I=Ker \<varphi\>>.
  </cell>>|<row|<\cell>
    First Isomorphism Theorem
  </cell>|<\cell>
    Let <math|\<varphi\>\<of\>R\<rightarrow\>S> be a ring homomorphism
    between rings <math|R> and <math|S>. Now,

    <\equation*>
      <frac*|R|Ker \<varphi\>>\<cong\>\<varphi\><around*|(|R|)>
    </equation*>
  </cell>>|<row|<\cell>
    Ideal Sum
  </cell>|<\cell>
    Let <math|I,J> be ideals of <math|R>. We define the ideal sum <math|I+J>
    as follows:

    <\equation*>
      I+J\<assign\><around*|{|a+b\<suchthat\>a\<in\>I,b\<in\>J|}>
    </equation*>
  </cell>>|<row|<\cell>
    Comaximal Ideals
  </cell>|<\cell>
    Ideals <math|I,J> of <math|R> are comaximal if <math|I+J=R>
  </cell>>|<row|<\cell>
    Ideal Product
  </cell>|<\cell>
    Let <math|I,J> be ideals of <math|R>. The ideal product of <math|I> and
    <math|J> is defined as:

    <\equation*>
      I*J\<assign\><around*|{|a<rsub|1>*b<rsub|1>+\<cdots\>+a<rsub|n>*b<rsub|n>\<suchthat\>n\<in\>\<bbb-N\>,a<rsub|i>\<in\>I,a<rsub|j>\<in\>J|}>
    </equation*>

    If we have multiple ideals <math|I<rsub|1>,I<rsub|2>,\<ldots\>,I<rsub|m>>,
    then we can simplify the product to get

    <\equation*>
      I<rsub|1>*I<rsub|2>*\<cdots\>*I<rsub|m>=<around*|{|a<rsub|1
      1>**\<cdots\>**a<rsub|1 m>+\<cdots\>+a<rsub|n 1>*\<cdots\>*a<rsub|n
      m>\<suchthat\>n\<in\>\<bbb-N\>,a<rsub|i j>\<in\>I<rsub|j>|}>
    </equation*>
  </cell>>|<row|<\cell>
    Ideal Product of Principal Ideals
  </cell>|<\cell>
    For <math|R> commutative, and unital, we have for <math|m,n\<in\>R>, that
    <math|<around*|\<langle\>|m|\<rangle\>>\<cdot\><around*|\<langle\>|n|\<rangle\>>=<around*|\<langle\>|m*n|\<rangle\>>>.
  </cell>>|<row|<\cell>
    Property of Comaximality
  </cell>|<\cell>
    Let <math|I,J> be comaximal ideals of the commutative, unital ring
    <math|R>. We then have that <math|I*J=I\<cap\>J>.
  </cell>>|<row|<\cell>
    Chinese Remainder Theorem (CRT)
  </cell>|<\cell>
    Let <math|R> be a commutative, unital ring with comaximal ideals <math|I>
    and <math|J>. We have that

    <\equation*>
      <frac*|R|I*J>\<cong\><frac*|R|I>\<times\><frac*|R|J>
    </equation*>

    Where <math|\<times\>> is the cartesian product.
  </cell>>|<row|<\cell>
    Corollary of CRT
  </cell>|<\cell>
    Let <math|R> be a commutative, untial ring with comximal ideals <math|I>
    and <math|J>. For <math|a,b\<in\>R> the system of congruences

    <\eqnarray*>
      <tformat|<table|<row|<cell|x>|<cell|\<equiv\>>|<cell|a<space|1em><around*|(|mod
      I|)>>>|<row|<cell|x>|<cell|\<equiv\>>|<cell|b<space|1em><around*|(|mod
      J|)>>>>>
    </eqnarray*>

    has exactly one solution, which corresponds to one of the congruence
    classes of <math|<frac*|R|I*J>>.
  </cell>>|<row|<\cell>
    Generalized Chinese Remainder Theorem
  </cell>|<\cell>
    Let <math|R> be a commutative, unital ring with ideals
    <math|I<rsub|1>,I<rsub|2>,\<ldots\>,I<rsub|n>> which are pairwise
    comiximal. We have that <math|I<rsub|1>*I<rsub|2>*\<cdots\>**I<rsub|n>=I<rsub|1>\<cap\>I<rsub|2>\<cap\>\<cdots\>\<cap\>I<rsub|n>>,
    and that

    <\equation*>
      <frac*|R|I<rsub|1>*I<rsub|2>**\<cdots\>*I<rsub|n>>\<cong\><frac*|R|I<rsub|1>>\<times\><frac*|R|I<rsub|2>>\<times\>\<cdots\>\<times\><frac*|R|I<rsub|n>>
    </equation*>

    Where <math|\<times\>> is the cartesian product.
  </cell>>|<row|<\cell>
    Corollary of Generalized CRT
  </cell>|<\cell>
    Let <math|R> be a commutative, unital ring with ideals
    <math|I<rsub|1>,I<rsub|2>,\<ldots\>,I<rsub|n>> which are pairwise
    comiximal. For <math|a<rsub|1>,a<rsub|2>,\<ldots\>a<rsub|n>\<in\>R> the
    system of congruences

    <\eqnarray*>
      <tformat|<table|<row|<cell|x>|<cell|\<equiv\>>|<cell|a<rsub|1><space|1em><around*|(|mod
      I<rsub|1>|)>>>|<row|<cell|>|<cell|\<vdots\>>|<cell|>>|<row|<cell|x>|<cell|\<equiv\>>|<cell|a<rsub|n><space|1em><around*|(|mod
      I<rsub|n>|)>>>>>
    </eqnarray*>

    has exactly one solution, which corresponds to one of the congruence
    classes of <math|<frac*|R|I<rsub|1>*I<rsub|2>**\<cdots\>*I<rsub|n>>>.
  </cell>>|<row|<cell|Associates>|<\cell>
    Given an ID, <math|R>, we say that <math|a,b\<in\>R> are associates if
    <math|<around*|(|\<exists\>u\<in\>R<rsup|\<times\>>|)><around*|(|a=u*b|)>>
  </cell>>|<row|<\cell>
    Associates and Principal Ideals
  </cell>|<\cell>
    Let <math|R> be an ID, and let <math|a,b\<in\>R>. We have that <math|a>
    and <math|b> are associates iff <math|<around*|\<langle\>|a|\<rangle\>>=<around*|\<langle\>|b|\<rangle\>>>.
  </cell>>|<row|<\cell>
    Divisibility
  </cell>|<\cell>
    Let <math|R> be an ID. For <math|a,b\<in\>R>, when <math|a> divides
    <math|b>, we denote it as <math|a\<divides\>b>. Additionally, we define
    divisibility such that

    <\equation*>
      <around*|(|a\<divides\>b|)>\<Leftrightarrow\><around*|(|b\<in\><around*|\<langle\>|a|\<rangle\>>|)>\<Leftrightarrow\><around*|(|\<exists\>c\<in\>R|)><around*|(|b=a*c|)>
    </equation*>
  </cell>>|<row|<\cell>
    Irreducible and Prime elements
  </cell>|<\cell>
    Let <math|R> be an ID and let <math|a\<in\>R>, but
    <math|a\<neq\>0<rsub|R>> and <math|a\<nin\>R<rsup|\<times\>>> (since
    those values are neither prime nor irreducible).

    We define irreducibility so that

    <\equation*>
      <around*|(|a<text| irreducible>|)>\<Leftrightarrow\><around*|(|<around*|(|a=b*c|)>\<Rightarrow\><around*|(|b\<in\>R<rsup|\<times\>>|)>\<vee\><around*|(|c\<in\>R<rsup|\<times\>>|)>|)>
    </equation*>

    And we define primality so that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|a<text|
      prime>|)>>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|<around*|(|a\<divides\>b*c|)>\<Rightarrow\><around*|(|a\<divides\>b|)>\<vee\><around*|(|a\<divides\>c|)>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|<around*|(|b*c\<in\><around*|\<langle\>|a|\<rangle\>>|)>\<Rightarrow\><around*|(|b\<in\><around*|\<langle\>|a|\<rangle\>>|)>\<vee\><around*|(|c\<in\><around*|\<langle\>|a|\<rangle\>>|)>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|<around*|\<langle\>|a|\<rangle\>><text|
      nonzero prime ideal>|)>>>>>
    </eqnarray*>
  </cell>>|<row|<\cell>
    Prime implies Irreducible
  </cell>|<\cell>
    Let <math|R> be an ID and let <math|a\<in\>R>. We have that
    <math|<around*|(|a<text| prime>|)>\<Rightarrow\><around*|(|a<text|
    irreducible>|)>>.
  </cell>>>>>

  \;

  \;

  Things to add:

  <\itemize-dot>
    <item>Wronskian Matricies
  </itemize-dot>
</body>

<\initial>
  <\collection>
    <associate|global-title|Math 145: Algebra (Advanced Level) Notes>
    <associate|info-flag|none>
    <associate|magnification|1.4>
    <associate|page-even-footer|>
    <associate|page-even-header|>
    <associate|page-medium|automatic>
    <associate|page-odd-footer|>
    <associate|page-odd-header|>
  </collection>
</initial>