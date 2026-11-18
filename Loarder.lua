PESQUISA DE REMOTES - JOGO DE PETS (ROBLOX)

Ordem de uso dos scripts:
01 - lista todos os remotes e itens do jogador
02 - spy v1 (namecall, sem retorno) - NAO captou as RemoteFunction
03 - spy v2 (namecall, com retorno) - tambem nao captou
04 - spy v3 (hookfunction) - FUNCIONOU, use este
05 - remotes da pasta Remotes + atributos de um pet
06 - salvar/copiar posicao (coordenadas)

O que foi descoberto (todos em ReplicatedStorage.Remotes, quase todos RemoteFunction):

ARREMESSO
  Throw_Start()                 -> {Ok, Power, FoodIndex, MaxArea, ...}
  Throw_Resolve(precisao 0..1)  -> {Ok, Income, Bonus (= precisao x 20), FlightTime=6, Rarity, DisplayName, ...}
  Throw_Complete()              -> {Ok, AnimalId}
  Plot_ReleaseTool({AnimalId})  -> {Ok, Released}
  Throw_Cancel, Throw_UseSuper
  Eventos do servidor: Throw_MeterStarted, Throw_Revealed (sem argumentos)

VENDA / PLOT
  Plot_SellAnimal(AnimalId)     -> {Ok, Money}
  Plot_EquipBest()              -> {Ok, Placed, Count, Removed}
  Plot_SellAll, Sell_Protected, Plot_PickUpAnimal, Offline_Claim

TREINO
  Training_Start()              -> {Ok, PlotIndex, RigName, BarPosition, StartTime}
  Training_TapBonus(contador 1,2,3...) -> {Ok, Duration=0.5, ExtraReps=1, Start}
  Training_Stop()               -> {Ok}
  Evento do servidor: Training_Bonus

COORDENADAS
  Ponto de arremesso (igual para todos): (0, 5.3, -45)
  Rig de treino plot 1: (-15.10, 11.05, -6.97)
  Plots ficam em X = -100, -50, 0, 50, 100
  Offset do treino em relacao a BarPosition: (0.9, 0.7, 1.03)

OBSERVACAO: o script que gerou o dump do Workspace (estrutura do mapa) nao esta

nesta pasta porque nao foi enviado aqui na conversa.
