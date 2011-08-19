.class public Lcom/google/android/gm/preference/GmailRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "GmailRingtonePreference.java"


# instance fields
.field private mRingtone:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/preference/GmailRingtonePreference;->mRingtone:Landroid/net/Uri;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/preference/GmailRingtonePreference;->mRingtone:Landroid/net/Uri;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/preference/GmailRingtonePreference;->mRingtone:Landroid/net/Uri;

    .line 25
    return-void
.end method


# virtual methods
.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gm/preference/GmailRingtonePreference;->mRingtone:Landroid/net/Uri;

    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 0
    .parameter "ringtoneUri"

    .prologue
    .line 45
    return-void
.end method

.method public setRingtone(Landroid/net/Uri;)V
    .locals 0
    .parameter "ringtone"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/gm/preference/GmailRingtonePreference;->mRingtone:Landroid/net/Uri;

    .line 37
    return-void
.end method
