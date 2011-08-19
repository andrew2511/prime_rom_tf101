.class public Lcom/android/browser/preferences/LabPreferencesFragment;
.super Landroid/preference/PreferenceFragment;
.source "LabPreferencesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBrowserSettings:Lcom/android/browser/BrowserSettings;

.field private useInstantPref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/preferences/LabPreferencesFragment;->mBrowserSettings:Lcom/android/browser/BrowserSettings;

    .line 42
    const v1, 0x7f060006

    invoke-virtual {p0, v1}, Lcom/android/browser/preferences/LabPreferencesFragment;->addPreferencesFromResource(I)V

    .line 44
    const-string v1, "enable_quick_controls"

    invoke-virtual {p0, v1}, Lcom/android/browser/preferences/LabPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 45
    .local v0, e:Landroid/preference/Preference;
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 46
    const-string v1, "use_instant_search"

    invoke-virtual {p0, v1}, Lcom/android/browser/preferences/LabPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/preferences/LabPreferencesFragment;->useInstantPref:Landroid/preference/Preference;

    .line 47
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "--restart--"

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/browser/preferences/LabPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/browser/BrowserActivity;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/LabPreferencesFragment;->startActivity(Landroid/content/Intent;)V

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 51
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 52
    iget-object v1, p0, Lcom/android/browser/preferences/LabPreferencesFragment;->useInstantPref:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 56
    iget-object v1, p0, Lcom/android/browser/preferences/LabPreferencesFragment;->mBrowserSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/android/browser/preferences/LabPreferencesFragment;->mBrowserSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/browser/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, currentName:Ljava/lang/String;
    const-string v1, "google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/browser/preferences/LabPreferencesFragment;->useInstantPref:Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 62
    .end local v0           #currentName:Ljava/lang/String;
    :cond_0
    return-void
.end method
