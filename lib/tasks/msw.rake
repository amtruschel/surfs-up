task run: :environment do
  the_wall = Msw.new
  the_wall.get_surf(369)
  binding.pry
end
