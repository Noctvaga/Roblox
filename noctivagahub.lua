-- =======================================================

-- NOCTIVAGA HUB V2

-- =======================================================

local ScreenGui = Instance.new("ScreenGui")

local MainFrame = Instance.new("Frame")

local TopBar = Instance.new("Frame")

local Title = Instance.new("TextLabel")

local CloseButton = Instance.new("TextButton")

local Watermark = Instance.new("TextLabel")

local UICorner_Main = Instance.new("UICorner")

local UICorner_Top = Instance.new("UICorner")

local Players = game:GetService("Players")

local Workspace = game:GetService("Workspace")

local StarterGui = game:GetService("StarterGui")

local RunService = game:GetService("RunService")

local UserInputService = game:GetService("UserInputService")

local TweenService = game:GetService("TweenService")

local CoreGui = game:GetService("CoreGui")

local localPlayer = Players.LocalPlayer

-- =======================================================
-- CARGOS GLOBAIS DO NOCTIVAGA
-- EDITE SOMENTE AQUI: ESP, TP-PESSOA E NOTIFICADOR USAM ISTO
-- =======================================================

local OWNER_USER_ID = 1093180180

local ADMIN_GERAL_IDS = {
    [1093180185] = true,
}

local function ehOwner(player)
    return player and player.UserId == OWNER_USER_ID
end

local function ehAdministradorGeral(player)
    return player and ADMIN_GERAL_IDS[player.UserId] == true
end

ScreenGui.Name = "MenuPremiumNoctivagaV2"

ScreenGui.Parent = game:GetService("CoreGui")

    or localPlayer:WaitForChild("PlayerGui")

ScreenGui.ResetOnSpawn = false

MainFrame.Name = "MainFrame"

MainFrame.Parent = ScreenGui

MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 20)

MainFrame.Position = UDim2.new(0.2, 0, 0.3, 0)

MainFrame.Size = UDim2.new(0, 220, 0, 275)

MainFrame.BorderSizePixel = 1

MainFrame.BorderColor3 = Color3.fromRGB(0, 255, 200)

MainFrame.Active = true

MainFrame.Draggable = true

UICorner_Main.CornerRadius = UDim.new(0, 12)

UICorner_Main.Parent = MainFrame

TopBar.Name = "TopBar"

TopBar.Parent = MainFrame

TopBar.BackgroundColor3 = Color3.fromRGB(25, 25, 30)

TopBar.Size = UDim2.new(1, 0, 0, 32)

TopBar.BorderSizePixel = 0

UICorner_Top.CornerRadius = UDim.new(0, 12)

UICorner_Top.Parent = TopBar

Title.Name = "Title"

Title.Parent = TopBar

Title.BackgroundTransparency = 1

Title.Position = UDim2.new(0, 12, 0, 0)

Title.Size = UDim2.new(0.7, 0, 1, 0)

Title.Font = Enum.Font.Code

Title.Text = "NOCTIVAGA HUB"

Title.TextColor3 = Color3.fromRGB(0, 255, 200)

Title.TextSize = 13

Title.TextXAlignment = Enum.TextXAlignment.Left

CloseButton.Name = "CloseButton"

CloseButton.Parent = TopBar

CloseButton.BackgroundTransparency = 1

CloseButton.Position = UDim2.new(0.85, 0, 0, 0)

CloseButton.Size = UDim2.new(0, 30, 1, 0)

CloseButton.Font = Enum.Font.GothamBold

CloseButton.Text = "X"

CloseButton.TextColor3 = Color3.fromRGB(255, 75, 75)

CloseButton.TextSize = 14

CloseButton.Activated:Connect(function()

    ScreenGui:Destroy()

end)

Watermark.Name = "Watermark"

Watermark.Parent = MainFrame

Watermark.BackgroundTransparency = 1

Watermark.Position = UDim2.new(0, 0, 0, 240)

Watermark.Size = UDim2.new(1, 0, 0, 25)

Watermark.Font = Enum.Font.Code

Watermark.Text = "By Noctivaga"

Watermark.TextColor3 = Color3.fromRGB(0, 255, 200)

Watermark.TextSize = 11

local Page_Home = Instance.new("Frame", MainFrame)

Page_Home.Size = UDim2.new(1, 0, 1, -35)

Page_Home.Position = UDim2.new(0, 0, 0, 35)

Page_Home.BackgroundTransparency = 1

local Page_Spawns = Instance.new("Frame", MainFrame)

Page_Spawns.Size = UDim2.new(1, 0, 1, -35)

Page_Spawns.Position = UDim2.new(0, 0, 0, 35)

Page_Spawns.BackgroundTransparency = 1

Page_Spawns.Visible = false

local Page_Algema = Instance.new("Frame", MainFrame)

Page_Algema.Size = UDim2.new(1, 0, 1, -35)

Page_Algema.Position = UDim2.new(0, 0, 0, 35)

Page_Algema.BackgroundTransparency = 1

Page_Algema.Visible = false

local Page_ProtecaoPlayers = Instance.new("Frame", MainFrame)

Page_ProtecaoPlayers.Size = UDim2.new(1, 0, 1, -35)

Page_ProtecaoPlayers.Position = UDim2.new(0, 0, 0, 35)

Page_ProtecaoPlayers.BackgroundTransparency = 1

Page_ProtecaoPlayers.Visible = false

-- =======================================================

-- BOTÕES HOME

-- =======================================================

local ButtonAlgema = Instance.new("TextButton", Page_Home)

ButtonAlgema.Size = UDim2.new(0, 190, 0, 35)

ButtonAlgema.Position = UDim2.new(0, 15, 0, 10)

ButtonAlgema.BackgroundColor3 = Color3.fromRGB(20, 30, 45)

ButtonAlgema.Font = Enum.Font.Code

ButtonAlgema.Text = "[ MENU-ALGEMA ]"

ButtonAlgema.TextColor3 = Color3.fromRGB(0, 180, 255)

ButtonAlgema.TextSize = 12

Instance.new("UICorner", ButtonAlgema).CornerRadius = UDim.new(0, 6)

local ButtonFarmeDinheiro = Instance.new("TextButton", Page_Home)

ButtonFarmeDinheiro.Size = UDim2.new(0, 190, 0, 35)

ButtonFarmeDinheiro.Position = UDim2.new(0, 15, 0, 55)

ButtonFarmeDinheiro.BackgroundColor3 = Color3.fromRGB(15, 40, 25)

ButtonFarmeDinheiro.Font = Enum.Font.Code

ButtonFarmeDinheiro.Text = "[ FARME_DINHEIRO: OFF ]"

ButtonFarmeDinheiro.TextColor3 = Color3.fromRGB(46, 204, 113)

ButtonFarmeDinheiro.TextSize = 12

Instance.new("UICorner", ButtonFarmeDinheiro).CornerRadius = UDim.new(0, 6)

local ButtonGoSpawns = Instance.new("TextButton", Page_Home)

ButtonGoSpawns.Size = UDim2.new(0, 190, 0, 35)

ButtonGoSpawns.Position = UDim2.new(0, 15, 0, 100)

ButtonGoSpawns.BackgroundColor3 = Color3.fromRGB(35, 20, 45)

ButtonGoSpawns.Font = Enum.Font.Code

ButtonGoSpawns.Text = "[ SELECIONAR_SPAWN ]"

ButtonGoSpawns.TextColor3 = Color3.fromRGB(180, 80, 255)

ButtonGoSpawns.TextSize = 12

Instance.new("UICorner", ButtonGoSpawns).CornerRadius = UDim.new(0, 6)

local ButtonMorteLocal = Instance.new("TextButton", Page_Home)

ButtonMorteLocal.Size = UDim2.new(0, 190, 0, 35)

ButtonMorteLocal.Position = UDim2.new(0, 15, 0, 145)

ButtonMorteLocal.BackgroundColor3 = Color3.fromRGB(40, 25, 15)

ButtonMorteLocal.Font = Enum.Font.Code

ButtonMorteLocal.Text = "[ MORTE_LOCAL: OFF ]"

ButtonMorteLocal.TextColor3 = Color3.fromRGB(255, 145, 50)

ButtonMorteLocal.TextSize = 12

Instance.new("UICorner", ButtonMorteLocal).CornerRadius = UDim.new(0, 6)

ButtonGoSpawns.Activated:Connect(function()

    Page_Home.Visible = false

    Page_Spawns.Visible = true

end)

-- =======================================================

-- MENU ALGEMA - INTERFACE

-- =======================================================

local function criarBotaoMenuAlgema(

    parent,

    texto,

    posY,

    corFundo,

    corTexto

)

    local botao = Instance.new("TextButton", parent)

    botao.Size = UDim2.new(0, 190, 0, 30)

    botao.Position = UDim2.new(0, 15, 0, posY)

    botao.BackgroundColor3 = corFundo

    botao.Font = Enum.Font.Code

    botao.Text = texto

    botao.TextColor3 = corTexto

    botao.TextSize = 10

    Instance.new("UICorner", botao).CornerRadius =

        UDim.new(0, 5)

    return botao

end

local ButtonAntiAlgemaOriginal =

    criarBotaoMenuAlgema(

        Page_Algema,

        "[ ANTI-ALGEMA: OFF ]",

        5,

        Color3.fromRGB(45, 20, 20),

        Color3.fromRGB(255, 100, 100)

    )

local ButtonAntiAlgemaEquipada =

    criarBotaoMenuAlgema(

        Page_Algema,

        "[ ANTI-EQUIPADA: OFF ]",

        42,

        Color3.fromRGB(45, 20, 20),

        Color3.fromRGB(255, 100, 100)

    )

local ButtonAntiAlgemaForte =

    criarBotaoMenuAlgema(

        Page_Algema,

        "[ ANTI-FORTE: OFF ]",

        79,

        Color3.fromRGB(45, 20, 20),

        Color3.fromRGB(255, 100, 100)

    )

local ButtonProtecaoPlayers =

    criarBotaoMenuAlgema(

        Page_Algema,

        "[ PROTECAO_PLAYERS ]",

        116,

        Color3.fromRGB(20, 30, 45),

        Color3.fromRGB(0, 180, 255)

    )

local ButtonVoltarAlgema =

    criarBotaoMenuAlgema(

        Page_Algema,

        "[ < VOLTAR ]",

        165,

        Color3.fromRGB(40, 40, 45),

        Color3.fromRGB(200, 200, 200)

    )

local TituloProtecaoPlayers =

    Instance.new("TextLabel", Page_ProtecaoPlayers)

TituloProtecaoPlayers.Size =

    UDim2.new(0, 190, 0, 20)

TituloProtecaoPlayers.Position =

    UDim2.new(0, 15, 0, 2)

TituloProtecaoPlayers.BackgroundTransparency = 1

TituloProtecaoPlayers.Font = Enum.Font.Code

TituloProtecaoPlayers.Text = "PROTECAO DE PLAYERS"

TituloProtecaoPlayers.TextColor3 =

    Color3.fromRGB(0, 255, 200)

TituloProtecaoPlayers.TextSize = 10

local ListaProtecaoPlayers =

    Instance.new("ScrollingFrame", Page_ProtecaoPlayers)

ListaProtecaoPlayers.Size =

    UDim2.new(0, 190, 0, 125)

ListaProtecaoPlayers.Position =

    UDim2.new(0, 15, 0, 25)

ListaProtecaoPlayers.BackgroundColor3 =

    Color3.fromRGB(12, 12, 17)

ListaProtecaoPlayers.BorderSizePixel = 0

ListaProtecaoPlayers.ScrollBarThickness = 3

ListaProtecaoPlayers.AutomaticCanvasSize =

    Enum.AutomaticSize.Y

ListaProtecaoPlayers.CanvasSize = UDim2.new()

Instance.new(

    "UICorner",

    ListaProtecaoPlayers

).CornerRadius = UDim.new(0, 5)

local LayoutProtecaoPlayers =

    Instance.new(

        "UIListLayout",

        ListaProtecaoPlayers

    )

LayoutProtecaoPlayers.Padding =

    UDim.new(0, 4)

LayoutProtecaoPlayers.HorizontalAlignment =

    Enum.HorizontalAlignment.Center

local PaddingProtecaoPlayers =

    Instance.new(

        "UIPadding",

        ListaProtecaoPlayers

    )

PaddingProtecaoPlayers.PaddingTop =

    UDim.new(0, 5)

PaddingProtecaoPlayers.PaddingBottom =

    UDim.new(0, 5)

local ButtonMasterProtecaoPlayers =

    criarBotaoMenuAlgema(

        Page_ProtecaoPlayers,

        "[ PROTECAO: ON ]",

        158,

        Color3.fromRGB(15, 45, 25),

        Color3.fromRGB(50, 255, 130)

    )

local ButtonVoltarProtecaoPlayers =

    criarBotaoMenuAlgema(

        Page_ProtecaoPlayers,

        "[ < VOLTAR ]",

        195,

        Color3.fromRGB(40, 40, 45),

        Color3.fromRGB(200, 200, 200)

    )

ButtonAlgema.Activated:Connect(function()

    Page_Home.Visible = false

    Page_Spawns.Visible = false

    Page_ProtecaoPlayers.Visible = false

    Page_Algema.Visible = true

end)

ButtonVoltarAlgema.Activated:Connect(function()

    Page_Algema.Visible = false

    Page_ProtecaoPlayers.Visible = false

    Page_Home.Visible = true

end)

-- =======================================================

-- SPAWNS

-- =======================================================

