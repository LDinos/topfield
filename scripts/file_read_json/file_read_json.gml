/// @function script()
/// @description default
/// @param {type} param first parameter
function file_read_json(file_path){
	var json = ""
	var f = file_text_open_read(file_path)
	while(!file_text_eof(f)) {
		json += file_text_readln(f)
	}
	file_text_close(f)
	return json_parse(json)
}