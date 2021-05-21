class Character
  attr_reader :name, :level, :hp, :offense, :defense
  attr_writer :hp
  # 「:hp」は attr_accessor でまとめてもよかったのですが、
  # 学習のためにあえて attr_reader と attr_writer で記述しています。

  def initialize(brave_params)
    @name = brave_params[:name]
    @level = brave_params[:level]
    @hp = brave_params[:hp]
    @offense = brave_params[:offense]
    @defense = brave_params[:defense]
  end
end
