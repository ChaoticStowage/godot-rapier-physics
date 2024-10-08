@tool
extends EditorPlugin

func _enter_tree():
	if Engine.is_editor_hint():
		Engine.set_meta("Rapier3DEditorPlugin", self)
		var update_tool: Node = load("res://addons/godot-rapier3d/generated/updater/download_update_panel.tscn").instantiate()
		Engine.get_main_loop().root.call_deferred("add_child", update_tool)

func _exit_tree():
	if Engine.has_meta("Rapier3DEditorPlugin"):
		Engine.remove_meta("Rapier3DEditorPlugin")
