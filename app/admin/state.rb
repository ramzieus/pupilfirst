ActiveAdmin.register State do
  controller do
    include DisableIntercom
  end

  menu parent: 'Admissions'
  filter :name

  permit_params :name, :location

  index do
    selectable_column

    column :name

    column :colleges do |state|
      state.colleges.count
    end

    column :universities do |state|
      state.universities.count
    end

    actions
  end
end
