def setup
  VizOne.all.destroy_all
end

def create
  50.times do
    VizOne.create!(
      measure: Faker::Book.author,
      year: [2015, 2016, 2017, 2018].sample,
      start_year: [2015, 2016, 2017, 2018].sample,
      ethnicity: ['White', 'Asian or Asian British', 'Black or Black British', 'Mixed', 'Other Ethnic Groups'].sample,
      sex: ['Male', 'Female'].sample,
      diabetes_type: ['Type 1', 'Type 2', 'GDM', 'Other'].sample,
      deprivation: rand(10),
      ccg: ['Southwark', 'Lambeth'].sample,
      baseline_group: ['ckd stage 1', 'ckd stage 2', 'ckd stage 3'].sample,
      measure_result: (rand * 100).round(1),
    )
  end

end

setup
create