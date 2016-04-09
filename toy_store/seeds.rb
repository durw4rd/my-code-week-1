require '/toys_rw_file'

toys = []


toys << { name: "Barbie", description: "Special 'stripper' eddition.", id: 0,
quantity: 5 },
toys << { name: "Teddybear", description: "With adorable set of hand weapons.", id: 1,
quantity: 5 },
toys << { name: "Barbie", description: "Now with innocent paparazzi camera as part of the set.", id: 2,
quantity: 3 },
toys << { name: "Barbie", description: "Put together your favorite amputated limb.", id: 3,
quantity: 1 },

write_items(items)
