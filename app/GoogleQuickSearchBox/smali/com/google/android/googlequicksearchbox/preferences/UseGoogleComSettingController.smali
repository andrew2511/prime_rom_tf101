.class public Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;
.super Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;
.source "UseGoogleComSettingController.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

.field private mUseGoogleComPreference:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Landroid/app/Activity;)V
    .locals 0
    .parameter "settings"
    .parameter "searchUrlHelper"
    .parameter "activity"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;-><init>(Lcom/google/android/googlequicksearchbox/SearchSettings;)V

    .line 48
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    .line 49
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mActivity:Landroid/app/Activity;

    .line 50
    invoke-interface {p1, p0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 51
    return-void
.end method

.method private getSummary(Z)Ljava/lang/String;
    .locals 5
    .parameter "alwaysGoogleCom"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0031

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    invoke-virtual {v4, p1}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getSearchDomain(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public filterPreference(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->isDotComAnyway()Z

    move-result v0

    return v0
.end method

.method public handlePreference(Landroid/preference/Preference;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 61
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mUseGoogleComPreference:Landroid/preference/CheckBoxPreference;

    .line 62
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mUseGoogleComPreference:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mUseGoogleComPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->getSummary(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mUseGoogleComPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;->onDestroy()V

    .line 90
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 91
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mUseGoogleComPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mUseGoogleComPreference:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 74
    const-string v0, "search_domain_apply_time"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mUseGoogleComPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mUseGoogleComPreference:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->mUseGoogleComPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/preferences/UseGoogleComSettingController;->getSummary(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 78
    :cond_0
    return-void
.end method
