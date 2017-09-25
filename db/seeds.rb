# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
tolls = Toll.create([
  {location: 'Lee', price: 0.25},
  {location: 'Blandford', price: 1.00},
  {location: 'Westfield', price: 0.30},
  {location: 'Ludlow', price: 0.45},
  {location: 'Warren', price: 0.55},
  {location: 'Charlton', price: 0.50},
  {location: 'Hopkinton', price: 0.45},
  {location: 'Southborough', price: 0.25},
  {location: 'Framingham', price: 0.25},
  {location: 'Weston', price: 0.25},
  {location: 'Newtonville', price: 0.35},
  {location: 'Brighton', price: 1.00},
  {location: 'Allston', price: 0.35},
  {location: 'Ted_Williams_Tunnel', price: 1.50},
  {location: 'Tobin_Bridge', price: 1.25},
  {location: 'Sumner_Tunnel', price: 1.50},
  {location: 'Callahan_Tunnel', price: 1.50}
])
