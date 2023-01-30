# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
m1 = Merchant.create(name: 'Treutel, Schumm and Fadel', email: 'info@treutel-schumm-and-fadel.com', cif: 'B611111111')
m2 = Merchant.create(name: 'Windler and Sons', email: 'info@windler-and-sons.com', cif: 'B611111112')
m3 = Merchant.create(name: 'Mraz and Sons', email: 'info@mraz-and-sons.com', cif: 'B611111113')
m4 = Merchant.create(name: 'Cummerata LLC', email: 'info@cummerata-llc.com', cif: 'B611111114')



s1 = Shopper.create(name: 'Olive Thompson', email: 'olive.thompson@not_gmail.com', nif: '411111111Z')
s2 = Shopper.create(name: 'Virgen Anderson', email: 'virgen.anderson@not_gmail.com', nif: '411111112Z')
s3 = Shopper.create(name: 'Reagan Auer', email: 'reagan.auer@not_gmail.com', nif: '411111113Z')
s4 = Shopper.create(name: 'Shanelle Satterfield', email: 'shanelle.satterfield@not_gmail.com', nif: '411111114Z')


m1.orders.create(amount: 61.74, completed_at: Time.now, shopper_id: s1.id)
m2.orders.create(amount: 293.08, completed_at: Time.now, shopper_id: s2.id)
m3.orders.create(amount: 373.33, completed_at: Time.now, shopper_id: s3.id)
m4.orders.create(amount: 60.48, completed_at: Time.now, shopper_id: s4.id)
