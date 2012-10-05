CSVSimpleForm::Application.routes.draw do
  root to: "basic#edit"
  post "basic", to: "basic#update", as: :basic_update
end