local function criarBotaoSpawn(nome, pos, corTexto, corFundo)

    local btn = Instance.new("TextButton", Page_Spawns)

    btn.Size = UDim2.new(0, 85, 0, 32)

    btn.Position = pos

    btn.BackgroundColor3 = corFundo

    btn.Font = Enum.Font.Code

    btn.Text = "[ " .. nome .. " ]"

    btn.TextColor3 = corTexto

    btn.TextSize = 11

    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 5)

    return btn

end

local Btn_Eb = criarBotaoSpawn(

    "EB",

    UDim2.new(0, 15, 0, 10),

    Color3.fromRGB(241, 196, 15),

    Color3.fromRGB(45, 40, 15)

)

local Btn_Civis = criarBotaoSpawn(

    "CIVIS",

    UDim2.new(0, 120, 0, 10),

    Color3.fromRGB(0, 255, 200),

    Color3.fromRGB(15, 40, 35)

)

local Btn_Prisao = criarBotaoSpawn(

    "PRISÃO",

    UDim2.new(0, 15, 0, 50),

    Color3.fromRGB(255, 100, 100),

    Color3.fromRGB(45, 15, 15)

)

local Btn_Cyber = criarBotaoSpawn(

    "CYBER",

    UDim2.new(0, 120, 0, 50),

    Color3.fromRGB(255, 0, 180),

    Color3.fromRGB(45, 15, 35)

)

local ButtonVoltar = Instance.new("TextButton", Page_Spawns)

ButtonVoltar.Size = UDim2.new(0, 190, 0, 30)

ButtonVoltar.Position = UDim2.new(0, 15, 0, 100)

ButtonVoltar.BackgroundColor3 = Color3.fromRGB(40, 40, 45)

ButtonVoltar.Font = Enum.Font.Code

ButtonVoltar.Text = "[ 🡠 VOLTAR ]"

ButtonVoltar.TextColor3 = Color3.fromRGB(200, 200, 200)

ButtonVoltar.TextSize = 11

Instance.new("UICorner", ButtonVoltar).CornerRadius = UDim.new(0, 5)

ButtonVoltar.Activated:Connect(function()

    Page_Spawns.Visible = false

    Page_Home.Visible = true

end)

-- =======================================================

-- FUNÇÕES GERAIS

-- =======================================================

local function pegarCharacter()

    return localPlayer.Character

        or localPlayer.CharacterAdded:Wait()

end

local function pegarHRP()

    local character = pegarCharacter()

    return character:WaitForChild("HumanoidRootPart")

end

local function pegarPrompt(obj)

    return obj

        and obj:FindFirstChildWhichIsA(

            "ProximityPrompt",

            true

        )

end

local function pegarParte(obj, prompt)

    if prompt

        and prompt.Parent

        and prompt.Parent:IsA("BasePart")

    then

        return prompt.Parent

    end

    if obj and obj:IsA("BasePart") then

        return obj

    end

    return obj

        and obj:FindFirstChildWhichIsA(

            "BasePart",

            true

        )

end

local function pegarCFrame(obj)

    if not obj then

        return nil

    end

    if obj:IsA("BasePart") then

        return obj.CFrame

    end

    if obj:IsA("Model") then

        return obj:GetPivot()

    end

    local parte =

        obj:FindFirstChildWhichIsA(

            "BasePart",

            true

        )

    return parte and parte.CFrame

end

-- =======================================================

-- MENU ALGEMA - BACKEND

-- =======================================================

local antiAlgemaAtivado = false

local regenerando = false

local conexaoAlgema = nil

local conexaoCharacterAlgema = nil

local antiAlgemaEquipadaAtivado = false

local conexaoAntiAlgemaEquipada = nil

local antiAlgemaForteAtivado = false

local conexaoAntiAlgemaForte = nil

local protecaoPlayersAtivada = true

local jogadoresProtegidos = {}

local conexaoProtecaoPlayers = nil

local DISTANCIA_EQUIPADA_ALERTA = 22

local DISTANCIA_EQUIPADA_SAIDA = 30

local PREVISAO_EQUIPADA = 0.18

local DISTANCIA_FORTE_ALERTA = 18

local DISTANCIA_FORTE_SAIDA = 28

local DISTANCIA_PLAYER_ALERTA = 30

local DISTANCIA_PLAYER_SAIDA = 45

local PREVISAO_PLAYER = 0.35

local function atualizarBotaoToggle(

    botao,

    nome,

    ativo

)

    if ativo then

        botao.Text =

            "[ " .. nome .. ": ON ]"

        botao.BackgroundColor3 =

            Color3.fromRGB(

                15,

                45,

                25

            )

        botao.TextColor3 =

            Color3.fromRGB(

                50,

                255,

                130

            )

    else

        botao.Text =

            "[ " .. nome .. ": OFF ]"

        botao.BackgroundColor3 =

            Color3.fromRGB(

                45,

                20,

                20

            )

        botao.TextColor3 =

            Color3.fromRGB(

                255,

                100,

                100

            )

    end

end

-- =======================================================

-- ANTI ALGEMA ORIGINAL

-- Mantém a mesma função que já existia no seu script.

-- Agora pode ser ativada e desativada pelo submenu.

-- =======================================================

local function desligarAntiAlgemaOriginal()

    antiAlgemaAtivado = false

    regenerando = false

    if conexaoAlgema then

        conexaoAlgema:Disconnect()

        conexaoAlgema = nil

    end

    if conexaoCharacterAlgema then

        conexaoCharacterAlgema:Disconnect()

        conexaoCharacterAlgema = nil

    end

end

local function ligarAntiAlgema(character)

    if not antiAlgemaAtivado then

        return

    end

    if not character then

        return

    end

    if conexaoAlgema then

        conexaoAlgema:Disconnect()

        conexaoAlgema = nil

    end

    local humanoid =

        character:WaitForChild(

            "Humanoid",

            10

        )

    local animator =

        humanoid

        and humanoid:WaitForChild(

            "Animator",

            10

        )

    conexaoAlgema =

        localPlayer:GetAttributeChangedSignal(

            "AlgemadoPor"

        ):Connect(function()

            if not antiAlgemaAtivado then

                return

            end

            if localPlayer:GetAttribute(

                "AlgemadoPor"

            ) == nil then

                return

            end

            if regenerando then

                return

            end

            regenerando = true

            localPlayer:SetAttribute(

                "AlgemadoPor",

                nil

            )

            pcall(function()

                StarterGui:SetCore(

                    "ResetButtonCallback",

                    true

                )

            end)

            if humanoid then

                humanoid:SetStateEnabled(

                    Enum.HumanoidStateType.Seated,

                    true

                )

                if animator then

                    for _, anim in pairs(

                        animator:GetPlayingAnimationTracks()

                    ) do

                        pcall(function()

                            if anim.Animation

                                and anim.Animation.AnimationId

                                    == "rbxassetid://71263663399276"

                            then

                                anim:Stop()

                            end

                        end)

                    end

                end

            end

            task.defer(function()

                for _, obj in pairs(

                    character:GetDescendants()

                ) do

                    if obj:IsA("Weld")

                        or obj:IsA("ManualWeld")

                        or obj:IsA("Constraint")

                        or obj:IsA("BallSocketConstraint")

                    then

                        pcall(function()

                            obj:Destroy()

                        end)

                    end

                end

            end)

            task.defer(function()

                task.wait(0.05)

                if not antiAlgemaAtivado then

                    regenerando = false

                    return

                end

                local charAtual =

                    localPlayer.Character

                if not charAtual then

                    regenerando = false

                    return

                end

                local humanoidAtual =

                    charAtual:FindFirstChildOfClass(

                        "Humanoid"

                    )

                if humanoidAtual

                    and humanoidAtual.Health > 0

                then

                    humanoidAtual.Health = 0

                else

                    regenerando = false

                end

            end)

        end)

end

local function ativarAntiAlgemaOriginal()

    if antiAlgemaAtivado then

        return

    end

    antiAlgemaAtivado = true

    regenerando = false

    if localPlayer.Character then

        ligarAntiAlgema(

            localPlayer.Character

        )

    end

    if conexaoCharacterAlgema then

        conexaoCharacterAlgema:Disconnect()

    end

    conexaoCharacterAlgema =

        localPlayer.CharacterAdded:Connect(

            function(character)

                if not antiAlgemaAtivado then

                    return

                end

                regenerando = false

                ligarAntiAlgema(character)

            end

        )

end

ButtonAntiAlgemaOriginal.Activated:Connect(function()

    if antiAlgemaAtivado then

        desligarAntiAlgemaOriginal()

    else

        ativarAntiAlgemaOriginal()

    end

    atualizarBotaoToggle(

        ButtonAntiAlgemaOriginal,

        "ANTI-ALGEMA",

        antiAlgemaAtivado

    )

end)

-- =======================================================

-- ANTI ALGEMA EQUIPADA

-- Só reage a jogador com a Tool "Algemas" equipada.

-- =======================================================

local function desligarAntiAlgemaEquipada()

    antiAlgemaEquipadaAtivado = false

    getgenv().AntiAlgemaPreventivo = false

    if conexaoAntiAlgemaEquipada then

        conexaoAntiAlgemaEquipada:Disconnect()

        conexaoAntiAlgemaEquipada = nil

    end

    getgenv().AntiAlgemaConexao = nil

end

local function ativarAntiAlgemaEquipada()

    desligarAntiAlgemaEquipada()

    antiAlgemaEquipadaAtivado = true

    getgenv().AntiAlgemaPreventivo = true

    conexaoAntiAlgemaEquipada =

        RunService.Heartbeat:Connect(function()

            if not antiAlgemaEquipadaAtivado

                or not getgenv().AntiAlgemaPreventivo

            then

                return

            end

            local char = localPlayer.Character

            local hrp =

                char

                and char:FindFirstChild(

                    "HumanoidRootPart"

                )

            if not hrp then

                return

            end

            if localPlayer:GetAttribute(

                "AlgemadoPor"

            ) then

                return

            end

            for _, player in ipairs(

                Players:GetPlayers()

            ) do

                if player ~= localPlayer then

                    local outroChar =

                        player.Character

                    if outroChar then

                        local outroHRP =

                            outroChar:FindFirstChild(

                                "HumanoidRootPart"

                            )

                        local algemas =

                            outroChar:FindFirstChild(

                                "Algemas"

                            )

                        if outroHRP and algemas then

                            local minhaPos =

                                hrp.Position

                            local outraPos =

                                outroHRP.Position

                            local velocidade =

                                outroHRP

                                    .AssemblyLinearVelocity

                            local posPrevista =

                                outraPos

                                + velocidade

                                * PREVISAO_EQUIPADA

                            local delta =

                                minhaPos

                                - posPrevista

                            local distancia =

                                delta.Magnitude

                            if distancia

                                < DISTANCIA_EQUIPADA_ALERTA

                            then

                                local direcao

                                if delta.Magnitude < 0.1 then

                                    direcao =

                                        -outroHRP

                                            .CFrame

                                            .LookVector

                                else

                                    direcao =

                                        delta.Unit

                                end

                                local destino =

                                    posPrevista

                                    + direcao

                                    * DISTANCIA_EQUIPADA_SAIDA

                                hrp.AssemblyLinearVelocity =

                                    Vector3.zero

                                hrp.AssemblyAngularVelocity =

                                    Vector3.zero

                                hrp.CFrame =

                                    CFrame.new(

                                        destino.X,

                                        minhaPos.Y,

                                        destino.Z

                                    )

                                break

                            end

                        end

                    end

                end

            end

        end)

    getgenv().AntiAlgemaConexao =

        conexaoAntiAlgemaEquipada

end

ButtonAntiAlgemaEquipada.Activated:Connect(function()

    if antiAlgemaEquipadaAtivado then

        desligarAntiAlgemaEquipada()

    else

        ativarAntiAlgemaEquipada()

    end

    atualizarBotaoToggle(

        ButtonAntiAlgemaEquipada,

        "ANTI-EQUIPADA",

        antiAlgemaEquipadaAtivado

    )

end)

-- =======================================================

-- ANTI ALGEMA FORTE

-- Mantém distância de qualquer jogador, mesmo sem algema.

-- =======================================================

local function desligarAntiAlgemaForte()

    antiAlgemaForteAtivado = false

    getgenv().AntiAlgema = false

    if conexaoAntiAlgemaForte then

        conexaoAntiAlgemaForte:Disconnect()

        conexaoAntiAlgemaForte = nil

    end

    getgenv().AntiAlgemaConn = nil

end

local function ativarAntiAlgemaForte()

    desligarAntiAlgemaForte()

    antiAlgemaForteAtivado = true

    getgenv().AntiAlgema = true

    conexaoAntiAlgemaForte =

        RunService.PreSimulation:Connect(function()

            if not antiAlgemaForteAtivado

                or not getgenv().AntiAlgema

            then

                return

            end

            local char = localPlayer.Character

            local hrp =

                char

                and char:FindFirstChild(

                    "HumanoidRootPart"

                )

            if not hrp then

                return

            end

            if localPlayer:GetAttribute(

                "AlgemadoPor"

            ) then

                return

            end

            local minhaPos = hrp.Position

            for _, plr in ipairs(

                Players:GetPlayers()

            ) do

                if plr ~= localPlayer then

                    local outroChar =

                        plr.Character

                    local outroHRP =

                        outroChar

                        and outroChar:FindFirstChild(

                            "HumanoidRootPart"

                        )

                    if outroHRP then

                        local delta =

                            minhaPos

                            - outroHRP.Position

                        local distancia =

                            delta.Magnitude

                        if distancia

                            < DISTANCIA_FORTE_ALERTA

                        then

                            local direcao

                            if distancia < 0.01 then

                                direcao =

                                    -outroHRP

                                        .CFrame

                                        .LookVector

                            else

                                direcao =

                                    delta.Unit

                            end

                            local destino =

                                outroHRP.Position

                                + direcao

                                * DISTANCIA_FORTE_SAIDA

                            hrp.AssemblyLinearVelocity =

                                Vector3.zero

                            hrp.AssemblyAngularVelocity =

                                Vector3.zero

                            hrp.CFrame =

                                CFrame.new(

                                    destino.X,

                                    minhaPos.Y,

                                    destino.Z

                                )

                            break

                        end

                    end

                end

            end

        end)

    getgenv().AntiAlgemaConn =

        conexaoAntiAlgemaForte

