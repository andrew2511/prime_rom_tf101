.class public Lcom/splashtop/remote/SettingActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private bUserTracking:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/splashtop/remote/SettingActivity;->bUserTracking:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/high16 v3, 0x7f04

    invoke-virtual {p0, v3}, Lcom/splashtop/remote/SettingActivity;->addPreferencesFromResource(I)V

    .line 23
    invoke-virtual {p0}, Lcom/splashtop/remote/SettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 24
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 25
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "bForceUseGL"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 26
    .local v0, bUseGLRender:Z
    const-string v3, "bAutoDetectGL"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "bForceUseGL"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 27
    invoke-static {}, Lcom/splashtop/remote/utils/Common;->getRenderInfo()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 28
    :cond_0
    const-string v3, "ANTIALIASING"

    invoke-virtual {p0, v3}, Lcom/splashtop/remote/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-nez v0, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 29
    return-void

    .line 28
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/splashtop/remote/SettingActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 52
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 53
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 57
    invoke-virtual {p2}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "USRTRACK"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->setLogEnabled(Z)V

    .line 64
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 62
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->setLogEnabled(Z)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 71
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 33
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 34
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 35
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "USRTRACK"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/splashtop/remote/SettingActivity;->bUserTracking:Z

    .line 36
    iget-boolean v1, p0, Lcom/splashtop/remote/SettingActivity;->bUserTracking:Z

    if-eqz v1, :cond_0

    .line 37
    invoke-static {}, Lcom/splashtop/remote/utils/Common;->getFlurryKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 44
    iget-boolean v0, p0, Lcom/splashtop/remote/SettingActivity;->bUserTracking:Z

    if-eqz v0, :cond_0

    .line 45
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 47
    :cond_0
    return-void
.end method
