class Room < ActiveRecord::Base
  belongs_to :hotel
   self.inheritance_column = nil
  def self.getrooms(name,city,country,from_date,to_date)
@list=Room.find_by_sql(["select r.id,r.number, r.type , r.price , h.id as hid from rooms as r , hotels as h 
 where  r.hotel_id = h.id and  h.name=? and h.city =? and h.country=? and r.id not in(select  distinct room_id
 from res_rooms as res
where  res.chkin_date   between  ? and ?
and res.chkout_date   between ? and ? )",name,city,country,from_date,to_date,from_date,to_date])
end
end
