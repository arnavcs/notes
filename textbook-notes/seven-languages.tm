<TeXmacs|2.1>

<style|<tuple|generic|compact-list|python>>

<\body>
  \;

  <doc-data|<doc-title|<with|font-shape|italic|Seven Languages in Seven
  Weeks> Notes>|<doc-author|<author-data|<author-name|Arnav
  Kumar>|<author-homepage|<slink|https://arnavcs.github.io>>>>>

  <\bothlined>
    <with|font-shape|italic|Seven Languages in Seven Weeks> is a publication
    by The Pragmatic Bookshelf written by Bruce A. Tate. This is a collection
    of notes that I make about the text as I read it. This is not a summary
    or recreation of the text, but rather a reference for anyone who has
    already read the text. As such, please read the text to gain a better
    understading of the contents.
  </bothlined>

  <section|Language Overviews>

  <\padded-center>
    <tabular|<tformat|<cwith|1|-1|1|-1|cell-tborder|1ln>|<cwith|1|-1|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-lborder|1ln>|<cwith|1|-1|1|-1|cell-rborder|1ln>|<table|<row|<cell|<strong|Ruby>>|<cell|Dynamic
    Typing>|<cell|Strong Typing>|<cell|Object
    Oriented>|<cell|Interpreted>>>>>
  </padded-center>

  <section|Ruby>

  <tabular|<tformat|<twith|table-hyphen|y>|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|1|cell-width|25ex>|<cwith|1|-1|1|1|cell-hmode|min>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<cwith|1|-1|1|1|cell-background|pastel
  yellow>|<table|<row|<\cell>
    What is Ruby?
  </cell>|<\cell>
    Ruby is an interpreted, object oriented, and dynamically typed language
    which is duck typed.
  </cell>>|<row|<\cell>
    Object Oriented
  </cell>|<\cell>
    In Ruby, most things are objects, even numbers and classes themselves.
    For example:

    <\verbatim-code>
      \<gtr\>\<gtr\> 1.class

      =\<gtr\> Integer

      \<gtr\>\<gtr\> Integer.class

      =\<gtr\> Class

      \<gtr\>\<gtr\> Class.class

      =\<gtr\> Class
    </verbatim-code>

    The methods of an object can be returned with the <verbatim|.methods>
    method.\ 
  </cell>>|<row|<\cell>
    Comments
  </cell>|<\cell>
    Comments are denoted with <verbatim|#>.
  </cell>>|<row|<\cell>
    Strings
  </cell>|<\cell>
    If strings are surrounded by one quote, they are to be considered
    literal, but if they are in double quotes, they are evaluated, rplacing
    anything in <verbatim|#{}> with its evaluated value.
  </cell>>|<row|<\cell>
    Naming Conventions
  </cell>|<\cell>
    Class names are usually PascalCase, variable and method names are
    snake_case, constants are in ALL_CAPS, functions that test a condition
    end in a \Phuh\Q (<verbatim|?>), and those that modify the arguments end
    with a \Pbang\Q (<verbatim|!>).
  </cell>>|<row|<\cell>
    Descisions
  </cell>|<\cell>
    Descisions can be made with the <verbatim|if[,elsif,else,end]>,
    <verbatim|unless[,else,end]>, <verbatim|while[,end]>, and
    <verbatim|unless[,end]> keywords inline or in blocks. These are special
    keywords that do not seem to be objects or methods. Additionally,
    anything other than <verbatim|nil> and <verbatim|false> evaluates to
    <verbatim|true> in these conditionals.

    <\verbatim-code>
      puts 'x != 1' unless x == 1

      \;

      if x == 1

      \ \ \ \ puts 'x == 1'

      end

      \;

      x = x + 1 while x \<less\> 10
    </verbatim-code>

    Logical operations like <verbatim|&&> and <verbatim|\|\|> are paired with
    <verbatim|&> and <verbatim|\|>, variants of the two which do not
    short-circuit.
  </cell>>|<row|<\cell>
    Duck Typing
  </cell>|<\cell>
    Being strongly typed, Ruby does a type check (at run time since it is
    dynamically typed) to check type collisions. As such, you don't have to
    inherit from the same parent to be used in the same way.
  </cell>>|<row|<\cell>
    Symbols
  </cell>|<\cell>
    Ruby symbols are identifiers, each starting with <verbatim|:>. The
    advantage of symbols over strings is that strings with the same value can
    be different physical strings, but each symbol is only its value. This is
    to say, that the <verbatim|.object_id> method will always return the
    same.
  </cell>>|<row|<\cell>
    Functions
  </cell>|<\cell>
    A function can be defined with <verbatim|def> and can have parameters
    passed into it. For example, the following shows an implicit return. The
    function is also an object. As you can see, parenthesis are implicit for
    the last parameter of a function.

    <\verbatim-code>
      \<gtr\>\<gtr\> def succ n

      \<gtr\>\<gtr\> \ \ n + 1

      \<gtr\>\<gtr\> end

      =\<gtr\> :succ

      \<gtr\>\<gtr\> succ 5 * 2

      =\<gtr\> 11
    </verbatim-code>
  </cell>>|<row|<\cell>
    Arrays
  </cell>|<\cell>
    As a result of the dynamic typing system, Ruby arrays do not have to be
    homogenous. Arrays can be used as queues, stacks, or even sets. The two
    methods <verbatim|[]> and <verbatim|[]=> allow access to the array, and
    there is syntactic sugar for them which makes it resemble C array acess.
    For example:

    <\verbatim-code>
      \<gtr\>\<gtr\> [0, 1].class

      =\<gtr\> Array

      \<gtr\>\<gtr\> [2, 3][1]

      =\<gtr\> 3
    </verbatim-code>
  </cell>>|<row|<\cell>
    Hashes
  </cell>|<\cell>
    Hashes follow the syntax below, and are often useful for passing into
    functions when named parameters are desired. Again, because of the
    dynamic typing system, hashes don't have to be homogenous.\ 

    <\verbatim-code>
      \<gtr\>\<gtr\> person = {:height =\<gtr\> 3, :name =\<gtr\> 'anon'}

      \<gtr\>\<gtr\> person[:height]

      =\<gtr\> 3

      \<gtr\>\<gtr\> person[:weight]

      =\<gtr\> nil
    </verbatim-code>
  </cell>>|<row|<\cell>
    Code Blocks and Yield
  </cell>|<\cell>
    A code block is denoted with either <verbatim|{> and <verbatim|}> or
    <verbatim|do> and <verbatim|end>. It is essentially a function without a
    name, and as such, can also have a parameters. For example, the
    <verbatim|Integer> <verbatim|times> method and the <verbatim|Array>
    <verbatim|each> methods can take in a code block.

    <\verbatim-code>
      \<gtr\>\<gtr\> [1, 3, 2].sort {\|x, y\| x \<less\>=\<gtr\> y}

      =\<gtr\> [1, 2, 3]
    </verbatim-code>

    The yield function is useful for making your own functions which take a
    block. For example, if you wanted to make our own <verbatim|times>
    method:

    <\verbatim-code>
      class Fixnum

      \ \ \ \ def my_times

      \ \ \ \ \ \ \ \ for i in 0..(self-1) do

      \ \ \ \ \ \ \ \ \ \ \ \ yield i

      \ \ \ \ \ \ \ \ end

      \ \ \ \ end

      end
    </verbatim-code>

    Blocks can also be passed as first-class parameters by using <verbatim|&>
    in the parameter name and can be called with the <verbatim|.call> method.

    Blocks are very versatile and can be used to specify that certain code
    should be delayed in execution, condiditionally executed, or to enfore
    transaction policy.
  </cell>>|<row|<\cell>
    Classes
  </cell>|<\cell>
    Ruby classes can only inherit from one parent class, the <em|superclass>.
    Everything eventually inherets from the <verbatim|Object> class (or in
    Ruby 3, the <verbatim|BasicObject> class). Even classes themselves are
    instances of the <verbatim|Class> class, whose superclass is
    <verbatim|Module>, whose superclass is <verbatim|Object>.

    You can open up an existing class and add methods to it as you would
    define a class. \ Additionally, instance variables (one per object) are
    prepended with <verbatim|@> and class variables (one per class) with
    <verbatim|@@>. The keywords <verbatim|attr> (and
    <verbatim|attr_accessor>) define an instance variable, an accessor, (and
    a setter).

    <\verbatim-code>
      class Tree

      \ \ \ \ attr_accessor :children, :node_name

      \;

      \ \ \ \ def initialize(name, children=[])

      \ \ \ \ \ \ \ \ @children = children

      \ \ \ \ \ \ \ \ @node_name = name

      \ \ \ \ end

      \ \ \ \ 

      \ \ \ \ def visit_all(&block)

      \ \ \ \ \ \ \ \ visit &block

      \ \ \ \ \ \ \ \ children.each {\|c\| c.visit_all &block}

      \ \ \ \ end

      \;

      \ \ \ \ def visit(&block)

      \ \ \ \ \ \ \ \ block.call self

      \ \ \ \ end

      end
    </verbatim-code>
  </cell>>|<row|<\cell>
    Mixins and Modules
  </cell>|<\cell>
    What if we want to describe a set of attributes that applies to many
    different objects which do not inheret from the same class? We can use
    mixins which represent the idea that there are methods to be used by a
    class without inheriting from it. In Ruby, mixins are made possible with
    Modules.

    Each Module can contain functions and constants that become part of a
    class when the class includes the <verbatim|include ModuleName> line.
    Additionally, a module may even make reference to functions that are
    defined in the class and not the module.

    <\verbatim-code>
      module Functor

      \ \ \ \ def fmap_print

      \ \ \ \ \ \ \ \ \ visit_all {\|n\| puts n.node_name}

      \ \ \ \ end

      \;

      \ \ \ \ def fmap_size

      \ \ \ \ \ \ \ \ ret = 0

      \ \ \ \ \ \ \ \ visit_all {\|n\| ret = ret + 1}

      \ \ \ \ \ \ \ \ return ret

      \ \ \ \ end

      end
    </verbatim-code>
  </cell>>|<row|<\cell>
    Important Mixins
  </cell>|<\cell>
    Ruby has some important mixins, <verbatim|enumerable> and
    <verbatim|comparable>. To <verbatim|include> from <verbatim|enumerable>
    you must implement <verbatim|each>, and to <verbatim|include> from
    <verbatim|comparable> you must implement <verbatim|\<less\>=\<gtr\>>.

    With <verbatim|enumerable> and <verbatim|comparable>, you can use methods
    such as <verbatim|any?>, <verbatim|all?>, <verbatim|collect>,
    <verbatim|select>, <verbatim|member?>, <verbatim|max>, and
    <verbatim|inject>.\ 
  </cell>>>>>

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
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Language
      Overviews> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Ruby>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>