namespace app.Tier;
using { managed } from '@sap/cds/common';

@cds.autoexpose entity Tier : managed {
    key id      : UUID  @(Core.Computed : true);
    name       : String(100);
    min_range  : Integer;
    max_range : Integer;
    tier_level      : Integer;
    loyalty_points_rate : Integer;
  }