# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2025 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/mcbookshelf/bookshelf).
#
# This source code is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Conditions:
# - You may use this file in compliance with the MPL v2.0
# - Any modifications must be documented and disclosed under the same license
#
# For more details, refer to the MPL v2.0.
# ------------------------------------------------------------------------------------------------------------

# Identify the enabled version (the last one in the datapack list) and mark it as active
data modify storage bs:data load.modules[{module:"bs.block",version:"3.0.2"}].enabled set value 1b

# Return early if all versions have the same major version and the most recent one is enabled
execute unless score #bs.block.major_versions load.status matches 2.. \
  if score $bs.block.major load.status matches 3 \
  if score $bs.block.minor load.status matches 0 \
  if score $bs.block.patch load.status matches 2 \
  run return 1

# Format module specific errors
function #bs.load:process/errors/block
return fail
