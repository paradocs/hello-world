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

# ╔═╡ 4c21907e-580c-11eb-1b67-e9342e06a291
push!(LOAD_PATH, "/media/pi/RASPBIAN A/julia", "/media/pi/RASPBIAN A/julia/MyPackages", "/media/pi/RASPBIAN A/julia/MyProjects", "/media/pi/RASPBIAN A/julia/pluto_notebooks")



# ╔═╡ ac57f83e-587f-11eb-06f2-dfccc003eebf
LOAD_PATH

# ╔═╡ a9aa2f9e-59b5-11eb-2c3d-93f40c6b8626
using Makie

# ╔═╡ 23bdedca-568f-11eb-1dac-bda2b3839216
using ImageIO, ImageMagick, InteractiveUtils, PlutoUI, Markdown, Plots

# ╔═╡ f9219eac-5692-11eb-36ea-c3473d601641
begin
	import Pkg
	Pkg.activate(tempdir())
end

# ╔═╡ 87b7da98-5693-11eb-343a-df49ef084c17
begin
	Pkg.add(["Images", "ImageMagick"])
	using Images
end

# ╔═╡ 447d1ef4-569c-11eb-1643-b9b608892a84
begin
	Pkg.add("UrlDownload")
	using UrlDownload
end	


# ╔═╡ 4e8fc752-599e-11eb-0fa8-0997b7982c7a
begin	
	Pkg.add("FileIO")
	using FileIO
end		

# ╔═╡ 75b77a10-59af-11eb-1535-477cc15569ae
begin
Pkg.add("VideoIO")
using VideoIO
end

# ╔═╡ fad639ec-59b4-11eb-0e6e-473f167c95c8
begin
Pkg.add("Makie")
end

# ╔═╡ f730134c-59af-11eb-0be7-23dd1b8c10cd
println(pwd())


# ╔═╡ 03631d6c-59b0-11eb-1694-adc77c3b2f98
vid1 = openvideo("./color.ts")

# ╔═╡ 13bb7778-59b4-11eb-26b4-a385bf49c16a
io = VideoIO.testvideo("annie_oakley")

# ╔═╡ 606cff8c-59b5-11eb-053b-73e603cd801a
VideoIO.playvideo(io)

# ╔═╡ 1841ffc2-59b4-11eb-3d34-31280d300fe6


# ╔═╡ 4d69fe20-5687-11eb-2b0c-e972689711fc
@bind p1 Slider(1:10)

# ╔═╡ 3a38fd4a-568e-11eb-29dd-fb556d0263bb
p1

# ╔═╡ 4defa406-568e-11eb-2f31-9b9c14208910
md"""`power` = $(@bind power Slider(1:10; default=3, show_value=true))"""

# ╔═╡ 203ed75e-5691-11eb-2ce1-319fcaf5005c
Total = power + p1

# ╔═╡ 6fd5e2f6-58dc-11eb-2452-6b81153c9206
@bind fname TextField((30, 7))

# ╔═╡ 1fe5e86a-5691-11eb-0c01-8fbbd89e3ff1
fname


# ╔═╡ a7e12faa-58de-11eb-1ec1-817c0b7ac06f
@bind go Button("Go")

# ╔═╡ a8c4ab7a-58ea-11eb-35cc-e552f47ef4e9
data = let
    go # we reference `go`, making this cell a dependency of the first cell
    rand(4)
	
end

# ╔═╡ 4e33c052-58df-11eb-32b3-c715c0cb45e2
@bind tf TimeField()

# ╔═╡ ab2ce008-58e3-11eb-09f2-791ce015a696
@bind NewFile FilePicker() 

# ╔═╡ e6aa5ba6-58e0-11eb-345b-7d1dcf27b1eb
@bind nf PasswordField()

# ╔═╡ d261a068-58e1-11eb-3bb3-33d3a382378b
@bind cb CheckBox()

# ╔═╡ bf3fc830-58e5-11eb-0082-a7df477c6e39
@bind col ColorStringPicker()

