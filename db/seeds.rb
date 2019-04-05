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

tom = Male.new(
  first_name: "Tom",
  last_name: "Bougher",
  birthday: Date.new(1982, 02, 06),
  remote_photo_url: "https://scontent-nrt1-1.xx.fbcdn.net/v/t1.0-9/27657587_10109651926937978_8803482461842541315_n.jpg?_nc_cat=109&_nc_ht=scontent-nrt1-1.xx&oh=3e6cc257c7eeed99351115452ff1391c&oe=5D01DF00"
)
tom.save!

tricia = Female.new(
  first_name: "Tricia",
  last_name: "Bougher",
  birthday: Date.new(1982, 11, 05),
  remote_photo_url: "https://scontent-nrt1-1.xx.fbcdn.net/v/t31.0-8/21200757_10155168375988999_1044660095596661545_o.jpg?_nc_cat=109&_nc_ht=scontent-nrt1-1.xx&oh=54c645ac42b11f81b3d4babbb6934d61&oe=5D459EF9"
)
tricia.save!

tom_tricia = Marriage.new(
  male: tom,
  female: tricia,
  anniversary: Date.new(2009, 08, 15),
  remote_photo_url: "https://scontent-nrt1-1.xx.fbcdn.net/v/t31.0-8/12182485_10100887317734995_4251685200022136235_o.jpg?_nc_cat=103&_nc_ht=scontent-nrt1-1.xx&oh=51d6607744618a18ed00137bd2692d8c&oe=5D3AF486"
)
tom_tricia.save!

lainey = Child.new(
  first_name: "Lainey (Alaina)",
  middle_name: "Marie",
  birthday: Date.new(2012, 11, 13),
  marriage: tom_tricia,
  remote_photo_url: "https://scontent-nrt1-1.xx.fbcdn.net/v/t1.0-9/35329038_10155811343352607_4895463686019219456_o.jpg?_nc_cat=101&_nc_ht=scontent-nrt1-1.xx&oh=66f50bae5ce1e0541f73fb39130fedcd&oe=5D485E5E"
)
lainey.save!

kara = Child.new(
  first_name: "Kara",
  middle_name: "Louise",
  birthday: Date.new(2017, 01, 19),
  marriage: tom_tricia,
  remote_photo_url: "https://scontent-nrt1-1.xx.fbcdn.net/v/t1.0-9/38792742_10110477309624458_7994790427016298496_n.jpg?_nc_cat=103&_nc_ht=scontent-nrt1-1.xx&oh=9246089b7315578691714849ef84fdae&oe=5D4910D0"
)
kara.save!


