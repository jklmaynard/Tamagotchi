class Tamagotchi

  define_method(:initialize) do |name|
    @name = name
    @food_level = 10
    @sleep_level = 10
    @activity_level = 10


  end

  define_method(:time_passes) do
    @food_level = @food_level-2
    @sleep_level = @sleep_level-2
    @activity_level = @activity_level-3
  end

#name properties

  define_method(:name) do
    @name
  end

#food methods

  define_method(:food_level) do
    @food_level
  end

  define_method(:feeding_time) do
    @food_level = 10
    "Yum-yum"
  end

  define_method(:is_alive?) do
    if @food_level>=1
      "still kicking"
    else
      "totally dead"
    end
  end

  define_method(:is_dead?) do
    if @food_level>=1
      "not yet"
    else
      "as a doornail"
    end
  end

#sleep methods

  define_method(:sleep_level) do
    @sleep_level
  end

  define_method(:bed_time) do
    @sleep_level = 10
  end

  define_method(:no_sleep?) do
    if @sleep_level == 10
      "good to go!"
    elsif @sleep_level<=5
      "yaaawwwn"
    else @sleep_level<=1
      "sleep depravity led to madness and your Tamagotchi has eaten you."
    end
  end

#activity methods

  define_method(:activity_level) do
    @activity_level
  end

  define_method(:take_a_walk) do
    @activity_level = 10
  end





end