end

ButtonAntiAlgemaForte.Activated:Connect(function()

    if antiAlgemaForteAtivado then

        desligarAntiAlgemaForte()

    else

        ativarAntiAlgemaForte()

    end

    atualizarBotaoToggle(

        ButtonAntiAlgemaForte,

        "ANTI-FORTE",

        antiAlgemaForteAtivado

    )

end)

-- =======================================================

-- PROTEÇÃO SELETIVA DE PLAYERS

-- Cada jogador pode ser ativado/desativado individualmente.

-- =======================================================

local function atualizarBotaoMasterProtecao()

    if protecaoPlayersAtivada then

        ButtonMasterProtecaoPlayers.Text =

            "[ PROTECAO: ON ]"

        ButtonMasterProtecaoPlayers.BackgroundColor3 =

            Color3.fromRGB(15, 45, 25)

        ButtonMasterProtecaoPlayers.TextColor3 =

            Color3.fromRGB(50, 255, 130)

    else

        ButtonMasterProtecaoPlayers.Text =

            "[ PROTECAO: OFF ]"

        ButtonMasterProtecaoPlayers.BackgroundColor3 =

            Color3.fromRGB(45, 20, 20)

        ButtonMasterProtecaoPlayers.TextColor3 =

            Color3.fromRGB(255, 100, 100)

    end

end

local function criarBotaoPlayerProtegido(player)

    if player == localPlayer then

        return

    end

    local botao =

        Instance.new(

            "TextButton",

            ListaProtecaoPlayers

        )

    botao.Name =

        "Protecao_" .. player.UserId

    botao.Size =

        UDim2.new(1, -10, 0, 27)

    botao.BackgroundColor3 =

        Color3.fromRGB(40, 20, 20)

    botao.Font = Enum.Font.Code

    botao.TextSize = 9

    botao.TextColor3 =

        Color3.fromRGB(255, 100, 100)

    Instance.new(

        "UICorner",

        botao

    ).CornerRadius =

        UDim.new(0, 5)

    local function atualizar()

        if jogadoresProtegidos[player] then

            botao.Text =

                "[ ON ] " .. player.Name

            botao.BackgroundColor3 =

                Color3.fromRGB(15, 45, 25)

            botao.TextColor3 =

                Color3.fromRGB(50, 255, 130)

        else

            botao.Text =

                "[ OFF ] " .. player.Name

            botao.BackgroundColor3 =

                Color3.fromRGB(40, 20, 20)

            botao.TextColor3 =

                Color3.fromRGB(255, 100, 100)

        end

    end

    botao.Activated:Connect(function()

        if jogadoresProtegidos[player] then

            jogadoresProtegidos[player] = nil

        else

            jogadoresProtegidos[player] = true

        end

        atualizar()

    end)

    atualizar()

end

local function atualizarListaProtecaoPlayers()

    for _, objeto in ipairs(

        ListaProtecaoPlayers:GetChildren()

    ) do

        if objeto:IsA("TextButton") then

            objeto:Destroy()

        end

    end

    for _, player in ipairs(

        Players:GetPlayers()

    ) do

        criarBotaoPlayerProtegido(player)

    end

end

conexaoProtecaoPlayers =

    RunService.PreSimulation:Connect(function()

        if not protecaoPlayersAtivada then

            return

        end

        if next(jogadoresProtegidos) == nil then

            return

        end

        local character =

            localPlayer.Character

        local hrp =

            character

            and character:FindFirstChild(

                "HumanoidRootPart"

            )

        if not hrp then

            return

        end

        if localPlayer:GetAttribute(

            "AlgemadoPor"

        ) then

            return

        end

        local minhaPos = hrp.Position

        for player in pairs(

            jogadoresProtegidos

        ) do

            if player

                and player.Parent == Players

            then

                local outroChar =

                    player.Character

                local outroHRP =

                    outroChar

                    and outroChar:FindFirstChild(

                        "HumanoidRootPart"

                    )

                if outroHRP then

                    local outraPos =

                        outroHRP.Position

                    local velocidadeRelativa =

                        outroHRP.AssemblyLinearVelocity

                        - hrp.AssemblyLinearVelocity

                    local posPrevista =

                        outraPos

                        + velocidadeRelativa

                        * PREVISAO_PLAYER

                    local delta =

                        minhaPos

                        - posPrevista

                    local distancia =

                        delta.Magnitude

                    if distancia

                        < DISTANCIA_PLAYER_ALERTA

                    then

                        local direcao

                        if distancia < 0.1 then

                            direcao =

                                -outroHRP

                                    .CFrame

                                    .LookVector

                        else

                            direcao =

                                delta.Unit

                        end

                        local destino =

                            posPrevista

                            + direcao

                            * DISTANCIA_PLAYER_SAIDA

                        hrp.AssemblyLinearVelocity =

                            Vector3.zero

                        hrp.AssemblyAngularVelocity =

                            Vector3.zero

                        hrp.CFrame =

                            CFrame.new(

                                destino.X,

                                minhaPos.Y,

                                destino.Z

                            )

                        break

                    end

                end

            end

        end

    end)

getgenv().PlayerProtectionConnection =

    conexaoProtecaoPlayers

ButtonProtecaoPlayers.Activated:Connect(function()

    atualizarListaProtecaoPlayers()

    Page_Algema.Visible = false

    Page_ProtecaoPlayers.Visible = true

end)

ButtonVoltarProtecaoPlayers.Activated:Connect(function()

    Page_ProtecaoPlayers.Visible = false

    Page_Algema.Visible = true

end)

ButtonMasterProtecaoPlayers.Activated:Connect(function()

    protecaoPlayersAtivada =

        not protecaoPlayersAtivada

    atualizarBotaoMasterProtecao()

end)

Players.PlayerAdded:Connect(function()

    if Page_ProtecaoPlayers.Visible then

        task.wait(0.1)

        atualizarListaProtecaoPlayers()

    end

end)

Players.PlayerRemoving:Connect(function(player)

    jogadoresProtegidos[player] = nil

    if Page_ProtecaoPlayers.Visible then

        task.defer(

            atualizarListaProtecaoPlayers

        )

    end

end)

atualizarBotaoToggle(

    ButtonAntiAlgemaOriginal,

    "ANTI-ALGEMA",

    false

)

atualizarBotaoToggle(

    ButtonAntiAlgemaEquipada,

    "ANTI-EQUIPADA",

    false

)

atualizarBotaoToggle(

    ButtonAntiAlgemaForte,

    "ANTI-FORTE",

    false

)

atualizarBotaoMasterProtecao()

-- =======================================================

-- FARME DINHEIRO

-- =======================================================

local farmeDinheiroAtivo = false

local farmeExecucao = 0

local TEMPO_LIXO = 4

local TEMPO_LIXEIRA = 4

local function esperarFarme(segundos, execucao)

    local inicio = os.clock()

    while os.clock() - inicio < segundos do

        if not farmeDinheiroAtivo

            or execucao ~= farmeExecucao

        then

            return false

        end

        task.wait(0.1)

    end

    return true

end

local function fazerBau(execucao)

    local caixas =

        Workspace

            :FindFirstChild("Map")

        and Workspace.Map

            :FindFirstChild("Sistemas")

        and Workspace.Map.Sistemas

            :FindFirstChild("Jobs")

        and Workspace.Map.Sistemas.Jobs

            :FindFirstChild("Caixas")

    if not caixas then

        return

    end

    local localEntrega =

        caixas:FindFirstChild(

            "LocalEntrega"

        )

    local promptBau =

        caixas:FindFirstChildWhichIsA(

            "ProximityPrompt",

            true

        )

    if not localEntrega

        or not promptBau

    then

        return

    end

    local parteBau =

        pegarParte(

            promptBau.Parent,

            promptBau

        )

    if not parteBau then

        return

    end

    local hrp = pegarHRP()

    promptBau.HoldDuration = 0

    hrp.CFrame =

        parteBau.CFrame

        * CFrame.new(

            0,

            2,

            -1

        )

    if not esperarFarme(

        0.3,

        execucao

    ) then

        return

    end

    pcall(function()

        fireproximityprompt(

            promptBau

        )

    end)

    if not esperarFarme(

        0.4,

        execucao

    ) then

        return

    end

    local cfEntrega =

        pegarCFrame(

            localEntrega

        )

    if cfEntrega then

        pegarHRP().CFrame =

            cfEntrega

            * CFrame.new(

                0,

                3,

                -2

            )

    end

    esperarFarme(

        0.3,

        execucao

    )

end

local function executarRodadaLixos(execucao)

    local job =

        Workspace.Map.Sistemas.Jobs[

            "Recolher Lixo"

        ]

    local listaLixos =

        job.Lixos:GetChildren()

    local listaLixeiras =

        job.Lixeiras:GetChildren()

    local lixeira =

        listaLixeiras[15]

    if not lixeira then

        return

    end

    local promptLixeira =

        pegarPrompt(

            lixeira

        )

    local parteLixeira =

        pegarParte(

            lixeira,

            promptLixeira

        )

    if not promptLixeira

        or not parteLixeira

    then

        return

    end

    promptLixeira.HoldDuration = 0

    local fila = {}

    for i = 35, 3, -1 do

        local lixo =

            listaLixos[i]

        if lixo then

            table.insert(

                fila,

                lixo

            )

        end

    end

    local metade =

        math.floor(

            #fila / 2

        )

    for indice, lixo in ipairs(fila) do

        if not farmeDinheiroAtivo

            or execucao ~= farmeExecucao

        then

            return

        end

        if lixo and lixo.Parent then

            local promptLixo =

                pegarPrompt(

                    lixo

                )

            local parteLixo =

                pegarParte(

                    lixo,

                    promptLixo

                )

            if promptLixo

                and parteLixo

            then

                promptLixo.HoldDuration = 0

                pegarHRP().CFrame =

                    parteLixo.CFrame

                    * CFrame.new(

                        0,

                        2,

                        -1

                    )

                if not esperarFarme(

                    TEMPO_LIXO,

                    execucao

                ) then

                    return

                end

                pcall(function()

                    fireproximityprompt(

                        promptLixo

                    )

                end)

                if not esperarFarme(

                    0.1,

                    execucao

                ) then

                    return

                end

                pegarHRP().CFrame =

                    parteLixeira.CFrame

                    * CFrame.new(

                        0,

                        0,

                        -4

                    )

                if not esperarFarme(

                    TEMPO_LIXEIRA,

                    execucao

                ) then

                    return

                end

                pcall(function()

                    fireproximityprompt(

                        promptLixeira

                    )

                end)

            end

        end

        if indice == metade then

            if not farmeDinheiroAtivo

                or execucao ~= farmeExecucao

            then

                return

            end

            fazerBau(execucao)

        end

    end

end

local function iniciarFarmeDinheiro()

    farmeExecucao += 1

    local minhaExecucao =

        farmeExecucao

    task.spawn(function()

        while farmeDinheiroAtivo

            and minhaExecucao == farmeExecucao

        do

            local sucesso, erro =

                pcall(function()

                    executarRodadaLixos(

                        minhaExecucao

                    )

                end)

            if not sucesso then

                warn(

                    "Erro no FARME_DINHEIRO:",

                    erro

                )

                if not esperarFarme(

                    1,

                    minhaExecucao

                ) then

                    break

                end

            end

            if farmeDinheiroAtivo

                and minhaExecucao == farmeExecucao

            then

                if not esperarFarme(

                    0.2,

                    minhaExecucao

                ) then

                    break

                end

            end

        end

    end)

end

ButtonFarmeDinheiro.Activated:Connect(function()

    farmeDinheiroAtivo =

        not farmeDinheiroAtivo

    if farmeDinheiroAtivo then

        ButtonFarmeDinheiro.Text =

            "[ FARME_DINHEIRO: ONLINE ]"

        ButtonFarmeDinheiro.BackgroundColor3 =

            Color3.fromRGB(

                15,

                55,

                30

            )

        ButtonFarmeDinheiro.TextColor3 =

            Color3.fromRGB(

                50,

                255,

                130

            )

        iniciarFarmeDinheiro()

    else

        farmeExecucao += 1

        ButtonFarmeDinheiro.Text =

            "[ FARME_DINHEIRO: OFF ]"

        ButtonFarmeDinheiro.BackgroundColor3 =

            Color3.fromRGB(

                15,

                40,

                25

            )

        ButtonFarmeDinheiro.TextColor3 =

            Color3.fromRGB(

                46,

                204,

                113

            )

    end

end)

-- =======================================================

-- NASCER ONDE MORREU

-- =======================================================

local respawnNaMorteAtivado = false

local ultimaPosicaoMorte = nil

local ultimaPosicaoViva = nil

local conexaoDied = nil

local conexaoPosicao = nil

