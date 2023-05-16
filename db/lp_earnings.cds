namespace app.Tier;
using { managed } from '@sap/cds/common';
using app.Purchase from './purchase';
using app.Customers from './customers';

@cds.autoexpose entity Earnings : managed {
    key id      : UUID  @(Core.Computed : true);
    purchase_id       : Association to one Purchase.Purchase on purchase_id.id = $self.id;
    customer_id     : Association to one Customers.Customers on customer_id.id = $self.id;
    points_earned  : Integer;
    earning_date : Date;
  }