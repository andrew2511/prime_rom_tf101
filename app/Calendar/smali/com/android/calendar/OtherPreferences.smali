.class public Lcom/android/calendar/OtherPreferences;
.super Landroid/preference/PreferenceFragment;
.source "OtherPreferences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/calendar/OtherPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "com.android.calendar_preferences"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 37
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/android/calendar/OtherPreferences;->addPreferencesFromResource(I)V

    .line 38
    return-void
.end method
