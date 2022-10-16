extends CanvasLayer

var fichaFrente := preload("res://assets/ficha frente.png");
var fichaVerso := preload("res://assets/ficha verso.png");
var varFor:= 1;
var varDex:= 1;
var varCon:= 1;
var varInt:= 1;
var varSab:= 1;
var varCar:= 1;

func _ready():
	for child in get_children():
		if child.get_child_count() > 0 && child.get_groups().size() > 0:
			for gChild in child.get_children():
				for group in child.get_groups():
					gChild.add_to_group(group)

func virarFicha():
	if($fichaBG.get_texture() == fichaFrente):
	#{
		$fichaBG.set_texture(fichaVerso)	
		get_tree().call_group_flags(SceneTree.GROUP_CALL_REALTIME, "charSheetFront", "hide")
		get_tree().call_group_flags(SceneTree.GROUP_CALL_REALTIME, "charSheetBack", "show")
	#}
	else:
		$fichaBG.set_texture(fichaFrente)
		get_tree().call_group_flags(SceneTree.GROUP_CALL_REALTIME, "charSheetBack", "hide")
		get_tree().call_group_flags(SceneTree.GROUP_CALL_REALTIME, "charSheetFront", "show")


func alteraFor(increase = true):
	varFor = varFor + 1 if (increase==true) else varFor - 1
	$nodeFor/forLabel.text = str(varFor)

func alteraDex(increase = true):
	varDex = varDex + 1 if (increase==true) else varDex - 1
	$nodeDex/dexLabel.text = str(varDex)

func alteraCon(increase = true):
	varCon = varCon + 1 if (increase==true) else varCon - 1
	$nodeCon/conLabel.text = str(varCon)

func alteraInt(increase = true):
	varInt = varInt + 1 if (increase==true) else varInt - 1
	$nodeInt/intLabel.text = str(varInt)
	
func alteraSab(increase = true):
	varSab = varSab + 1 if (increase==true) else varSab - 1
	$nodeSab/sabLabel.text = str(varSab)

func alteraCar(increase = true):
	varCar = varCar + 1 if (increase==true) else varCar - 1
	$nodeCar/carLabel.text = str(varCar)
