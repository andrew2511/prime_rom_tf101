.class public Lcom/android/browser/preferences/DebugPreferencesFragment;
.super Landroid/preference/PreferenceFragment;
.source "DebugPreferencesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v1, 0x7f060003

    invoke-virtual {p0, v1}, Lcom/android/browser/preferences/DebugPreferencesFragment;->addPreferencesFromResource(I)V

    .line 46
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->showDebugSettings()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const v1, 0x7f060005

    invoke-virtual {p0, v1}, Lcom/android/browser/preferences/DebugPreferencesFragment;->addPreferencesFromResource(I)V

    .line 50
    :cond_0
    const-string v1, "enable_hardware_accel"

    invoke-virtual {p0, v1}, Lcom/android/browser/preferences/DebugPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 51
    .local v0, e:Landroid/preference/Preference;
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 52
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "--restart--"

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/browser/preferences/DebugPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/browser/BrowserActivity;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/DebugPreferencesFragment;->startActivity(Landroid/content/Intent;)V

    .line 59
    const/4 v0, 0x1

    return v0
.end method
