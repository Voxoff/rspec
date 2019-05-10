class Coffee
  def ingredients
    @ignredients ||= []
  end

  def add(ingredient)
    ingredients << ingredient
  end

  def price
    1.00 + (0.25 * ingredients.size)
  end
  def color
    ingredients.include?(:milk) ? :light : :dark
  end
end

RSpec.describe 'A cup of coffee' do 
  let(:coffee) {Coffee.new }
  it 'costs $1' do
    expect(coffee.price).to eq(1.00)
  end

   context 'withmilk' do 
     before { coffee.add :milk }
      it 'costs $1.25' do
        expect(coffee.price).to eq(1.25)
       end
       it 'is lighter' do
        pending 'Color todo'
        expect(coffee.color).to be(:light)
       end
    end
   end