local function monitorarPersonagem(character)

    if conexaoDied then

        conexaoDied:Disconnect()

        conexaoDied = nil

    end

    if conexaoPosicao then

        conexaoPosicao:Disconnect()

        conexaoPosicao = nil

    end

    local humanoid =

        character:WaitForChild(

            "Humanoid",

            10

        )

    local hrp =

        character:WaitForChild(

            "HumanoidRootPart",

            10

        )

    if not humanoid

        or not hrp

    then

        return

    end

    ultimaPosicaoViva =

        hrp.CFrame

    conexaoPosicao =

        RunService.Heartbeat:Connect(function()

            if character.Parent

                and hrp.Parent

                and humanoid.Health > 0

            then

                ultimaPosicaoViva =

                    hrp.CFrame

            end

        end)

    conexaoDied =

        humanoid.Died:Connect(function()

            if respawnNaMorteAtivado then

                if hrp

                    and hrp.Parent

                then

                    ultimaPosicaoMorte =

                        hrp.CFrame

                else

                    ultimaPosicaoMorte =

                        ultimaPosicaoViva

                end

            end

        end)

end

ButtonMorteLocal.Activated:Connect(function()

    respawnNaMorteAtivado =

        not respawnNaMorteAtivado

    if respawnNaMorteAtivado then

        ButtonMorteLocal.Text =

            "[ MORTE_LOCAL: ONLINE ]"

        ButtonMorteLocal.BackgroundColor3 =

            Color3.fromRGB(

                15,

                45,

                30

            )

        ButtonMorteLocal.TextColor3 =

            Color3.fromRGB(

                50,

                255,

                130

            )

        ultimaPosicaoMorte = nil

    else

        ButtonMorteLocal.Text =

            "[ MORTE_LOCAL: OFF ]"

        ButtonMorteLocal.BackgroundColor3 =

            Color3.fromRGB(

                40,

                25,

                15

            )

        ButtonMorteLocal.TextColor3 =

            Color3.fromRGB(

                255,

                145,

                50

            )

        ultimaPosicaoMorte = nil

    end

end)

-- =======================================================

-- SISTEMA DE SPAWN

-- =======================================================

local spawnAlvoNome = nil

local function teleportarAposRespawn(character)

    local hrp =

        character:WaitForChild(

            "HumanoidRootPart",

            10

        )

    if not hrp then

        return

    end

    if respawnNaMorteAtivado

        and ultimaPosicaoMorte

    then

        task.wait(0.1)

        hrp.CFrame =

            ultimaPosicaoMorte

            + Vector3.new(

                0,

                3,

                0

            )

        return

    end

    if not spawnAlvoNome then

        return

    end

    local map =

        Workspace:FindFirstChild(

            "Map"

        )

    local spawnsFolder =

        map

        and map:FindFirstChild(

            "Spawns"

        )

    if not spawnsFolder then

        return

    end

    if spawnAlvoNome == "Civis" then

        local listaCivis = {}

        for _, child in pairs(

            spawnsFolder:GetChildren()

        ) do

            if child.Name == "Civis" then

                table.insert(

                    listaCivis,

                    child

                )

            end

        end

        if #listaCivis > 0 then

            task.wait(0.05)

            local spawnEscolhido =

                listaCivis[

                    math.random(

                        1,

                        #listaCivis

                    )

                ]

            hrp.CFrame =

                spawnEscolhido.CFrame

                + Vector3.new(

                    0,

                    3,

                    0

                )

        end

        return

    end

    local blocoSpawn =

        spawnsFolder:FindFirstChild(

            spawnAlvoNome

        )

    if blocoSpawn then

        task.wait(0.05)

        hrp.CFrame =

            blocoSpawn.CFrame

            + Vector3.new(

                0,

                3,

                0

            )

    end

end

if localPlayer.Character then

    task.spawn(function()

        monitorarPersonagem(

            localPlayer.Character

        )

    end)

end

localPlayer.CharacterAdded:Connect(function(character)

    regenerando = false

    task.spawn(function()

        monitorarPersonagem(

            character

        )

    end)

    task.spawn(function()

        teleportarAposRespawn(

            character

        )

    end)

end)

-- =======================================================

-- BOTÕES DOS SPAWNS

-- =======================================================

local function configurarGatilhoSpawn(

    botao,

    nomeOriginalNoDex

)

    botao.Activated:Connect(function()

        spawnAlvoNome =

            nomeOriginalNoDex

        local textoOriginal =

            botao.Text

        botao.Text =

            "[ OK! ]"

        task.wait(0.4)

        botao.Text =

            textoOriginal

        Page_Spawns.Visible = false

        Page_Home.Visible = true

    end)

end

configurarGatilhoSpawn(

    Btn_Eb,

    "Eb"

)

configurarGatilhoSpawn(

    Btn_Civis,

    "Civis"

)

configurarGatilhoSpawn(

    Btn_Prisao,

    "Prisão"

)

configurarGatilhoSpawn(

    Btn_Cyber,

    "Cyber"

)

-- =======================================================
-- NOVAS IMPLEMENTAÇÕES INTEGRADAS
-- EXTRAS + ESP + MINI-TP + TP-PESSOA + INF-JUMP
-- NOTIFICADOR DE CARGOS + MINIMIZAR HUB
-- =======================================================

-- Limpa versões standalone testadas antes deste HUB.
local function destruirGuiAntiga(nome)
    pcall(function()
        local old = CoreGui:FindFirstChild(nome)
        if old and old ~= ScreenGui then old:Destroy() end
    end)
    pcall(function()
        if gethui then
            local old = gethui():FindFirstChild(nome)
            if old and old ~= ScreenGui then old:Destroy() end
        end
    end)
end

if getgenv().NoctivagaESPConnections then
    for _, c in pairs(getgenv().NoctivagaESPConnections) do
        pcall(function() c:Disconnect() end)
    end
    getgenv().NoctivagaESPConnections = nil
end
if getgenv().NoctivagaESPConnection then
    pcall(function() getgenv().NoctivagaESPConnection:Disconnect() end)
    getgenv().NoctivagaESPConnection = nil
end
if getgenv().NoctivagaInfiniteJumpConnection then
    pcall(function() getgenv().NoctivagaInfiniteJumpConnection:Disconnect() end)
    getgenv().NoctivagaInfiniteJumpConnection = nil
end
if getgenv().NoctivagaSpecialJoinConnection then
    pcall(function() getgenv().NoctivagaSpecialJoinConnection:Disconnect() end)
    getgenv().NoctivagaSpecialJoinConnection = nil
end
if getgenv().NoctivagaTPPessoaConnections then
    for _, c in pairs(getgenv().NoctivagaTPPessoaConnections) do
        pcall(function() c:Disconnect() end)
    end
    getgenv().NoctivagaTPPessoaConnections = nil
end

destruirGuiAntiga("NoctivagaESP")
destruirGuiAntiga("NoctivagaInfiniteJump")
destruirGuiAntiga("NoctivagaSpecialNotifier")
destruirGuiAntiga("NoctivagaTPPessoa")
destruirGuiAntiga("NoctivagaMiniTP")

local NovasConexoes = {}
local function guardarConexao(c)
    if c then table.insert(NovasConexoes, c) end
    return c
end

-- =======================================================
-- PÁGINAS NOVAS DO HUB
-- =======================================================

local Page_Extras = Instance.new("Frame", MainFrame)
Page_Extras.Size = UDim2.new(1, 0, 1, -35)
Page_Extras.Position = UDim2.new(0, 0, 0, 35)
Page_Extras.BackgroundTransparency = 1
Page_Extras.Visible = false

local Page_ESP = Instance.new("Frame", MainFrame)
Page_ESP.Size = UDim2.new(1, 0, 1, -35)
Page_ESP.Position = UDim2.new(0, 0, 0, 35)
Page_ESP.BackgroundTransparency = 1
Page_ESP.Visible = false

local Page_ESPAlvos = Instance.new("Frame", MainFrame)
Page_ESPAlvos.Size = UDim2.new(1, 0, 1, -35)
Page_ESPAlvos.Position = UDim2.new(0, 0, 0, 35)
Page_ESPAlvos.BackgroundTransparency = 1
Page_ESPAlvos.Visible = false

local function esconderPaginasNovas()
    Page_Extras.Visible = false
    Page_ESP.Visible = false
    Page_ESPAlvos.Visible = false
end

local function criarBotaoExtra(parent, texto, posY, corFundo, corTexto)
    local b = Instance.new("TextButton", parent)
    b.Size = UDim2.new(0, 190, 0, 30)
    b.Position = UDim2.new(0, 15, 0, posY)
    b.BackgroundColor3 = corFundo
    b.Font = Enum.Font.Code
    b.Text = texto
    b.TextColor3 = corTexto
    b.TextSize = 10
    Instance.new("UICorner", b).CornerRadius = UDim.new(0, 5)
    return b
end

-- Último espaço livre da HOME: preserva todos os botões que já existiam.
local ButtonMenuExtras = Instance.new("TextButton", Page_Home)
ButtonMenuExtras.Size = UDim2.new(0, 190, 0, 35)
ButtonMenuExtras.Position = UDim2.new(0, 15, 0, 190)
ButtonMenuExtras.BackgroundColor3 = Color3.fromRGB(15, 35, 40)
ButtonMenuExtras.Font = Enum.Font.Code
ButtonMenuExtras.Text = "[ MENU-EXTRAS ]"
ButtonMenuExtras.TextColor3 = Color3.fromRGB(0, 255, 200)
ButtonMenuExtras.TextSize = 12
Instance.new("UICorner", ButtonMenuExtras).CornerRadius = UDim.new(0, 6)

local ButtonExtrasESP = criarBotaoExtra(Page_Extras, "[ ESP ]", 5, Color3.fromRGB(35, 25, 15), Color3.fromRGB(255, 210, 60))
local ButtonMiniTP = criarBotaoExtra(Page_Extras, "[ MINI-TP: OFF ]", 42, Color3.fromRGB(45, 20, 20), Color3.fromRGB(255, 100, 100))
local ButtonTPPessoa = criarBotaoExtra(Page_Extras, "[ TP-PESSOA ]", 79, Color3.fromRGB(20, 30, 45), Color3.fromRGB(0, 180, 255))
local ButtonInfJump = criarBotaoExtra(Page_Extras, "[ INF-JUMP: OFF ]", 116, Color3.fromRGB(45, 20, 20), Color3.fromRGB(255, 100, 100))
local ButtonVoltarExtras = criarBotaoExtra(Page_Extras, "[ < VOLTAR ]", 165, Color3.fromRGB(40, 40, 45), Color3.fromRGB(200, 200, 200))

ButtonMenuExtras.Activated:Connect(function()
    Page_Home.Visible = false
    Page_Spawns.Visible = false
    Page_Algema.Visible = false
    Page_ProtecaoPlayers.Visible = false
    Page_ESP.Visible = false
    Page_ESPAlvos.Visible = false
    Page_Extras.Visible = true
end)

ButtonVoltarExtras.Activated:Connect(function()
    esconderPaginasNovas()
    Page_Home.Visible = true
end)

-- =======================================================
-- MINIMIZAR HUB
-- =======================================================

local MinimizeHub = Instance.new("TextButton", TopBar)
MinimizeHub.Name = "MinimizeHub"
MinimizeHub.BackgroundTransparency = 1
MinimizeHub.Position = UDim2.new(0.70, 0, 0, 0)
MinimizeHub.Size = UDim2.new(0, 30, 1, 0)
MinimizeHub.Font = Enum.Font.GothamBold
MinimizeHub.Text = "[-]"
MinimizeHub.TextColor3 = Color3.fromRGB(0, 255, 200)
MinimizeHub.TextSize = 14

-- Dá um pouco mais de espaço entre título, minimizar e X.
Title.Size = UDim2.new(0.62, 0, 1, 0)

local hubMinimizado = false
local estadoPaginasHub = nil
local tamanhoNormalHub = MainFrame.Size
local tamanhoTopNormal = TopBar.Size

local function coletarEstadoPaginas()
    return {
        Home = Page_Home.Visible,
        Spawns = Page_Spawns.Visible,
        Algema = Page_Algema.Visible,
        Protecao = Page_ProtecaoPlayers.Visible,
        Extras = Page_Extras.Visible,
        ESP = Page_ESP.Visible,
        ESPAlvos = Page_ESPAlvos.Visible,
    }
end

local function aplicarEstadoPaginas(e)
    Page_Home.Visible = e.Home
    Page_Spawns.Visible = e.Spawns
    Page_Algema.Visible = e.Algema
    Page_ProtecaoPlayers.Visible = e.Protecao
    Page_Extras.Visible = e.Extras
    Page_ESP.Visible = e.ESP
    Page_ESPAlvos.Visible = e.ESPAlvos
end

local function setHubMinimizado(valor)
    hubMinimizado = valor
    if valor then
        estadoPaginasHub = coletarEstadoPaginas()
        Page_Home.Visible = false
        Page_Spawns.Visible = false
        Page_Algema.Visible = false
        Page_ProtecaoPlayers.Visible = false
        Page_Extras.Visible = false
        Page_ESP.Visible = false
        Page_ESPAlvos.Visible = false
        Watermark.Visible = false
        Title.Visible = false
        CloseButton.Visible = false
        MainFrame.Size = UDim2.new(0, 64, 0, 40)
        TopBar.Size = UDim2.new(1, 0, 1, 0)
        MinimizeHub.Position = UDim2.new(0, 0, 0, 0)
        MinimizeHub.Size = UDim2.new(1, 0, 1, 0)
        MinimizeHub.Text = "[-]"
    else
        MainFrame.Size = tamanhoNormalHub
        TopBar.Size = tamanhoTopNormal
        MinimizeHub.Position = UDim2.new(0.70, 0, 0, 0)
        MinimizeHub.Size = UDim2.new(0, 30, 1, 0)
        MinimizeHub.Text = "[-]"
        Watermark.Visible = true
        Title.Visible = true
        CloseButton.Visible = true
        if estadoPaginasHub then
            aplicarEstadoPaginas(estadoPaginasHub)
        else
            Page_Home.Visible = true
        end
    end
