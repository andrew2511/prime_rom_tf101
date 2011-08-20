.class public Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDefaultInputMethodSelectorVisibility:I

.field private mLanguagePref:Landroid/preference/Preference;

.field private mShowInputMethodSelectorPref:Landroid/preference/ListPreference;

.field private mTouchpadModeSelectorPref:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I

    return-void
.end method

.method private getTouchpadModeSetting(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 171
    move v0, p1

    .line 173
    .local v0, mode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "touchpad_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 177
    :goto_0
    return v0

    .line 175
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private loadInputMethodSelectorVisibility()I
    .locals 3

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "input_method_selector_visibility"

    iget v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private putTouchpadModeSetting(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "touchpad_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 183
    return-void
.end method

.method private saveInputMethodSelectorVisibility(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 136
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 137
    .local v0, intValue:I
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "input_method_selector_visibility"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 139
    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodSelectorSummary(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v0           #intValue:I
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateInputMethodSelectorSummary(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, inputMethodSelectorTitles:[Ljava/lang/String;
    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mShowInputMethodSelectorPref:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mShowInputMethodSelectorPref:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f050013

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->addPreferencesFromResource(I)V

    .line 60
    const v0, 0x7f080035

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "phone_language"

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 71
    :goto_1
    const-string v0, "input_method_selector"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mShowInputMethodSelectorPref:Landroid/preference/ListPreference;

    .line 73
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mShowInputMethodSelectorPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 75
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->loadInputMethodSelectorVisibility()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodSelectorSummary(I)V

    .line 77
    new-instance v0, Lcom/android/settings/VoiceInputOutputSettings;

    invoke-direct {v0, p0}, Lcom/android/settings/VoiceInputOutputSettings;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputOutputSettings;->onCreate()V

    .line 80
    const-string v0, "touchpad_mode_selector"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mTouchpadModeSelectorPref:Landroid/preference/ListPreference;

    .line 81
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mTouchpadModeSelectorPref:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getTouchpadModeSetting(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mTouchpadModeSelectorPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    return-void

    .line 69
    :cond_0
    const-string v0, "phone_language"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    goto :goto_1

    .line 62
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 113
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mShowInputMethodSelectorPref:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mShowInputMethodSelectorPref:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_1

    .line 153
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 154
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->saveInputMethodSelectorVisibility(Ljava/lang/String;)V

    .line 165
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 158
    .restart local p2
    :cond_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mTouchpadModeSelectorPref:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 159
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 160
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->putTouchpadModeSetting(I)V

    .line 161
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 119
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const/4 v1, 0x0

    .line 131
    :goto_0
    return v1

    .line 122
    :cond_0
    instance-of v1, p2, Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 131
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0

    .line 125
    :cond_2
    const-string v1, "current_input_method"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 128
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 97
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 98
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 100
    .local v0, conf:Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, locale:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 107
    .end local v0           #conf:Landroid/content/res/Configuration;
    .end local v1           #locale:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mShowInputMethodSelectorPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    return-void
.end method
