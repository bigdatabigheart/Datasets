# LifeFlight

Here is the data for the routing challenge. 

This challenge is about efficiently routing patients from their location to the desired destination. The more we've examined this, we realise there’s a large number of variables which are manually factored into routing patients. For instance, if a patient is infections, they must ride alone, unless another patient has the same infection. To that end the programmatic calculation might not be the best way to solve the problem. It might be to provide a drag and drop feature where they can simply drag patients onto a plane’s route. There is also a need to drop crew onto the plane. So I’ve added crew and the roster. (That might be able to be done generically, without looking at the roster but you have the data anyway.)

I’ve added an AircraftFeature table which gives the specs of a plane. The seating in a plane is configurable, where stretchers can be replaced with seats and vice versa. That is referenced by Seats and Alternate Seats/Stretchers and Alternate Stretchers. This is a new table for BigHeat BigData, so there may be a better way of representing the data, particularly the seating.

The patient weight limit is an individual limit.
 
The routes are made using ICAO codes, for instance ‘YBBN-YBRK-YHBA-YBBN’ is Brisbane-Rockhampton-Hervey Bay-Brisbane. Flight Sectors in the database are recorded row by row. To that end there is a SQL Server function ConvertRouteToSectors, which will convert a route string such as the one above, into its route locations. The Route Order field is used to ensure the routes are presented in order, particularly when a route is inserted later.

DepartureId       DestinationId     RouteOrder
156                         835           1000
835                         448           1050
448                         156           1100

The data is a representation of moves that have been done historically. It gives an exact picture of how patients were moved. 

Patients & FlightSectors have a MissionId field foreign key. PatientFlightSector points to FlightSectors and Patients.

Patients have two important fields. PickupICAO and DestinationICAO, those are the airports they're to be picked up at and dropped off at. PickupLocation and DestinationLocation are the medical facilities they're coming from and going to. IsStretcherPatient shows whether they're to be moved in a seat or bed.

In our system, there is a Mission ID with an ID of 1, which is used as a patient hold area. It's used for patients entered into the system, before they’re allocated to a mission, or when they’re dropped off a mission due to a route change.