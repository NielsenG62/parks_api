Rails.application.routes.draw do
  resourses :parks do
    resourses :climbs
  end
end
