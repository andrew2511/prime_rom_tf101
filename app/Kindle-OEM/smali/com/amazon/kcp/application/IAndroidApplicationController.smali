.class public interface abstract Lcom/amazon/kcp/application/IAndroidApplicationController;
.super Ljava/lang/Object;
.source "IAndroidApplicationController.java"

# interfaces
.implements Lcom/amazon/kcp/application/IKindleApplicationController;


# virtual methods
.method public abstract activityStarted(Landroid/app/Activity;)V
.end method

.method public abstract activityStopped()V
.end method

.method public abstract activityStoppedDueToConfigChange()V
.end method

.method public abstract getActiveContext()Landroid/content/Context;
.end method

.method public abstract getAppVersionNumber()J
.end method

.method public abstract getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;
.end method

.method public abstract getCookieJar()Lcom/amazon/kcp/store/CookieJar;
.end method

.method public abstract getCurrentActivity()Landroid/app/Activity;
.end method

.method public abstract getDownloadStatusWatcher()Lcom/amazon/kcp/application/IDownloadStatusWatcher;
.end method

.method public abstract getNotificationController()Lcom/amazon/kcp/application/AndroidNotificationController;
.end method

.method public abstract getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;
.end method

.method public abstract getUtilities()Lcom/amazon/android/system/AndroidUtilities;
.end method

.method public abstract getVersionString()Ljava/lang/String;
.end method

.method public abstract serializeMetrics()V
.end method

.method public abstract setCurrentActivity(Landroid/app/Activity;)V
.end method

.method public abstract startActivity(Landroid/content/Intent;)V
.end method

.method public abstract startSettingsActivity(Ljava/lang/String;)V
.end method

.method public abstract wasAppUpgradedThisOpening()Z
.end method
