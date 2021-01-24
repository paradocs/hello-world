### A Pluto.jl notebook ###
# v0.12.18

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ e0e61a2a-5b42-11eb-3e21-a5af0c3ba8fb
begin
	import Pkg
	Pkg.add("InteractiveUtils")
 using Interact
using Images	
	Pkg.add("WebIO")
	using WebIO
end

# ╔═╡ 53e94c18-5684-11eb-21e9-01510c841f58
md"""
This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
"""

# ╔═╡ fc21549e-5683-11eb-07bf-51233c3f5e9b

md"""
## My Notebook $~~~~~~~$ Jan 13 20201

For no brake spaces use tildes for

spaces between two dollar signs.

Leave a blank line for a line feed.

Math symbols are rendered between two $ signs.

[LaTex Help Html Link](https://kapeli.com/cheat_sheets/LaTeX_Math_Symbols.docset/Contents/Resources/Documents/index)

$\alpha$

$ \alpha = \beta $ 

$\mathscr David~ Marc~ Tan~ Creti$

$\mathfrak David~\mathfrak Marc~\mathfrak Tan~\mathfrak Creti$

$\mathcal David Marc Tan Creti$

$$\mathbb Greetings. $$


$$This~display~has~spaces~made~with~tildes!$$

---
*help*
__me2__
_me_

---

Hello from between horizontal rulers.

---

``\LaTeX\ \ \ \ A = \pi r^2   ``

``   3^6 pi  e^i\pi   `` 
``                    ``
```math
f(a) = \frac{1}{2\pi}\int_{0}^{2\pi} (\alpha+R\cos(\theta))d\theta
```



```
  Here is a
   code block
    beween triple
     back      ticks.


```



[^1] Note one   

[^Barringer] Reference Article 

# Level One
## Level Two
### Level Three
#### Level Four
##### Level Five
###### Level Six

Here's a quote:
> Julia is a high-level, high-performance dynamic programming language for
> technical computing, with syntax that is familiar to users of other
> technical computing environments.


  + item one   two spaces before
    + two
      + three
        + four
          + five
    +
  + item two
  + item three

  1)
  2)
  3)
---
!!! note "Note"
    This is the content of the note.

!!! warning "Beware!"
    And this is another one.
!!! hint "MyHint"
    This is the content of the hint.

!!! help "Help!"
    How may we help you?

!!! red "Advice" 
    A word to the wise is sufficient!
!!! whatever "Additional Help"
    Try again

    and again!


!!! divider ""


```javascript
var s = "JavaScript syntax highlighting";
    alert(s);
```


|----Column One---|----Column Two----|----Column Three----|
|:----------:      | :----------      |:------------:      |
| *Row* 2         | **Row** 2        |``3B``Column        |

"""


# ╔═╡ 58484c68-5bb9-11eb-2cea-6df30770eaaa
md"""
!["A pretty tiger"](https://upload.wikimedia.org/wikipedia/commons/5/56/Tiger.50.jpg)
"""

# ╔═╡ a634c51e-5bb9-11eb-185b-7777c0b5a778
md"""
!["A pretty tiger"](https://thumbs2.imgbox.com/c6/6f/T13ZjubW_t.jpg)
"""

# ╔═╡ 86e17588-5bbf-11eb-01c5-f19a6581d3c9
pwd()*"/Tiger.50.jpg"

# ╔═╡ 090ececa-5bfc-11eb-2c32-dbac0bd527b0
md"""
!["A pretty tiger"](https://drive.google.com/file/d/1osFq5AIooG8YaYRkKnuhg_qvEa4Arima/view?usp=sharing)
"""

# ╔═╡ 46304b82-5c0e-11eb-0444-97b86948cdfd
md"""
[Tiger](https://www.dropbox.com/s/anoj6agrz3fnebr/CornBowel1.jpg?dl=0)
"""

# ╔═╡ c402c28e-5c1c-11eb-1f89-e5dd0316bf75
dog = load("./Tiger.50.jpg")

# ╔═╡ e63d1158-5c1f-11eb-2cf7-0f14c4309fb5
philip_file = download("https://drive.google.com/file/d/1gMBxAVh9NzNsQztfQqD2aQgN5Mg8baUM/view?usp=download x.jpg")

# ╔═╡ f243c06e-5c1f-11eb-15e4-3506e26e1d9a
load(philip_file)

# ╔═╡ 3315fed2-59f4-11eb-065c-5f4f4aa3fd85
Text(sprint(versioninfo))

# ╔═╡ b61675e2-5a4b-11eb-1983-b96c71b4e0d1
myVariable = 65

# ╔═╡ 2ad843c6-5b00-11eb-3092-51f414ed4efe
myString = "My variable is"

# ╔═╡ 9cb89e92-59f6-11eb-14b4-0dc23f5c914d
s2 = "$myString: $myVariable"

# ╔═╡ 02b028e4-5b02-11eb-0fcf-9d8d07ff2817
s2

# ╔═╡ 6c34f1e4-5b04-11eb-21a6-7d61a928dba5
md"""  
$myString
-->
$myVariable

"""

# ╔═╡ d69de236-5b41-11eb-1dbe-df913335e3f0
#textarea(hint="Enter name"; rows=3)

# ╔═╡ 5cd77430-5b9d-11eb-0661-eb3cb1b47151
Pkg.installed()

# ╔═╡ 7cc8cea0-5ba8-11eb-183a-2139b05c710b


# ╔═╡ Cell order:
# ╠═53e94c18-5684-11eb-21e9-01510c841f58
# ╠═e0e61a2a-5b42-11eb-3e21-a5af0c3ba8fb
# ╠═fc21549e-5683-11eb-07bf-51233c3f5e9b
# ╠═58484c68-5bb9-11eb-2cea-6df30770eaaa
# ╠═a634c51e-5bb9-11eb-185b-7777c0b5a778
# ╠═86e17588-5bbf-11eb-01c5-f19a6581d3c9
# ╠═090ececa-5bfc-11eb-2c32-dbac0bd527b0
# ╠═46304b82-5c0e-11eb-0444-97b86948cdfd
# ╠═c402c28e-5c1c-11eb-1f89-e5dd0316bf75
# ╠═e63d1158-5c1f-11eb-2cf7-0f14c4309fb5
# ╠═f243c06e-5c1f-11eb-15e4-3506e26e1d9a
# ╠═3315fed2-59f4-11eb-065c-5f4f4aa3fd85
# ╠═b61675e2-5a4b-11eb-1983-b96c71b4e0d1
# ╠═2ad843c6-5b00-11eb-3092-51f414ed4efe
# ╠═9cb89e92-59f6-11eb-14b4-0dc23f5c914d
# ╠═02b028e4-5b02-11eb-0fcf-9d8d07ff2817
# ╠═6c34f1e4-5b04-11eb-21a6-7d61a928dba5
# ╠═d69de236-5b41-11eb-1dbe-df913335e3f0
# ╠═5cd77430-5b9d-11eb-0661-eb3cb1b47151
# ╠═7cc8cea0-5ba8-11eb-183a-2139b05c710b
