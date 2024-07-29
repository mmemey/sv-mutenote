function getClientInfo() {

return {

"name": "Mute Selected Notes",
"author": "chatgpt lmfao",
"versionNumber": 1,
"minEditorVersion": 65537

};

}

function main() {
var selection = SV.getMainEditor().getSelection();
var notes = selection.getSelectedNotes();
for (var i = 0; i < notes.length; i++) {
var note = notes[i];
var phonemes = note.getPhonemes();
if (phonemes !== null && phonemes !== undefined) {
if (!phonemes.startsWith("sil")) {
note.setPhonemes("sil " + phonemes);

}

} else {

note.setPhonemes("sil");

}

}

SV.finish();

}
