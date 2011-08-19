.class public Lcom/google/android/gsf/loginservice/GoogleMail;
.super Ljava/lang/Object;
.source "GoogleMail.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static switchToGoogleMail(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 35
    const-string v2, "GoogleMail"

    const-string v3, "switching device to Google Mail mode"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gsf.loginservice.GOOGLE_MAIL_SWITCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "useGoogleMail"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 42
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "use_google_mail"

    const-string v3, "1"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    const v2, 0x320d3

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 47
    const-string v2, "GoogleMail"

    const-string v3, "done switching to Google Mail mode"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method
