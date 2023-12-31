package g;

import android.content.Context;
import android.os.Process;

/* loaded from: classes.dex */
public final class b {
    public static int a(Context context, String str, int i2, int i3, String str2) {
        if (context.checkPermission(str, i2, i3) == -1) {
            return -1;
        }
        String b2 = android.support.v4.app.b.b(str);
        if (b2 == null) {
            return 0;
        }
        if (str2 == null) {
            String[] packagesForUid = context.getPackageManager().getPackagesForUid(i3);
            if (packagesForUid == null || packagesForUid.length <= 0) {
                return -1;
            }
            str2 = packagesForUid[0];
        }
        return android.support.v4.app.b.a(context, b2, str2) != 0 ? -2 : 0;
    }

    public static int b(Context context, String str) {
        return a(context, str, Process.myPid(), Process.myUid(), context.getPackageName());
    }
}