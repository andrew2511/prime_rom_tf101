.class public Lcom/google/android/youtube/app/tablet/SettingsActivity$GeneralPrefsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/tablet/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeneralPrefsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/SettingsActivity$GeneralPrefsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v2, "youtube"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 105
    const v1, 0x7f060001

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/tablet/SettingsActivity$GeneralPrefsFragment;->addPreferencesFromResource(I)V

    .line 107
    const-string v1, "default_hq"

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/tablet/SettingsActivity$GeneralPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 108
    .local v0, qualityPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/SettingsActivity$GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->isMobileNetworkCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/SettingsActivity$GeneralPrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 111
    :cond_0
    return-void
.end method
