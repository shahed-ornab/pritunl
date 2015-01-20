library organizations_comp;

import 'package:pritunl/collections/organizations.dart' as organizations;
import 'package:pritunl/models/organization.dart' as organization;
import 'package:pritunl/models/user_bulk.dart' as user_bulk;
import 'package:pritunl/models/user.dart' as user;

import 'package:angular/angular.dart' show Component;

@Component(
  selector: 'organizations',
  templateUrl: 'packages/pritunl/components/organizations/organizations.html',
  cssUrl: 'packages/pritunl/components/organizations/organizations.css'
)
class OrganizationsComp {
  organizations.Organizations orgs;

  OrganizationsComp(this.orgs) {
    this.update();
  }

  void onAddOrg(organization.Organization model) {
    print('addOrg: $model');
  }

  void onAddUser(user.User model) {
    print('addUser: $model');
  }

  void onAddUserBulk(user_bulk.UserBulk model) {
    print('addUserBulk: $model');
  }

  void update() {
    this.orgs.fetch();
  }
}
