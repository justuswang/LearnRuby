class OrangeTree
  def initialize
    puts "You have an orange tree now!"
    @height = 0.5
    @orange_count = 0
    @age = 0
    @max_age = 10
    @fruit_age = 2
  end

  def height
    if @age >= @max_age
      puts "The orange tree is died!"
    else
      puts "Your orange tree is #{@height}m now!"
    end
  end

  def one_year_passes
    @orange_count = 0
    @height += 0.5
    @age += 1
    if @age >= @fruit_age and @age < @max_age
      @orange_count = 10 * @age
    end

    if @age >= @max_age
      puts "The orange tree is died!"
      @orange_count = 0
    else
      puts "One year passes!"
    end
  end

  def count_the_oranges
    if @age >= @max_age
      puts "The orange tree is died!"
    else
      puts "You have #{@orange_count} oranges on the tree!"
    end
  end

  def pick_an_orange
    if @age >= @max_age
      puts "The orange tree is died!"
    else
      if @orange_count > 0
        @orange_count -= 1
        puts "Pick an orange... Oh, delicious!"
      else
        puts "Oh, there are no more oranges!"
      end
    end
  end
end

orange_tree = OrangeTree.new
orange_tree.one_year_passes
orange_tree.height
orange_tree.count_the_oranges
orange_tree.one_year_passes
orange_tree.height
orange_tree.count_the_oranges
orange_tree.one_year_passes
orange_tree.height
orange_tree.count_the_oranges
orange_tree.one_year_passes
orange_tree.height
orange_tree.count_the_oranges
orange_tree.one_year_passes
orange_tree.height
orange_tree.count_the_oranges
orange_tree.one_year_passes
orange_tree.height
orange_tree.count_the_oranges
orange_tree.one_year_passes
orange_tree.height
orange_tree.count_the_oranges
orange_tree.one_year_passes
orange_tree.height
orange_tree.count_the_oranges
orange_tree.pick_an_orange
orange_tree.pick_an_orange
orange_tree.pick_an_orange
orange_tree.count_the_oranges
orange_tree.one_year_passes
orange_tree.height
orange_tree.count_the_oranges
orange_tree.one_year_passes
orange_tree.one_year_passes
orange_tree.height
orange_tree.count_the_oranges
orange_tree.pick_an_orange
orange_tree.count_the_oranges
