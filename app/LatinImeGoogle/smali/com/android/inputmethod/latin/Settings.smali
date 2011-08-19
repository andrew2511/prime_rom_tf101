.class public Lcom/android/inputmethod/latin/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAutoCorrectionThreshold:Landroid/preference/ListPreference;

.field private mBigramSuggestion:Landroid/preference/CheckBoxPreference;

.field private mDialog:Landroid/app/AlertDialog;

.field private mInputLanguageSelection:Landroid/preference/PreferenceScreen;

.field private mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

.field private mOkClicked:Z

.field private mQuickFixes:Landroid/preference/CheckBoxPreference;

.field private mSettingsKeyPreference:Landroid/preference/ListPreference;

.field private mShowCorrectionSuggestionsPreference:Landroid/preference/ListPreference;

.field private mVoiceModeOff:Ljava/lang/String;

.field private mVoiceOn:Z

.field private mVoicePreference:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/Settings;->mOkClicked:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/latin/Settings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/Settings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/Settings;)Lcom/android/inputmethod/voice/VoiceInputLogger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/inputmethod/latin/Settings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/Settings;->mOkClicked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/inputmethod/latin/Settings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateVoicePreference()V

    return-void
.end method

.method private ensureConsistencyOfAutoCorrectionSettings()V
    .locals 4

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, autoCorrectionOff:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mAutoCorrectionThreshold:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, currentSetting:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mBigramSuggestion:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 95
    return-void

    .line 94
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private showVoiceConfirmation()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 254
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/Settings;->mOkClicked:Z

    .line 255
    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/Settings;->showDialog(I)V

    .line 257
    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mDialog:Landroid/app/AlertDialog;

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 259
    .local v0, textView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 260
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 263
    .end local v0           #textView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private updateSettingsKeySummary()V
    .locals 4

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 251
    return-void
.end method

.method private updateShowCorrectionSuggestionsSummary()V
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mShowCorrectionSuggestionsPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mShowCorrectionSuggestionsPreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mShowCorrectionSuggestionsPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 245
    return-void
.end method

.method private updateVoiceModeSummary()V
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 269
    return-void
.end method

