class Character
  attr_reader :name, :level, :hp, :offense, :defense
  attr_writer :hp
  # 「:hp」は attr_accessor でまとめてもよかったのですが、
  # 学習のためにあえて attr_reader と attr_writer で記述しています。

  def initialize(character_params)
    @name = character_params[:name]
    @level = character_params[:level]
    @hp = character_params[:hp]
    @offense = character_params[:offense]
    @defense = character_params[:defense]
  end
end
