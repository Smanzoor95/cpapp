namespace app.Purchase;
using { managed } from '@sap/cds/common';
using app.Customers from './customers';

@cds.autoexpose  entity Configuration_Rule : managed {
    key id      : UUID  @(Core.Computed : true);
    accumulation_rate      : Integer;
    redemption_rate : Integer;
    deactivation_rule : String;
  }