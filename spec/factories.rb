# FactoryBot.define do
#   factory(:product) do
#     name('Lasange')
#   end
# end

FactoryBot.define do
  factory(:user) do
    password('password')
    email('to@example.org')
  end
end
