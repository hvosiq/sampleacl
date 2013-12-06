# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


cat_realm = Category.create(name:'REALM')
rs = Permission.create(name: "sandbox",category: cat_realm)
rsc_rs = Restriction.create(permission: rs)
rp = Permission.create(name: "production",category: cat_realm )
rsc_rp = Restriction.create(permission: rp)

cat_org_state = Category.create(name:'ORG STATE')
op = Permission.create(name: "playground",category: cat_org_state)
rsc_op = Restriction.create(permission: op)

of = Permission.create(name: "full access",category: cat_org_state )
rsc_of = Restriction.create(permission: of)

oe = Permission.create(name: "enterprise",category: cat_org_state)
rsc_oe = Restriction.create(permission: oe)


cat_party = Category.create(name:'PARTY')
pa = Permission.create(name: "att trusted",category: cat_party)
rsc_pa = Restriction.create(permission: pa)

pt = Permission.create(name: "trusted partners",category: cat_party )
rsc_pt = Restriction.create(permission: pt)

p3 = Permission.create(name: "3rd party developers",category: cat_party )
rsc_p3 = Restriction.create(permission: p3)




Service.create(name: "Enterprise Sandbox and Production", permissions: [oe, rs, rp])
Service.create(name: "Enterprise Production Only", permissions: [oe, rp])
Service.create(name: "Enterprise Sandbox Only", permissions: [oe, rs])


org_ent = Organization.create(name:'Enterprise Org', permissions: [rs, rp, oe])
org_play = Organization.create(name:'Playground Org', permissions: [rs, rp, op])
org_full = Organization.create(name:'Full Access Org', permissions: [rs, rp, of])


ent_dev = Developer.create(name: 'Trusted Dev', organization: org_ent)