# ╔═╡ 41092694-58e7-11eb-3575-e3bccc642b63
@bind cl Clock()

# ╔═╡ 3643da94-58ef-11eb-0aab-81ef964a1748
@bind dt DateField()

# ╔═╡ 40b790ec-58e7-11eb-284e-33ee25592d26
@bind rd Radio(["Male", "Female"])

# ╔═╡ dc40d2da-58ef-11eb-00c0-15a506975c3d
@bind location Select(["London", "New York"])

# ╔═╡ 86470950-58f0-11eb-0530-57a8c76c03b2
@bind occupation MultiSelect(["D","L","T"])

# ╔═╡ ec07b806-58f3-11eb-3221-09e35beb4fe9
Show(MIME"text/html"(),"""<p style=color:red>Iam line one.<br>
	I am line two.</p>
	<p style=color:purple>I am line three.$nf</p>
	
	""") 

# ╔═╡ 3bc6e572-58f1-11eb-2e2f-77aa592f16b8
md"""media  MIME  resource """

# ╔═╡ d12381ac-594b-11eb-00d2-cd71a8369a62
audio1 = load("./andersen_zinnsoldat.mp3")

# ╔═╡ 0d203ffa-594d-11eb-0037-c14f0535cfd1
video1 = load("./color.ts")

# ╔═╡ f3d50782-5948-11eb-1b53-bdbbb80d9151
Show(MIME"audio/mp3"(), read("./andersen_zinnsoldat.mp3"))


# ╔═╡ 63b100a4-594b-11eb-210d-49da18818575


# ╔═╡ dbd04822-58df-11eb-188a-6db81486e9d1
string("PassWord-->", nf, " check box1-->", cb, " color-->",col, "   Clock-->", cl, "Radio-->", rd, "Date-->", dt )


# ╔═╡ b7952fbc-59a3-11eb-1b3d-37ee8d447e13
md"""
!!! hint
    If you're stuck, feel free to cheat, this is homework 0 after all 🙃
    Julia has a function called `sqrt`
"""

# ╔═╡ dc69a05e-5695-11eb-39b2-a5b1c77f1c6a
img = download("https://i.imgur.com/VGPeJ6s.jpg")

# ╔═╡ 4ae42cc2-5694-11eb-382a-731cd20be683
philip_file = download("https://i.imgur.com/VGPeJ6s.jpg")

# ╔═╡ a73fe2a8-58f2-11eb-31ed-7ddc409554fd
Show(MIME"image/png"(), read( philip_file))

# ╔═╡ ce97aa22-5698-11eb-07d4-0d734a140258
begin
    struct Wow
    filename
    end

    function Base.show(io::IO, ::MIME"image/png", w::Wow)
    write(io, read(w.filename))
    end
end

# ╔═╡ d348c3b2-5698-11eb-2e3a-777dd2e06997
Wow("/media/pi/RASPBIAN A/julia/Images/corgi.jpg")

# ╔═╡ 663f42d4-5699-11eb-1d0a-65e26b7e7f6f
Wow("/home/pi/in.png")

# ╔═╡ 2058ca04-5783-11eb-17b9-939bb1981c5c
typeof(Wow)

# ╔═╡ 6e7c9ec4-5786-11eb-1d20-598e54949837
RGBX(.5,.5,.5)

# ╔═╡ c11dccca-5786-11eb-1291-0bf70a4b494e
begin
#using Images
MyHald = load("/home/pi/in.png")
end	

# ╔═╡ 37b430d8-5796-11eb-1018-f95eab7481d2
dog = load("/media/pi/RASPBIAN A/julia/Images/corgi.jpg")

# ╔═╡ 3a30109a-5788-11eb-3b59-275c20f7a1ce
typeof(MyHald)

# ╔═╡ 885ac5d0-5788-11eb-06fe-7176b0569f2c
size(MyHald)

# ╔═╡ 9fa37750-5788-11eb-3c99-29f77db69e21
#(h, w) = size(myHald)
#MyHald[(h÷2):h (w÷10): (9w÷10)]
# half way down, 
MyHald[(27÷2):27, (27÷2):(9*27÷10)]

