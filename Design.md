Design.md - APLCourse

# A new APL course for beginners

### TODO
  Specific TODOs and things that exist but not currently listed in Learn.md
  - Dfns.dyalog.com
  - Idioms
  - ⎕JSON
  - ⎕CSV
  - Objects
  - C# / .NET
  - Decide at what point / which parts of the course are going to just need a link to documentation / reference material.

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

### Technology
- MiServer
- Toggle between tree / mind map views
  - Tree view
    Expandable branches (CSS +/ JS)
  - Mind map view
    https://hunterx.xyz/use-mindmap-in-hexo.html
- Search: have branches and leaves dynamically appear / disappear as relevance to search terms?
- Markdown, HTML5, CSS, Optional JS
- Mobile / tablet friendly
- Interactivity
  - Jupyter Notebooks
    - More in depth explanations + interactive examples
    - Mostly TryAPL compatible notebooks 
  - [TiO](TiO.run)
  - Containerised online environments
    - APL Kernel Jupyter Notebooks
      - Eventually: Examples of APL interacting with other languages via different notebook kernels? (pipe dream? more effort than worth?)
    - RIDE
      - Full featured Dyalog session running on docker containers (kubernetes?) which just start again on crash
    - Play-along Workspace

### Resources
- Check [Dyalog Tutorials](https://github.com/rikedyp/DyalogTutorials)

