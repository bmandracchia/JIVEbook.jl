### A JIVEbook.jl notebook ###
# v0.0.2

using Markdown
using InteractiveUtils
using JIVECore
using PlutoPlotly, PlutoUI
import Main.PlutoRunner.JIVECore.Data.image_data as image_data
import Main.PlutoRunner.JIVECore.Data.image_keys as image_keys

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local iv = try Base.loaded_modules[Base.PkgId(Base.UUID("6e696c72-6542-2067-7265-42206c756150"), "AbstractPlutoDingetjes")].Bonds.initial_value catch; b -> missing; end
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : iv(el)
        el
    end
end

# ╔═╡ 6b5a89b0-949c-11f0-21c8-5df5092224dd
md"""
# Files Menu
"""

# ╔═╡ bfe19a10-6835-4eda-832d-7149f569a816
md"""
## Load Image
"""

# ╔═╡ 66e3d402-2ce5-4f01-97f7-4b03ce44a24a
md"""
##### Load Image
$(@bind tmp PlutoUI.FilePicker())
"""


# ╔═╡ b0c6ba83-6052-4c2a-9c64-1602f557ab8b
isnothing(tmp) ? print("Select an image to load") :
    JIVECore.Visualize.gif(image_data[JIVECore.Files.loadImage!(image_data, image_keys, tmp)])


# ╔═╡ c5a38b3a-9972-49da-91b6-51b6fb086ba2
md"""
---
"""

# ╔═╡ Cell order:
# ╟─6b5a89b0-949c-11f0-21c8-5df5092224dd
# ╟─bfe19a10-6835-4eda-832d-7149f569a816
# ╟─66e3d402-2ce5-4f01-97f7-4b03ce44a24a
# ╟─b0c6ba83-6052-4c2a-9c64-1602f557ab8b
# ╟─c5a38b3a-9972-49da-91b6-51b6fb086ba2
