.class public abstract Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragmentBase.java"


# instance fields
.field private mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

.field private mController:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createController()Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createPreferenceControllerFactory(Landroid/app/Activity;)Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;

    move-result-object v0

    return-object v0
.end method

.method protected getController()Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->mController:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    return-object v0
.end method

.method protected getPreferencesName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "SearchSettings"

    return-object v0
.end method

.method protected abstract getPreferencesResourceId()I
.end method

.method protected handlePreferenceGroup(Landroid/preference/PreferenceGroup;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->mController:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->handlePreference(Landroid/preference/Preference;)V

    .line 67
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    .line 40
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->createController()Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->mController:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    .line 42
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->getPreferencesResourceId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->addPreferencesFromResource(I)V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->handlePreferenceGroup(Landroid/preference/PreferenceGroup;)V

    .line 48
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->mController:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->onCreateComplete()V

    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->mController:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->onDestroy()V

    .line 84
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 85
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 72
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->mController:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->onResume()V

    .line 73
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->mController:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->onStop()V

    .line 78
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 79
    return-void
.end method