# ╔═╡ d55125ae-5789-11eb-16af-8f3725160a12

 MyHald[(27÷2):27, (27÷2): (7*27÷10)]

# ╔═╡ d8fdd574-578b-11eb-000a-ef83b71e25b2
[MyHald reverse(MyHald, dims=1)
MyHald        MyHald
MyHald        MyHald         ]

# ╔═╡ d4fc9a66-5789-11eb-2da1-d5ae1269e2f0
MyHaldCopy = copy(MyHald)

# ╔═╡ 1940094c-56f1-11eb-1812-553f21b3eb2b
var = 5

# ╔═╡ d3bc1140-5789-11eb-30f3-bfc1219d64a3
for i in 1:10
	for j in 1:15
MyHaldCopy[i,j] = RGBX(.9,.2,.2)	
	end
end

# ╔═╡ d34a62a0-5789-11eb-0cbf-db00d11ae9fa
MyHaldCopy

# ╔═╡ c19e0c6a-578f-11eb-1b6d-3b15ff9529a1
begin
	MyHaldCopy2 = copy(MyHald)
	MyHaldCopy2[5:10, 8:20] .= RGBX(0,1,0)  
	MyHaldCopy2
#   .=  look into aray and do it to each individually	
end

# ╔═╡ 30e20880-5793-11eb-323c-a5ef82071356
function redify(c)
	return RGB(c.r,0,0)
end

# ╔═╡ 2d4b1d44-5791-11eb-09b5-290cdacfdba2
begin
	color = RGBX(.5, .9, .9)
	[color, redify(color)]
end

# ╔═╡ dde234aa-5799-11eb-075c-97b06ff5b4d3
fill(.25, (2,2))

# ╔═╡ 636159cc-5799-11eb-3633-eb7040c6fab1
#blur = [1:2 3:4]
function blur(n)
 return [.25 .25; .25 .25]
end

# ╔═╡ 64e58744-5796-11eb-108b-29f3c10d9834
begin
	convolve(dog, blur(2))
#blur()  not defined,  it is a 2x2 aray of floats   .25 .25
#                                                   .25 .25  
end

# ╔═╡ 649062a0-5796-11eb-369e-072beec02205
varinfo(ImageMagick)

# ╔═╡ 64421e38-5796-11eb-357c-23cfc8b93e86


# ╔═╡ 04e2c54c-569d-11eb-1b5b-7997183e9c9d
pwd()

# ╔═╡ c553586e-56f0-11eb-024e-ff83b61885e3
varinfo(Main,r".*field.*")

# ╔═╡ 6d2cda82-5710-11eb-2e7e-d9094e5e8ad1
typeof(555555555555555555555555555555555555555555555555555555555555555)

# ╔═╡ ad2f732e-5710-11eb-1cc7-d712d3a78587
typeof("Ḧello world")

# ╔═╡ d399e060-5710-11eb-04dc-dfb5f59afd76
typeof(-2039415715155.262326)

# ╔═╡ d1faaf20-5710-11eb-38ba-ed675c6b2b02
"
    vms
Document for variable vms
use: this is the velosity
give in meters per second
"
const vms = 23


# ╔═╡ 040048d8-5716-11eb-29f7-f18b53b66ffe
"""
    bar(x[, y])

Compute the Bar index between `x` and `y`. If `y` is missing, compute
the Bar index between all pairs of columns of `x`.

# Examples
```julia-repl
julia> bar([1, 2], [1, 2])
1
```
"""
function bar(x, y) 
end	

# ╔═╡ 89fc8da8-5718-11eb-3384-03eb09e53581
?bar

# ╔═╡ a8a08162-571b-11eb-0018-ed11de6bac88
?vms

# ╔═╡ 6da694cc-5720-11eb-243c-d76ce6955f67
begin
	a = "Now is the time for apostrophy's"
	b = "Here is string #"
end

