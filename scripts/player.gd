extends Node2D

const MAX_HEALTH: int = 10
var heatlh: int = 10

func add_health_points(difference: int):
	heatlh += difference
	heatlh = clamp(heatlh,0,MAX_HEALTH)
	update_health_label()

func update_health_label():
	$HealthLabel.text = str(heatlh) + "/" + str(MAX_HEALTH)