.method private updateVoicePreference()V
    .locals 3

    .prologue
    .line 333
    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 334
    .local v0, isChecked:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 335
    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->voiceInputSettingEnabled()V

    .line 339
    :goto_1
    return-void

    .line 333
    .end local v0           #isChecked:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 337
    .restart local v0       #isChecked:Z
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->voiceInputSettingDisabled()V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v12, 0x7f05001c

    invoke-virtual {p0, v12}, Lcom/android/inputmethod/latin/Settings;->addPreferencesFromResource(I)V

    .line 101
    const-string v12, "subtype_settings"

    invoke-virtual {p0, v12}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceScreen;

    iput-object v12, p0, Lcom/android/inputmethod/latin/Settings;->mInputLanguageSelection:Landroid/preference/PreferenceScreen;

    .line 102
    iget-object v12, p0, Lcom/android/inputmethod/latin/Settings;->mInputLanguageSelection:Landroid/preference/PreferenceScreen;

    invoke-virtual {v12, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 103
    const-string v12, "quick_fixes"

    invoke-virtual {p0, v12}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/inputmethod/latin/Settings;->mQuickFixes:Landroid/preference/CheckBoxPreference;

    .line 104
    const-string v12, "voice_mode"

    invoke-virtual {p0, v12}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/ListPreference;

    iput-object v12, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    .line 105
    const-string v12, "settings_key"

    invoke-virtual {p0, v12}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/ListPreference;

    iput-object v12, p0, Lcom/android/inputmethod/latin/Settings;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    .line 106
    const-string v12, "show_suggestions_setting"

    invoke-virtual {p0, v12}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/ListPreference;

    iput-object v12, p0, Lcom/android/inputmethod/latin/Settings;->mShowCorrectionSuggestionsPreference:Landroid/preference/ListPreference;

    .line 108
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 109
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 111
    const v12, 0x7f0c0037

    invoke-virtual {p0, v12}, Lcom/android/inputmethod/latin/Settings;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    .line 112
    const-string v12, "voice_mode"

    iget-object v13, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    invoke-interface {v1, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    const/4 v12, 0x1

    :goto_0
    iput-boolean v12, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceOn:Z

    .line 114
    invoke-static {p0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->getLogger(Landroid/content/Context;)Lcom/android/inputmethod/voice/VoiceInputLogger;

    move-result-object v12

    iput-object v12, p0, Lcom/android/inputmethod/latin/Settings;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    .line 116
    const-string v12, "auto_correction_threshold"

    invoke-virtual {p0, v12}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/ListPreference;

    iput-object v12, p0, Lcom/android/inputmethod/latin/Settings;->mAutoCorrectionThreshold:Landroid/preference/ListPreference;

    .line 117
    const-string v12, "bigram_suggestion"

    invoke-virtual {p0, v12}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/inputmethod/latin/Settings;->mBigramSuggestion:Landroid/preference/CheckBoxPreference;

    .line 118
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->ensureConsistencyOfAutoCorrectionSettings()V

    .line 120
    const-string v12, "general_settings"

    invoke-virtual {p0, v12}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 122
    .local v0, generalSettings:Landroid/preference/PreferenceGroup;
    const-string v12, "prediction_settings"

    invoke-virtual {p0, v12}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceGroup;

    .line 125
    .local v10, textCorrectionGroup:Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080002

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 127
    .local v6, showSettingsKeyOption:Z
    if-nez v6, :cond_0

    .line 128
    iget-object v12, p0, Lcom/android/inputmethod/latin/Settings;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080004

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 133
    .local v9, showVoiceKeyOption:Z
    if-nez v9, :cond_1

    .line 134
    iget-object v12, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 137
    :cond_1
    const-string v12, "vibrator"

    invoke-virtual {p0, v12}, Lcom/android/inputmethod/latin/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Vibrator;

    .line 138
    .local v11, vibrator:Landroid/os/Vibrator;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v12

    if-nez v12, :cond_3

    .line 139
    :cond_2
    const-string v12, "vibrate_on"

    invoke-virtual {p0, v12}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 142
    :cond_3
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080003

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 144
    .local v7, showSubtypeSettings:Z
    if-nez v7, :cond_4

    .line 145
    const-string v12, "subtype_settings"

    invoke-virtual {p0, v12}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 148
    :cond_4
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080005

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 150
    .local v3, showPopupOption:Z
    if-nez v3, :cond_5

    .line 151
    const-string v12, "popup_on"

    invoke-virtual {p0, v12}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 154
    :cond_5
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080006

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 156
    .local v5, showRecorrectionOption:Z
    if-nez v5, :cond_6

    .line 157
    const-string v12, "recorrection_enabled"

    invoke-virtual {p0, v12}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    :cond_6
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080007

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 162
    .local v4, showQuickFixesOption:Z
    if-nez v4, :cond_7

    .line 163
    const-string v12, "quick_fixes"

    invoke-virtual {p0, v12}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 166
    :cond_7
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080008

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 168
    .local v2, showBigramSuggestionsOption:Z
    if-nez v2, :cond_8

    .line 169
    const-string v12, "bigram_suggestion"

    invoke-virtual {p0, v12}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 172
    :cond_8
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080009

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 174
    .local v8, showUsabilityModeStudyOption:Z
    if-nez v8, :cond_9

    .line 175
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    const-string v13, "usability_study_mode"

    invoke-virtual {p0, v13}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    :cond_9
    return-void

    .line 112
    .end local v0           #generalSettings:Landroid/preference/PreferenceGroup;
    .end local v2           #showBigramSuggestionsOption:Z
    .end local v3           #showPopupOption:Z
    .end local v4           #showQuickFixesOption:Z
    .end local v5           #showRecorrectionOption:Z
    .end local v6           #showSettingsKeyOption:Z
    .end local v7           #showSubtypeSettings:Z
    .end local v8           #showUsabilityModeStudyOption:Z
    .end local v9           #showVoiceKeyOption:Z
    .end local v10           #textCorrectionGroup:Landroid/preference/PreferenceGroup;
    .end local v11           #vibrator:Landroid/os/Vibrator;
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .parameter "id"

    .prologue
    const v11, 0x7f0c0072

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 273
    packed-switch p1, :pswitch_data_0

    .line 317
    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown dialog "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v5, 0x0

    :goto_0
    return-object v5

    .line 275
    :pswitch_0
    new-instance v2, Lcom/android/inputmethod/latin/Settings$1;

    invoke-direct {v2, p0}, Lcom/android/inputmethod/latin/Settings$1;-><init>(Lcom/android/inputmethod/latin/Settings;)V

    .line 288
    .local v2, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c0070

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 296
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isVoiceSupported(Ljava/lang/String;)Z

    move-result v3

    .line 300
    .local v3, localeSupported:Z
    if-eqz v3, :cond_0

    .line 301
    new-array v5, v10, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v11}, Lcom/android/inputmethod/latin/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "\n\n"

    aput-object v6, v5, v8

    const v6, 0x7f0c0074

    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 310
    .local v4, message:Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 311
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 312
    .local v1, dialog:Landroid/app/AlertDialog;
    iput-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mDialog:Landroid/app/AlertDialog;

    .line 313
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 314
    iget-object v5, p0, Lcom/android/inputmethod/latin/Settings;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v5}, Lcom/android/inputmethod/voice/VoiceInputLogger;->settingsWarningDialogShown()V

    move-object v5, v1

    .line 315
    goto :goto_0

    .line 305
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v4           #message:Ljava/lang/CharSequence;
    :cond_0
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/CharSequence;

    const v6, 0x7f0c0071

    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "\n\n"

    aput-object v6, v5, v8

    invoke-virtual {p0, v11}, Lcom/android/inputmethod/latin/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v9

    const-string v6, "\n\n"

    aput-object v6, v5, v10

    const/4 v6, 0x4

    const v7, 0x7f0c0074

    invoke-virtual {p0, v7}, Lcom/android/inputmethod/latin/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4       #message:Ljava/lang/CharSequence;
    goto :goto_1

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 201
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 202
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->settingsWarningDialogDismissed()V

    .line 325
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Settings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 330
    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "pref"

    .prologue
    .line 224
    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mInputLanguageSelection:Landroid/preference/PreferenceScreen;

    if-ne p1, v1, :cond_1

    .line 226
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 230
    const-string v0, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    .line 234
    .local v0, action:Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/Settings;->startActivity(Landroid/content/Intent;)V

    .line 235
    const/4 v1, 0x1

    .line 237
    .end local v0           #action:Ljava/lang/String;
    :goto_1
    return v1

    .line 232
    :cond_0
    const-string v0, "com.android.inputmethod.latin.INPUT_LANGUAGE_SELECTION"

    .restart local v0       #action:Ljava/lang/String;
    goto :goto_0

    .line 237
    .end local v0           #action:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 181
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 182
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v1}, Landroid/text/AutoText;->getSize(Landroid/view/View;)I

    move-result v0

    .line 183
    .local v0, autoTextSize:I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 184
    const-string v1, "prediction_settings"

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mQuickFixes:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    :cond_0
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 193
    :goto_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateSettingsKeySummary()V

    .line 194
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateShowCorrectionSuggestionsSummary()V

    .line 195
    return-void

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateVoiceModeSummary()V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 206
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 208
    const-string v0, "voice_mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceOn:Z

    if-nez v0, :cond_0

    .line 209
    const-string v0, "voice_mode"

    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->showVoiceConfirmation()V

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->ensureConsistencyOfAutoCorrectionSettings()V

    .line 215
    const-string v0, "voice_mode"

    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/Settings;->mVoiceOn:Z

    .line 217
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateVoiceModeSummary()V

    .line 218
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateSettingsKeySummary()V

    .line 219
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Settings;->updateShowCorrectionSuggestionsSummary()V

    .line 220
    return-void

    .line 215
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
