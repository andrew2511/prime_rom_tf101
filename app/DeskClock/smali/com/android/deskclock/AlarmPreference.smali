.class public Lcom/android/deskclock/AlarmPreference;
.super Landroid/preference/RingtonePreference;
.source "AlarmPreference.java"


# instance fields
.field private mAlert:Landroid/net/Uri;

.field private mChangeDefault:Z

.field private mRingtoneTask:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method static synthetic access$002(Lcom/android/deskclock/AlarmPreference;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/deskclock/AlarmPreference;->mRingtoneTask:Landroid/os/AsyncTask;

    return-object p1
.end method


# virtual methods
.method public getAlert()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/deskclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    return-object v0
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/deskclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 3
    .parameter "ringtoneUri"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmPreference;->setAlert(Landroid/net/Uri;)V

    .line 44
    iget-boolean v0, p0, Lcom/android/deskclock/AlarmPreference;->mChangeDefault:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "alarm_alert"

    if-nez p1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 50
    :cond_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public setAlert(Landroid/net/Uri;)V
    .locals 3
    .parameter "alert"

    .prologue
    const/4 v2, 0x1

    .line 62
    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/android/deskclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    .line 67
    if-eqz p1, :cond_2

    .line 68
    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmPreference;->setSummary(I)V

    .line 69
    iget-object v0, p0, Lcom/android/deskclock/AlarmPreference;->mRingtoneTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/android/deskclock/AlarmPreference;->mRingtoneTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 72
    :cond_1
    new-instance v0, Lcom/android/deskclock/AlarmPreference$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmPreference$1;-><init>(Lcom/android/deskclock/AlarmPreference;)V

    new-array v1, v2, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/deskclock/AlarmPreference$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmPreference;->mRingtoneTask:Landroid/os/AsyncTask;

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_2
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public setChangeDefault()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/AlarmPreference;->mChangeDefault:Z

    .line 104
    return-void
.end method