end

MinimizeHub.Activated:Connect(function()
    setHubMinimizado(not hubMinimizado)
end)

-- =======================================================
-- RESPONSIVIDADE COMPARTILHADA DAS NOVAS FUNÇÕES
-- =======================================================

local function escalaNovaUI()
    local cam = Workspace.CurrentCamera
    if not cam then return 1 end
    local menor = math.min(cam.ViewportSize.X, cam.ViewportSize.Y)
    if menor <= 500 then return 0.78 end
    if menor <= 750 then return 0.90 end
    return 1
end

-- =======================================================
-- MINI-TP INTEGRADO
-- =======================================================

local miniTPAtivo = false
local MINI_TP_DISTANCIA = 6

local TPContainer = Instance.new("Frame", ScreenGui)
TPContainer.Name = "MiniTPFloating"
TPContainer.AnchorPoint = Vector2.new(0.5, 0.5)
TPContainer.Position = UDim2.new(0.82, 0, 0.72, 0)
TPContainer.Size = UDim2.new(0, 100, 0, 52)
TPContainer.BackgroundTransparency = 1
TPContainer.Visible = false
TPContainer.Active = true

local MiniTPScale = Instance.new("UIScale", TPContainer)
MiniTPScale.Scale = escalaNovaUI()

local BotaoTPFloat = Instance.new("TextButton", TPContainer)
BotaoTPFloat.Size = UDim2.new(1, 0, 1, 0)
BotaoTPFloat.BackgroundColor3 = Color3.fromRGB(10, 45, 35)
BotaoTPFloat.Text = "[ TP >> ]"
BotaoTPFloat.TextColor3 = Color3.fromRGB(50, 255, 150)
BotaoTPFloat.Font = Enum.Font.Code
BotaoTPFloat.TextSize = 14
BotaoTPFloat.AutoButtonColor = false
BotaoTPFloat.Active = true
Instance.new("UICorner", BotaoTPFloat).CornerRadius = UDim.new(0, 10)
local MiniTPStroke = Instance.new("UIStroke", BotaoTPFloat)
MiniTPStroke.Color = Color3.fromRGB(50, 255, 150)
MiniTPStroke.Thickness = 1.5

local function atualizarMiniTPBotao()
    if miniTPAtivo then
        ButtonMiniTP.Text = "[ MINI-TP: ON ]"
        ButtonMiniTP.BackgroundColor3 = Color3.fromRGB(15, 50, 25)
        ButtonMiniTP.TextColor3 = Color3.fromRGB(50, 255, 130)
        TPContainer.Visible = true
    else
        ButtonMiniTP.Text = "[ MINI-TP: OFF ]"
        ButtonMiniTP.BackgroundColor3 = Color3.fromRGB(45, 20, 20)
        ButtonMiniTP.TextColor3 = Color3.fromRGB(255, 100, 100)
        TPContainer.Visible = false
    end
end

local function executarMiniTP()
    if not miniTPAtivo then return end
    local char = localPlayer.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    local hum = char and char:FindFirstChildOfClass("Humanoid")
    if not char or not root or not hum or hum.Health <= 0 then return end
    local look = root.CFrame.LookVector
    local dir = Vector3.new(look.X, 0, look.Z)
    if dir.Magnitude <= 0.01 then return end
    dir = dir.Unit
    local novaPos = root.Position + dir * MINI_TP_DISTANCIA
    local rot = root.CFrame - root.Position
    char:PivotTo(CFrame.new(novaPos) * rot)
end

ButtonMiniTP.Activated:Connect(function()
    miniTPAtivo = not miniTPAtivo
    atualizarMiniTPBotao()
end)

local miniDrag = false
local miniStart = nil
local miniPos = nil
local miniMove = 0
local miniInput = nil
local miniDragLimit = 8

BotaoTPFloat.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        miniDrag = true
        miniStart = input.Position
        miniPos = TPContainer.Position
        miniMove = 0
        miniInput = input
    end
end)

BotaoTPFloat.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        miniInput = input
    end
end)

guardarConexao(UserInputService.InputChanged:Connect(function(input)
    if not miniDrag or input ~= miniInput or not miniStart or not miniPos then return end
    local delta = input.Position - miniStart
    miniMove = delta.Magnitude
    if miniMove >= miniDragLimit then
        TPContainer.Position = UDim2.new(
            miniPos.X.Scale, miniPos.X.Offset + delta.X,
            miniPos.Y.Scale, miniPos.Y.Offset + delta.Y
        )
    end
end))

guardarConexao(UserInputService.InputEnded:Connect(function(input)
    if not miniDrag then return end
    if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then return end
    miniDrag = false
    if miniMove < miniDragLimit then executarMiniTP() end
end))

atualizarMiniTPBotao()

-- =======================================================
-- INFINITE JUMP INTEGRADO
-- =======================================================

local infiniteJumpAtivo = false

local function atualizarInfiniteJumpBotao()
    if infiniteJumpAtivo then
        ButtonInfJump.Text = "[ INF-JUMP: ON ]"
        ButtonInfJump.BackgroundColor3 = Color3.fromRGB(15, 50, 25)
        ButtonInfJump.TextColor3 = Color3.fromRGB(50, 255, 130)
    else
        ButtonInfJump.Text = "[ INF-JUMP: OFF ]"
        ButtonInfJump.BackgroundColor3 = Color3.fromRGB(45, 20, 20)
        ButtonInfJump.TextColor3 = Color3.fromRGB(255, 100, 100)
    end
end

ButtonInfJump.Activated:Connect(function()
    infiniteJumpAtivo = not infiniteJumpAtivo
    atualizarInfiniteJumpBotao()
end)

guardarConexao(UserInputService.JumpRequest:Connect(function()
    if not infiniteJumpAtivo then return end
    local char = localPlayer.Character
    local hum = char and char:FindFirstChildOfClass("Humanoid")
    if hum and hum.Health > 0 then
        hum:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end))

atualizarInfiniteJumpBotao()

-- =======================================================
-- TP-PESSOA INTEGRADO
-- =======================================================

local TP_PESSOA_DISTANCIA = 4
local TPPessoaFrame = Instance.new("Frame", ScreenGui)
TPPessoaFrame.Name = "TPPessoaFrame"
TPPessoaFrame.AnchorPoint = Vector2.new(0.5, 0.5)
TPPessoaFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
TPPessoaFrame.Size = UDim2.new(0, 270, 0, 370)
TPPessoaFrame.BackgroundColor3 = Color3.fromRGB(13, 13, 18)
TPPessoaFrame.BorderSizePixel = 0
TPPessoaFrame.Visible = false
TPPessoaFrame.Active = true
TPPessoaFrame.Draggable = true
Instance.new("UICorner", TPPessoaFrame).CornerRadius = UDim.new(0, 10)
local TPPessoaStroke = Instance.new("UIStroke", TPPessoaFrame)
TPPessoaStroke.Color = Color3.fromRGB(0, 255, 200)
TPPessoaStroke.Thickness = 1.5
local TPPessoaScale = Instance.new("UIScale", TPPessoaFrame)
TPPessoaScale.Scale = escalaNovaUI()

local TPPessoaTop = Instance.new("Frame", TPPessoaFrame)
TPPessoaTop.Size = UDim2.new(1, 0, 0, 34)
TPPessoaTop.BackgroundColor3 = Color3.fromRGB(20, 20, 27)
TPPessoaTop.BorderSizePixel = 0
TPPessoaTop.Active = true
Instance.new("UICorner", TPPessoaTop).CornerRadius = UDim.new(0, 10)

local TPPessoaTitulo = Instance.new("TextLabel", TPPessoaTop)
TPPessoaTitulo.Position = UDim2.new(0, 10, 0, 0)
TPPessoaTitulo.Size = UDim2.new(1, -82, 1, 0)
TPPessoaTitulo.BackgroundTransparency = 1
TPPessoaTitulo.Text = "TP-PESSOA"
TPPessoaTitulo.Font = Enum.Font.Code
TPPessoaTitulo.TextSize = 13
TPPessoaTitulo.TextColor3 = Color3.fromRGB(0, 255, 200)
TPPessoaTitulo.TextXAlignment = Enum.TextXAlignment.Left

local TPPessoaMin = Instance.new("TextButton", TPPessoaTop)
TPPessoaMin.Position = UDim2.new(1, -72, 0, 0)
TPPessoaMin.Size = UDim2.new(0, 34, 1, 0)
TPPessoaMin.BackgroundTransparency = 1
TPPessoaMin.Text = "[-]"
TPPessoaMin.TextColor3 = Color3.fromRGB(0, 255, 200)
TPPessoaMin.Font = Enum.Font.GothamBold
TPPessoaMin.TextSize = 14

local TPPessoaClose = Instance.new("TextButton", TPPessoaTop)
TPPessoaClose.Position = UDim2.new(1, -38, 0, 0)
TPPessoaClose.Size = UDim2.new(0, 38, 1, 0)
TPPessoaClose.BackgroundTransparency = 1
TPPessoaClose.Text = "X"
TPPessoaClose.TextColor3 = Color3.fromRGB(255, 80, 80)
TPPessoaClose.Font = Enum.Font.GothamBold
TPPessoaClose.TextSize = 14

local TPPesquisa = Instance.new("TextBox", TPPessoaFrame)
TPPesquisa.Position = UDim2.new(0, 8, 0, 42)
TPPesquisa.Size = UDim2.new(1, -16, 0, 36)
TPPesquisa.BackgroundColor3 = Color3.fromRGB(23, 23, 30)
TPPesquisa.BorderSizePixel = 0
TPPesquisa.Text = ""
TPPesquisa.PlaceholderText = "Pesquisar jogador..."
TPPesquisa.PlaceholderColor3 = Color3.fromRGB(130, 130, 140)
TPPesquisa.TextColor3 = Color3.fromRGB(235, 235, 240)
TPPesquisa.ClearTextOnFocus = false
TPPesquisa.Font = Enum.Font.Code
TPPesquisa.TextSize = 11
Instance.new("UICorner", TPPesquisa).CornerRadius = UDim.new(0, 6)
local TPPesquisaStroke = Instance.new("UIStroke", TPPesquisa)
TPPesquisaStroke.Color = Color3.fromRGB(50, 80, 80)
TPPesquisaStroke.Thickness = 1

local TPDica = Instance.new("TextLabel", TPPessoaFrame)
TPDica.Position = UDim2.new(0, 10, 0, 80)
TPDica.Size = UDim2.new(1, -20, 0, 18)
TPDica.BackgroundTransparency = 1
TPDica.Text = "Digite 3 letras para localizar rapidamente"
TPDica.TextColor3 = Color3.fromRGB(120, 120, 135)
TPDica.Font = Enum.Font.Code
TPDica.TextSize = 9
TPDica.TextXAlignment = Enum.TextXAlignment.Left

local TPLista = Instance.new("ScrollingFrame", TPPessoaFrame)
TPLista.Position = UDim2.new(0, 8, 0, 102)
TPLista.Size = UDim2.new(1, -16, 1, -110)
TPLista.BackgroundColor3 = Color3.fromRGB(9, 9, 13)
TPLista.BorderSizePixel = 0
TPLista.ScrollBarThickness = 3
TPLista.AutomaticCanvasSize = Enum.AutomaticSize.Y
TPLista.CanvasSize = UDim2.new()
Instance.new("UICorner", TPLista).CornerRadius = UDim.new(0, 6)
local TPLayout = Instance.new("UIListLayout", TPLista)
TPLayout.Padding = UDim.new(0, 5)
TPLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
TPLayout.SortOrder = Enum.SortOrder.LayoutOrder
local TPPadding = Instance.new("UIPadding", TPLista)
TPPadding.PaddingTop = UDim.new(0, 5)
TPPadding.PaddingBottom = UDim.new(0, 5)

local tpPessoaMinimizado = false
local tpPessoaTamanhoNormal = TPPessoaFrame.Size

local function setTPPessoaMinimizado(valor)
    tpPessoaMinimizado = valor
    if valor then
        TPPessoaFrame.Size = UDim2.new(0, 76, 0, 40)
        TPPessoaTitulo.Visible = false
        TPPessoaClose.Visible = false
        TPPesquisa.Visible = false
        TPDica.Visible = false
        TPLista.Visible = false
        TPPessoaMin.Position = UDim2.new(0, 0, 0, 0)
        TPPessoaMin.Size = UDim2.new(1, 0, 1, 0)
        TPPessoaMin.Text = "[-]"
    else
        TPPessoaFrame.Size = tpPessoaTamanhoNormal
        TPPessoaTitulo.Visible = true
        TPPessoaClose.Visible = true
        TPPesquisa.Visible = true
        TPDica.Visible = true
        TPLista.Visible = true
        TPPessoaMin.Position = UDim2.new(1, -72, 0, 0)
        TPPessoaMin.Size = UDim2.new(0, 34, 1, 0)
        TPPessoaMin.Text = "[-]"
    end