# ╔═╡ 8a4bf2b4-572f-11eb-3479-8d57725e4476
z = readlines("/home/pi/bc", keep=true)


# ╔═╡ d82df792-5735-11eb-1d98-a1a67422283e
varinfo(InteractiveUtils)

# ╔═╡ f3209632-5775-11eb-1751-53e997c0f0a2
clipboard(z)

# ╔═╡ aaf86596-587f-11eb-08d8-2356de69699b


# ╔═╡ 47e02b4a-587e-11eb-34b0-95ba8b809566


# ╔═╡ 03c96442-587e-11eb-35b5-2bd15578f118



# ╔═╡ 8affd2a2-5c0c-11eb-1eba-dbe7bc378ca9
md"""
!["A pretty tiger"](https://upload.wikimedia.org/wikipedia/commons/5/56/Tiger.50.jpg)
"""

# ╔═╡ 132dc3a4-5795-11eb-0145-656e5574331a
out = redify.(MyHald)

# ╔═╡ fe33c784-57ab-11eb-18d6-dda01ff3ab90
out = save("/home/pi/out.png")

# ╔═╡ Cell order:
# ╠═f9219eac-5692-11eb-36ea-c3473d601641
# ╠═87b7da98-5693-11eb-343a-df49ef084c17
# ╠═447d1ef4-569c-11eb-1643-b9b608892a84
# ╠═4e8fc752-599e-11eb-0fa8-0997b7982c7a
# ╠═75b77a10-59af-11eb-1535-477cc15569ae
# ╠═fad639ec-59b4-11eb-0e6e-473f167c95c8
# ╠═a9aa2f9e-59b5-11eb-2c3d-93f40c6b8626
# ╠═f730134c-59af-11eb-0be7-23dd1b8c10cd
# ╠═03631d6c-59b0-11eb-1694-adc77c3b2f98
# ╠═13bb7778-59b4-11eb-26b4-a385bf49c16a
# ╠═606cff8c-59b5-11eb-053b-73e603cd801a
# ╠═1841ffc2-59b4-11eb-3d34-31280d300fe6
# ╠═23bdedca-568f-11eb-1dac-bda2b3839216
# ╠═4d69fe20-5687-11eb-2b0c-e972689711fc
# ╠═3a38fd4a-568e-11eb-29dd-fb556d0263bb
# ╠═4defa406-568e-11eb-2f31-9b9c14208910
# ╠═203ed75e-5691-11eb-2ce1-319fcaf5005c
# ╠═6fd5e2f6-58dc-11eb-2452-6b81153c9206
# ╠═1fe5e86a-5691-11eb-0c01-8fbbd89e3ff1
# ╠═a7e12faa-58de-11eb-1ec1-817c0b7ac06f
# ╠═a8c4ab7a-58ea-11eb-35cc-e552f47ef4e9
# ╠═4e33c052-58df-11eb-32b3-c715c0cb45e2
# ╠═ab2ce008-58e3-11eb-09f2-791ce015a696
# ╠═e6aa5ba6-58e0-11eb-345b-7d1dcf27b1eb
# ╠═d261a068-58e1-11eb-3bb3-33d3a382378b
# ╠═bf3fc830-58e5-11eb-0082-a7df477c6e39
# ╠═41092694-58e7-11eb-3575-e3bccc642b63
# ╠═3643da94-58ef-11eb-0aab-81ef964a1748
# ╠═40b790ec-58e7-11eb-284e-33ee25592d26
# ╠═dc40d2da-58ef-11eb-00c0-15a506975c3d
# ╠═86470950-58f0-11eb-0530-57a8c76c03b2
# ╠═ec07b806-58f3-11eb-3221-09e35beb4fe9
# ╠═3bc6e572-58f1-11eb-2e2f-77aa592f16b8
# ╠═a73fe2a8-58f2-11eb-31ed-7ddc409554fd
# ╠═d12381ac-594b-11eb-00d2-cd71a8369a62
# ╠═0d203ffa-594d-11eb-0037-c14f0535cfd1
# ╠═f3d50782-5948-11eb-1b53-bdbbb80d9151
# ╠═63b100a4-594b-11eb-210d-49da18818575
# ╠═dbd04822-58df-11eb-188a-6db81486e9d1
# ╠═b7952fbc-59a3-11eb-1b3d-37ee8d447e13
# ╠═dc69a05e-5695-11eb-39b2-a5b1c77f1c6a
# ╠═4ae42cc2-5694-11eb-382a-731cd20be683
# ╠═ce97aa22-5698-11eb-07d4-0d734a140258
# ╠═d348c3b2-5698-11eb-2e3a-777dd2e06997
# ╠═663f42d4-5699-11eb-1d0a-65e26b7e7f6f
# ╠═2058ca04-5783-11eb-17b9-939bb1981c5c
# ╠═6e7c9ec4-5786-11eb-1d20-598e54949837
# ╠═c11dccca-5786-11eb-1291-0bf70a4b494e
# ╠═37b430d8-5796-11eb-1018-f95eab7481d2
# ╠═3a30109a-5788-11eb-3b59-275c20f7a1ce
# ╠═885ac5d0-5788-11eb-06fe-7176b0569f2c
# ╠═9fa37750-5788-11eb-3c99-29f77db69e21
# ╠═d55125ae-5789-11eb-16af-8f3725160a12
# ╠═d8fdd574-578b-11eb-000a-ef83b71e25b2
# ╠═d4fc9a66-5789-11eb-2da1-d5ae1269e2f0
# ╟─1940094c-56f1-11eb-1812-553f21b3eb2b
# ╠═d3bc1140-5789-11eb-30f3-bfc1219d64a3
# ╠═d34a62a0-5789-11eb-0cbf-db00d11ae9fa
# ╠═c19e0c6a-578f-11eb-1b6d-3b15ff9529a1
# ╠═30e20880-5793-11eb-323c-a5ef82071356
# ╠═2d4b1d44-5791-11eb-09b5-290cdacfdba2
# ╠═132dc3a4-5795-11eb-0145-656e5574331a
# ╠═fe33c784-57ab-11eb-18d6-dda01ff3ab90
# ╠═dde234aa-5799-11eb-075c-97b06ff5b4d3
# ╠═636159cc-5799-11eb-3633-eb7040c6fab1
# ╠═64e58744-5796-11eb-108b-29f3c10d9834
# ╠═649062a0-5796-11eb-369e-072beec02205
# ╠═64421e38-5796-11eb-357c-23cfc8b93e86
# ╠═04e2c54c-569d-11eb-1b5b-7997183e9c9d
# ╠═c553586e-56f0-11eb-024e-ff83b61885e3
# ╠═6d2cda82-5710-11eb-2e7e-d9094e5e8ad1
# ╠═ad2f732e-5710-11eb-1cc7-d712d3a78587
# ╠═d399e060-5710-11eb-04dc-dfb5f59afd76
# ╠═d1faaf20-5710-11eb-38ba-ed675c6b2b02
# ╠═040048d8-5716-11eb-29f7-f18b53b66ffe
# ╠═89fc8da8-5718-11eb-3384-03eb09e53581
# ╠═a8a08162-571b-11eb-0018-ed11de6bac88
# ╠═6da694cc-5720-11eb-243c-d76ce6955f67
# ╠═8a4bf2b4-572f-11eb-3479-8d57725e4476
# ╟─d82df792-5735-11eb-1d98-a1a67422283e
# ╠═f3209632-5775-11eb-1751-53e997c0f0a2
# ╠═4c21907e-580c-11eb-1b67-e9342e06a291
# ╠═ac57f83e-587f-11eb-06f2-dfccc003eebf
# ╟─aaf86596-587f-11eb-08d8-2356de69699b
# ╟─47e02b4a-587e-11eb-34b0-95ba8b809566
# ╠═03c96442-587e-11eb-35b5-2bd15578f118
# ╠═8affd2a2-5c0c-11eb-1eba-dbe7bc378ca9
