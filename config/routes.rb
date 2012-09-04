PhraseSimpleForm::Application.routes.draw do
  root to: "basic#edit"
  put "basic/:id", to: "basic#update", as: :basic_edit
end
