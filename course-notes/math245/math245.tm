<TeXmacs|2.1>

<style|article>

<\body>
  <doc-data|<doc-title|Math 245: Linear Algebra II (Advanced)
  Notes>|<doc-author|<author-data|<author-name|Arnav
  Kumar>|<author-homepage|<slink|https://arnavcs.github.io>>>>>

  <\bothlined>
    These are notes for the fall 2023 offering of Math 245, instructed by
    Stephen New at the University of Waterloo.
  </bothlined>

  <\padded-center>
    <tabular|<tformat|<cwith|1|1|2|2|cell-background|pastel
    cyan>|<cwith|1|1|3|3|cell-background|pastel
    green>|<cwith|1|1|4|4|cell-background|pastel
    yellow>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-lborder|1ln>|<cwith|1|1|1|-1|cell-rborder|1ln>|<cwith|1|1|1|1|cell-background|pastel
    blue>|<table|<row|<cell|Note>|<cell|Example>|<cell|Definition>|<cell|Results>>>>>
  </padded-center>

  <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<cwith|1|-1|1|1|cell-background|pastel
  green>|<cwith|1|-1|1|1|cell-width|25ex>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|1|-1|cell-tborder|1ln>|<cwith|1|-1|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<twith|table-hyphen|n>|<cwith|5|5|1|2|cell-hyphen|t>|<cwith|5|5|1|2|cell-halign|l>|<cwith|5|5|1|2|cell-lsep|1ex>|<cwith|5|5|1|2|cell-rsep|1ex>|<cwith|5|5|1|2|cell-bsep|1ex>|<cwith|5|5|1|2|cell-tsep|1ex>|<cwith|5|5|1|1|cell-background|pastel
  green>|<cwith|5|5|1|1|cell-width|25ex>|<cwith|5|5|1|1|cell-hmode|exact>|<cwith|5|5|1|2|cell-tborder|1ln>|<cwith|5|5|1|2|cell-bborder|1ln>|<cwith|5|5|1|2|cell-lborder|0ln>|<cwith|5|5|1|2|cell-rborder|0ln>|<cwith|2|2|1|1|cell-background|pastel
  yellow>|<cwith|6|6|1|1|cell-background|pastel
  yellow>|<cwith|7|7|1|1|cell-background|pastel yellow>|<table|<row|<\cell>
    Affine Spaces
  </cell>|<\cell>
    Let <math|W> be a vector space over a field <math|\<bbb-F\>>. An affine
    space in <math|W> is a set of the form
    <math|P=p+U=<around*|{|p+u\<barsuchthat\>u\<in\>U|}>> where
    <math|p\<in\>W> and <math|U\<subseteq\>W> is a subspace. As we see below,
    <math|U> is uniquely determined, so we say that it is the vector space
    associated to <math|P>, and that <math|P> is the affine space through
    <math|p> with associated vector space <math|U>.
  </cell>>|<row|<\cell>
    Relation on Representatives of Affine Spaces
  </cell>|<\cell>
    Let <math|W> be a vector space over a field <math|\<bbb-F\>>. Let
    <math|p,q\<in\>W> and <math|U,V\<subseteq\>W> be subspaces. If
    <math|P=p+U> and <math|Q=q+V>, then

    <\enumerate-numeric>
      <item><math|<around*|(|P\<subseteq\>Q|)>\<Leftrightarrow\><around*|(|p\<in\>Q\<wedge\>U\<subseteq\>V|)>>

      <item><math|<around*|(|P=Q|)>\<Leftrightarrow\><around*|(|p\<in\>Q\<wedge\>U=V|)>>
    </enumerate-numeric>

    Additionally note that we have <math|p\<in\>Q\<Leftrightarrow\>p-q\<in\>V>.
  </cell>>|<row|<\cell>
    Dimension of an Affine Space
  </cell>|<\cell>
    Let <math|P> be the affine space throguh <math|p> with associated vector
    space <math|U>. We say that

    <\equation*>
      dim P\<assign\>dim U
    </equation*>

    In specific cases, we give names to the forms created by the affine
    spaces.

    <\padded-center>
      <tabular|<tformat|<cwith|1|-1|1|-1|cell-tborder|1ln>|<cwith|1|-1|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-lborder|1ln>|<cwith|1|-1|1|-1|cell-rborder|1ln>|<cwith|1|-1|1|1|font-series|bold>|<table|<row|<cell|<math|dim
      P>>|<cell|0>|<cell|1>|<cell|2>|<cell|<math|n-1>>>|<row|<cell|<math|P>>|<cell|Point>|<cell|Line>|<cell|Plane>|<cell|Hyperplane>>>>>
    </padded-center>

    Note that when <math|dim P=0>, we really have a set containing a point,
    not a point.
  </cell>>|<row|<\cell>
    Quotient Space
  </cell>|<\cell>
    Let <math|W> be a vector space over a field <math|\<bbb-F\>>, and
    <math|V\<subseteq\>W> be a subspace. The qutient space
    <math|<frac*|W|V>\<assign\><around*|{|w+V:w\<in\>W|}>> is the set
    containing all affine spaces associated with <math|V>.
  </cell>>|<row|<\cell>
    Codimension of a Subspace
  </cell>|<\cell>
    Let <math|W> be a vector space over a field <math|\<bbb-F\>>, and
    <math|V\<subseteq\>W> be a subspace. We say the codimension of <math|V>
    in <math|W> is <math|codim<rsub|W><around*|(|V|)>\<assign\>dim<around*|(|<frac*|W|V>|)>>.

    Note that <math|codim<rsub|W><around*|(|V|)>=1\<Leftrightarrow\>V<text|
    is a hyperplane>>.
  </cell>>|<row|<\cell>
    Basis and Dimension of Quotient Space
  </cell>|<\cell>
    Recall from Math 146 that if <math|U> is a subspace of <math|W>,
    <math|\<cal-U\>> is a basis for <math|U>, and
    <math|\<cal-W\>=\<cal-U\>\<cup\>\<cal-V\>> is a basis of <math|W> with
    <math|\<cal-U\>\<cap\>\<cal-V\>\<eqcirc\>\<varnothing\>>, then
    <math|<around*|{|v+U\<suchthat\>v\<in\>\<cal-V\>|}>> is a basis of
    <math|<frac*|W|U>>.

    As a corollory, we see that <math|dim U+dim <frac*|W|U>=dim W>.
  </cell>>|<row|<\cell>
    Gauss-Jordan Elimination\ 
  </cell>|<\cell>
    Recall how to perform Gauss-Jordan Elimination from Math 146. We see from
    the definition of the solution space that the solution space of the
    equation <math|A*\<b-up-x\>=\<b-up-b\>> is either empty, or is an affine
    space with associated vector space <math|Null<around*|(|A|)>>.
  </cell>>|<row|<\cell>
    Inverse Image
  </cell>|<\cell>
    Let <math|L\<of\>W\<rightarrow\>V> be a linear map of vector spaces over
    <math|\<bbb-F\>>, and let <math|\<b-up-b\>\<in\>V>. The inverse image of
    <math|\<b-up-b\>> under <math|L> (even if <math|L> is not invertible) is
    <math|L<rsup|-1><around*|(|b|)>\<assign\><around*|{|\<b-up-x\>\<in\>V\<barsuchthat\>L*\<b-up-x\>=\<b-up-b\>|}>>.
    From Gauss-Jordan Elimination, we know that this is either
    <math|\<varnothing\>> or an affine space.
  </cell>>|<row|<\cell>
    Intersection of Affine Spaces
  </cell>|<\cell>
    For non-empty <math|K>, let <math|P<rsub|k>> be an affine space in
    <math|W> for each <math|k\<in\>K>. We have that either
    <math|<big|cap><rsub|k\<in\>K>P<rsub|k>> is <math|\<varnothing\>> or is
    an affine space.
  </cell>>>>>

  \;
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