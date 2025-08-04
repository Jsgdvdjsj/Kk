-- 🐶 DOG HUB SYSTEM v4.7 // SUPER SUPER SUPER FUTURISTA LOADING
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer

-- Cria a GUI principal
local gui = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
gui.Name = "DogHub_FuturisticLoading"
gui.ResetOnSpawn = false

-- Fundo com pulso sutil
local bg = Instance.new("Frame", gui)
bg.Size = UDim2.new(1, 0, 1, 0)
bg.BackgroundColor3 = Color3.fromRGB(0, 0, 10)
bg.BackgroundTransparency = 0.2

-- Glow central animado
local glow = Instance.new("ImageLabel", bg)
glow.Size = UDim2.new(0, 500, 0, 500)
glow.Position = UDim2.new(0.5, -250, 0.5, -250)
glow.Image = "rbxassetid://698052001"
glow.ImageColor3 = Color3.fromRGB(0, 255, 127)
glow.ImageTransparency = 0.8
glow.BackgroundTransparency = 1

TweenService:Create(glow, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
	ImageTransparency = 0.4
}):Play()

-- Título digitando
local title = Instance.new("TextLabel", bg)
title.Size = UDim2.new(1, 0, 0.1, 0)
title.Position = UDim2.new(0, 0, 0.3, 0)
title.BackgroundTransparency = 1
title.Font = Enum.Font.Arcade
title.TextColor3 = Color3.fromRGB(0, 255, 127)
title.TextStrokeTransparency = 0.4
title.TextScaled = true
title.Text = ""

local textFull = "🐾 BOOTING: DOG HUB SYSTEM v2.7..."
task.spawn(function()
	for i = 1, #textFull do
		title.Text = string.sub(textFull, 1, i)
		wait(0.04)
	end
end)

-- Som de energia
local sound = Instance.new("Sound", gui)
sound.SoundId = "rbxassetid://9118823102" -- sci-fi powerup
sound.Volume = 0.8
sound:Play()

-- Barra energética
local barHolder = Instance.new("Frame", bg)
barHolder.Size = UDim2.new(0.5, 0, 0.03, 0)
barHolder.Position = UDim2.new(0.25, 0, 0.55, 0)
barHolder.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
barHolder.BorderSizePixel = 0
Instance.new("UICorner", barHolder).CornerRadius = UDim.new(0, 20)

local bar = Instance.new("Frame", barHolder)
bar.Size = UDim2.new(0, 0, 1, 0)
bar.BackgroundColor3 = Color3.fromRGB(0, 255, 127)
bar.BorderSizePixel = 0
Instance.new("UICorner", bar).CornerRadius = UDim.new(0, 20)

-- Partículas digitais
for i = 1, 40 do
	local particle = Instance.new("Frame", bg)
	particle.Size = UDim2.new(0, math.random(1,2), 0, math.random(6,12))
	particle.Position = UDim2.new(math.random(), 0, math.random(), 0)
	particle.BackgroundColor3 = Color3.fromRGB(0, 255, 127)
	particle.BackgroundTransparency = 0.3
	particle.BorderSizePixel = 0

	coroutine.wrap(function()
		while gui and particle do
			TweenService:Create(particle, TweenInfo.new(math.random(1,2)), {
				Position = UDim2.new(particle.Position.X.Scale, 0, 1.2, 0)
			}):Play()
			wait(math.random(1, 3))
			particle.Position = UDim2.new(math.random(), 0, -0.1, 0)
		end
	end)()
end

-- Barra carregando
TweenService:Create(bar, TweenInfo.new(9, Enum.EasingStyle.Quad), {
	Size = UDim2.new(1, 0, 1, 0)
}):Play()

-- Fade final e execução
task.delay(10, function()
	-- Efeito de fade
	TweenService:Create(bg, TweenInfo.new(1), { BackgroundTransparency = 1 }):Play()
	TweenService:Create(title, TweenInfo.new(1), { TextTransparency = 1 }):Play()
	TweenService:Create(glow, TweenInfo.new(1), { ImageTransparency = 1 }):Play()
	TweenService:Create(bar, TweenInfo.new(1), { BackgroundTransparency = 1 }):Play()
	wait(1.5)
	gui:Destroy()

	-- Início do sistema
	print("✅ DOG HUB SYSTEM INICIADO.")
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jsgdvdjsj/Templariosscripts/refs/heads/main/Brook.lua"))()
end)
