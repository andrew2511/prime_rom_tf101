.class public Lcom/google/android/googlequicksearchbox/preferences/LegacySearchSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "LegacySearchSettingsActivity.java"


# instance fields
.field private mController:Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method private handlePreferenceGroup(Landroid/preference/PreferenceGroup;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/LegacySearchSettingsActivity;->mController:Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->handlePreference(Landroid/preference/Preference;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/LegacySearchSettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "SearchSettings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 43
    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/preferences/LegacySearchSettingsActivity;->addPreferencesFromResource(I)V

    .line 45
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/LegacySearchSettingsActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createPreferenceControllerFactory(Landroid/app/Activity;)Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/LegacySearchSettingsActivity;->mController:Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;

    .line 46
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/LegacySearchSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/preferences/LegacySearchSettingsActivity;->handlePreferenceGroup(Landroid/preference/PreferenceGroup;)V

    .line 47
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/LegacySearchSettingsActivity;->mController:Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->onCreateComplete()V

    .line 48
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/LegacySearchSettingsActivity;->mController:Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/LegacySearchSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->setScreen(Landroid/preference/PreferenceScreen;)V

    .line 49
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 62
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/LegacySearchSettingsActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getHelp()Lcom/google/android/googlequicksearchbox/Help;

    move-result-object v0

    const-string v1, "settings"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/googlequicksearchbox/Help;->addHelpMenuItem(Landroid/view/Menu;Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/LegacySearchSettingsActivity;->mController:Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->onDestroy()V

    .line 81
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 82
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 69
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/LegacySearchSettingsActivity;->mController:Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->onResume()V

    .line 70
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/LegacySearchSettingsActivity;->mController:Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;->onStop()V

    .line 75
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 76
    return-void
.end method
