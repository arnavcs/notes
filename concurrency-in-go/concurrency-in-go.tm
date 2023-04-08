<TeXmacs|2.1>

<style|<tuple|generic|compact-list>>

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

  <section|Basic Concurrency Ideas>

  <\padded-center>
    <tabular|<tformat|<cwith|4|4|1|1|cell-background|pastel
    yellow>|<cwith|3|3|1|1|cell-background|pastel
    green>|<cwith|1|-1|1|1|cell-tborder|1ln>|<cwith|1|-1|1|1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|2|2|1|1|cell-background|pastel
    cyan>|<table|<row|<cell|Color Scheme Key>>|<row|<cell|Software / Design
    Pattern>>|<row|<cell|Definition>>|<row|<cell|Note>>>>>
  </padded-center>

  <tabular|<tformat|<twith|table-hyphen|y>|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|1|cell-width|25ex>|<cwith|1|-1|1|1|cell-hmode|min>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<cwith|2|2|1|1|cell-tborder|0ln>|<cwith|3|3|1|1|cell-bborder|0ln>|<cwith|4|4|1|1|cell-tborder|0ln>|<cwith|2|3|1|1|cell-lborder|0ln>|<cwith|2|3|1|1|cell-rborder|0ln>|<cwith|2|3|2|2|cell-lborder|0ln>|<cwith|11|11|1|2|cell-hyphen|t>|<cwith|11|11|1|2|cell-halign|l>|<cwith|11|11|1|1|cell-width|25ex>|<cwith|11|11|1|1|cell-hmode|min>|<cwith|11|11|1|2|cell-lsep|1ex>|<cwith|11|11|1|2|cell-rsep|1ex>|<cwith|11|11|1|2|cell-bsep|1ex>|<cwith|11|11|1|2|cell-tsep|1ex>|<cwith|1|-1|1|1|cell-background|pastel
  green>|<cwith|11|11|1|1|cell-background|pastel
  yellow>|<cwith|23|23|1|1|cell-background|pastel
  yellow>|<cwith|24|25|1|1|cell-background|pastel
  cyan>|<cwith|17|17|1|1|cell-background|pastel
  cyan>|<cwith|6|6|1|-1|cell-lsep|1ex>|<cwith|6|6|1|-1|cell-rsep|1ex>|<cwith|6|6|1|-1|cell-bsep|1ex>|<cwith|6|6|1|-1|cell-tsep|1ex>|<cwith|26|26|1|1|cell-background|pastel
  cyan>|<table|<row|<\cell>
    Amdahl's Law
  </cell>|<\cell>
    Amdahl's Law models the improved performance of a fixed task when the
    resources are improved. In parallel computing, it is used to predict the
    speedup of using multiple processors. The relation is given as follows:

    <\equation*>
      S<rsub|latency><around*|(|s|)>=<frac|1|<around*|(|1-p|)>+<frac|p|s>>
    </equation*>

    <tabular|<tformat|<cwith|1|-1|2|2|cell-hyphen|t>|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|1|cell-background|pastel
    green>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<table|<row|<cell|<math|S<rsub|latency>>>|<\cell>
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

      fmt.Printf("%v\\n", data)
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

      fmt.Printf("%v\\n", data)
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
    green>|<twith|table-hyphen|n>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<table|<row|<\cell>
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
    <verbatim|M:N> Scheduler
  </cell>|<\cell>
    A <verbatim|M:N> scheduler is the mechanism that Golang uses to host
    goroutines and it consists of mapping <verbatim|M> green threads onto
    <verbatim|N> OS threads.
  </cell>>|<row|<\cell>
    Fork-Join Model
  </cell>|<\cell>
    The model that Golang follows for concurrency, a fork-join model is one
    in which a child branch can fork off from parent to be run concurrently.
    After the termination of the child branch, it is joined back to the
    parent branch at a join point.
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

    <with|item-vsep|0fn|<\enumerate>
      <item>If your code is performance critical, use primitives

      <item>If you are trying to transfer ownership of data, use channels

      <item>If you are trying to guard the internal structure of a struct,
      use primitives

      <item>If you are coordinating multiple pieces of logic, use channels

      <item>Use primitives
    </enumerate>>
  </cell>>|<row|<\cell>
    Mutex
  </cell>|<\cell>
    Mutex stands for \Pmutual exclusion\Q and enables a way to express
    exclusive access to a shared resource. A mutex is often used for critical
    selections.
  </cell>>|<row|<\cell>
    Object Pool
  </cell>|<\cell>
    This pattern is a way to create a fixed number of objects for use, and is
    especially useful for objects that are computationally expensive or
    objects that will take a lot of memory.
  </cell>>|<row|<\cell>
    Channels
  </cell>|<\cell>
    The channel pattern is a way to pass information. If there is nothing to
    be read from a channel, reading from it blocks execution; waiting for a
    value to be added to the channel. Additionally, channels can be closed
    (to stop writing to the channel), in which case reading from the channel
    further does not return a meaningful value, but will indicate that the
    channel is closed. Channels can also have buffers to store values to be
    read later.

    As a pattern, to write robust code, seperate the ownership of the channel
    so that the channel utilizers only have read access to the channel, and
    the channel owner has the following responsibilities:

    <\enumerate>
      <item>Instantiate the channel

      <item>Perform writes or pass write ownership to another goroutine

      <item>Close the channel

      <item>Expose a reader channel for the channel utilizers
    </enumerate>
  </cell>>>>>

  <section|Golang Features and Building Blocks>

  <\padded-center>
    <tabular|<tformat|<cwith|3|3|1|1|cell-background|pastel
    yellow>|<cwith|2|2|1|1|cell-background|pastel
    green>|<cwith|1|-1|1|1|cell-tborder|1ln>|<cwith|1|-1|1|1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<table|<row|<cell|Color
    Scheme Key>>|<row|<cell|Type>>|<row|<cell|Function / Keyword>>>>>
  </padded-center>

  <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|1|cell-background|pastel
  yellow>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|1|cell-width|25ex>|<cwith|1|-1|1|1|cell-hmode|min>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<twith|table-hyphen|y>|<cwith|9|9|1|2|cell-hyphen|t>|<cwith|9|9|1|2|cell-hyphen|t>|<cwith|9|9|1|2|cell-halign|l>|<cwith|9|9|1|1|cell-width|25ex>|<cwith|9|9|1|1|cell-hmode|min>|<cwith|9|9|1|2|cell-lsep|1ex>|<cwith|9|9|1|2|cell-rsep|1ex>|<cwith|9|9|1|2|cell-bsep|1ex>|<cwith|9|9|1|2|cell-tsep|1ex>|<cwith|1|1|1|2|cell-hyphen|t>|<cwith|1|1|1|1|cell-background|pastel
  yellow>|<cwith|1|1|1|2|cell-halign|l>|<cwith|1|1|1|1|cell-width|25ex>|<cwith|1|1|1|1|cell-hmode|min>|<cwith|1|1|1|2|cell-lsep|1ex>|<cwith|1|1|1|2|cell-rsep|1ex>|<cwith|1|1|1|2|cell-bsep|1ex>|<cwith|1|1|1|2|cell-tsep|1ex>|<cwith|1|1|1|1|cell-background|pastel
  yellow>|<cwith|8|13|1|1|cell-background|pastel
  green>|<cwith|15|16|1|1|cell-background|pastel
  yellow>|<cwith|14|14|1|1|cell-background|pastel
  green>|<cwith|17|17|1|1|cell-background|pastel
  yellow>|<cwith|2|2|1|1|cell-background|pastel yellow>|<table|<row|<\cell>
    <verbatim|func>
  </cell>|<\cell>
    This keyword can be used to create named functions, closures, or
    anonymous functions. A named function example is show below.

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
  </cell>>|<row|<\cell>
    Loops
  </cell>|<\cell>
    \;
  </cell>>|<row|<\cell>
    <verbatim|range>
  </cell>|<\cell>
    \;
  </cell>>|<row|<\cell>
    <verbatim|go>
  </cell>|<\cell>
    Creates a <with|font-shape|italic|goroutine> that runs the function,
    method, or closure concurrently by multiplexing onto OS threads. Each
    goroutine is a special class of coroutine where you do not have to
    manually describe the suspension and resuming of the routine. At runtime,
    Golang automatically suspends goroutines when they are blocked and
    resumes them when they are unblocked. Goroutines use the fork-join model
    for concurrency and during runtime, a <verbatim|M:N> scheduler is used.
    See the following example using goroutines modified from the textbook
    that uses closures to print <verbatim|"go">, <verbatim|"rust">, and
    <verbatim|"c"> concurrently in an unspecified order.

    <\verbatim-code>
      var wg sync.WaitGroup

      for _, lang := range []string{"go", "rust", "c"} {

      \ \ \ \ wg.Add(1)

      \ \ \ \ go func(l string) {

      \ \ \ \ \ \ \ \ defer wg.Done()

      \ \ \ \ \ \ \ \ fmt.Println(l)

      \ \ \ \ }(lang)

      }

      wg.Wait()
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
    <verbatim|struct>
  </cell>|<\cell>
    A struct in Golang can be named or anonymous. To create a named struct,
    follow the following syntax.

    <\verbatim-code>
      type Fruit struct {

      \ \ \ \ name string

      }

      var apple Fruit = Fruit{"Apple"}
    </verbatim-code>

    And to create an anonymous struct, the following syntax holds.

    <\verbatim-code>
      apple = struct {name string} {name: "Apple"}
    </verbatim-code>
  </cell>>|<row|<\cell>
    <verbatim|interface>
  </cell>|<\cell>
    Interfaces in Golang can be declared as follows.

    <\verbatim-code>
      type Plant interface {

      \ \ \ \ getHeight() float

      \ \ \ \ getSpecies() string

      }
    </verbatim-code>

    Additionally, the existance of the empty <verbatim|interface> in Go is
    special, because all types satisfy the empty interface, meaning it can
    hold any value. It is <verbatim|interface{}>.
  </cell>>|<row|<\cell>
    <verbatim|sync.WaitGroup>
  </cell>|<\cell>
    A waitgroup stops the execution of certain code past a point untill all
    processes being waited on are completed. It supports methods such as
    <verbatim|.Add(int)>, <verbatim|.Wait()>, and <verbatim|.Done()>. You
    should use a <verbatim|WaitGroup> when you do not care about the results
    of the concurrent operations or have another mean to collect the results.
    If that is not the case, use a <verbatim|select> statement with channels.
    See the exmaple below which prints the number from <verbatim|0> to
    <verbatim|n-1> in some unspecified order.

    <\verbatim-code>
      <\verbatim>
        const n = 3

        var wg sync.WaitGroup

        wg.Add(n)

        for i := 0; i \<less\> n; i++ {

        \ \ \ \ go func(wg *sync.WaitGroup, i int) {

        \ \ \ \ \ \ \ \ defer wg.Done()

        \ \ \ \ \ \ \ \ fmt.Println(i)

        \ \ \ \ }(&wg, i)

        }

        wg.Wait()\ 
      </verbatim>
    </verbatim-code>
  </cell>>|<row|<\cell>
    <verbatim|sync.Mutex>
  </cell>|<\cell>
    A mutex type that supports the <verbatim|.Lock()>, <verbatim|.TryLock()>,
    and <verbatim|.Unlock()> methods. These methods declare exclusive access
    to the shared resource that the mutex represents. By convention, a mutex
    unlock statement is in a <verbatim|defer> statement to avoid
    <verbatim|panic>ing meaning that the mutex is not unlocked.
  </cell>>|<row|<\cell>
    <verbatim|sync.RWMutex>
  </cell>|<\cell>
    This form of mutex requires the specification of the type of access
    desired. An arbitrary number of readers are allowed to read the same
    resource granted that there are no writers. In exchange for the greater
    control over the memory (and potentially less opportunity for
    starvation), it gives lower performance than <verbatim|sync.Mutex> for a
    small number of readers. When the number of readers is high, though, it's
    performance is noticible. The supported methods are those from
    <verbatim|sync.Mutex>, and the additional <verbatim|.RLock()>,
    <verbatim|.TryRLock()>, <verbatim|.RUnlock()>, and <verbatim|.RLocker()>.
  </cell>>|<row|<\cell>
    <verbatim|sync.Cond>
  </cell>|<\cell>
    A <verbatim|sync.Cond> is a \Prendevous point\Q for goroutines waiting
    for an event (an signal between two or more goroutines that carries no
    information). The instantiation of a <verbatim|Cond> is done with
    <verbatim|sync.NewCond> which takes a <verbatim|sync.Locker> interface
    (accessible with <verbatim|.L>). Additionally, the methods
    <verbatim|.Broadcast()>, <verbatim|.Signal()>, and <verbatim|.Wait()> are
    avaliable to be used. Consider the following function from the textbook
    that \Psubscribes\Q a function to a <verbatim|Cond>, running the function
    once when the <verbatim|Cond> first broadcasts.

    <\verbatim-code>
      subscribe := func(c *sync.Cond, f func()) {

      \ \ \ \ var goroutineRunning sync.Waitgroup

      \ \ \ \ goroutineRunning.Add(1)

      \ \ \ \ go func() {

      \ \ \ \ \ \ \ \ goroutineRunning.Done()

      \ \ \ \ \ \ \ \ c.L.Lock()

      \ \ \ \ \ \ \ \ defer c.L.Unlock()

      \ \ \ \ \ \ \ \ c.Wait()

      \ \ \ \ \ \ \ \ f()

      \ \ \ \ }()

      \ \ \ \ goroutineRunning.Wait()

      }
    </verbatim-code>
  </cell>>|<row|<\cell>
    <verbatim|sync.Once>
  </cell>|<\cell>
    A variable, <verbatim|once>, of type <verbatim|sync.Once> will support
    the <verbatim|.Do(func())> method which will only execute the passed
    function once regardless of what if a different function is passed.
  </cell>>|<row|<\cell>
    <verbatim|sync.Pool>
  </cell>|<\cell>
    A pool object is an implemenation of an object pool. It can be
    instantiated by specifying the <verbatim|New> field which is a thread
    safe member variable function that creates a new object in the pool. the
    <verbatim|Pool> also supports the methods <verbatim|.Get()>, and
    <verbatim|.Put(object)>. Make no assumptions about the state of the
    instance you get back from <verbatim|.Get()>, but objects in the
    <verbatim|Pool> should be roughly uniform in makeup.\ 
  </cell>>|<row|<\cell>
    Channels
  </cell>|<\cell>
    Channels that are read-write, read-only, and write-only that carry values
    of type <verbatim|T> have types <verbatim|chan T>,
    <verbatim|\<less\>-chan T>, and <verbatim|chan\<less\>- T> respectively.
    A channel can be closed if it is writable, and is done so with
    <verbatim|close()>. To read all the values in the channel until it is
    closed, use <verbatim|range>. Additionally, buffer size of the channel
    can be specified during initiation, and the default buffer size is 0.
    Reading from a channel instantiated with a buffer of capacity 4 can look
    as follows.\ 

    <\verbatim-code>
      channelOwner := func() \<less\>-chan int {

      \ \ \ \ intStream := make(chan int, 4)

      \ \ \ \ go func() {

      \ \ \ \ \ \ \ \ defer close(intStream)

      \ \ \ \ \ \ \ \ for i := 0; i \<less\> 10; i++ { intStream \<less\>- i
      }

      \ \ \ \ }()

      \ \ \ \ return intStream

      }

      \;

      readIntStream := channelOwner()

      for element := range readIntStream {

      \ \ \ \ fmt.Println(element)

      }
    </verbatim-code>
  </cell>>|<row|<\cell>
    <verbatim|make()>
  </cell>|<\cell>
    \;
  </cell>>|<row|<\cell>
    <verbatim|new()>
  </cell>|<\cell>
    \;
  </cell>>|<row|<\cell>
    Type Assertions
  </cell>|<\cell>
    \;
  </cell>>|<row|<\cell>
    <verbatim|select>
  </cell>|<\cell>
    The select statement is able to bind channels together. Namely, all
    <verbatim|case> statements are simultaneously checked to see if they are
    ready (for reading this is a populated or closed channel, and for writing
    this is a channel not at capacity). If there is no <verbatim|defualt>,
    then the execution is blocked until one of the channels is ready. One of
    the cases is then chosen at random, and the associated statements run. If
    there is a <verbatim|default>, then the execution isn't blocked. This can
    be used to complete other tasks while waiting for a result. See the
    example below modified from the textbook which demonstrates using a
    select statement to complete work while waiting.

    <\verbatim-code>
      done := make(chan interface{})

      go func() {

      \ \ \ \ defer close(done)

      \ \ \ \ time.Sleep(5 * time.Second)

      }()

      loop:

      for {

      \ \ \ \ select {

      \ \ \ \ case \<less\>-done:

      \ \ \ \ \ \ \ \ break loop

      \ \ \ \ default:

      \ \ \ \ \ \ \ \ workCounter++

      \ \ \ \ \ \ \ \ time.Sleep(time.Second)

      \ \ \ \ }

      }

      fmt.Println(workCounter)
    </verbatim-code>
  </cell>>|<row|<\cell>
    <verbatim|runtime. GOMAXPROCS()>
  </cell>|<\cell>
    Takes an integer parameter that specifies the number of OS threads that
    will host \Pwork queues\Q.\ 
  </cell>>>>>

  <section|Concurrency Patterns in Golang>

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
    <associate|auto-2|<tuple|2|4>>
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