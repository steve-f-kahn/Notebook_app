require './lib/note.rb'
require './lib/notebook.rb'

note = Note.new("This is a note")
notebook = Notebook.new
notebook.addnote(note)
