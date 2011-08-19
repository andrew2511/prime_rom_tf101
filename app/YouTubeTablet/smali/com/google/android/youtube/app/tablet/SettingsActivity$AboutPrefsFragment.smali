.class public Lcom/google/android/youtube/app/tablet/SettingsActivity$AboutPrefsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/tablet/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AboutPrefsFragment"
.end annotation


# instance fields
.field private application:Lcom/google/android/youtube/app/YouTubeApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 152
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/SettingsActivity$AboutPrefsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v2, "youtube"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 153
    const/high16 v1, 0x7f06

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/tablet/SettingsActivity$AboutPrefsFragment;->addPreferencesFromResource(I)V

    .line 155
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/SettingsActivity$AboutPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/YouTubeApplication;

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/SettingsActivity$AboutPrefsFragment;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    .line 157
    const-string v1, "version"

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/tablet/SettingsActivity$AboutPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 158
    .local v0, preference:Landroid/preference/Preference;
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/SettingsActivity$AboutPrefsFragment;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->getApplicationVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 163
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/SettingsActivity$AboutPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 166
    .local v0, activity:Landroid/app/Activity;
    const-string v2, "mobile_terms"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    const v2, 0x7f0d00ee

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/tablet/SettingsActivity$AboutPrefsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/ExternalIntents;->viewUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 182
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 168
    :cond_1
    const-string v2, "youtube_terms"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    const v2, 0x7f0d00ef

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/tablet/SettingsActivity$AboutPrefsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/ExternalIntents;->viewUri(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 170
    :cond_2
    const-string v2, "mobile_privacy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 171
    const v2, 0x7f0d00f0

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/tablet/SettingsActivity$AboutPrefsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/ExternalIntents;->viewUri(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 172
    :cond_3
    const-string v2, "youtube_privacy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 173
    const v2, 0x7f0d00f1

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/tablet/SettingsActivity$AboutPrefsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/ExternalIntents;->viewUri(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 174
    :cond_4
    const-string v2, "feedback"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 175
    const v2, 0x7f0d00ed

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/ExternalIntents;->getLocalizedHelpUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/ExternalIntents;->viewUri(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 177
    :cond_5
    const-string v2, "help"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    const v2, 0x7f0d00ec

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/ExternalIntents;->getLocalizedHelpUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/ExternalIntents;->viewUri(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0
.end method
