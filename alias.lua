--for the subwayblocks mod by gabriel I added a file which converts the subwaysigns by him to mine 
--(important especially for Linuxworks server)

    for count = 1, 10, 1 do
      minetest.register_alias("advtrains_subwayblocks:line" .. count, "trainblocks:line" .. count)
    end

    minetest.register_alias("advtrains_subwayblocks:germany", "trainblocks:subwayblock")
	
	minetest.register_alias("advtrains_subwayblocks:mr", "trainblocks:mr")
