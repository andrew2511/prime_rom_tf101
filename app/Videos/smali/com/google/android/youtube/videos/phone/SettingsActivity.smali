.class public Lcom/google/android/youtube/videos/phone/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# instance fields
.field private application:Lcom/google/android/youtube/videos/VideosApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter "context"

    .prologue
    .line 23
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/videos/phone/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/SettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    const-string v4, "youtube"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 30
    const v3, 0x7f060002

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/videos/phone/SettingsActivity;->addPreferencesFromResource(I)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/SettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/videos/VideosApplication;

    iput-object v3, p0, Lcom/google/android/youtube/videos/phone/SettingsActivity;->application:Lcom/google/android/youtube/videos/VideosApplication;

    .line 34
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->isMobileNetworkCapable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 38
    .local v1, preferenceScreen:Landroid/preference/PreferenceScreen;
    const-string v3, "warning_streaming_bandwidth"

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/videos/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 40
    .local v2, streamingPref:Landroid/preference/CheckBoxPreference;
    const-string v3, "download_policy"

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/videos/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 42
    .local v0, downloadPref:Landroid/preference/ListPreference;
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 43
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 45
    .end local v0           #downloadPref:Landroid/preference/ListPreference;
    .end local v1           #preferenceScreen:Landroid/preference/PreferenceScreen;
    .end local v2           #streamingPref:Landroid/preference/CheckBoxPreference;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/SettingsActivity;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/VideosApplication;->trackPage(Ljava/lang/String;)V

    .line 51
    return-void
.end method
