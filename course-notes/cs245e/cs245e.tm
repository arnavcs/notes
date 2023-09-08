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
    mortal>>|<cell|Assumption 1>>|<row|<cell|<verbatim|and>>|<cell|>>|<row|<cell|<verbatim|<verbatim|Socrates>
    is a man>>|<cell|Assumption 2>>|<row|<cell|<verbatim|then>>|<cell|>>|<row|<cell|<verbatim|Socrates
    is mortal>>|<cell|Conclusion>>>>>\ 
  </cell>>|<row|<\cell>
    Russel's Paradox
  </cell>|<\cell>
    <verbatim|Assume there is a village in which no man grows a beard. There
    is only one barber in that village. Every morning, this barber shaves
    every (and only every) man who does not shave thmeselves. Does the barber
    shave themselves?>\ 

    Such a village cannot exist.
  </cell>>|<row|<\cell>
    The Berry Paradox
  </cell>|<\cell>
    <verbatim|Which numbers can be defined by an English sentence of at most
    200 characters?>
  </cell>>>>>

  <section|Propositional Logic>

  <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|1ex>|<cwith|1|-1|1|-1|cell-rsep|1ex>|<cwith|1|-1|1|-1|cell-bsep|1ex>|<cwith|1|-1|1|-1|cell-tsep|1ex>|<cwith|1|-1|1|1|cell-background|pastel
  green>|<cwith|1|-1|1|1|cell-width|25ex>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|1|-1|cell-tborder|1ln>|<cwith|1|-1|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<twith|table-hyphen|n>|<table|<row|<\cell>
    Syntax vs. Semantics\ 
  </cell>|<\cell>
    Logic is based on the distinction between syntax (the form) and semantics
    (the meaning).
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