class Notebook
  def initialize
    @notes = {}
  end
  def addnote(note, tag = nil)
    raise "No tag included to note" if tag.nil?
    @notes[tag.to_sym] = note
  end

  def search(tag)
    @notes[tag.to_sym]
  end
end