end

TPPessoaMin.Activated:Connect(function()
    setTPPessoaMinimizado(not tpPessoaMinimizado)
end)

TPPessoaClose.Activated:Connect(function()
    TPPessoaFrame.Visible = false
    TPPesquisa:ReleaseFocus()
end)

local function textoPesquisaLimpo(texto)
    texto = string.lower(tostring(texto or ""))
    texto = string.gsub(texto, "^%s+", "")
    texto = string.gsub(texto, "%s+$", "")
    return texto
end

local function tpPassaPesquisa(player, pesquisa)
    if pesquisa == "" then return true end
    local nome = string.lower(player.Name)
    local display = string.lower(player.DisplayName)
    return string.find(nome, pesquisa, 1, true) ~= nil
        or string.find(display, pesquisa, 1, true) ~= nil
end

local function prioridadeCargo(player)
    if ehOwner(player) then return 1 end
    if ehAdministradorGeral(player) then return 2 end
    return 3
end

local function teleportarParaPessoa(alvo)
    if not alvo or alvo == localPlayer then return end
    local meuChar = localPlayer.Character
    local charAlvo = alvo.Character
    local hum = meuChar and meuChar:FindFirstChildOfClass("Humanoid")
    local rootAlvo = charAlvo and charAlvo:FindFirstChild("HumanoidRootPart")
    if not meuChar or not hum or hum.Health <= 0 or not rootAlvo then return end
    meuChar:PivotTo(rootAlvo.CFrame * CFrame.new(0, 0, TP_PESSOA_DISTANCIA))
end

local function limparTPLista()
    for _, obj in ipairs(TPLista:GetChildren()) do
        if obj:IsA("TextButton") or obj.Name == "TPResultadoVazio" then obj:Destroy() end
    end
end

local function atualizarTPLista()
    limparTPLista()
    local pesquisa = textoPesquisaLimpo(TPPesquisa.Text)
    local lista = {}
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= localPlayer and tpPassaPesquisa(p, pesquisa) then
            table.insert(lista, p)
        end
    end
    table.sort(lista, function(a, b)
        local pa, pb = prioridadeCargo(a), prioridadeCargo(b)
        if pa ~= pb then return pa < pb end
        return string.lower(a.Name) < string.lower(b.Name)
    end)

    if #lista == 0 then
        local vazio = Instance.new("TextLabel", TPLista)
        vazio.Name = "TPResultadoVazio"
        vazio.Size = UDim2.new(1, -10, 0, 40)
        vazio.BackgroundTransparency = 1
        vazio.Text = "Nenhum jogador encontrado"
        vazio.TextColor3 = Color3.fromRGB(130, 130, 140)
        vazio.Font = Enum.Font.Code
        vazio.TextSize = 10
        return
    end

    for _, p in ipairs(lista) do
        local b = Instance.new("TextButton", TPLista)
        b.Size = UDim2.new(1, -10, 0, 36)
        b.BorderSizePixel = 0
        b.Font = Enum.Font.Code
        b.TextSize = 10
        b.TextColor3 = Color3.fromRGB(255, 255, 255)
        b.AutoButtonColor = true
        b.RichText = false
        Instance.new("UICorner", b).CornerRadius = UDim.new(0, 6)

        if ehOwner(p) then
            b.Text = "🔨 [ DONO ] " .. p.Name
            if p.DisplayName ~= p.Name then b.Text = b.Text .. " • " .. p.DisplayName end
            b.BackgroundColor3 = Color3.fromRGB(24, 20, 22)
            local s = Instance.new("UIStroke", b)
            s.Color = Color3.fromRGB(255, 77, 90)
            s.Thickness = 1.4
            s.Transparency = 0.15
        elseif ehAdministradorGeral(p) then
            b.Text = "★ [ ADM ] " .. p.Name
            if p.DisplayName ~= p.Name then b.Text = b.Text .. " • " .. p.DisplayName end
            b.BackgroundColor3 = Color3.fromRGB(28, 15, 50)
            local s = Instance.new("UIStroke", b)
            s.Color = Color3.fromRGB(145, 95, 255)
            s.Thickness = 1.4
            s.Transparency = 0.12
        else
            b.Text = p.Name
            if p.DisplayName ~= p.Name then b.Text = b.Text .. " • " .. p.DisplayName end
            b.BackgroundColor3 = Color3.fromRGB(27, 27, 34)
            b.TextColor3 = Color3.fromRGB(225, 225, 230)
        end

        b.Activated:Connect(function()
            teleportarParaPessoa(p)
        end)
    end
end

ButtonTPPessoa.Activated:Connect(function()
    setTPPessoaMinimizado(false)
    TPPesquisa.Text = ""
    atualizarTPLista()
    TPPessoaFrame.Visible = true
end)

guardarConexao(TPPesquisa:GetPropertyChangedSignal("Text"):Connect(atualizarTPLista))

guardarConexao(Players.PlayerAdded:Connect(function()
    if TPPessoaFrame.Visible then task.defer(atualizarTPLista) end
end))

guardarConexao(Players.PlayerRemoving:Connect(function()
    if TPPessoaFrame.Visible then task.defer(atualizarTPLista) end
end))

-- =======================================================
-- ESP INTEGRADO AO MENU
-- =======================================================

local ESP_CONFIG = {
    Ativado = true,
    AbrirInfo = false,
    MostrarMeuESP = true,
    DistanciaMaxima = 1000,
    OffsetY = 3.2,
    Largura = 280,
    Altura = 40,
    FundoAltura = 25,
    Texto = 14,
    DistanciaPerigo = 40,
    VelocidadePerigo = 0.28,
    VelocidadeRastreio = 0.22,
    CorEB = Color3.fromRGB(255, 210, 60),
    CorCivil = Color3.fromRGB(0, 255, 200),
    CorCyber = Color3.fromRGB(255, 0, 200),
    CorPrisao = Color3.fromRGB(255, 130, 50),
    CorOutro = Color3.fromRGB(235, 235, 235),
    Fundo = Color3.fromRGB(10, 10, 15),
    CorOwner = Color3.fromRGB(255, 0, 0),
    TextoOwner = Color3.fromRGB(255, 65, 65),
    FundoOwner = Color3.fromRGB(55, 0, 0),
    CorAdmin = Color3.fromRGB(145, 95, 255),
    TextoAdmin = Color3.fromRGB(210, 190, 255),
    FundoAdmin = Color3.fromRGB(28, 15, 50),
    CorTrack1 = Color3.fromRGB(50, 255, 120),
    CorTrack2 = Color3.fromRGB(0, 170, 80),
}

local ButtonESPAtivo = criarBotaoExtra(Page_ESP, "[ ESP: ON ]", 5, Color3.fromRGB(15, 45, 25), Color3.fromRGB(50, 255, 130))
local ButtonESPInfo = criarBotaoExtra(Page_ESP, "[ INFO: OFF ]", 42, Color3.fromRGB(45, 20, 20), Color3.fromRGB(255, 100, 100))
local ButtonESPAlvos = criarBotaoExtra(Page_ESP, "[ ALVOS ]", 79, Color3.fromRGB(15, 40, 25), Color3.fromRGB(50, 255, 120))
local ButtonVoltarESP = criarBotaoExtra(Page_ESP, "[ < VOLTAR ]", 165, Color3.fromRGB(40, 40, 45), Color3.fromRGB(200, 200, 200))

local TituloESPAlvos = Instance.new("TextLabel", Page_ESPAlvos)
TituloESPAlvos.Size = UDim2.new(0, 190, 0, 20)
TituloESPAlvos.Position = UDim2.new(0, 15, 0, 2)
TituloESPAlvos.BackgroundTransparency = 1
TituloESPAlvos.Font = Enum.Font.Code
TituloESPAlvos.Text = "RASTREAR PLAYER"
TituloESPAlvos.TextColor3 = ESP_CONFIG.CorTrack1
TituloESPAlvos.TextSize = 10

local ListaESPAlvos = Instance.new("ScrollingFrame", Page_ESPAlvos)
ListaESPAlvos.Size = UDim2.new(0, 190, 0, 155)
ListaESPAlvos.Position = UDim2.new(0, 15, 0, 25)
ListaESPAlvos.BackgroundColor3 = Color3.fromRGB(12, 12, 17)
ListaESPAlvos.BorderSizePixel = 0
ListaESPAlvos.ScrollBarThickness = 3
ListaESPAlvos.AutomaticCanvasSize = Enum.AutomaticSize.Y
ListaESPAlvos.CanvasSize = UDim2.new()
Instance.new("UICorner", ListaESPAlvos).CornerRadius = UDim.new(0, 5)
local LayoutESPAlvos = Instance.new("UIListLayout", ListaESPAlvos)
LayoutESPAlvos.Padding = UDim.new(0, 4)
LayoutESPAlvos.HorizontalAlignment = Enum.HorizontalAlignment.Center
local PaddingESPAlvos = Instance.new("UIPadding", ListaESPAlvos)
PaddingESPAlvos.PaddingTop = UDim.new(0, 4)
PaddingESPAlvos.PaddingBottom = UDim.new(0, 4)
local ButtonVoltarESPAlvos = criarBotaoExtra(Page_ESPAlvos, "[ < VOLTAR ]", 188, Color3.fromRGB(40, 40, 45), Color3.fromRGB(200, 200, 200))

local ESP_Rastreados = {}
local ESPs = {}

local function espEscala()
    return escalaNovaUI()
end

local function espEquipe(player)
    return player.Team and player.Team.Name or "Sem equipe"
end

local function norm(s)
    return string.lower(tostring(s or ""))
end

local function espPatente(player)
    local p = player:GetAttribute("Patente")
    if p ~= nil then return tostring(p) end
    local infos = player:FindFirstChild("PlayerInfos")
    if infos then
        p = infos:GetAttribute("Patente")
        if p ~= nil then return tostring(p) end
        p = infos:GetAttribute("EB_Rank")
        if p ~= nil then return tostring(p) end
    end
    return "?"
end

local function espEBRank(player)
    local infos = player:FindFirstChild("PlayerInfos")
    if infos then
        local r = infos:GetAttribute("EB_Rank")
        if r ~= nil then return tostring(r) end
    end
    local r = player:GetAttribute("EB_Rank")
    return r ~= nil and tostring(r) or "?"
end

local function espTool(player)
    local c = player.Character
    if not c then return "Nenhuma" end
    for _, o in ipairs(c:GetChildren()) do
        if o:IsA("Tool") then return o.Name end
    end
    return "Nenhuma"
end

local function espTemAlgemas(player)
    local c = player.Character
    if not c then return false end
    for _, o in ipairs(c:GetChildren()) do
        if o:IsA("Tool") and string.find(norm(o.Name), "algema", 1, true) then return true end
    end
    return false
end

local function espCor(player)
    if ehOwner(player) then return ESP_CONFIG.CorOwner end
    if ehAdministradorGeral(player) then return ESP_CONFIG.CorAdmin end
    local e = norm(espEquipe(player))
    if string.find(e, "exército", 1, true) or string.find(e, "exercito", 1, true) or e == "eb" or string.find(e, "brasileiro", 1, true) then
        return ESP_CONFIG.CorEB
    elseif string.find(e, "civil", 1, true) then
        return ESP_CONFIG.CorCivil
    elseif string.find(e, "cyber", 1, true) then
        return ESP_CONFIG.CorCyber
    elseif string.find(e, "pris", 1, true) or string.find(e, "preso", 1, true) or string.find(e, "prision", 1, true) then
        return ESP_CONFIG.CorPrisao
    end
    return ESP_CONFIG.CorOutro
end

local function espDistancia(player)
    local a = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
    local b = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
    if not a or not b then return nil end
    return (a.Position - b.Position).Magnitude
end

-- INFO flutuante do ESP
local ESPInfoFrame = Instance.new("Frame", ScreenGui)
ESPInfoFrame.Name = "ESPPlayerInfo"
ESPInfoFrame.AnchorPoint = Vector2.new(0.5, 0.5)
ESPInfoFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
ESPInfoFrame.Size = UDim2.new(0, 300, 0, 315)
ESPInfoFrame.BackgroundColor3 = Color3.fromRGB(13, 13, 18)
ESPInfoFrame.BorderSizePixel = 0
ESPInfoFrame.Visible = false
ESPInfoFrame.Active = true
ESPInfoFrame.Draggable = true
Instance.new("UICorner", ESPInfoFrame).CornerRadius = UDim.new(0, 10)
local ESPInfoStroke = Instance.new("UIStroke", ESPInfoFrame)
ESPInfoStroke.Thickness = 1.5
local ESPInfoScale = Instance.new("UIScale", ESPInfoFrame)
ESPInfoScale.Scale = espEscala()

local ESPInfoTitulo = Instance.new("TextLabel", ESPInfoFrame)
ESPInfoTitulo.Position = UDim2.new(0, 10, 0, 0)
ESPInfoTitulo.Size = UDim2.new(1, -50, 0, 32)
ESPInfoTitulo.BackgroundTransparency = 1
ESPInfoTitulo.Font = Enum.Font.Code
ESPInfoTitulo.Text = "PLAYER INFO"
ESPInfoTitulo.TextSize = 13
ESPInfoTitulo.TextXAlignment = Enum.TextXAlignment.Left

