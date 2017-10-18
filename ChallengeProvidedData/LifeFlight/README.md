# LifeFlight

Here is the data for the routing challenge. As we have talked about this we realise there’s a large number of variables 
which are factored in manually. For instance, if a patient is infections, they must ride alone, unless the other patient 
has the same infection. To that end the programmatic calculation might not be the best way to solve the problem. It 
might be to provide a drag and drop feature where they can simply drag patients onto a plane’s route. There is also a 
need to drop crew onto the plane. So I’ve added crew and the roster. (That might be able to be done generically, without 
looking at the roster but you have the data anyway.)


I’ve added an AircraftFeature table which gives the specs of a plane. It’s a new table so there may be a better way of 
representing the data, particularly the seating. Planes can swap stretchers for seats, that is referenced by Seats and 
Alternate Seats/Stretchers and Alternate Stretchers.

The patient weight limit is an individual limit.
 
This would need to take into consideration the capacity of the plane. The seating in a plane has two configurations, 
where stretchers are replaced with seats. That

To that end there is a function dbo.udfARMS_ConvertRouteToSectors, which will convert a route string, like 
‘YBBN-YBRK-YHBA-YBBN’, Brisbane-Rockhampton-Hervey Bay-Brisbane into its route locations.

 

    DepartureId       DestinationId     RouteOrder
    
    156                         835                         1000
    
    835                         448                         1050
    
    448                         156                         1100