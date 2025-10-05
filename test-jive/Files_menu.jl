### A JIVEbook.jl notebook ###
# v0.0.2

using Markdown
using InteractiveUtils
using JIVECore
using PlutoPlotly, PlutoUI
import Main.PlutoRunner.JIVECore.Data.image_data as image_data
import Main.PlutoRunner.JIVECore.Data.image_keys as image_keys

# ╔═╡ 6b5a89b0-949c-11f0-21c8-5df5092224dd
md"""
# Files Menu
"""

# ╔═╡ bfe19a10-6835-4eda-832d-7149f569a816
md"""
## Load Image
"""

# ╔═╡ 2cd3e8f2-9c39-45f8-a721-9f32c0e35e25
md"""
### 2D case
"""

# ╔═╡ f5e3ae7a-4059-457a-aa9a-94c91da8fce4
JIVECore.Process.autoContrast(image_data[JIVECore.Files.loadImage!("hela", image_data, image_keys, "C:/Users/usuario/AppData/Local/Temp/hela.png")])


# ╔═╡ f18bb107-69d8-4c9e-94d4-ec040568e4dc
md"""
### 3D case
"""

# ╔═╡ 0f69f4e6-4dec-4299-a67a-2490cc180060
JIVECore.Visualize.gif(JIVECore.Process.autoContrast(image_data[JIVECore.Files.loadImage!("mri-stack", image_data, image_keys, "C:/Users/usuario/AppData/Local/Temp/mri-stack.tif")] ))


# ╔═╡ c5a38b3a-9972-49da-91b6-51b6fb086ba2
md"""
---
"""

# ╔═╡ Cell order:
# ╟─6b5a89b0-949c-11f0-21c8-5df5092224dd
# ╟─bfe19a10-6835-4eda-832d-7149f569a816
# ╟─2cd3e8f2-9c39-45f8-a721-9f32c0e35e25
# ╟─f5e3ae7a-4059-457a-aa9a-94c91da8fce4
# ╟─f18bb107-69d8-4c9e-94d4-ec040568e4dc
# ╟─0f69f4e6-4dec-4299-a67a-2490cc180060
# ╟─c5a38b3a-9972-49da-91b6-51b6fb086ba2
