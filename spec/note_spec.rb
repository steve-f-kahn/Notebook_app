require "note"

describe Note do
  it "Stores a note and can be read" do
    note = Note.new("This is a note")
    expect(note.read).to eq "This is a note"
  end
end
