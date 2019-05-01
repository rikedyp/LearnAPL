Design.md - APLCourse

# A new APL course for beginners

### Development
  Outline of goals and provisional timeline of development process
  - Prototype (in progress)
    By 03/05/2019
  - Core language (up to that included in the 2019/03 course)
    TBD
  - System commands and functions (essential)
    TBD
  - Dyalog interface (up to that included in the 2019/03 course)
    TBD
  - List of topics to be covered in the teachable (3-5 day) course
    TBD
  All other content is low priority

### TODO
  Specific TODOs and things that exist but not currently listed in Learn.md
  - Dfns.dyalog.com
  - Idioms
  - ⎕JSON
  - ⎕CSV
  - Objects
  - C# / .NET
  - Refs
  - ⎕OR
  - ⎕NULL
  - History of APL
  - Tools
    - e.g. MiServer
  - Decide at what point / which parts of the course are going to just need a link to documentation / reference material.
  - ##### From other resources:
    - Interpreter handles memory management
      - Copies of data made if necessary
      - Ref counted, garbage collected, bounds checked
    - Dynamically typed
      - Types automatically change on overflow
      - Types are squeezed to smallest reasonable internal representation
    - OLE/COM and .NET
    - SQL
    - XML, JSON, CSV

### Course structure
- A tree / mind map a la [HyperPhysics](http://hyperphysics.phy-astr.gsu.edu)
  - [Learn.md](Learn.md)
- Suggested progression
  - Core Language
  - Trace/edit
  - TODO: Decide from other courses / books
    - Interpreter symbol groupings
    - TryAPL symbol groupings
- Videos
  - Each section in lesson style
    - Learning Objective
    - Introduction
      A hook / link to prior knowledge or lessons. Why would you want to learn this?
    - Content
      Main explanation of concepts / things being learned.
    - Evaluation
      Problem sets for teacher or self evaluation
  - Self-study course
    - Guide through suggested progression
    - Example problems + suggested solutions
  - Teachable course
    - Same as videos, but customisable and face-to-face

### Notebooks
- TryAPL compatible
  - Arithmetic.ipynb
  - Tacit.ipynb
- Other
  - APL.ipynb

### Content for specific circumstances
  - Students who are likely to deal with old code
    - Names can include some special characters like ∆⍙_ and accented characters like ó:
            a_ó∆ø1⍙ ← 230
            a_ó∆ø1⍙ + 1
      231 
            ⍝ These are best avoided, but you may encounter them in old code.
  - Students who will be using the Classic interpreter

### Technology
- MiServer
- Toggle between tree / mind map views
  - Tree view
    Expandable branches (CSS +/ JS)
    http://code.iamkate.com/javascript/collapsible-lists/
  - Mind map view
    https://hunterx.xyz/use-mindmap-in-hexo.html
    https://github.com/dundalek/markmap
    http://viz-js.com/
- Search: have branches and leaves dynamically appear / disappear as relevance to search terms?
  - https://listjs.com/
  - Searchable data table with links to relevant reference docs and tutorials
- Markdown, HTML5, CSS, Optional JS
- Mobile / tablet friendly
- Interactivity
  - Jupyter Notebooks
    - More in depth explanations + interactive examples
    - Mostly TryAPL compatible notebooks 
  - [TiO](http://TiO.run)
  - Containerised online environments
    - APL Kernel Jupyter Notebooks
      - Eventually: Examples of APL interacting with other languages via different notebook kernels? (pipe dream? more effort than worth?)
    - RIDE
      - Full featured Dyalog session running on docker containers (kubernetes?) which just start again on crash
    - Play-along Workspace

### Resources
- Check [Dyalog Tutorials](https://github.com/rikedyp/DyalogTutorials)
- RIDE repo synonyms list (keyboard backtick something)
- Idiom lists
  - [MiServer](https://miserver.dyalog.com/Examples/Applications/Idiom_Search.mipage)
  - [APLWiki](https://aplwiki.com/FinnAplIdiomLibrary)
- [Resource card](http://docs.dyalog.com/16.0/ReferenceCard.pdf)