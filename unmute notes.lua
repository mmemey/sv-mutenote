function getClientInfo() {

return {

"name": "UNMUTE SELECTED NOTES",
"author": "chatgpt",
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
if (phonemes.startsWith("sil")) {

// Remove "sil" from the beginning of the phonemes string

var newPhonemes = phonemes.replace(/^sil\s*/, "");

note.setPhonemes(newPhonemes);

}

}

}

SV.finish();

}
