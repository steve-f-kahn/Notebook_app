require 'notebook'

describe Notebook do

  let(:note) { double(:note) }

  it "adds a note with a tag to a notebook" do
    notebook = Notebook.new
    notebook.addnote(note, "test")
  end

  it "Raises an error if no tag is included when adding a note" do
    notebook = Notebook.new
    expect{notebook.addnote(note)}.to raise_error("No tag included to note")
  end

  it "Returns a note when searched for by tag" do
    notebook = Notebook.new
    notebook.addnote(note, "test")
    expect(notebook.search("test")).to eq note
  end 
end
