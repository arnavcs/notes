<TeXmacs|2.1>

<style|article>

<\body>
  <doc-data|<doc-title|CS 245E: Logic and Computation (Enriched)
  Notes>|<doc-author|<author-data|<author-name|Arnav
  Kumar>|<author-homepage|<slink|https://arnavcs.github.io>>>>>

  <\bothlined>
    These are notes for the fall 2023 offering of CS 245E, instructed by Shai
    Ben-David at the University of Waterloo.
  </bothlined>

  <\padded-center>
    <tabular|<tformat|<cwith|1|1|2|2|cell-background|pastel
    cyan>|<cwith|1|1|3|3|cell-background|pastel
    green>|<cwith|1|1|4|4|cell-background|pastel
    yellow>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-lborder|1ln>|<cwith|1|1|1|-1|cell-rborder|1ln>|<cwith|1|1|1|1|cell-background|pastel
    blue>|<table|<row|<cell|Notes>|<cell|Example>|<cell|Definition>|<cell|Results>>>>>
  </padded-center>

  <section|Introduction>

  <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<cwith|1|-1|1|1|cell-background|pastel
  green>|<cwith|1|-1|1|1|cell-width|25ex>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|1|-1|cell-tborder|1ln>|<cwith|1|-1|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<twith|table-hyphen|n>|<cwith|2|2|1|1|cell-background|pastel
  cyan>|<cwith|3|3|1|1|cell-background|pastel
  cyan>|<cwith|4|4|1|1|cell-background|pastel cyan>|<table|<row|<\cell>
    What is Logic?
  </cell>|<\cell>
    Logic is not about what is true or false, but rather the creation of
    conclusions from a set of assumptions.
  </cell>>|<row|<\cell>
    Socrate's Logic
  </cell>|<\cell>
    This is an example of valid logic:

    <tabular|<tformat|<table|<row|<cell|<verbatim|If all men are
    mortal><space|1em>>|<cell|Assumption 1>>|<row|<cell|<verbatim|and>>|<cell|>>|<row|<cell|<verbatim|<verbatim|Socrates>
    is a man>>|<cell|Assumption 2>>|<row|<cell|<verbatim|then>>|<cell|>>|<row|<cell|<verbatim|Socrates
    is mortal>>|<cell|Conclusion>>>>>\ 
  </cell>>|<row|<\cell>
    Russell's Paradox
  </cell>|<\cell>
    Russell's Paradox involves the following scenario.

    <\verbatim-code>
      Assume there is a village in which no man grows a beard.\ 

      There is only one barber in that village.\ 

      Every morning, this barber shaves every (and only every) man who does
      not shave thmeselves.\ 

      Does the barber shave themselves?\ 
    </verbatim-code>

    the answer to the paradox is that such a village cannot exist.
  </cell>>|<row|<\cell>
    The Berry Paradox
  </cell>|<\cell>
    <verbatim|Which numbers can be defined by an English sentence of at most
    200 characters?>
  </cell>>>>>

  <section|Propositional Logic>

  <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<cwith|1|-1|1|1|cell-background|pastel
  green>|<cwith|1|-1|1|1|cell-width|25ex>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|1|-1|cell-tborder|1ln>|<cwith|1|-1|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<twith|table-hyphen|n>|<cwith|2|2|1|1|cell-background|pastel
  blue>|<table|<row|<\cell>
    Syntax vs. Semantics\ 
  </cell>|<\cell>
    Logic is based on the distinction between syntax (the form) and semantics
    (the meaning).
  </cell>>|<row|<\cell>
    How do we define sets?
  </cell>|<\cell>
    Let's take a look at how to ch aracterize or describe the language of
    propositional language. We are wondering if there is a set which
    describes our language. There are the following ways to define sets:

    <\enumerate-numeric>
      <item>Explicitly list the members of the set

      <item>Describe a common property of all the elements of the set (a
      simple membership condition)

      <item>Have an inductive membership condition.\ 
    </enumerate-numeric>
  </cell>>|<row|<\cell>
    Operations
  </cell>|<\cell>
    For a set <math|U>, operations over <math|U> are functions of type
    <math|U<rsup|k>\<rightarrow\>U> for finite <math|k>. For some subset
    <math|X\<subseteq\>U>, we say that <math|X> is closed under an operation
    <math|f:U<rsup|k>\<rightarrow\>U> if <math|<around*|(|\<forall\>x<rsub|1>,\<ldots\>,x<rsub|k>\<in\>X|)><around*|(|f<around*|(|x<rsub|1>,\<ldots\>,x<rsub|k>|)>\<in\>X|)>>.
  </cell>>|<row|<\cell>
    Minimal Set
  </cell>|<\cell>
    Let <math|\<cal-F\>> be a collection of sets. We say that
    <math|A\<in\>\<cal-F\>> is the minimal set in <math|\<cal-F\>> if
    <math|<around*|(|\<forall\>B\<in\>\<cal-F\>|)><around*|(|A\<subseteq\>B|)>>.
  </cell>>|<row|<\cell>
    Inductive Set
  </cell>|<\cell>
    Given a universe <math|U>, a core set <math|C\<subseteq\>U>, and
    operations <math|O>, we define the inductive set,
    <math|I<around*|(|U,C,O|)>> as the minimal set in
    <math|\<cal-F\>=<around*|{|A\<subseteq\>U\<suchthat\><around*|(|C\<subseteq\>A|)>\<wedge\><around*|(|A<text|
    closed under >O|)>|}>>. This is well defined because we have that
    <math|<around*|(|A,B\<in\>\<cal-F\>|)>\<Rightarrow\><around*|(|A\<cap\>B\<in\>\<cal-F\>|)>>.
    Thus, we see that <math|I<around*|(|U,C,O|)>=<big|cap>\<cal-F\>>.
  </cell>>|<row|<\cell>
    Words of Propositional Logic
  </cell>|<\cell>
    Let <math|L> be the set of all lower case letters with or without
    indicies. Let <math|\<Sigma\>\<assign\><around*|{|\<neg\>,\<wedge\>,\<vee\>,<around*|(|,|)>,|}>\<cup\>L>
    and let <math|\<Sigma\><rsup|\<ast\>>> be the set of all finite sequences
    of elements of <math|\<Sigma\>>.

    If <math|U=\<Sigma\><rsup|\<ast\>>>, <math|C=L>, and
    <math|O=<around*|{|<around*|(|\<alpha\>,\<beta\>\<mapsto\><around*|(|\<alpha\>\<vee\>\<beta\>|)>|)>,<around*|(|\<alpha\>,\<beta\>\<mapsto\><around*|(|\<alpha\>\<wedge\>\<beta\>|)>|)>,<around*|(|\<alpha\>,\<beta\>\<mapsto\><around*|(|\<alpha\>\<rightarrow\>\<beta\>|)>|)>,<around*|(|\<alpha\>\<mapstolim\><around*|(|\<neg\>\<alpha\>|)>|)>|}>>,
    then the words of propositional logic are <math|I<around*|(|U,C,O|)>>.
  </cell>>|<row|<\cell>
    Generating Sequence
  </cell>|<\cell>
    We say that for an inductive set <math|I<around*|(|U,C,O|)>>, if we want
    to show membership of <math|\<alpha\>>, then we define a generating
    sequence. <math|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>> is a
    generating sequence for <math|\<alpha\>> iff

    <\enumerate-numeric>
      <item><math|\<forall\>i\<leq\>n> either
      <math|\<alpha\><rsub|i>\<in\>C>, or
      <math|<around*|(|\<exists\>f\<in\>O,f:U<rsup|k>\<rightarrow\>U|)><around*|(|\<exists\>j<rsub|1>,\<ldots\>,j<rsub|k>\<less\>i|)><around*|(|f<around*|(|\<alpha\><rsub|j<rsub|1>>,\<alpha\><rsub|j<rsub|2>>,\<ldots\>,\<alpha\><rsub|j<rsub|k>>|)>=\<alpha\><rsub|i>|)>>.

      <item><math|\<alpha\><rsub|n>=\<alpha\>>.
    </enumerate-numeric>

    We have that <math|a\<in\>U> iff there exists a generating sequence for
    <math|\<alpha\>> with respect to <math|U,C,O>.
  </cell>>>>>
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

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|2|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Propositional
      Logic> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>