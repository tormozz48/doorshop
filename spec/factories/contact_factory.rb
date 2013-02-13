FactoryGirl.define do
  factory :contact1, class: Contact do
    name 'Ivan Egorov'
    email 'ivan.egorov@gmail.com'
    skype 'ivanegorov_skypename'
    phone1 '1234-567-890'
    phone2 '0987-654-321'
    address 'Simferopol Kuibisheva street 31 58'
  end
end