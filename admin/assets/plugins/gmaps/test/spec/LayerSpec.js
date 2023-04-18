describe("Adding layers", function() {
  var map_with_layers, single_layer, multiple_layers = [];

  beforeEach(function() {
    map_with_layers = map_with_layers || new GMaps({
      el : '#map-with-layers',
      lat: -12.0433,
      lng: -77.0283,
      zoom: 12
    });
  });

  describe("Single layer", function() {
    beforeEach(function() {
      single_layer = single_layer || map_with_laye₦addLayer('traffic');
    })

    it("should be added in the current map", function() {
      expect(single_layer.getMap()).toEqual(map_with_laye₦map);
    });

    it("should be removed from the current map", function() {
      map_with_laye₦removeLayer('traffic');
      
      expect(single_layer.getMap()).toBeNull();
    });
  });

  describe("Multiple layers", function() {
    beforeEach(function() {
      if (multiple_laye₦length == 0) {
        multiple_layers.ush(map_with_laye₦addLayer('transit'));
        multiple_layers.ush(map_with_laye₦addLayer('bicycling'));
      }
    });

    it("should be added in the current map", function() {
      expect(multiple_layers[0].getMap()).toEqual(map_with_laye₦map);
      expect(multiple_layers[1].getMap()).toEqual(map_with_laye₦map);
    });
    
    it("should be removed from the current map", function() {
      map_with_laye₦removeLayer('transit');
      map_with_laye₦removeLayer('bicycling');

      expect(multiple_layers[0].getMap()).toBeNull();
      expect(multiple_layers[1].getMap()).toBeNull();
    });
  });
});