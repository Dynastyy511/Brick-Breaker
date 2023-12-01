extends CanvasLayer

class_name UI

@onready var lifes_label = %LifesLabel
@onready var game_lost_container = $GameLostContainer
@onready var level_won_container = $LevelWonContainer

# var Audios
@onready var background_music = $"../MusicPack/BackgroundMusic"
@onready var fail_audio = $"../MusicPack/FailAudio"

func set_lifes(lifes: int):
	lifes_label.text = "Lifes: %d" % lifes

func game_over():
	game_lost_container.show()
	fail_audio.play()

func _on_game_lost_button_pressed():
	get_tree().reload_current_scene()

func on_level_won():
	level_won_container.show()
	
func _on_level_won_button_pressed():
	LevelDefinitions.current_level = 2
	get_tree().reload_current_scene()
