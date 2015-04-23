# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Place.delete_all

[{:title => 'Willis Tower', :photo_url => "http://www.perrymarshall.com/PM3_0/wp-content/uploads/2012/02/sears-tower.jpg", :admission_price => 8000, :description => "The Willis Tower, built as and still commonly referred to as Sears Tower, is a 108-story, 1,451-foot (442 m) skyscraper in Chicago, Illinois, United States. At completion in 1973, it surpassed the World Trade Center towers in New York to become the tallest building in the world, a title it held for nearly 25 years."},
{:title => "Cloud Gate", :photo_url => "http://www.stevegphotography.com/Travel/Chicago/i-TPtkPcN/0/S/20110508095347-IMG_2090-Edit-S.jpg", :admission_price => 0, :description => "Cloud Gate is a public sculpture by Indian-born British artist Anish Kapoor, that is the centerpiece of AT&T Plaza at Millennium Park in the Loop community area of Chicago, Illinois. The sculpture and AT&T Plaza are located on top of Park Grill, between the Chase Promenade and McCormick Tribune Plaza & Ice Rink. Constructed between 2004 and 2006, the sculpture is nicknamed The Bean because of its bean-like shape."},
{:title => "Navy Pier", :photo_url => "http://images.usatourist.com/photos/illinois/Chicago/NavyPier1.jpg", :admission_price => 0, :description => "Navy Pier is a 3,300-foot-long (1,010 m) pier on the Chicago shoreline of Lake Michigan. It is located in the Streeterville neighborhood of the Near North Side community area. The pier was built in 1916 at a cost of $4.5 million. It was a part of the Plan of Chicago developed by architect and city planner Daniel Burnham and his associates. As Municipal Pier #2 (Municipal Pier #1 was never built), Navy Pier was planned and built to serve as a mixed-purpose piece of public infrastructure. Its primary purpose was as a cargo facility for lake freighters, and warehouses were built up and down the Pier."},
{:title => "Magnificent Mile", :photo_url => "http://cdn.mntm.me/1b/f5/98/Trump_International_Hotel_Tower_Chicago-Chicago-Illinois-1bf598d92f1240c1a6b84e5246448df3.jpg", :admission_price => 0, :description => "The Magnificent Mile, sometimes referred to as The Mag Mile, is an upscale section of Chicago's Michigan Avenue, running from the Chicago River to Oak Street in the Near North Side. The district is located adjacent to downtown, and one block east of Rush Street. The Magnificent Mile serves as the main thoroughfare between Chicago's Loop business district and its Gold Coast. It is the western boundary of the Streeterville neighborhood."},
{:title => "University of Chicago", :photo_url => "http://wallpaperscraft.com/image/98212/200x300.jpg", :admission_price => 0, :description => "The University of Chicago (U of C, UChicago, or simply Chicago) is a private research university in Chicago, Illinois. Founded by the American Baptist Education Society with a donation from oil magnate and philanthropist John D. Rockefeller, the University of Chicago was incorporated in 1890; William Rainey Harper became the university's first president in 1891, and the first classes were held in 1892. Both Harper and future president Robert Maynard Hutchins advocated for Chicago's curriculum to be based upon theoretical and perennial issues rather than applied sciences and commercial utility."}
].each do |place|
    plc = Place.new
    plc.title = place[:title]
    plc.photo_url = place[:photo_url]
    plc.admission_price = place[:admission_price]
    plc.description = place[:description]
    plc.save
end

