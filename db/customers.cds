namespace app.Customers;
using { managed } from '@sap/cds/common';
using app.Tier from './Tier';

@cds.autoexpose  entity Customers : managed {
    key id      : UUID  @(Core.Computed : true);
    name       : String(100);
    email        : String(5);
    loyalty_points_earned : String;
    tier_id      : Association to Tier.Tier;
    status : String;
  }