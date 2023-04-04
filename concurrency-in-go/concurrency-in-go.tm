<TeXmacs|2.1>

<style|generic>

<\body>
  <doc-data|<doc-title|\PConcurrency in Go\Q
  Notes>|<doc-author|<author-data|<author-name|Arnav
  Kumar>|<author-homepage|<slink|https://arnavcs.github.io>>>>>

  <\bothlined>
    <with|font-shape|italic|Concurrency in Go> is a publication by O'Reilly
    Media Inc. written by Katherine Cox-Buday. This is a collection of notes
    that I make about the text as I read it, and is not a summary or
    recreation of the text, but rather a reference for anyone who has already
    read the text. As such, please read the text to gain a better
    understading of the contents.
  </bothlined>

  <section|Concurrency Ideas>

  <\padded-center>
    <tabular|<tformat|<cwith|3|3|1|1|cell-background|pastel
    yellow>|<cwith|2|2|1|1|cell-background|pastel
    green>|<cwith|1|-1|1|1|cell-tborder|1ln>|<cwith|1|-1|1|1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<table|<row|<cell|Color
    Scheme Key>>|<row|<cell|Definition>>|<row|<cell|Note>>>>>
  </padded-center>

  <tabular|<tformat|<twith|table-hyphen|y>|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|1|cell-width|25ex>|<cwith|1|-1|1|1|cell-hmode|min>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<cwith|2|2|1|1|cell-tborder|0ln>|<cwith|3|3|1|1|cell-bborder|0ln>|<cwith|4|4|1|1|cell-tborder|0ln>|<cwith|2|3|1|1|cell-lborder|0ln>|<cwith|2|3|1|1|cell-rborder|0ln>|<cwith|2|3|2|2|cell-lborder|0ln>|<cwith|11|11|1|2|cell-hyphen|t>|<cwith|11|11|1|2|cell-halign|l>|<cwith|11|11|1|1|cell-width|25ex>|<cwith|11|11|1|1|cell-hmode|min>|<cwith|11|11|1|2|cell-lsep|1ex>|<cwith|11|11|1|2|cell-rsep|1ex>|<cwith|11|11|1|2|cell-bsep|1ex>|<cwith|11|11|1|2|cell-tsep|1ex>|<cwith|1|-1|1|1|cell-background|pastel
  green>|<cwith|11|11|1|1|cell-background|pastel
  yellow>|<cwith|21|21|1|1|cell-background|pastel yellow>|<table|<row|<\cell>
    Amdahl's Law
  </cell>|<\cell>
    Amdahl's Law models the improved performance of a fixed task when the
    resources are improved. In parallel computing, it is used to predict the
    speedup of using multiple processors. The relation is given as follows:

    <\equation*>
      S<rsub|latency><around*|(|s|)>=<frac|1|<around*|(|1-p|)>+<frac|p|s>>
    </equation*>

    <tabular|<tformat|<cwith|1|-1|2|2|cell-hyphen|t>|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|1|cell-background|pastel
    green>|<table|<row|<cell|<math|S<rsub|latency>>>|<\cell>
      the theoretical speedup of the whole program
    </cell>>|<row|<cell|<math|s>>|<\cell>
      the speedup of the part of the task from improved resources
    </cell>>|<row|<cell|<math|p>>|<\cell>
      the proportion of the execution time that benefits from the improved
      resources
    </cell>>>>>
  </cell>>|<row|<\cell>
    Race Conditions
  </cell>|<\cell>
    A race condition is when two or more operations must execute in the
    correct order, but the program leaves the order of execution unspecified.
    </cell>>|<row|<\cell>
    Data Race
  </cell>|<\cell>
    A data race is a race condition in which two concurrent operations
    attempt to read the same data at an unspecified time (namely one that
    could potentially conflict). In the following example, the program is not
    given a specified evaluation order, so the code that follows may execute
    before, during, or even after the goroutine. As such, the output is
    indeterminate.

    <\verbatim-code>
      var data int

      go func() { data++ }()

      fmt.Printf("%v\\n" data)
    </verbatim-code>
  </cell>>|<row|<\cell>
    Atomicity
  </cell>|<\cell>
    An atomic operation is indivisible or uninteruptable in the context in
    which it is operating. For example, the statement <verbatim|i++> consists
    of 3 atomic operations: retriving, incrementing, and storing the value of
    <verbatim|i>.
  </cell>>|<row|<\cell>
    Critical Selection
  </cell>|<\cell>
    A critical selection is a section of code that requires exclusive access
    to a shared resource. In the following code, the <verbatim|fmt.Printf()>
    and the goroutine are both critical selections.

    <\verbatim-code>
      var data int

      go func() { data++ }()

      fmt.Printf("%v\\n" data)
    </verbatim-code>
  </cell>>|<row|<\cell>
    Memory Access Synchronization
  </cell>|<\cell>
    To solve the problem of multiple critical selections, only enable one
    critical selection to access the same shared resource at a time. This can
    be achieved, for example, with a mutex.
  </cell>>|<row|<\cell>
    Deadlock
  </cell>|<\cell>
    A deadlock is a state in which all concurrent processes are waiting on
    each other. A deadlock can be identified by the Coffman Conditions.
  </cell>>|<row|<\cell>
    Coffman Conditions
  </cell>|<\cell>
    There are 4 Coffman Conditions that detect, prevent, and correct
    deadlocks. The conditions are as follows:

    <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|1|1|-1|cell-tborder|0ln>|<cwith|4|4|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-rborder|0ln>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-width|>|<cwith|1|-1|1|1|cell-hmode|auto>|<cwith|1|-1|1|1|cell-background|pastel
    green>|<twith|table-hyphen|n>|<table|<row|<\cell>
      Mutual Exclusion
    </cell>|<\cell>
      A concurrent process must hold exclusive rights to a resource at any
      one time.
    </cell>>|<row|<\cell>
      Wait For Condition
    </cell>|<\cell>
      A concurrent process must hold a resource and be waiting for another
      resource.
    </cell>>|<row|<\cell>
      No Preemption
    </cell>|<\cell>
      A resource held by a concurrent process can only be released by that
      process.
    </cell>>|<row|<\cell>
      Circular Wait
    </cell>|<\cell>
      A process must be waiting on a chain of processes which is circular
      (meaning that the process is directly or indirectly waiting on itself
      to give a result).
    </cell>>>>>
  </cell>>|<row|<\cell>
    Livelock
  </cell>|<\cell>
    A livelock is when the current concurrent processes are performing
    operations, but these operations do not terminate or move the program
    closer to termination.
  </cell>>|<row|<\cell>
    Starvation
  </cell>|<\cell>
    Starvation is a superset of a livelock or deadlock where, more generally,
    a concurrent process does not recieve access to the resources it needs. A
    common example is having a \Pgreedy worker\Q hold on to access to the
    resource, while a \Ppolite worker\Q does not, and thus has less access to
    the resource: it is starved.
  </cell>>|<row|<\cell>
    \PFinding a Balance\Q
  </cell>|<\cell>
    What should the range of a memory lock be? Should it be broad and cover
    multiple critical selections, or should each critical selection get its
    own lock? It is important to strike a balance in answering this question
    because memory access synchronization is expensive, but you also want to
    avoid writing greedy processes to mitigate starvation.
  </cell>>|<row|<\cell>
    OS Threads
  </cell>|<\cell>
    OS threads are a primitve at the OS context that can be used to run
    pocesses concurrently. The operating system is responsible for creating
    and managing the threads. The threads all have access to a shared
    resource space.
  </cell>>|<row|<\cell>
    Green Threads
  </cell>|<\cell>
    Green threads are threads that are managed by a program's runtime.
  </cell>>|<row|<\cell>
    Coroutines
  </cell>|<\cell>
    Concurrent subroutines that are non-preemptive (meaning that they can't
    be interrupted) are called coroutines. They feature multiple points to
    suspend or reenter computation.\ 
  </cell>>|<row|<\cell>
    Thread Pools
  </cell>|<\cell>
    Thread pools are a software design pattern that maintains a collection of
    threads to map incoming tasks to threads for concurrent execution.
  </cell>>|<row|<\cell>
    Concurrency vs. Parallelism
  </cell>|<\cell>
    Parallelism is a property of a machine to be able to run two tasks
    simulatiously in the considered context. On the other hand, concurrency
    refers to when two processes have a lifespan that overlaps. In this
    sense, you could have a concurrent program running on a single thread
    where multiple threads are simluated. It is also possible that the
    concurrent processes run in parallel.

    Concurrency is a property of the code, and parallelism is a property of
    the execution of the code.
  </cell>>|<row|<\cell>
    Process
  </cell>|<\cell>
    A process is a portion of code that requires input to run and produces an
    output that is consumed by another process. The input and output of a
    process is called <with|font-shape|right|communication> between
    processes.
  </cell>>|<row|<\cell>
    Communicating Sequential Processes (CSP)
  </cell>|<\cell>
    CSP is the name of a paper, programming language, and the idea of a
    descibing programs as processes which are sequential and communicate.
    Used in the paper describing CSP, the CSP language supported the use of
    <verbatim|!> and <verbatim|?> to send input into and read output from a
    process respectively. In addition, it supported guarded commands. This is
    the style of concurrency programming that Golang's channels are based on.
  </cell>>|<row|<\cell>
    Guarded Command
  </cell>|<\cell>
    When a statement should not be executed if another statement was false or
    a command exited, it is a guarded command. The CSP example below denotes
    a process <verbatim|a>, from which a character <verbatim|c> is
    continually read (while there is something to be read), and then inputted
    into the process <verbatim|b>.

    <\verbatim-code>
      *[c:character;

      a?c -\<gtr\> b!c]
    </verbatim-code>
  </cell>>|<row|<\cell>
    Process Calculus
  </cell>|<\cell>
    Process calculus is a mathematical way to model concurrent systems and
    analyze their properties.
  </cell>>|<row|<\cell>
    Should I use CSP style or OS threads?
  </cell>|<\cell>
    The CSP style has certain advantages that it comes with, and more
    generally, the Golang developing team suggest to use the CSP style over
    primitves like <verbatim|sync.Mutex>, but there are certain guidelines
    outlined that help determine when you should use channels or OS thread
    primitives. Follow the first applicable statement.

    <\enumerate>
      <item>If your code is performance critical, use primitives

      <item>If you are trying to transfer ownership of data, use channels

      <item>If you are trying to guard the internal structure of a struct,
      use primitives

      <item>If you are coordinating multiple pieces of logic, use channels

      <item>Use primitives
    </enumerate>
  </cell>>>>>

  <section|Golang Features>

  <\padded-center>
    <tabular|<tformat|<cwith|5|5|1|1|cell-background|pastel
    yellow>|<cwith|4|4|1|1|cell-background|pastel
    green>|<cwith|1|-1|1|1|cell-tborder|1ln>|<cwith|1|-1|1|1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|3|3|1|1|cell-background|pastel
    cyan>|<cwith|2|2|1|1|cell-background|pastel
    blue>|<cwith|6|6|1|1|cell-background|pastel
    orange>|<table|<row|<cell|Color Scheme
    Key>>|<row|<cell|Concept>>|<row|<cell|Type>>|<row|<cell|Function>>|<row|<cell|Keyword>>|<row|<cell|Syntax>>>>>
  </padded-center>

  <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|6|6|1|2|cell-hyphen|t>|<cwith|1|-1|1|1|cell-background|pastel
  yellow>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|1|cell-width|25ex>|<cwith|1|-1|1|1|cell-hmode|min>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<twith|table-hyphen|y>|<cwith|6|6|1|1|cell-background|pastel
  cyan>|<cwith|3|3|1|1|cell-background|pastel
  green>|<cwith|2|2|1|1|cell-background|pastel
  blue>|<cwith|1|1|1|1|cell-background|pastel
  blue>|<cwith|7|7|1|1|cell-background|pastel yellow>|<table|<row|<\cell>
    Format of a Golang Program
  </cell>|<\cell>
    Every Golang program must contain at least one goroutine: the main
    goroutine that is started when the process begins.\ 
  </cell>>|<row|<\cell>
    Goroutines
  </cell>|<\cell>
    A goroutine is a function, method, or closure that runs concurrently with
    some other code. A goroutine can be created with the keyword
    <verbatim|go>. Each goroutine is a special class of coroutine where you
    do not have to manually describe the suspension and resuming of the
    routine.
  </cell>>|<row|<\cell>
    <verbatim|fmt.Printf()>
  </cell>|<\cell>
    Similar to <verbatim|printf()> in C.
  </cell>>|<row|<\cell>
    <verbatim|go>
  </cell>|<\cell>
    Creates a <with|font-shape|italic|goroutine> that runs the function,
    method, or closure concurrently by multiplexing onto OS threads. The
    example below calls go on an anonymous function, running it concurrently.

    <\verbatim-code>
      go func() {\ 

      \ \ \ \ fmt.Printf("Golang!\\n")\ 

      }()
    </verbatim-code>
  </cell>>|<row|<\cell>
    <verbatim|defer>
  </cell>|<\cell>
    Defers the execution of the statement to the end of the function. In the
    following example, the mutex isn't unlocked until the after the value of
    <verbatim|data> increments.

    <\verbatim-code>
      var data int = 0

      var mu sync.Mutex

      func inc() {

      \ \ \ \ mu.Lock()

      \ \ \ \ defer mu.Unlock()

      \ \ \ \ data++

      }()
    </verbatim-code>
  </cell>>|<row|<\cell>
    <verbatim|sync.Mutex>
  </cell>|<\cell>
    A mutex type that supports the <verbatim|.Lock()> and
    <verbatim|.Unlock()> methods. These methods declare exclusive access to
    the shared resource that the mutex represents.
  </cell>>|<row|<\cell>
    <verbatim|func>
  </cell>|<\cell>
    This keyword can be used to create named functions or anonymous
    functions. A named function example is show below.

    <\verbatim-code>
      func helloWorld(numTimes int) {

      \ \ \ \ for ; numTimes \<gtr\> 0; numTimes-- {

      \ \ \ \ \ \ \ \ fmt.Printf("Hello World!\\n")

      \ \ \ \ }

      }
    </verbatim-code>

    An anonymous version of the same function is also shown below.

    <\verbatim-code>
      var f := func(numTimes int) {

      \ \ \ \ for ; numTimes \<gtr\> 0; numTimes-- {

      \ \ \ \ \ \ \ \ fmt.Printf("Hello World!\\n")

      \ \ \ \ }

      }
    </verbatim-code>
  </cell>>>>>

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|3>>
    <associate|auto-3|<tuple|3|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Concurrency
      Ideas> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Golang
      Features> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>