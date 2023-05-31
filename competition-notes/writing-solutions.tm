<TeXmacs|2.1>

<style|<tuple|generic|number-europe|hanging-theorems|compact-list>>

<\body>
  <\hide-preamble>
    \;

    <assign|theorem-sep|<macro|<enunciation-sep>>>
  </hide-preamble>

  <doc-data|<doc-title|Writing Solutions>|<doc-author|<author-data|<author-name|Arnav
  Kumar>>>>

  We can categorize problems into a couple different types based on what is
  required. There are those problems which tell you a statement that you have
  to prove, and those where you have to make your own statement and then
  justify it.\ 

  In either case, we see that it is required to be able to write good
  solutions. For this reason, it is important that you first solve the
  problem and then proceed to write out the solution.<\footnote>
    But if you are writing a contest where you ddid not have enough time to
    solve the problem, it is better to write what you have than nothing at
    all.
  </footnote> Here are some tips to remember:

  <\itemize-dot>
    <item>Consider an outline or overview for long/difficult proofs (not
    required for proofs in contests which are alwasy short).

    <item>Consider splitting your proof into smaller lemmas which are
    individually proved.

    <item>Use visual demarcation (such as indents, spacing, and underlining)
    to denote seperate parts of the proof and maintain a hierarchy when the
    casework has subcases.

    <item>Explicitly denote the end of a proof with \PQED\Q or a small box.

    <item>Explicitly state your statement/claim at the beginning of the
    solution and optionally box it at the end.
  </itemize-dot>

  For example, consider a question which asks us to find the smallest
  triangular number greater than 10.

  <\solution*>
    The smallest triangle number greater than 10 is 15.

    <with|theorem-padding-above|0fn|<\proof>
      A triangular number is of the form <math|<frac|n*<around*|(|n+1|)>|2>>
      for some positive integer <math|n>, and we can see that this expression
      is strictly increasing with respect to <math|n>. Thus, we see that
      since <math|<frac|4*<around*|(|4+1|)>|2>=10\<leq\>10\<less\>15=<frac|5*<around*|(|5+1|)>|2>>,
      the 5th triangle number, <tabular|<tformat|<cwith|1|1|1|1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-bborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|1|1|cell-rborder|1ln>|<cwith|1|1|1|1|cell-lsep|0.25ex>|<cwith|1|1|1|1|cell-bsep|0.25ex>|<cwith|1|1|1|1|cell-tsep|0.25ex>|<cwith|1|1|1|1|cell-rsep|0.5ex>|<table|<row|<cell|15>>>>>,
      is the smallest triangle number greater than 10.
    </proof>>
  </solution*>

  \;
</body>

<\initial>
  <\collection>
    <associate|item-vsep|<macro|0fn>>
    <associate|ornament-extra-color|pastel yellow>
    <associate|ornament-shape|rounded>
    <associate|page-height|auto>
    <associate|page-medium|paper>
    <associate|page-type|letter>
    <associate|page-width|auto>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|3>>
    <associate|auto-5|<tuple|5|?>>
    <associate|auto-6|<tuple|6|?>>
    <associate|footnote-1|<tuple|1|?>>
    <associate|footnr-1|<tuple|1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>What
      is Divisibility?> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Introduction
      to Modular Arithmetic> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Putting
      it Together> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Exercises>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>