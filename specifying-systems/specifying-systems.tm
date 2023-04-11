<TeXmacs|2.1>

<style|generic>

<\body>
  <doc-data|<doc-title|<with|font-shape|italic|Specifying Systems>
  Notes>|<doc-author|<author-data|<author-name|Arnav
  Kumar>|<author-homepage|<slink|https://arnavcs.github.io>>>>>

  <\bothlined>
    <with|font-shape|italic|Specifying Systems> is a publication written by
    Leslie Lamport on the <math|TLA<rsup|+>> language. I choose purposely to
    ommit leaving details in these notes about the grammar of the language,
    since this can be easily found. Additionally, this is not a summary or
    recreation of the next in any manner. As such, please read the text to
    gain a better understading of the contents.
  </bothlined>

  <section|System Specifications>

  <\padded-center>
    <tabular|<tformat|<cwith|3|3|1|1|cell-background|pastel
    yellow>|<cwith|2|2|1|1|cell-background|pastel
    green>|<cwith|1|-1|1|1|cell-tborder|1ln>|<cwith|1|-1|1|1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<table|<row|<cell|Color
    Scheme Key>>|<row|<cell|Definition>>|<row|<cell|Note>>>>>
  </padded-center>

  <tabular|<tformat|<twith|table-hyphen|y>|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<cwith|1|-1|1|1|cell-background|pastel
  green>|<cwith|1|-1|1|1|cell-width|25ex>|<cwith|1|-1|1|1|cell-hmode|min>|<cwith|10|10|1|1|cell-background|pastel
  yellow>|<cwith|12|12|1|1|cell-background|pastel
  yellow>|<cwith|13|13|1|1|cell-background|pastel yellow>|<table|<row|<\cell>
    System Specification
  </cell>|<\cell>
    A system specification is a description of what a system should do or is
    intended to do. The behavioural properties of a system are also called
    the functional or logical properties of a system and is our focus. We do
    not consider performance properties.
  </cell>>|<row|<\cell>
    State of a System and a Step
  </cell>|<\cell>
    A state is an assignment of values to variables. A pair of successive
    states is called a step. We can mathematically write a pair as shown
    below.

    <\equation*>
      <around*|[|<tabular|<tformat|<table|<row|<cell|a=1>>|<row|<cell|b=0>>>>>|]>\<rightarrow\><around*|[|<tabular|<tformat|<table|<row|<cell|a=1>>|<row|<cell|b=1>>>>>|]>
    </equation*>
  </cell>>|<row|<\cell>
    Behaviour of a System
  </cell>|<\cell>
    Formally, a behaviour is a sequence of states.
  </cell>>|<row|<\cell>
    Temporal Logic
  </cell>|<\cell>
    A temporal logic formula is a formula that describes a system's behaviour
    by relating the next state of a system with the current state.
  </cell>>|<row|<\cell>
    <math|TLA<rsup|+>>
  </cell>|<\cell>
    <math|TLA<rsup|+>> stands for the Temporal Logic of Actions and supports
    both assertional resoning and temporal logic. This system is quite good
    with describing asynchronous systems, but can be used for nearly any
    purpose: APIs and distributed systems included.
  </cell>>|<row|<\cell>
    Propositional Logic
  </cell>|<\cell>
    The two basic boolean values, <math|TRUE> and <math|FALSE> can be used in
    propositional logic with the operators <math|\<neg\>>, <math|\<wedge\>>,
    <math|\<vee\>>, <math|\<Rightarrow\>>, and <math|\<equiv\>> (from highest
    to lowest precendence).
  </cell>>|<row|<\cell>
    Tautology
  </cell>|<\cell>
    A tautology is a proposition that is true for all possible truth values
    of its identifiers. For example, the following logic-proposition is a
    tautology:

    <\equation*>
      F\<Rightarrow\>F\<vee\>G
    </equation*>
  </cell>>|<row|<\cell>
    Sets
  </cell>|<\cell>
    A set is a collection of elements that is determined by its elements. We
    denote sets with curly brackets, so the set of the first three natural
    numbers is <math|<around*|{|1,2,3|}>>. The empty set will be denoted as
    <math|<around*|{||}>>, and operations on sets are <math|\<cap\>>,
    <math|\<cup\>>, <math|\\>, and <math|\<subseteq\>> (highest to lowest
    precedence). Membership is denoted with <math|\<in\>>.
  </cell>>|<row|<\cell>
    Predicate Logic
  </cell>|<\cell>
    The two quantifiers, <math|\<forall\>> and <math|\<exists\>>, are
    followed with a colon and the variable in the quantifier is called
    \Pbound\Q as opposed to a \Pfree\Q variable. See the example below where
    <math|x> and <math|y> are both bound.

    <\equation*>
      \<forall\>x\<in\>S:<around*|(|\<forall\>y\<in\>T:F|)>
    </equation*>
  </cell>>|<row|<\cell>
    Formulas vs. Statements
  </cell>|<\cell>
    Note that by default, something like <math|2\<ast\>x\<gtr\>x> is a noun;
    it is true or false depending on the value of <math|x>. On the other
    hand, if we would like to assert if the formula is true, then we should
    instead write the statement <math|2\<ast\>x\<gtr\>x> is true.
  </cell>>|<row|<\cell>
    Action
  </cell>|<\cell>
    An action is true or false of a step, meaning that it it contains primed
    variables (from the second state) and unprimed variables (from the first
    state).\ 
  </cell>>|<row|<\cell>
    Anatomy of a <math|TLA<rsup|+>> Specification
  </cell>|<\cell>
    A <math|TLA<rsup|+>> specification usually consists of an initial
    predicate and a next-state relation.

    <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-rborder|0ln>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-width|>|<cwith|1|-1|1|1|cell-hmode|auto>|<cwith|1|-1|1|1|cell-background|pastel
    green>|<twith|table-hyphen|n>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<table|<row|<\cell>
      Initial Predicate
    </cell>|<\cell>
      Specifies all the possible initial values of the initial state. This is
      a predicate that is true if the variables are possible initial values
      and false otherwise.
    </cell>>|<row|<\cell>
      Next-State Relation
    </cell>|<\cell>
      This is an action that specifies how the state can change in any step.
      The relation is true if the step is valid, and false otherwise.
    </cell>>>>>

    We can use the temporal-logic (<math|\<box\>>) unary operatior to ensure
    that the ensuing formula is always true. Thus, given that <math|I> and
    <math|N> are an initial predicate and a next-state relation respectively,
    we see the specification of our system is described as
    <math|I\<wedge\>\<box\>N>.

    The specification is broken into Modules, each having their own
    defintions, variables, and theorems.
  </cell>>|<row|<\cell>
    Uniqueness of Specifications
  </cell>|<\cell>
    Since there are multiple ways to model the same thing, two specifications
    of the same thing are not neccessarly unique. The only thing that matters
    is that if <math|F<rsub|1>> and <math|F<rsub|2>> are formulas for the
    same behaviour, then <math|F<rsub|1>\<equiv\>F<rsub|2>> is a theorem.
  </cell>>>>>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>System
      Specifications> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>