local ESPInfoClose = Instance.new("TextButton", ESPInfoFrame)
ESPInfoClose.Position = UDim2.new(1, -38, 0, 0)
ESPInfoClose.Size = UDim2.new(0, 38, 0, 32)
ESPInfoClose.BackgroundTransparency = 1
ESPInfoClose.Text = "X"
ESPInfoClose.TextColor3 = Color3.fromRGB(255, 80, 80)
ESPInfoClose.Font = Enum.Font.GothamBold
ESPInfoClose.TextSize = 14

local ESPInfoScroll = Instance.new("ScrollingFrame", ESPInfoFrame)
ESPInfoScroll.Position = UDim2.new(0, 8, 0, 38)
ESPInfoScroll.Size = UDim2.new(1, -16, 1, -46)
ESPInfoScroll.BackgroundColor3 = Color3.fromRGB(9, 9, 13)
ESPInfoScroll.BorderSizePixel = 0
ESPInfoScroll.ScrollBarThickness = 3
ESPInfoScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
ESPInfoScroll.CanvasSize = UDim2.new()

local ESPInfoTexto = Instance.new("TextLabel", ESPInfoScroll)
ESPInfoTexto.Position = UDim2.new(0, 8, 0, 8)
ESPInfoTexto.Size = UDim2.new(1, -16, 0, 0)
ESPInfoTexto.AutomaticSize = Enum.AutomaticSize.Y
ESPInfoTexto.BackgroundTransparency = 1
ESPInfoTexto.Font = Enum.Font.Code
ESPInfoTexto.TextSize = 12
ESPInfoTexto.TextColor3 = Color3.fromRGB(225, 225, 225)
ESPInfoTexto.TextWrapped = true
ESPInfoTexto.TextXAlignment = Enum.TextXAlignment.Left
ESPInfoTexto.TextYAlignment = Enum.TextYAlignment.Top

local ESPPlayerSelecionado = nil
ESPInfoClose.Activated:Connect(function()
    ESPPlayerSelecionado = nil
    ESPInfoFrame.Visible = false
end)

local function espAdicionarAtributos(linhas, titulo, inst)
    table.insert(linhas, "")
    table.insert(linhas, "== " .. titulo .. " ==")
    if not inst then table.insert(linhas, "Indisponível"); return end
    local attrs = inst:GetAttributes()
    local nomes = {}
    for n in pairs(attrs) do table.insert(nomes, n) end
    table.sort(nomes)
    if #nomes == 0 then table.insert(linhas, "Nenhum atributo"); return end
    for _, n in ipairs(nomes) do
        local v = tostring(attrs[n])
        if #v > 70 then v = string.sub(v, 1, 67) .. "..." end
        table.insert(linhas, n .. ": " .. v)
    end
end

local function atualizarESPInfo()
    local p = ESPPlayerSelecionado
    if not p or p.Parent ~= Players then
        ESPPlayerSelecionado = nil
        ESPInfoFrame.Visible = false
        return
    end
    local d = espDistancia(p)
    local linhas = {}
    if ehOwner(p) then
        table.insert(linhas, "🔨 DONO DO SCRIPT • CRIADOR 🔨")
        table.insert(linhas, "")
    elseif ehAdministradorGeral(p) then
        table.insert(linhas, "★ ADMINISTRADOR GERAL ★")
        table.insert(linhas, "")
    end
    table.insert(linhas, "Nome: " .. p.Name)
    table.insert(linhas, "DisplayName: " .. p.DisplayName)
    table.insert(linhas, "UserId: " .. p.UserId)
    table.insert(linhas, "Equipe: " .. espEquipe(p))
    table.insert(linhas, "Patente: " .. espPatente(p))
    table.insert(linhas, "EB_Rank: " .. espEBRank(p))
    table.insert(linhas, "Distância: " .. (d and string.format("%.1f studs", d) or "?"))
    table.insert(linhas, "Tool equipada: " .. espTool(p))
    table.insert(linhas, "Rastreado: " .. (ESP_Rastreados[p.UserId] and "SIM" or "NÃO"))
    if d and d <= ESP_CONFIG.DistanciaPerigo and espTemAlgemas(p) then
        table.insert(linhas, "")
        table.insert(linhas, "⚠ PERIGO: ALGEMAS PRÓXIMAS ⚠")
    end
    espAdicionarAtributos(linhas, "ATRIBUTOS PLAYER", p)
    espAdicionarAtributos(linhas, "ATRIBUTOS CHARACTER", p.Character)
    ESPInfoTexto.Text = table.concat(linhas, "\n")
    ESPInfoTitulo.Text = "INFO • " .. p.Name
    local c = espCor(p)
    ESPInfoTitulo.TextColor3 = c
    ESPInfoStroke.Color = c
end

local function abrirESPInfo(p)
    if not ESP_CONFIG.AbrirInfo or not p then return end
    ESPPlayerSelecionado = p
    ESPInfoFrame.Visible = true
    atualizarESPInfo()
end

local function aplicarEscalaESP(esp)
    local s = espEscala()
    esp.Billboard.Size = UDim2.new(0, math.floor(ESP_CONFIG.Largura * s), 0, math.floor(ESP_CONFIG.Altura * s))
    esp.Fundo.Size = UDim2.new(1, 0, 0, math.floor(ESP_CONFIG.FundoAltura * s))
    if esp.Owner or esp.Admin then
        esp.Texto.TextSize = math.max(9, math.floor(11 * s))
    else
        esp.Texto.TextSize = math.max(10, math.floor(ESP_CONFIG.Texto * s))
    end
end

local function criarESPPlayer(player)
    if not player or ESPs[player] then return end
    if player == localPlayer and not ESP_CONFIG.MostrarMeuESP then return end

    local bill = Instance.new("BillboardGui", ScreenGui)
    bill.Name = "NoctivagaESP_" .. player.UserId
    bill.Size = UDim2.new(0, 280, 0, 40)
    bill.AlwaysOnTop = true
    bill.LightInfluence = 0
    bill.StudsOffset = Vector3.new(0, ESP_CONFIG.OffsetY, 0)

    local fundo = Instance.new("Frame", bill)
    fundo.AnchorPoint = Vector2.new(0.5, 0.5)
    fundo.Position = UDim2.new(0.5, 0, 0.5, 0)
    fundo.Size = UDim2.new(1, 0, 0, 25)
    fundo.BackgroundColor3 = ESP_CONFIG.Fundo
    fundo.BackgroundTransparency = 0.25
    fundo.BorderSizePixel = 0
    Instance.new("UICorner", fundo).CornerRadius = UDim.new(0, 5)

    local stroke = Instance.new("UIStroke", fundo)
    stroke.Thickness = 1
    stroke.Transparency = 0.15

    local track = Instance.new("UIStroke", fundo)
    track.Color = ESP_CONFIG.CorTrack1
    track.Thickness = 4
    track.Transparency = 1

    local texto = Instance.new("TextLabel", fundo)
    texto.Size = UDim2.new(1, -8, 1, 0)
    texto.Position = UDim2.new(0, 4, 0, 0)
    texto.BackgroundTransparency = 1
    texto.Font = Enum.Font.Code
    texto.TextSize = ESP_CONFIG.Texto
    texto.TextWrapped = true
    texto.TextStrokeColor3 = Color3.new(0, 0, 0)
    texto.TextXAlignment = Enum.TextXAlignment.Center
    texto.TextYAlignment = Enum.TextYAlignment.Center

    local esp = {
        Billboard = bill,
        Fundo = fundo,
        Stroke = stroke,
        TrackStroke = track,
        Texto = texto,
        Owner = ehOwner(player),
        Admin = ehAdministradorGeral(player),
        Highlight = nil,
    }
    ESPs[player] = esp
    aplicarEscalaESP(esp)
end

local function removerESPPlayer(player)
    local esp = ESPs[player]
    if not esp then return end
    if esp.Highlight then pcall(function() esp.Highlight:Destroy() end) end
    if esp.Billboard then pcall(function() esp.Billboard:Destroy() end) end
    ESPs[player] = nil
end

local function atualizarESPRastreio(player, esp)
    local ativo = ESP_Rastreados[player.UserId] == true
    local char = player.Character
    if not ativo then
        if esp.Highlight then esp.Highlight:Destroy(); esp.Highlight = nil end
        esp.TrackStroke.Transparency = 1
        return
    end
    if not char then return end
    if not esp.Highlight or esp.Highlight.Parent ~= char then
        if esp.Highlight then esp.Highlight:Destroy() end
        local h = Instance.new("Highlight")
        h.Name = "NoctivagaRastreio"
        h.Parent = char
        h.Adornee = char
        h.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        h.FillTransparency = 0.78
        h.OutlineTransparency = 0
        esp.Highlight = h
    end
    local fase = math.floor(os.clock() / ESP_CONFIG.VelocidadeRastreio) % 2
    local cor = fase == 0 and ESP_CONFIG.CorTrack1 or ESP_CONFIG.CorTrack2
    esp.Highlight.FillColor = cor
    esp.Highlight.OutlineColor = cor
    esp.Highlight.FillTransparency = fase == 0 and 0.72 or 0.88
    esp.TrackStroke.Color = cor
    esp.TrackStroke.Transparency = 0
end

local function atualizarESPPlayer(player, esp)
    local char = player.Character
    local head = char and char:FindFirstChild("Head")
    local root = char and char:FindFirstChild("HumanoidRootPart")
    local meuRoot = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not ESP_CONFIG.Ativado or not char or not head or not root or not meuRoot then
        esp.Billboard.Enabled = false
        if not ESP_CONFIG.Ativado then
            if esp.Highlight then esp.Highlight:Destroy(); esp.Highlight = nil end
            esp.TrackStroke.Transparency = 1
        end
        return
    end

    local distancia = player == localPlayer and 0 or (meuRoot.Position - root.Position).Magnitude
    esp.Billboard.Enabled = distancia <= ESP_CONFIG.DistanciaMaxima
    esp.Billboard.Adornee = head
    atualizarESPRastreio(player, esp)
    if distancia > ESP_CONFIG.DistanciaMaxima then return end

    if ehOwner(player) then
        esp.Texto.Text = "🔨 DONO DO SCRIPT • CRIADOR 🔨\n" .. player.Name .. " | Patente " .. espPatente(player) .. " | " .. string.format("%.0f studs", distancia)
        esp.Texto.TextColor3 = ESP_CONFIG.TextoOwner
        esp.Texto.TextStrokeTransparency = 0
        esp.Fundo.BackgroundColor3 = ESP_CONFIG.FundoOwner
        esp.Fundo.BackgroundTransparency = 0.10
        esp.Stroke.Color = ESP_CONFIG.CorOwner
        esp.Stroke.Thickness = 3
        esp.Stroke.Transparency = 0
        esp.Texto.TextTransparency = 0
        return
    end

    if ehAdministradorGeral(player) then
        esp.Texto.Text = "★ Administrador Geral ★\n" .. player.Name .. " | Patente " .. espPatente(player) .. " | " .. string.format("%.0f studs", distancia)
        esp.Texto.TextColor3 = ESP_CONFIG.TextoAdmin
        esp.Texto.TextStrokeTransparency = 0.05
        esp.Fundo.BackgroundColor3 = ESP_CONFIG.FundoAdmin
        esp.Fundo.BackgroundTransparency = 0.10
        esp.Stroke.Color = ESP_CONFIG.CorAdmin
        esp.Stroke.Thickness = 2.5
        esp.Stroke.Transparency = 0
        esp.Texto.TextTransparency = 0
        return
    end

    local perigo = distancia <= ESP_CONFIG.DistanciaPerigo and espTemAlgemas(player)
    local partes = {}
    if perigo then table.insert(partes, "⚠") end
    table.insert(partes, player.Name)
    table.insert(partes, "Patente " .. espPatente(player))
    table.insert(partes, string.format("%.0f studs", distancia))
    esp.Texto.Text = table.concat(partes, " | ")

    if perigo then
        local fase = math.floor(os.clock() / ESP_CONFIG.VelocidadePerigo) % 2
        local cor = fase == 0 and Color3.fromRGB(255, 210, 0) or Color3.fromRGB(255, 120, 0)
        esp.Texto.TextColor3 = cor
        esp.Texto.TextStrokeTransparency = 0.05
        esp.Stroke.Color = cor
        esp.Stroke.Thickness = 2.5
        esp.Stroke.Transparency = 0
        esp.Fundo.BackgroundColor3 = Color3.fromRGB(45, 28, 0)
        esp.Fundo.BackgroundTransparency = 0.15
        esp.Texto.TextTransparency = 0
        return
    end

    local cor = espCor(player)
    esp.Texto.TextColor3 = cor
    esp.Texto.TextStrokeTransparency = 0.35
    esp.Stroke.Color = cor
    esp.Stroke.Thickness = 1
    esp.Stroke.Transparency = 0.15
    esp.Fundo.BackgroundColor3 = ESP_CONFIG.Fundo
    local fade = math.clamp(distancia / 700, 0, 0.65)
    esp.Texto.TextTransparency = fade * 0.25
    esp.Fundo.BackgroundTransparency = math.clamp(0.25 + fade, 0, 0.9)
end

