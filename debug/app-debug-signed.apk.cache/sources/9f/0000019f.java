package android.support.v4.app;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;

/* loaded from: classes.dex */
abstract class BaseFragmentActivityApi16 extends BaseFragmentActivityApi14 {
    boolean mStartedActivityFromFragment;

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int requestCode, Bundle options) {
        if (!this.mStartedActivityFromFragment && requestCode != -1) {
            checkForValidRequestCode(requestCode);
        }
        super.startActivityForResult(intent, requestCode, options);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intent, int requestCode, Intent fillInIntent, int flagsMask, int flagsValues, int extraFlags, Bundle options) throws IntentSender.SendIntentException {
        if (!this.mStartedIntentSenderFromFragment && requestCode != -1) {
            checkForValidRequestCode(requestCode);
        }
        super.startIntentSenderForResult(intent, requestCode, fillInIntent, flagsMask, flagsValues, extraFlags, options);
    }
}