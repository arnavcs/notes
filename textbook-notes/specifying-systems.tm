<TeXmacs|2.1>

<style|generic>

<\body>
  <doc-data|<doc-title|<with|font-shape|italic|Specifying Systems>
  Notes>|<doc-author|<author-data|<author-name|Arnav
  Kumar>|<author-homepage|<slink|https://arnavcs.github.io>>>>>

  <\bothlined>
    <with|font-shape|italic|Specifying Systems> is a publication written by
    Leslie Lamport on the TLA<rsup|+> language. I choose purposely to omit
    leaving details in these notes about the grammar of the language, since
    this can be easily found in the author's summary of the text on the TLA
    website. Additionally, this is not a summary or recreation of the next in
    any manner. As such, please read the text to gain a better understading
    of the contents.
  </bothlined>

  <section|System Specifications>

  <\padded-center>
    <tabular|<tformat|<cwith|3|3|1|1|cell-background|pastel
    yellow>|<cwith|2|2|1|1|cell-background|pastel
    green>|<cwith|1|-1|1|1|cell-tborder|1ln>|<cwith|1|-1|1|1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<table|<row|<cell|Color
    Scheme Key>>|<row|<cell|Definition>>|<row|<cell|Note>>>>>
  </padded-center>

  <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<cwith|1|-1|1|1|cell-background|pastel
  green>|<cwith|10|10|1|1|cell-background|pastel
  yellow>|<cwith|12|12|1|1|cell-background|pastel
  yellow>|<cwith|15|15|1|1|cell-background|pastel
  yellow>|<cwith|16|16|1|1|cell-background|pastel
  yellow>|<cwith|23|23|1|1|cell-background|pastel
  yellow>|<cwith|24|24|1|1|cell-background|pastel
  yellow>|<twith|table-hyphen|n>|<cwith|1|-1|1|1|cell-width|25ex>|<cwith|1|-1|1|1|cell-hmode|exact>|<table|<row|<\cell>
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
    Behaviour
  </cell>|<\cell>
    Formally, a behaviour is a sequence of states.
  </cell>>|<row|<\cell>
    Temporal Formula
  </cell>|<\cell>
    A temporal logic formula is a formula that describes a system's behaviour
    by relating the next state of a system with the current state.
  </cell>>|<row|<\cell>
    TLA<rsup|+>
  </cell>|<\cell>
    TLA<rsup|+> stands for the Temporal Logic of Actions and supports both
    assertional resoning and temporal logic. This system is quite good with
    describing asynchronous systems, but can be used for nearly any purpose:
    APIs and distributed systems included.
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
    Anatomy of a TLA<rsup|+> Specification
  </cell>|<\cell>
    A TLA<rsup|+> specification usually consists of an initial predicate and
    a next-state relation.

    <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-rborder|0ln>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-background|pastel
    green>|<twith|table-hyphen|n>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<cwith|1|-1|1|1|cell-width|15ex>|<cwith|1|-1|1|1|cell-hmode|exact>|<table|<row|<\cell>
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

    We can use the temporal-logic unary operator (<math|\<box\>F>) to ensure
    that <math|F> is always true. Thus, given that <math|I> and <math|N> are
    an initial predicate and a next-state relation respectively, we see the
    specification of our system is described as <math|I\<wedge\>\<box\>N>.
  </cell>>|<row|<\cell>
    Theorem
  </cell>|<\cell>
    A theorem is a temporal formula that is satisfied by every behaviour.
  </cell>>|<row|<\cell>
    Expressions and Operators
  </cell>|<\cell>
    The <math|\<triangleq\>> symbol is used to define both expressions and
    operators, but what is the difference between the two? Firstly, the
    definition operator assigns a corresponding expression or operator to the
    symbol on the left hand side. For expressions, this will look like
    <math|S<rsub|id>\<triangleq\>E<rsub|exp>>, and for operators it looks
    like <math|S<rsub|id><around*|(|p<rsub|1>,p<rsub|2>,\<ldots\>p<rsub|n>|)>\<triangleq\>E<rsub|exp>>.
    Secondly, using the defined symbol in an expresion is different. An
    expression is simply replaced, but for an operator, brackets must be used
    to specify arguments.\ 
  </cell>>|<row|<\cell>
    Uniqueness of Specifications
  </cell>|<\cell>
    Since there are multiple ways to model the same thing, two specifications
    of the same thing are not neccessarly unique. The only thing that matters
    is that if <math|F<rsub|1>> and <math|F<rsub|2>> are formulas for the
    same behaviour, then <math|F<rsub|1>\<equiv\>F<rsub|2>> is a theorem.
  </cell>>|<row|<\cell>
    What to include in a Specification?
  </cell>|<\cell>
    It is important to only include certain aspects of a specification and
    not include everything. For example, a step might consist of more than
    one atomic operation in order to keep the specification simple. This
    specification will still prove correctness for a system using the
    intended interface. For hardware specifications, the implementer of a
    system might not know, for example, that the <verbatim|val> line should
    stabilize before the <verbatim|rdy> line is changed, even though both of
    these actions happen in the same step.\ 

    This is perhaps the hardest part of making a specification\Vthe task of
    choosing the correct abstraction.\ 
  </cell>>|<row|<\cell>
    Constants and Variables
  </cell>|<\cell>
    In a module, a constant is a parameter of the specification that doesn't
    change, whereas a variable is something that can vary depending on the
    state.
  </cell>>|<row|<\cell>
    State Function and State Predicate
  </cell>|<\cell>
    This is an ordinary expression (without any <math|<rprime|'>> or
    <math|\<box\>>) that can contain variables and constants. When it is
    boolean-valued, it is called a state predicate.
  </cell>>|<row|<\cell>
    Invariant
  </cell>|<\cell>
    If <math|I> is an invariant of a specification <math|S>, then
    <math|S\<Rightarrow\>\<box\>I> is a theorem.
  </cell>>|<row|<\cell>
    Type
  </cell>|<\cell>
    A variable <math|v> has type <math|T> in a specification <math|S> if and
    only if <math|v\<in\>T> is an invariant of <math|S>, or in order words,
    <math|S\<Rightarrow\>\<box\><around*|(|v\<in\>T|)>> is a theorem. Types
    for records can be specified with square brackets, like below.

    <verbatim|<around*|[|val : Data, rdy : <around*|{|0,1|}>, ack :
    <around*|{|0,1|}>|]>>
  </cell>>|<row|<\cell>
    Type Invairant
  </cell>|<\cell>
    To specify the types of variables, a definition can be used to check that
    the all variable are of the correct type.
  </cell>>|<row|<\cell>
    Enabled vs. Disabled Actions
  </cell>|<\cell>
    An action is enabled in a state when it is possible to take a step with
    the action in question, otherwise it is disabled. The definition of any
    action usually begins with its enabling condition.
  </cell>>|<row|<\cell>
    Avoiding Variable Proliferation
  </cell>|<\cell>
    To avoid the issue of having too many variables in a specifcation and its
    interface, replace individual varibles with records or ordered tuples.
    This allows for syntax that might be easier to read, the following
    example ensures that the only changed record fields of chan are changing
    <verbatim|.rdy> to <verbatim|1 - chan.rdy> and setting <verbatim|.val> to
    <verbatim|d>.

    <verbatim|chan' = [chan EXCEPT !.val = d, !.rdy = 1 - @]>
  </cell>>|<row|<\cell>
    Symbol Scope
  </cell>|<\cell>
    For constants, variables, and definitions, the scope is the part of the
    module that follows after it. For operator definitions, the scope of the
    arguments is local, and for predicate logic expression, the same is true.

    TLA<rsup|+> has no variable overshadowing. A symbol cannot be defined if
    one with the same name already exists.
  </cell>>>>>

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|automatic>
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