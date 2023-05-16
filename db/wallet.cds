namespace app.Purchase;
using { managed } from '@sap/cds/common';
using app.Customers from './customers';

@cds.autoexpose  entity Wallet : managed {
    key id      : UUID  @(Core.Computed : true);
    customer_id     : Association to one Customers.Customers on customer_id.id = $self.id;
    loyalty_balance      : Integer;
  }