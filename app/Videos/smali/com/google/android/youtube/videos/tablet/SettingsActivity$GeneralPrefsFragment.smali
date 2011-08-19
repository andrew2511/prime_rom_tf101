.class public Lcom/google/android/youtube/videos/tablet/SettingsActivity$GeneralPrefsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/tablet/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeneralPrefsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/tablet/SettingsActivity$GeneralPrefsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    const-string v4, "youtube"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 57
    const/high16 v3, 0x7f06

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/videos/tablet/SettingsActivity$GeneralPrefsFragment;->addPreferencesFromResource(I)V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/tablet/SettingsActivity$GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/utils/Util;->isMobileNetworkCapable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/tablet/SettingsActivity$GeneralPrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 60
    .local v1, preferenceScreen:Landroid/preference/PreferenceScreen;
    const-string v3, "warning_streaming_bandwidth"

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/videos/tablet/SettingsActivity$GeneralPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 62
    .local v2, streamingPref:Landroid/preference/CheckBoxPreference;
    const-string v3, "download_policy"

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/videos/tablet/SettingsActivity$GeneralPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 64
    .local v0, downloadPref:Landroid/preference/ListPreference;
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 65
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 67
    .end local v0           #downloadPref:Landroid/preference/ListPreference;
    .end local v1           #preferenceScreen:Landroid/preference/PreferenceScreen;
    .end local v2           #streamingPref:Landroid/preference/CheckBoxPreference;
    :cond_0
    return-void
.end method
