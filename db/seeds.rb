Child.destroy_all
Marriage.destroy_all
Male.destroy_all
Female.destroy_all

chris = Male.new(
  first_name: "Chris",
  last_name: "Lorbert",
  birthday: Date.new(1986, 02, 13),
  remote_photo_url: "https://scontent-nrt1-1.xx.fbcdn.net/v/t1.0-9/541649_10101336517624920_1830560920_n.jpg?_nc_cat=104&_nc_ht=scontent-nrt1-1.xx&oh=bb6eed1025d816de1d8b1c409e1009ed&oe=5D46E49B"
)
chris.save!

ginny = Female.new(
  first_name: "Ginny",
  last_name: "McKenna",
  birthday: Date.new(1985, 11, 05),
  remote_photo_url: "https://scontent-nrt1-1.xx.fbcdn.net/v/t1.0-9/55576758_10107138141264640_1416685436348137472_n.jpg?_nc_cat=110&_nc_ht=scontent-nrt1-1.xx&oh=5b63a681f0e129b19cd34ab19c11decb&oe=5D3DEB94"
)
ginny.save!

chris_ginny = Marriage.new(
  male: chris,
  female: ginny,
  anniversary: Date.new(2014, 05, 22),
  remote_photo_url: "https://scontent-nrt1-1.xx.fbcdn.net/v/t1.0-9/54257146_10107103659775820_5541410184468889600_o.jpg?_nc_cat=108&_nc_ht=scontent-nrt1-1.xx&oh=c676ec3386b93cabbc5def7393a02033&oe=5D3BD081"
)
chris_ginny.save!

cian = Child.new(
  first_name: "Cian",
  middle_name: "Grady",
  birthday: Date.new(2019, 03, 15),
  marriage: chris_ginny,
  remote_photo_url: "https://scontent-nrt1-1.xx.fbcdn.net/v/t1.0-9/53835422_10107103408978420_4360084781233340416_o.jpg?_nc_cat=104&_nc_ht=scontent-nrt1-1.xx&oh=2e9b18b0ce668e0ff4d8ccf67cf5da54&oe=5D425287"
)
cian.save!
