<TeXmacs|2.1>

<style|article>

<\body>
  <doc-data|<doc-title|Math 247: Calculus III (Advanced)
  Notes>|<doc-author|<author-data|<author-name|Arnav
  Kumar>|<author-homepage|<slink|https://arnavcs.github.io>>>>>

  <\bothlined>
    These are notes for the fall 2023 offering of Math 247, instructed by
    Spiro Karigiannis at the University of Waterloo.
  </bothlined>

  <\padded-center>
    <tabular|<tformat|<cwith|1|1|1|1|cell-background|pastel
    cyan>|<cwith|1|1|2|2|cell-background|pastel
    green>|<cwith|1|1|3|3|cell-background|pastel
    yellow>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-lborder|1ln>|<cwith|1|1|1|-1|cell-rborder|1ln>|<table|<row|<cell|Example>|<cell|Definition>|<cell|Results>>>>>
  </padded-center>

  <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<cwith|1|-1|1|1|cell-background|pastel
  green>|<cwith|1|-1|1|1|cell-width|25ex>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|1|-1|cell-tborder|1ln>|<cwith|1|-1|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<twith|table-hyphen|n>|<cwith|3|3|1|2|cell-hyphen|t>|<cwith|3|3|1|2|cell-halign|l>|<cwith|3|3|1|2|cell-lsep|1ex>|<cwith|3|3|1|2|cell-rsep|1ex>|<cwith|3|3|1|2|cell-bsep|1ex>|<cwith|3|3|1|2|cell-tsep|1ex>|<cwith|3|3|1|1|cell-background|pastel
  green>|<cwith|3|3|1|1|cell-width|25ex>|<cwith|3|3|1|1|cell-hmode|exact>|<cwith|3|3|1|2|cell-tborder|1ln>|<cwith|3|3|1|2|cell-bborder|1ln>|<cwith|3|3|1|2|cell-lborder|0ln>|<cwith|3|3|1|2|cell-rborder|0ln>|<cwith|7|7|1|1|cell-background|pastel
  yellow>|<cwith|8|8|1|1|cell-background|pastel
  yellow>|<cwith|10|10|1|1|cell-background|pastel
  yellow>|<cwith|20|20|1|1|cell-background|pastel
  yellow>|<cwith|6|6|1|1|cell-background|pastel
  green>|<cwith|12|13|1|2|cell-hyphen|t>|<cwith|12|13|1|2|cell-halign|l>|<cwith|12|13|1|2|cell-lsep|1ex>|<cwith|12|13|1|2|cell-rsep|1ex>|<cwith|12|13|1|2|cell-bsep|1ex>|<cwith|12|13|1|2|cell-tsep|1ex>|<cwith|12|13|1|1|cell-background|pastel
  green>|<cwith|12|13|1|1|cell-width|25ex>|<cwith|12|13|1|1|cell-hmode|exact>|<cwith|12|13|1|2|cell-tborder|1ln>|<cwith|12|13|1|2|cell-bborder|1ln>|<cwith|12|13|1|2|cell-lborder|0ln>|<cwith|12|13|1|2|cell-rborder|0ln>|<cwith|14|14|1|1|cell-background|pastel
  yellow>|<cwith|22|22|1|1|cell-background|pastel
  yellow>|<cwith|25|26|1|1|cell-background|pastel
  yellow>|<cwith|28|28|1|1|cell-background|pastel yellow>|<table|<row|<\cell>
    Bilinearity
  </cell>|<\cell>
    Let <math|V> be a vector space over a field <math|F>. A bilinear form is
    a function <math|B\<of\>V\<times\>V\<rightarrow\>F> which is linear in
    both arguments seperately. This means that for
    <math|\<b-up-x\>,\<b-up-y\>,\<b-up-z\>\<in\>V> and <math|a,b\<in\>F>, we
    have

    <\enumerate-numeric>
      <item><math|<around*|\<langle\>|a*\<b-up-x\>+b*\<b-up-y\>,\<b-up-z\>|\<rangle\>>=a*<around*|\<langle\>|\<b-up-x\>,\<b-up-z\>|\<rangle\>>+b*<around*|\<langle\>|\<b-up-y\>,\<b-up-z\>|\<rangle\>>>

      <item><math|<around*|\<langle\>|\<b-up-z\>,a*\<b-up-x\>+b*\<b-up-y\>|\<rangle\>>=a*<around*|\<langle\>|\<b-up-z\>,\<b-up-x\>|\<rangle\>>+b*<around*|\<langle\>|\<b-up-z\>,\<b-up-y\>|\<rangle\>>>
    </enumerate-numeric>
  </cell>>|<row|<\cell>
    Inner Product Space
  </cell>|<\cell>
    For <math|F> either <math|\<bbb-R\>> or <math|\<bbb-C\>>, we define an
    inner product space as a vector space <math|V> over <math|F> with the
    together with an inner product. This inner product is a map
    <math|<around*|\<langle\>|\<cdummy\>,\<cdummy\>|\<rangle\>>\<of\>V\<times\>V\<rightarrow\>F>
    which satisfies the following for all vectors
    <math|\<b-up-x\>,\<b-up-y\>,\<b-up-z\>\<in\>V> and scalars
    <math|a,b\<in\>F>:

    <\enumerate-numeric>
      <item>Conjugate Symmetry: <math|<around*|\<langle\>|\<b-up-x\>,\<b-up-y\>|\<rangle\>>=<wide|<around*|\<langle\>|\<b-up-y\>,\<b-up-x\>|\<rangle\>>|\<bar\>>>

      <item>Linearity: <math|<around*|\<langle\>|a*\<b-up-x\>+b*\<b-up-y\>,\<b-up-z\>|\<rangle\>>=a*<around*|\<langle\>|\<b-up-x\>,\<b-up-z\>|\<rangle\>>+b*<around*|\<langle\>|\<b-up-y\>,\<b-up-z\>|\<rangle\>>>

      <item>Positive-Definiteness: <math|<around*|\<langle\>|\<b-up-x\>,\<b-up-x\>|\<rangle\>>\<geq\>0>
      with equality iff <math|\<b-up-x\>=<wide|0|\<vect\>>>
    </enumerate-numeric>

    As a result we see that <math|<around*|\<langle\>|\<b-up-x\>,<wide|0|\<vect\>>|\<rangle\>>=<around*|\<langle\>|<wide|0|\<vect\>>,\<b-up-x\>|\<rangle\>>=0>.
    Also, when <math|F> is <math|\<bbb-R\>> (which is what we will consider
    for this course), we get <math|>that conjugate symmetry reduces to
    symmetry, and also then that the inner product space is bilinear. Thus,
    an inner product on a real vector space is a positive-definite symmetric
    bilinear form.
  </cell>>|<row|<\cell>
    Euclidean Vector Space
  </cell>|<\cell>
    Recall from Math 146 that we define <math|\<bbb-R\><rsup|n>\<assign\><around*|{|<around*|(|x<rsub|1>,x<rsub|2>,\<ldots\>,x<rsub|n>|)>\<suchthat\>x<rsub|i>\<in\>\<bbb-R\>,i=1,2,\<ldots\>,n|}>>
    and this definition has the structure of a <math|n>-dimensional real
    vector space and has standard basis <math|<around*|{|e<rsub|1>,e<rsub|2>,\<ldots\>,e<rsub|n>|}>>.
    Under the standard Euclidean inner product (dot product) which takes
    <math|\<b-up-x\>,\<b-up-y\>\<mapsto\>\<b-up-x\>\<cdot\>\<b-up-y\>\<in\>\<bbb-R\>>
    where <math|\<b-up-x\>\<cdot\>\<b-up-y\>=<big|sum><rsub|i=1><rsup|n>x<rsub|i>*y<rsub|i>>,
    we see that <math|\<bbb-R\><rsup|n>> is also an inner product space,
    which we call a Euclidean vector space.

    The rest of this course mainly analyzes Euclidean spaces.
  </cell>>|<row|<\cell>
    Norm
  </cell>|<\cell>
    Let <math|V> be a vector space over <math|F>, a subfield of
    <math|\<bbb-R\>> (but more generally <math|\<bbb-C\>>). A norm on
    <math|V> is a function <math|\<rho\>\<of\>V\<rightarrow\>\<bbb-R\>> which
    satifies the following

    <\enumerate-numeric>
      <item>Subadditivity: <math|<around*|(|\<forall\>\<b-up-x\>,\<b-up-y\>\<in\>V|)><around*|(|\<rho\><around*|(|\<b-up-x\>+\<b-up-y\>|)>\<leq\>\<rho\><around*|(|\<b-up-x\>|)>+\<rho\><around*|(|\<b-up-y\>|)>|)>>

      <item>Absolute Homogeneity: <math|<around*|(|\<forall\>t\<in\>F|)><around*|(|\<forall\>\<b-up-x\>\<in\>V|)><around*|(|\<rho\><around*|(|t*\<b-up-x\>|)>=<around*|\||t|\|>*\<rho\><around*|(|\<b-up-x\>|)>|)>>

      <item>Positive Definiteness: <math|<around*|(|\<forall\>\<b-up-x\>\<in\>V|)><around*|(|\<rho\><around*|(|\<b-up-x\>|)>\<Leftrightarrow\>\<b-up-x\>=\<b-0\>|)>>
    </enumerate-numeric>

    And derivable from these, we get that
    <math|><math|<around*|(|\<forall\>\<b-up-x\>\<in\>V|)><around*|(|\<rho\><around*|(|\<b-up-x\>|)>\<geq\>0|)>>,
    which is called non-negativity.
  </cell>>|<row|<\cell>
    Inner Product Induced Norm
  </cell>|<\cell>
    If <math|<around*|\<langle\>|\<cdummy\>,\<cdummy\>|\<rangle\>>> is an
    inner product on <math|\<bbb-R\><rsup|n>>, we can induce a norm so that
    <math|<around*|\<\|\|\>|\<b-up-x\>|\<\|\|\>><rsup|2>=<around*|\<langle\>|\<b-up-x\>,\<b-up-x\>|\<rangle\>>>.
    Not all norms can be induced by an inner product, though.
  </cell>>|<row|<\cell>
    Euclidean, <math|l<rsup|1>>, <math|l<rsup|\<infty\>>>, and
    <math|l<rsup|p>> Norms
  </cell>|<\cell>
    Let <math|p\<geq\>1> be a real number. We define a <math|l<rsup|p>> norm
    to be so that

    <\equation*>
      <around*|\<\|\|\>|\<b-up-x\>|\<\|\|\>><rsub|p>\<assign\><around*|(|<big|sum><rsub|k=1><rsup|n><around*|\||x<rsub|k>|\|><rsup|p>|)><rsup|<frac|1|p>>
    </equation*>

    We say that the Euclidean norm on the <math|n>-dimensional Euclidean
    space <math|\<bbb-R\><rsup|n>> is the same as the <math|l<rsup|2>> norm
    so that <math|<around*|\<\|\|\>|\<b-up-x\>|\<\|\|\>>\<assign\><around*|\<\|\|\>|\<b-up-x\>|\<\|\|\>><rsub|2>=<sqrt|\<b-up-x\>\<cdot\>\<b-up-x\>>>
    where <math|\<cdot\>> is the dot product.\ 

    When <math|p\<rightarrow\>\<infty\>>, we get the <math|l<rsup|\<infty\>>>
    norm where <math|<around*|\<\|\|\>|\<b-up-x\>|\<\|\|\>><rsub|\<infty\>>\<assign\><below|max|i><around*|\||x<rsub|i>|\|>>.
  </cell>>|<row|<\cell>
    Cauchy-Schwarz Inequality
  </cell>|<\cell>
    <math|<around*|(|\<forall\>\<b-up-x\>,\<b-up-y\>\<in\>\<bbb-R\><rsup|n>|)>>

    <\equation*>
      <around*|\||\<b-up-x\>\<cdot\>\<b-up-y\>|\|>\<leq\><around*|\<\|\|\>|\<b-up-x\>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|\<b-up-y\>|\<\|\|\>>
    </equation*>

    with equality iff <math|\<b-up-x\>> and <math|\<b-up-y\>> are linearly
    dependant.
  </cell>>|<row|<\cell>
    Triangle Inequality
  </cell>|<\cell>
    Let <math|\<b-up-x\>,\<b-up-y\>\<in\>\<bbb-R\><rsup|n>>.

    <\equation*>
      <around*|\<\|\|\>|\<b-up-x\>+\<b-up-y\>|\<\|\|\>>\<leq\><around*|\<\|\|\>|\<b-up-x\>|\<\|\|\>>+<around*|\<\|\|\>|\<b-up-y\>|\<\|\|\>>
    </equation*>
  </cell>>|<row|<\cell>
    Cross Product
  </cell>|<\cell>
    The cross product on <math|\<bbb-R\><rsup|3>> satisfies the following
    properties:

    <\enumerate-numeric>
      <item><math|\<b-up-x\>\<times\>\<b-up-y\>=-\<b-up-y\>\<times\>\<b-up-x\>>

      <item><math|<around*|(|a*\<b-up-x\>+b*\<b-up-y\>|)>\<times\>\<b-up-w\>=a*<around*|(|\<b-up-x\>\<times\>\<b-up-w\>|)>+b*<around*|(|\<b-up-y\>\<times\>\<b-up-w\>|)>>

      <item><math|<around*|(|\<b-up-x\>\<times\>\<b-up-y\>|)>\<cdot\>\<b-up-x\>=<around*|(|\<b-up-x\>\<times\>\<b-up-y\>|)>\<cdot\>\<b-up-y\>=0>

      <item><math|<around*|\<\|\|\>|\<b-up-x\>\<times\>\<b-up-y\>|\<\|\|\>><rsup|2>=<around*|\<\|\|\>|\<b-up-x\>|\<\|\|\>><rsup|2>*<around*|\<\|\|\>|\<b-up-y\>|\<\|\|\>><rsup|2>-<around*|(|\<b-up-x\>\<cdot\>\<b-up-y\>|)><rsup|2>>
    </enumerate-numeric>
  </cell>>|<row|<\cell>
    Angle between Vectors
  </cell>|<\cell>
    Let <math|\<b-up-x\>,\<b-up-y\>\<in\>\<bbb-R\><rsup|n>> both be non-zero.
    Cauchy-Schwarz says that

    <\equation*>
      -1\<leq\><frac|\<b-up-x\>\<cdot\>\<b-up-y\>|<around*|\<\|\|\>|\<b-up-x\>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|\<b-up-y\>|\<\|\|\>>>\<leq\>1
    </equation*>

    so that we see <math|<around*|(|\<exists\>!\<theta\>\<in\><around*|[|0,<frac|\<mathpi\>|2>|]>|)><around*|(|\<b-up-x\>\<cdot\>\<b-up-y\>=<around*|\<\|\|\>|\<b-up-x\>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|\<b-up-y\>|\<\|\|\>>*cos
    \<theta\>|)>>. This <math|\<theta\>> is the angle between the vectors
    <math|\<b-up-x\>> and <math|\<b-up-y\>>.
  </cell>>|<row|<\cell>
    Orthogonal Vectors
  </cell>|<\cell>
    We say <math|\<b-up-x\>> and <math|\<b-up-y\>> are orthogonal iff
    <math|\<b-up-x\>\<cdot\>\<b-up-y\>=0>.
  </cell>>|<row|<\cell>
    Orthogonal Matrix
  </cell>|<\cell>
    An orthogonal matrix is a square matrix whose column vectors are
    orthonormal and thus form an orthonormal basis. Additionally,
    <math|A\<in\>M<rsub|n\<times\>n>> is orthogonal iff
    <math|A<rsup|T>=A<rsup|-1>>.
  </cell>>|<row|<\cell>
    Isometry
  </cell>|<\cell>
    A norm-preserving linear operator, or an isometry is a linear operator,
    <math|T\<of\>\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>> such that
    <math|<around*|(|\<forall\>x\<in\>\<bbb-R\><rsup|n>|)><around*|(|<around*|\<\|\|\>|T<around*|(|x|)>|\<\|\|\>>=<around*|\<\|\|\>|x|\<\|\|\>>|)>>.
    We can show that the matrix associated with the linear operator is
    orthogonal.
  </cell>>|<row|<\cell>
    Spectral Theorem
  </cell>|<\cell>
    <math|A\<in\>M<rsub|n\<times\>n>> is symmetric iff there exists an
    orthogonal matrix <math|P> such that <math|D\<assign\>P<rsup|T>*A*P> is
    diagonal. We can then see that <math|A=P*D*P<rsup|T>>.
  </cell>>|<row|<\cell>
    Inner Product Associated with a Matrix
  </cell>|<\cell>
    For a matrix <math|A\<over\>\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>,
    we say that the inner product associated with <math|A> is
    <math|<around*|\<langle\>|\<b-up-x\>,\<b-up-y\>|\<rangle\>><rsub|A>=\<b-up-x\>\<cdot\><around*|(|A*\<b-up-y\>|)>>.
    Given any inner product <math|<around*|\<langle\>|\<cdummy\>,\<cdummy\>|\<rangle\>>>
    on <math|\<bbb-R\><rsup|n>>, we have that there is a
    <math|Q\<over\>\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>> such
    that <math|<around*|\<langle\>|\<b-up-x\>,\<b-up-y\>|\<rangle\>>=<around*|(|Q*\<b-up-x\>|)>\<cdot\><around*|(|Q*\<b-up-y\>|)>=<around*|\<langle\>|\<b-up-x\>,\<b-up-y\>|\<rangle\>><rsub|Q<rsup|T>Q>>.
  </cell>>|<row|<\cell>
    Hyperplane
  </cell>|<\cell>
    Let <math|\<b-up-a\>,\<b-up-b\>\<in\>\<bbb-R\><rsup|n>>. The hyperplane
    <math|P> passing through <math|\<b-up-a\>> with normal vector
    <math|\<b-up-b\>> is defined to be

    <\equation*>
      P\<assign\><around*|{|\<b-up-x\>\<in\>\<bbb-R\><rsup|n>\<suchthat\><around*|(|\<b-up-x\>-\<b-up-a\>|)>\<cdot\>\<b-up-b\>=0|}>
    </equation*>
  </cell>>|<row|<\cell>
    Linear Maps
  </cell>|<\cell>
    We define a linear map <math|T\<of\>\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|m>>
    so that if <math|v<rsub|1>,\<ldots\>,v<rsub|k>\<in\>\<bbb-R\><rsup|n>>
    and <math|t<rsub|1>,\<ldots\>,t<rsub|k>\<in\>\<bbb-R\>>, then\ 

    <\equation*>
      T<around*|(|<big|sum><rsub|j=1><rsup|k>t<rsub|j>*v<rsub|j>|)>
      =<big|sum><rsub|j=1><rsup|k>t<rsub|j>*T<around*|(|v<rsub|j>|)>
    </equation*>

    Recall that each linear map has a corresponding matrix. We say that
    <math|A> is the matrix representing <math|T> with respect to the standard
    bases of <math|\<bbb-R\><rsup|n>> and <math|\<bbb-R\><rsup|m>>.
  </cell>>|<row|<\cell>
    <math|M<rsub|m\<times\>n>> and <math|L<around*|(|\<bbb-R\><rsup|n>,\<bbb-R\><rsup|m>|)>>
    as Vector Spaces and Algebras
  </cell>|<\cell>
    We have that <math|M<rsub|m\<times\>n>> is the vector space of real
    <math|m\<times\>n> matricies and <math|L<around*|(|\<bbb-R\><rsup|n>,\<bbb-R\><rsup|m>|)>>
    is the vector space of linear functions from <math|\<bbb-R\><rsup|n>> to
    <math|\<bbb-R\><rsup|m>>. Note the following vector space isomorphisms
    exist:

    <\equation*>
      L<around*|(|\<bbb-R\><rsup|n>,\<bbb-R\><rsup|m>|)>\<cong\>M<rsub|m\<times\>n>\<cong\>\<bbb-R\><rsup|m*n>
    </equation*>

    If <math|m=n>, then we can also define mulitplication for
    <math|M<rsub|n\<times\>n>> (and equivalently
    <math|L<around*|(|\<bbb-R\><rsup|n>,\<bbb-R\><rsup|n>|)>>) so that for
    <math|A,B\<in\>M<rsub|n\<times\>n>>, we have
    <math|<around*|(|A,B|)>\<mapsto\>A*B>. Thus, <math|M<rsub|n\<times\>n>>
    and <math|L<around*|(|\<bbb-R\><rsup|n>,\<bbb-R\><rsup|n>|)>> are
    algebras.
  </cell>>|<row|<\cell>
    <math|M<rsub|m\<times\>n>> and <math|L<around*|(|\<bbb-R\><rsup|n>,\<bbb-R\><rsup|m>|)>>
    with Euclidean Inner Product and Norm
  </cell>|<\cell>
    Since <math|M<rsub|m\<times\>n>\<cong\>\<bbb-R\><rsup|m*n>> canonically,
    we see that we can define the Euclidean inner product on
    <math|M<rsub|m\<times\>n>> so that <math|\<forall\>A,B\<in\>M<rsub|m\<times\>n>>
    we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|A\<cdot\>B>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|m><big|sum><rsub|j=1><rsup|n>A<rsub|i
      j>*B<rsub|i j>>>|<row|<cell|>|<cell|=>|<cell|tr<around*|(|A*B<rsup|T>|)>=tr<around*|(|A<rsup|T>B|)>>>|<row|<cell|>|<cell|=>|<cell|tr<around*|(|B*A<rsup|T>|)>=tr<around*|(|B<rsup|T>A|)>>>>>
    </eqnarray*>

    We can then induce the Euclidean norm which is also called the Matrix,
    Frobenius, or Hilbert-Schmidt norm. We see:

    <\equation*>
      <around*|\<\|\|\>|A|\<\|\|\>><rsup|2>=A\<cdot\>A=tr<around*|(|A<rsup|T>*A|)>=<big|sum><rsup|m><rsub|i=1><big|sum><rsub|j=1><rsup|n>A<rsub|i
      j><rsup|2>
    </equation*>

    Equivalent norms can be taken for any value in
    <math|L<around*|(|\<bbb-R\><rsup|n>,\<bbb-R\><rsup|m>|)>> by taking the
    norm of the isomorphic value in <math|M<rsub|m\<times\>n>>.
  </cell>>|<row|<\cell>
    Relationship with Matrix Norm
  </cell>|<\cell>
    Let <math|A\<in\>M<rsub|m\<times\>n>>, and let
    <math|\<b-up-x\>\<in\>\<bbb-R\><rsup|n>>. We have

    <\equation*>
      <around*|\<\|\|\>|A*\<b-up-x\>|\<\|\|\>>\<leq\><around*|\<\|\|\>|A|\<\|\|\>>*<around*|\<\|\|\>|\<b-up-x\>|\<\|\|\>>
    </equation*>
  </cell>>|<row|<\cell>
    Operator Norm
  </cell>|<\cell>
    Let <math|T\<of\>\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|m>> be
    linear. The operator norm is defined such that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|T|\<\|\|\>><rsub|op>>|<cell|\<assign\>>|<cell|inf
      <around*|{|C\<gtr\>0\<suchthat\><around*|(|\<forall\>x\<in\>\<bbb-R\><rsup|n>|)><around*|(|<around*|\<\|\|\>|T<around*|(|x|)>|\<\|\|\>>\<leq\>C*<around*|\<\|\|\>|x|\<\|\|\>>|)>|}>>>|<row|<cell|>|<cell|=>|<cell|sup<rsub|<around*|\<\|\|\>|\<b-up-x\>|\<\|\|\>>=1><around*|\<\|\|\>|T<around*|(|\<b-up-x\>|)>|\<\|\|\>>>>>>
    </eqnarray*>

    as such, we can see that <math|<around*|\<\|\|\>|T<around*|(|x|)>|\<\|\|\>>\<leq\><around*|\<\|\|\>|T|\<\|\|\>><rsub|op>*<around*|\<\|\|\>|x|\<\|\|\>>>.
  </cell>>|<row|<\cell>
    Properties of Operator Norm and Matrix Norm
  </cell>|<\cell>
    If <math|T\<over\>\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|m>> and
    <math|S\<over\>\<bbb-R\><rsup|m>\<rightarrow\>\<bbb-R\><rsup|p>> are
    linear maps, then we have:

    <\enumerate-numeric>
      <item><math|<around*|\<\|\|\>|S\<circ\>T|\<\|\|\>><rsub|op>\<leq\><around*|\<\|\|\>|S|\<\|\|\>><rsub|op>*<around*|\<\|\|\>|T|\<\|\|\>><rsub|op>>

      <item><math|><math|<around*|\<\|\|\>|S\<circ\>T|\<\|\|\>>\<leq\><around*|\<\|\|\>|S|\<\|\|\>>*<around*|\<\|\|\>|T|\<\|\|\>>>
      where <math|<around*|\<\|\|\>|\<cdummy\>|\<\|\|\>>> is the Matrix Norm
      of the associated matricies of <math|T> and <math|S> with respect to
      the standard bases.
    </enumerate-numeric>
  </cell>>|<row|<\cell>
    Open and Closed Balls
  </cell>|<\cell>
    Let <math|\<b-up-x\>\<in\>\<bbb-R\><rsup|n>> and
    <math|\<varepsilon\>\<gtr\>0>. <math|B<rsub|\<varepsilon\>><around*|(|\<b-up-x\>|)>\<assign\><around*|{|\<b-up-y\>\<in\>\<bbb-R\><rsup|n>\<suchthat\><around*|\<\|\|\>|\<b-up-y\>-\<b-up-x\>|\<\|\|\>>\<less\>\<varepsilon\>|}>>
    and <math|<wide|B<rsub|\<varepsilon\>><around*|(|\<b-up-x\>|)>|\<bar\>>\<assign\><around*|{|\<b-up-y\>\<in\>\<bbb-R\><rsup|n>\<suchthat\><around*|\<\|\|\>|\<b-up-y\>-\<b-up-x\>|\<\|\|\>>\<leq\>\<varepsilon\>|}>>
    are the open and closed balls centered at <math|\<b-up-x\>> with radius
    <math|\<varepsilon\>> respectively. When <math|n=1>, they can also be
    called intervals, and when <math|n=2>, they can also be called disks.
  </cell>>|<row|<\cell>
    Open and Closed Sets
  </cell>|<\cell>
    A subset <math|U\<subseteq\>\<bbb-R\><rsup|n>> is open iff
    <math|<around*|(|\<forall\>\<b-up-x\>\<in\>U|)><around*|(|\<exists\>\<delta\>\<gtr\>0|)><around*|(|B<rsub|\<delta\>><around*|(|\<b-up-x\>|)>\<subseteq\>U|)>>.

    A subset <math|F\<subseteq\>\<bbb-R\><rsup|n>> is closed iff
    <math|F<rsup|c>=\<bbb-R\><rsup|n>\\F> is open.

    It might be interesting to note that <math|\<varnothing\>> and
    <math|\<bbb-R\><rsup|n>> are both open and closed.
  </cell>>|<row|<\cell>
    Properties of Open and Closed Sets
  </cell>|<\cell>
    We have the following properties:

    <\enumerate-numeric>
      <item>Arbitrary Union of Open: If <math|U<rsub|\<alpha\>>\<subseteq\>\<bbb-R\><rsup|n>>
      is open <math|\<forall\>\<alpha\>\<in\>A>, then
      <math|<big|cup><rsub|\<alpha\>\<in\>A>U<rsub|\<alpha\>>> is open.

      <item>Finite Intersection of Open: If
      <math|U<rsub|1>,\<ldots\>U<rsub|k>> are open, then
      <math|<big|cap><rsub|j=1><rsup|k>U<rsub|j>> is open.

      <item>Arbitrary Intersection of Closed: If
      <math|F<rsub|\<alpha\>>\<subseteq\>\<bbb-R\><rsup|n>> is closed
      <math|\<forall\>\<alpha\>\<in\>A>, then
      <math|<big|cap><rsub|\<alpha\>\<in\>A>F<rsub|\<alpha\>>> is closed.

      <item>Finite Union of Closed: If <math|F<rsub|1>,\<ldots\>F<rsub|k>>
      are closed, then <math|<big|cup><rsub|j=1><rsup|k>F<rsub|j>> is closed.
    </enumerate-numeric>

    The last two are derivable from the first two with DeMorgan's Laws.
  </cell>>|<row|<\cell>
    DeMorgan's Law
  </cell>|<\cell>
    Let <math|S<rsub|\<alpha\>>> be a set for all <math|\<alpha\>\<in\>A>, we
    have that:

    <\enumerate-numeric>
      <item><math|<around*|(|<big|cup><rsub|\<alpha\>\<in\>A>S<rsub|\<alpha\>>|)><rsup|c>=<big|cap><rsub|\<alpha\>\<in\>A><around*|(|S<rsub|\<alpha\>><rsup|c>|)>>

      <item><math|<around*|(|<big|cap><rsub|\<alpha\>\<in\>A>S<rsub|\<alpha\>>|)><rsup|c>=<big|cup><rsub|\<alpha\>\<in\>A><around*|(|S<rsub|\<alpha\>><rsup|c>|)>>
    </enumerate-numeric>
  </cell>>|<row|<\cell>
    Interior and Closure
  </cell>|<\cell>
    Let <math|A\<subseteq\>\<bbb-R\><rsup|n>>.

    We define the interior of <math|A> such that it's the union of all open
    subsets of <math|A>.

    <\equation*>
      int<around*|(|A|)>=A<rsup|\<circ\>>\<assign\><big|cup><rsub|U\<subseteq\>A<text|
      open>>U
    </equation*>

    We similarly define the closure of <math|A> such that it's the
    intersection of all closed supersets of <math|A>.

    <\equation*>
      cl<around*|(|A|)>=<wide|A|\<bar\>>\<assign\><big|cap><rsub|F\<supseteq\>A<text|
      closed>>F
    </equation*>
  </cell>>|<row|<\cell>
    Properties of Interior and Closure
  </cell>|<\cell>
    The following properties hold for the interior:

    <\enumerate-numeric>
      <item><math|A<rsup|\<circ\>>> is open and
      <math|A<rsup|\<circ\>>\<subseteq\>A>.

      <item>If <math|V\<subseteq\>A> is open, then
      <math|V\<subseteq\>A<rsup|\<circ\>>>.

      <item><math|<around*|(|A<text| open>|)>\<Leftrightarrow\><around*|(|A=A<rsup|\<circ\>>|)>>.
    </enumerate-numeric>

    And here are equivalent properties for the closure:

    <\enumerate-numeric>
      <item><math|<wide|A|\<bar\>>> is closed and
      <math|<wide|A|\<bar\>>\<supseteq\>A>.

      <item>If <math|K\<supseteq\>A> is open, then
      <math|K\<supseteq\><wide|A|\<bar\>>>.

      <item><math|<around*|(|A<text| closed>|)>\<Leftrightarrow\><around*|(|A=<wide|A|\<bar\>>|)>>.
    </enumerate-numeric>
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