// update blue badge
%hook SBIconRecentlyUpdatedLabelAccessoryView
- (id)init {return nil;}
%end
// testflight orange badge
%hook SBIconBetaLabelAccessoryView
- (id)init {return nil;}
%end
