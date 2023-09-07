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
    <tabular|<tformat|<cwith|1|1|1|1|cell-background|pastel
    cyan>|<cwith|1|1|2|2|cell-background|pastel
    green>|<cwith|1|1|3|3|cell-background|pastel
    yellow>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-lborder|1ln>|<cwith|1|1|1|-1|cell-rborder|1ln>|<table|<row|<cell|Example>|<cell|Definition>|<cell|Results>>>>>
  </padded-center>

  <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<cwith|1|-1|1|1|cell-background|pastel
  green>|<cwith|1|-1|1|1|cell-width|25ex>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|1|-1|cell-tborder|1ln>|<cwith|1|-1|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<twith|table-hyphen|n>|<cwith|5|5|1|2|cell-hyphen|t>|<cwith|5|5|1|2|cell-halign|l>|<cwith|5|5|1|2|cell-lsep|1ex>|<cwith|5|5|1|2|cell-rsep|1ex>|<cwith|5|5|1|2|cell-bsep|1ex>|<cwith|5|5|1|2|cell-tsep|1ex>|<cwith|5|5|1|1|cell-background|pastel
  green>|<cwith|5|5|1|1|cell-width|25ex>|<cwith|5|5|1|1|cell-hmode|exact>|<cwith|5|5|1|2|cell-tborder|1ln>|<cwith|5|5|1|2|cell-bborder|1ln>|<cwith|5|5|1|2|cell-lborder|0ln>|<cwith|5|5|1|2|cell-rborder|0ln>|<cwith|2|2|1|1|cell-background|pastel
  yellow>|<table|<row|<\cell>
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
    <math|<frac*|W|V>\<assign\><around*|{|w+V:w\<in\>W|}>> is the saet
    containing all affine spaces associated with <math|V>.
  </cell>>|<row|<\cell>
    Codimension of a Subspace
  </cell>|<\cell>
    Let <math|W> be a vector space over a field <math|\<bbb-F\>>, and
    <math|V\<subseteq\>W> be a subspace. We say the codimension of <math|V>
    in <math|W> is <math|codim<rsub|W><around*|(|V|)>\<assign\>dim<around*|(|<frac*|W|V>|)>>.

    Note that <math|codim<rsub|W><around*|(|V|)>=1\<Leftrightarrow\>V<text|
    is a hyperplane>>.
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