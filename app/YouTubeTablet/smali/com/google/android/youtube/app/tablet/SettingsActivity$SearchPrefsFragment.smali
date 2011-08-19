.class public Lcom/google/android/youtube/app/tablet/SettingsActivity$SearchPrefsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/tablet/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchPrefsFragment"
.end annotation


# instance fields
.field private application:Lcom/google/android/youtube/app/YouTubeApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/SettingsActivity$SearchPrefsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v2, "youtube"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 122
    const v1, 0x7f060003

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/tablet/SettingsActivity$SearchPrefsFragment;->addPreferencesFromResource(I)V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/SettingsActivity$SearchPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/YouTubeApplication;

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/SettingsActivity$SearchPrefsFragment;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    .line 126
    const-string v1, "safe_search"

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/tablet/SettingsActivity$SearchPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 127
    .local v0, safeSearchPref:Landroid/preference/Preference;
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/SettingsActivity$SearchPrefsFragment;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->getSafeSearch()Lcom/google/android/youtube/core/utils/SafeSearch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/utils/SafeSearch;->hasParentalControl()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 128
    return-void

    .line 127
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 132
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, key:Ljava/lang/String;
    const-string v1, "clear_history"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/SettingsActivity$SearchPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    move v1, v3

    .line 142
    :goto_0
    return v1

    .line 137
    :cond_0
    const-string v1, "safe_search"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/SettingsActivity$SearchPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    move v1, v3

    .line 139
    goto :goto_0

    .line 142
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method
