/*
 * Copyright 2013 appscape gmbh
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

#import "RMBTHistoryIndexCell.h"

@interface RMBTHistoryIndexCell() {
    BOOL _setWidths;
}
@end

@implementation RMBTHistoryIndexCell

- (void)setColumnWidths:(CGFloat*)widths {
    if (_setWidths) return;
    
    for (NSUInteger i=0;i<self.columnsViewWidths.count;i++) {
        NSLayoutConstraint *c = [self.columnsViewWidths objectAtIndex:i];
        c.constant = widths[i];
    }
    _setWidths = YES;
    [self setNeedsLayout];
}
@end
