# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

{
  'Founder' => {
    icon: 'person',
    color: 'orange',
    is_submittable: true,
    description: <<-EOF.strip_heredoc.squish
    Whether you're just dreaming about starting a business, on your first, or a seasoned entrepreneur,
    the founder track will provide you with the skills and knowledge you need to found a company. Initial
    product development, go-to-market strategies, finding funding, and building a team are just some of the
    topics that are covered. Start down the path of creating your startup!
    EOF
  },
  'Growth' => {
    icon: 'chart',
    color: 'blue',
    is_submittable: true,
    description: <<-EOF.strip_heredoc.squish
    No matter how good it is, no product sells itself. A team that markets, sells, and supports the product
    well is a huge advantage for any startup. Every aspect of digital marketing, inbound and outbound sales,
    and customer experience is going to be covered at Denver Startup Week. Growing a startup depends on these
    skills, don't miss your chance to improve them!
    EOF
  },
  'Designer' => {
    icon: 'eyeball',
    color: 'green',
    is_submittable: true,
    description: <<-EOF.strip_heredoc.squish
    Seeing things others do not see is an art and our design track is packed with creative outlets to expand your
    thinking and ability to design.  From fashion to architecture to breakout digital design and artwork – the
    design track is focused on the critical elements of design. Learn new skills, hear from those responsible for
    some of the best projects in Colorado, and let your creative juices flow. Enjoy connecting with fellow design
    leaders and leave the week with fresh inspiration!
    EOF
  },
  'Product' => {
    icon: 'phone',
    color: 'purple',
    is_submittable: true,
    description: <<-EOF.strip_heredoc.squish
    Product management, development, and marketing, all different sides of the same coin that somehow bridges the gap
    between building the product and delivering it to the market. Product skills are in huge demand but there aren't
    very many places where you can go to acquire them. Come improve your product game at Denver Startup Week!
    EOF
  },
  'Developer' => {
    icon: 'terminal',
    color: 'gold',
    is_submittable: true,
    description: <<-EOF.strip_heredoc.squish
    Frontend, backend, full stack, big data, APIs, architecture, methodologies, junior, senior, we have it all. Learn
    new technologies, refine your skills, or just check out something completely different. Walk away a better engineer
    than you were before!
    EOF
  },
  'Maker' => {
    icon: 'wrench',
    color: 'teal',
    is_submittable: true,
    description: <<-EOF.strip_heredoc.squish
    If you don’t think you fit the mold of a typical startup, think again! The Maker Track encompasses all physical
    products and provides entrepreneurs and small businesses with events and seminars for every type of maker under the
    sun - from outdoor rec, distilling (or brewing!), and crafting, to connected devices, open-source hardware, 3D
    printing, and IOT (just to name a few). Join us to hear stories behind breakout brands, learn about new technologies
    in manufacturing, and dig into implications of early design choices. The Maker Track is your one-stop-shop to connect
    with the best artisans, engineers, manufacturers and enterprises to see what they’ve learned through their product
    development journeys!
    EOF
  },
  'Headline Events' => {
    icon: 'star',
    color: 'headline-session',
    is_submittable: true,
  },
  'Basecamp' => {
    icon: 'basecamp',
    color: 'basecamp-session',
    is_submittable: false,
  },
  'Social Events' => {
    icon: 'martini',
    color: 'red',
    is_submittable: false,
  }
}.each do |track_name, attrs|
  t = Track.where(name: track_name).first_or_initialize
  t.assign_attributes(attrs)
  t.save!
end

{
  'IoT' => {
    description: <<-EOF.strip_heredoc.squish
    From smart devices to integrated homes to intelligent vehicles, the Internet of Things is rapidly transforming the
    way that we interact with the world around us. Check out the latest technologies and trends in the IoT realm, and
    take a look behind the scenes at what it takes to concept, design and build a connected product.
    EOF
  },
  'Diversity & Inclusion' => {
    description: <<-EOF.strip_heredoc.squish
    Building an inclusive organization and culture is a critical part of any early-stage company, particularly in a
    world of increasingly global and diverse customer bases. Explore the what, how and why of building a diverse team,
    and hear firsthand the experiences of those on the front lines enabling diversity in the startup realm.
    EOF
  },
  'Cannabis' => {
    description: <<-EOF.strip_heredoc.squish
    Colorado is at the forefront not only of entrepreneurship and technology, but also in the emerging cannabis industry.
    Beyond just the leaf, explore the intersection of technology and cannabis, how these two seemingly different fields
    interoperate, and the challenges of building a company at the intersection of emerging markets and regulatory frameworks.
    EOF
  },
  'Healthtech' => {
    description: <<-EOF.strip_heredoc.squish
    As healthcare costs continue to rise, individuals and companies find themselves in an increasingly unstable economic
    situation. Enter digital health technologies, exploding on the scene with engaging, low-cost, and convenient tools
    that will have a lasting impact on large populations both here in Colorado and throughout the country.\n\nExplore the
    significant transformations coming to, and already being implemented in, the healthcare industry from both technologists
    and healthcare professionals. Plus, see the technological innovations that could be making a real difference in your
    own health care in the near future
    EOF
  },
  'Social Impact' => {
    description: <<-EOF.strip_heredoc.squish
    Many companies are beginning to understand that the impact they have on the world around them isn't just measured in dollars
    and cents, but also the lasting effects they have on the people and communities around them. Learn about how these
    companies are both thinking and acting differently, and how you can start to build social good into your company as well.
    EOF
  },
  'Business Basics' => {
    description: <<-EOF.strip_heredoc.squish
    Having the fundamental skills required to run a successful company are key to getting your startup off the ground. From
    accounting and finance to operations to marketing to accessing capital, come learn the ins and outs of running your company
    from the people in the community who have done it most sucessfully.
    EOF
  }
}.each do |cluster_name, attrs|
  c = Cluster.where(name: cluster_name).first_or_initialize
  c.assign_attributes(attrs)
  c.save!
end
