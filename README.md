
# Pre-work - *tipCal*

**tipCal** is a tip calculator application for iOS.

Submitted by: **Neil Shah**

Time spent: **2** hours spent in total

## User Stories

The following **required** functionality is complete:

- [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
- [x] Settings page to change the default tip percentage.
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.


## Video Walkthrough 

<img src='https://i.imgur.com/f4F6Tzs.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />


## Notes

There were instances where I would get compile errors stating “'NSUnknownKeyException', reason: … this class is not key value coding-compliant for the key X”. I think these occured when I would drag+drop an outlet or action onto my code window and then decide to delete it from my code window. Still not sure why the errors came up and the correct way to solve them. I would have to delete the element from my view, re-add it and type the code again for it to compile properly. 

## License

Copyright [2018][Neil Shah]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
