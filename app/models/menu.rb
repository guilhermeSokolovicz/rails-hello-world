class Menu
  def initialize(name, path, path_name, children = nil)
    @name = name
    @path = path
    @path_name = path_name
    @children = children
  end

  def has_children?
    @children.present? && @children.size > 0
  end

  def active?(active_path)
    return false if active_path.nil?

    active_path.split(';').include?(path_name)
  end

  def name
    @name
  end

  def path
    @path
  end

  def path_name
    @path_name
  end

  def children
    @children
  end
end