local function atualizarBotoesESP()
    if ESP_CONFIG.Ativado then
        ButtonESPAtivo.Text = "[ ESP: ON ]"
        ButtonESPAtivo.BackgroundColor3 = Color3.fromRGB(15, 45, 25)
        ButtonESPAtivo.TextColor3 = Color3.fromRGB(50, 255, 130)
    else
        ButtonESPAtivo.Text = "[ ESP: OFF ]"
        ButtonESPAtivo.BackgroundColor3 = Color3.fromRGB(45, 20, 20)
        ButtonESPAtivo.TextColor3 = Color3.fromRGB(255, 100, 100)
        ESPInfoFrame.Visible = false
        ESPPlayerSelecionado = nil
    end
    if ESP_CONFIG.AbrirInfo then
        ButtonESPInfo.Text = "[ INFO: ON ]"
        ButtonESPInfo.BackgroundColor3 = Color3.fromRGB(15, 45, 35)
        ButtonESPInfo.TextColor3 = Color3.fromRGB(0, 255, 200)
    else
        ButtonESPInfo.Text = "[ INFO: OFF ]"
        ButtonESPInfo.BackgroundColor3 = Color3.fromRGB(45, 20, 20)
        ButtonESPInfo.TextColor3 = Color3.fromRGB(255, 100, 100)
        ESPInfoFrame.Visible = false
        ESPPlayerSelecionado = nil
    end
end

local function atualizarListaESPAlvos()
    for _, o in ipairs(ListaESPAlvos:GetChildren()) do
        if o:IsA("TextButton") then o:Destroy() end
    end
    local lista = Players:GetPlayers()
    table.sort(lista, function(a, b) return string.lower(a.Name) < string.lower(b.Name) end)
    for _, p in ipairs(lista) do
        if p ~= localPlayer then
            local b = Instance.new("TextButton", ListaESPAlvos)
            b.Size = UDim2.new(1, -8, 0, 28)
            b.Font = Enum.Font.Code
            b.TextSize = 9
            Instance.new("UICorner", b).CornerRadius = UDim.new(0, 5)
            local function refresh()
                if ESP_Rastreados[p.UserId] then
                    b.Text = "[ ON ] " .. p.Name
                    b.BackgroundColor3 = Color3.fromRGB(15, 50, 25)
                    b.TextColor3 = ESP_CONFIG.CorTrack1
                else
                    b.Text = "[ OFF ] " .. p.Name
                    b.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
                    b.TextColor3 = Color3.fromRGB(210, 210, 210)
                end
            end
            b.Activated:Connect(function()
                ESP_Rastreados[p.UserId] = not ESP_Rastreados[p.UserId] or nil
                refresh()
            end)
            refresh()
        end
    end
end

ButtonExtrasESP.Activated:Connect(function()
    Page_Extras.Visible = false
    Page_ESPAlvos.Visible = false
    Page_ESP.Visible = true
    atualizarBotoesESP()
end)

ButtonVoltarESP.Activated:Connect(function()
    Page_ESP.Visible = false
    Page_Extras.Visible = true
end)

ButtonESPAtivo.Activated:Connect(function()
    ESP_CONFIG.Ativado = not ESP_CONFIG.Ativado
    atualizarBotoesESP()
end)

ButtonESPInfo.Activated:Connect(function()
    ESP_CONFIG.AbrirInfo = not ESP_CONFIG.AbrirInfo
    atualizarBotoesESP()
end)

ButtonESPAlvos.Activated:Connect(function()
    atualizarListaESPAlvos()
    Page_ESP.Visible = false
    Page_ESPAlvos.Visible = true
end)

ButtonVoltarESPAlvos.Activated:Connect(function()
    Page_ESPAlvos.Visible = false
    Page_ESP.Visible = true
end)

local function espJogadorNaTela(pos)
    local cam = Workspace.CurrentCamera
    if not cam then return nil end
    local s = espEscala()
    local largura = ESP_CONFIG.Largura * s
    local altura = math.max(30, ESP_CONFIG.Altura * s)
    local melhor, score = nil, math.huge
    for _, p in ipairs(Players:GetPlayers()) do
        local esp = ESPs[p]
        local head = p.Character and p.Character:FindFirstChild("Head")
        if esp and head and esp.Billboard.Enabled then
            local ponto, visivel = cam:WorldToScreenPoint(head.Position + Vector3.new(0, ESP_CONFIG.OffsetY, 0))
            if visivel and ponto.Z > 0 then
                local dx, dy = pos.X - ponto.X, pos.Y - ponto.Y
                if math.abs(dx) <= largura / 2 and math.abs(dy) <= altura / 2 + 12 then
                    local d = math.sqrt(dx * dx + dy * dy)
                    if d < score then score, melhor = d, p end
                end
            end
        end
    end
    return melhor
end

guardarConexao(UserInputService.InputBegan:Connect(function(input, processado)
    if processado or not ESP_CONFIG.Ativado or not ESP_CONFIG.AbrirInfo then return end
    local t = input.UserInputType
    if t ~= Enum.UserInputType.MouseButton1 and t ~= Enum.UserInputType.Touch then return end
    local p = espJogadorNaTela(input.Position)
    if p then abrirESPInfo(p) end
end))

for _, p in ipairs(Players:GetPlayers()) do criarESPPlayer(p) end

guardarConexao(Players.PlayerAdded:Connect(function(p)
    criarESPPlayer(p)
    if Page_ESPAlvos.Visible then task.defer(atualizarListaESPAlvos) end
end))

guardarConexao(Players.PlayerRemoving:Connect(function(p)
    ESP_Rastreados[p.UserId] = nil
    if ESPPlayerSelecionado == p then ESPPlayerSelecionado = nil; ESPInfoFrame.Visible = false end
    removerESPPlayer(p)
    if Page_ESPAlvos.Visible then task.defer(atualizarListaESPAlvos) end
end))

local ultimoInfoESP = 0
guardarConexao(RunService.RenderStepped:Connect(function()
    for _, p in ipairs(Players:GetPlayers()) do
        if not ESPs[p] then criarESPPlayer(p) end
        local esp = ESPs[p]
        if esp then atualizarESPPlayer(p, esp) end
    end
    if ESPInfoFrame.Visible and ESPPlayerSelecionado and os.clock() - ultimoInfoESP >= 0.2 then
        ultimoInfoESP = os.clock()
        atualizarESPInfo()
    end
end))

atualizarBotoesESP()

-- =======================================================
-- NOTIFICADOR AUTOMÁTICO DE DONO / ADMIN
-- =======================================================

local NotifContainer = Instance.new("Frame", ScreenGui)
NotifContainer.Name = "SpecialJoinNotifier"
NotifContainer.AnchorPoint = Vector2.new(1, 0)
NotifContainer.Position = UDim2.new(1, -12, 0, 12)
NotifContainer.Size = UDim2.new(0, 340, 0, 450)
NotifContainer.BackgroundTransparency = 1
NotifContainer.ZIndex = 100
local NotifScale = Instance.new("UIScale", NotifContainer)
NotifScale.Scale = escalaNovaUI()
local NotifLayout = Instance.new("UIListLayout", NotifContainer)
NotifLayout.Padding = UDim.new(0, 8)
NotifLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
NotifLayout.SortOrder = Enum.SortOrder.LayoutOrder
local notifContador = 0

local function criarNotificacaoEspecial(player, cargo, cor, fundo, icone, mensagem)
    notifContador += 1
    local card = Instance.new("Frame", NotifContainer)
    card.LayoutOrder = notifContador
    card.Size = UDim2.new(0, 325, 0, 76)
    card.Position = UDim2.new(0, 350, 0, 0)
    card.BackgroundColor3 = fundo
    card.BackgroundTransparency = 0.06
    card.BorderSizePixel = 0
    card.ClipsDescendants = true
    card.ZIndex = 101
    Instance.new("UICorner", card).CornerRadius = UDim.new(0, 10)
    local stroke = Instance.new("UIStroke", card)
    stroke.Color = cor
    stroke.Thickness = 2
    local barra = Instance.new("Frame", card)
    barra.Size = UDim2.new(0, 4, 1, 0)
    barra.BackgroundColor3 = cor
    barra.BorderSizePixel = 0
    barra.ZIndex = 102
    local icon = Instance.new("TextLabel", card)
    icon.Position = UDim2.new(0, 12, 0, 7)
    icon.Size = UDim2.new(0, 40, 0, 40)
    icon.BackgroundTransparency = 1
    icon.Text = icone
    icon.TextSize = 27
    icon.Font = Enum.Font.GothamBold
    icon.ZIndex = 102
    local titulo = Instance.new("TextLabel", card)
    titulo.Position = UDim2.new(0, 54, 0, 8)
    titulo.Size = UDim2.new(1, -64, 0, 20)
    titulo.BackgroundTransparency = 1
    titulo.Text = cargo
    titulo.TextColor3 = cor
    titulo.Font = Enum.Font.GothamBold
    titulo.TextSize = 13
    titulo.TextXAlignment = Enum.TextXAlignment.Left
    titulo.ZIndex = 102
    local nome = Instance.new("TextLabel", card)
    nome.Position = UDim2.new(0, 54, 0, 29)
    nome.Size = UDim2.new(1, -64, 0, 18)
    nome.BackgroundTransparency = 1
    nome.Text = player.DisplayName .. " (@" .. player.Name .. ")"
    nome.TextColor3 = Color3.fromRGB(240, 240, 245)
    nome.Font = Enum.Font.Code
    nome.TextSize = 11
    nome.TextXAlignment = Enum.TextXAlignment.Left
    nome.ZIndex = 102
    local msg = Instance.new("TextLabel", card)
    msg.Position = UDim2.new(0, 14, 0, 51)
    msg.Size = UDim2.new(1, -28, 0, 18)
    msg.BackgroundTransparency = 1
    msg.Text = mensagem
    msg.TextColor3 = Color3.fromRGB(200, 200, 210)
    msg.Font = Enum.Font.Code
    msg.TextSize = 10
    msg.TextXAlignment = Enum.TextXAlignment.Left
    msg.ZIndex = 102

    TweenService:Create(card, TweenInfo.new(0.38, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(0, 0, 0, 0)}):Play()
    task.spawn(function()
        for _ = 1, 3 do
            TweenService:Create(stroke, TweenInfo.new(0.28), {Transparency = 0.55}):Play()
            task.wait(0.28)
            TweenService:Create(stroke, TweenInfo.new(0.28), {Transparency = 0}):Play()
            task.wait(0.28)
        end
    end)
    task.delay(6, function()
        if not card.Parent then return end
        TweenService:Create(card, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {Position = UDim2.new(0, 360, 0, 0), BackgroundTransparency = 1}):Play()
        TweenService:Create(stroke, TweenInfo.new(0.25), {Transparency = 1}):Play()
        TweenService:Create(titulo, TweenInfo.new(0.25), {TextTransparency = 1}):Play()
        TweenService:Create(nome, TweenInfo.new(0.25), {TextTransparency = 1}):Play()
        TweenService:Create(msg, TweenInfo.new(0.25), {TextTransparency = 1}):Play()
        TweenService:Create(icon, TweenInfo.new(0.25), {TextTransparency = 1}):Play()
        task.wait(0.4)
        if card then card:Destroy() end
    end)
end

local function verificarCargoEspecial(player, existente)
    if ehOwner(player) then
        criarNotificacaoEspecial(
            player,
            "🔨 DONO DO SCRIPT • CRIADOR",
            Color3.fromRGB(255, 45, 45),
            Color3.fromRGB(50, 8, 10),
            "🔨",
            existente and "O Dono do Script está no servidor." or "O Dono do Script entrou no servidor!"
        )
    elseif ehAdministradorGeral(player) then
        criarNotificacaoEspecial(
            player,
            "★ ADMINISTRADOR GERAL ★",
            Color3.fromRGB(145, 95, 255),
            Color3.fromRGB(28, 15, 50),
            "★",
            existente and "Um Administrador Geral está no servidor." or "Um Administrador Geral entrou no servidor!"
        )
    end
end

guardarConexao(Players.PlayerAdded:Connect(function(player)
    verificarCargoEspecial(player, false)
end))

-- Também avisa se o cargo já estiver presente quando o HUB for executado.
task.delay(1, function()
    if not ScreenGui.Parent then return end
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= localPlayer then
            verificarCargoEspecial(p, true)
            task.wait(0.25)
        end
    end
end)

-- =======================================================
-- ATUALIZAÇÃO DE ESCALA DAS NOVAS INTERFACES
-- =======================================================

local function atualizarEscalasNovas()
    local s = escalaNovaUI()
    MiniTPScale.Scale = s
    TPPessoaScale.Scale = s
    ESPInfoScale.Scale = s
    NotifScale.Scale = s
    for _, esp in pairs(ESPs) do aplicarEscalaESP(esp) end
end

local camNovas = Workspace.CurrentCamera
if camNovas then
    guardarConexao(camNovas:GetPropertyChangedSignal("ViewportSize"):Connect(atualizarEscalasNovas))
end
atualizarEscalasNovas()

-- =======================================================
-- LIMPEZA DAS IMPLEMENTAÇÕES NOVAS
-- =======================================================

ScreenGui.Destroying:Connect(function()
    miniTPAtivo = false
    infiniteJumpAtivo = false
    ESP_CONFIG.Ativado = false
    for _, c in ipairs(NovasConexoes) do
        pcall(function() c:Disconnect() end)
    end
    for p in pairs(ESPs) do
        removerESPPlayer(p)
    end
end)


-- =======================================================

-- LIMPEZA DAS NOVAS CONEXÕES AO FECHAR O HUB

-- =======================================================

ScreenGui.Destroying:Connect(function()

    desligarAntiAlgemaOriginal()

    desligarAntiAlgemaEquipada()

    desligarAntiAlgemaForte()

    protecaoPlayersAtivada = false

    if conexaoProtecaoPlayers then

        conexaoProtecaoPlayers:Disconnect()

        conexaoProtecaoPlayers = nil

    end

    getgenv().PlayerProtectionConnection = nil

end)

print("Noctivaga Hub V2 rodando!")
