Upload.delete_all
User.delete_all
Type.delete_all

up1 = Upload.create(filename: "thing1.txt", status: true)
up2 = Upload.create(filename: "thing2.txt", status: true)

type1 = Type.create(name: "Identity verification", description: "Driver's License, Birth Certificate, Military ID, US Passport, Social Security Card, Certificate of Citizenship or Certificate of Nationalization", quantity: 2)

type2 = Type.create(name: "Income verification", description: "Paystub within the last 30 days", quantity: 1)

type3 = Type.create(name: "Address verification", description: "Utility bill, bank statement or credit card bill", quantity: 1)

up1.type = type1

up2.type = type2