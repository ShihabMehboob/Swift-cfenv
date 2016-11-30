/**
 * Copyright IBM Corporation 2016
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

//import SwiftyJSON

/**
* See https://docs.run.pivotal.io/devguide/deploy-apps/environment-variable.html#VCAP-SERVICES.
*/
public struct Service {
  public let name: String
  public let label: String
  public let plan : String
  public let tags: [String]
  public let credentials: [String: Any]?

  public init(name: String, label: String, plan: String?, tags: [String],
    credentials: [String: Any]?) {

    self.name = name
    self.label = label
    self.plan = (plan != nil) ? plan! : "N/A"
    self.tags = tags
    self.credentials = credentials
  }
}
