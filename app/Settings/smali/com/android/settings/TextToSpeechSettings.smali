.class public Lcom/android/settings/TextToSpeechSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field private mDefaultCountry:Ljava/lang/String;

.field private mDefaultEng:Ljava/lang/String;

.field private mDefaultLanguage:Ljava/lang/String;

.field private mDefaultLocPref:Landroid/preference/ListPreference;

.field private mDefaultLocVariant:Ljava/lang/String;

.field private mDefaultRate:I

.field private mDefaultRatePref:Landroid/preference/ListPreference;

.field private mDefaultSynthPref:Landroid/preference/ListPreference;

.field private mDemoStringIndex:I

.field private mEnableDemo:Z

.field private mInstallData:Landroid/preference/Preference;

.field private mPlayExample:Landroid/preference/Preference;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mTtsStarted:Z

.field private mUseDefaultPref:Landroid/preference/CheckBoxPreference;

.field private mVoicesMissing:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 82
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    .line 83
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mInstallData:Landroid/preference/Preference;

    .line 84
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mUseDefaultPref:Landroid/preference/CheckBoxPreference;

    .line 85
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    .line 86
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    .line 87
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    .line 88
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    .line 92
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRate:I

    .line 95
    iput v2, p0, Lcom/android/settings/TextToSpeechSettings;->mDemoStringIndex:I

    .line 97
    iput-boolean v2, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    .line 98
    iput-boolean v2, p0, Lcom/android/settings/TextToSpeechSettings;->mVoicesMissing:Z

    .line 100
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 101
    iput-boolean v2, p0, Lcom/android/settings/TextToSpeechSettings;->mTtsStarted:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TextToSpeechSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->loadEngines()V

    return-void
.end method

.method private addEngineSpecificSettings(Landroid/content/Context;)V
    .locals 18
    .parameter "context"

    .prologue
    .line 169
    const-string v13, "tts_engines_section"

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/settings/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 170
    .local v5, enginesCategory:Landroid/preference/PreferenceGroup;
    new-instance v7, Landroid/content/Intent;

    const-string v13, "android.intent.action.START_TTS_ENGINE"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v7, intent:Landroid/content/Intent;
    const/4 v13, 0x0

    new-array v4, v13, [Landroid/content/pm/ResolveInfo;

    .line 172
    .local v4, enginesArray:[Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TextToSpeechSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 173
    .local v9, pm:Landroid/content/pm/PackageManager;
    const/4 v13, 0x0

    invoke-virtual {v9, v7, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4           #enginesArray:[Landroid/content/pm/ResolveInfo;
    check-cast v4, [Landroid/content/pm/ResolveInfo;

    .line 174
    .restart local v4       #enginesArray:[Landroid/content/pm/ResolveInfo;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v13, v4

    if-ge v6, v13, :cond_2

    .line 175
    const-string v11, ""

    .line 176
    .local v11, prefKey:Ljava/lang/String;
    aget-object v13, v4, v6

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 177
    .local v8, pluginPackageName:Ljava/lang/String;
    aget-object v13, v4, v6

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v14, "com.svox.pico"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 178
    new-instance v3, Landroid/preference/CheckBoxPreference;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 179
    .local v3, chkbxPref:Landroid/preference/CheckBoxPreference;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ENABLED_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 180
    invoke-virtual {v3, v11}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 181
    aget-object v13, v4, v6

    invoke-virtual {v13, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 184
    .end local v3           #chkbxPref:Landroid/preference/CheckBoxPreference;
    :cond_0
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/android/settings/TextToSpeechSettings;->pluginHasSettings(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 185
    new-instance v10, Landroid/preference/Preference;

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 186
    .local v10, pref:Landroid/preference/Preference;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SETTINGS_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 187
    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 188
    aget-object v13, v4, v6

    invoke-virtual {v13, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TextToSpeechSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080498

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aget-object v17, v4, v6

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 191
    .local v12, settingsLabel:Ljava/lang/CharSequence;
    invoke-virtual {v10, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 192
    new-instance v13, Lcom/android/settings/TextToSpeechSettings$1;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/settings/TextToSpeechSettings$1;-><init>(Lcom/android/settings/TextToSpeechSettings;Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 201
    invoke-virtual {v5, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 174
    .end local v10           #pref:Landroid/preference/Preference;
    .end local v12           #settingsLabel:Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 204
    .end local v8           #pluginPackageName:Ljava/lang/String;
    .end local v11           #prefKey:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private checkVoiceData()V
    .locals 7

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 286
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 287
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 290
    .local v4, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 291
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 292
    .local v0, currentActivityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 293
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const/16 v5, 0x7b9

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 290
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    .end local v0           #currentActivityInfo:Landroid/content/pm/ActivityInfo;
    :cond_1
    return-void
.end method

.method private getSampleText()V
    .locals 7

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 326
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 329
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.speech.tts.engine.GET_SAMPLE_TEXT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string v5, "language"

    iget-object v6, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string v5, "country"

    iget-object v6, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v5, "variant"

    iget-object v6, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 335
    .local v4, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 336
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 337
    .local v0, currentActivityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 338
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const/16 v5, 0x7bf

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 335
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    .end local v0           #currentActivityInfo:Landroid/content/pm/ActivityInfo;
    :cond_1
    return-void
.end method

.method private hasLangPref()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 669
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 670
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v4, "tts_default_lang"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v6, :cond_1

    :cond_0
    move v4, v5

    .line 682
    :goto_0
    return v4

    .line 674
    :cond_1
    const-string v4, "tts_default_country"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, country:Ljava/lang/String;
    if-nez v0, :cond_2

    move v4, v5

    .line 676
    goto :goto_0

    .line 678
    :cond_2
    const-string v4, "tts_default_variant"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 679
    .local v3, variant:Ljava/lang/String;
    if-nez v3, :cond_3

    move v4, v5

    .line 680
    goto :goto_0

    :cond_3
    move v4, v6

    .line 682
    goto :goto_0
.end method

.method private initClickers()V
    .locals 1

    .prologue
    .line 218
    const-string v0, "tts_play_example"

    invoke-virtual {p0, v0}, Lcom/android/settings/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    .line 219
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 221
    const-string v0, "tts_install_data"

    invoke-virtual {p0, v0}, Lcom/android/settings/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mInstallData:Landroid/preference/Preference;

    .line 222
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mInstallData:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 223
    return-void
.end method

.method private initDefaultLang()V
    .locals 4

    .prologue
    .line 638
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->hasLangPref()Z

    move-result v1

    if-nez v1, :cond_0

    .line 640
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->isCurrentLocSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 642
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->useCurrentLocAsDefault()V

    .line 651
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 652
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "tts_default_lang"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 653
    const-string v1, "tts_default_country"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    .line 654
    const-string v1, "tts_default_variant"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    .line 657
    iget-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDemoStringIndex:I

    .line 659
    iget v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDemoStringIndex:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 660
    iget-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    iget v2, p0, Lcom/android/settings/TextToSpeechSettings;->mDemoStringIndex:I

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 662
    :cond_1
    return-void

    .line 645
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->useSupportedLocAsDefault()V

    goto :goto_0
.end method

.method private initDefaultSettings()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 233
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 234
    .local v3, useDefault:I
    const-string v4, "toggle_use_default_tts_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mUseDefaultPref:Landroid/preference/CheckBoxPreference;

    .line 236
    :try_start_0
    const-string v4, "tts_use_defaults"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 242
    :goto_0
    iget-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mUseDefaultPref:Landroid/preference/CheckBoxPreference;

    if-ne v3, v5, :cond_1

    :goto_1
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 243
    iget-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mUseDefaultPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 246
    const-string v4, "tts_default_synth"

    invoke-virtual {p0, v4}, Lcom/android/settings/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    .line 247
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->loadEngines()V

    .line 248
    iget-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 249
    const-string v4, "tts_default_synth"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, engine:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 252
    const-string v1, "com.svox.pico"

    .line 253
    const-string v4, "tts_default_synth"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 255
    :cond_0
    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    .line 258
    const-string v4, "tts_default_rate"

    invoke-virtual {p0, v4}, Lcom/android/settings/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    .line 260
    :try_start_1
    const-string v4, "tts_default_rate"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRate:I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 266
    :goto_2
    iget-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    iget v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 267
    iget-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 270
    iget-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRate:I

    int-to-float v5, v5

    const/high16 v6, 0x42c8

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 274
    const-string v4, "tts_default_lang"

    invoke-virtual {p0, v4}, Lcom/android/settings/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    .line 275
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->initDefaultLang()V

    .line 276
    iget-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 277
    return-void

    .line 237
    .end local v1           #engine:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 239
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v3, 0x0

    .line 240
    const-string v4, "tts_use_defaults"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 242
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 261
    .restart local v1       #engine:Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 263
    .restart local v0       #e:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v4, 0x64

    iput v4, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRate:I

    .line 264
    const-string v4, "tts_default_rate"

    iget v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method private installVoiceData()V
    .locals 7

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 306
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 307
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 309
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 311
    .local v4, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 312
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 313
    .local v0, currentActivityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 314
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0, v2}, Lcom/android/settings/TextToSpeechSettings;->startActivity(Landroid/content/Intent;)V

    .line 311
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    .end local v0           #currentActivityInfo:Landroid/content/pm/ActivityInfo;
    :cond_1
    return-void
.end method

.method private isCurrentLocSupported()Z
    .locals 3

    .prologue
    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, currentLocID:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadEngines()V
    .locals 19

    .prologue
    .line 721
    const-string v17, "tts_default_synth"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    .line 725
    new-instance v8, Landroid/content/Intent;

    const-string v17, "android.intent.action.START_TTS_ENGINE"

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 726
    .local v8, intent:Landroid/content/Intent;
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Landroid/content/pm/ResolveInfo;

    move-object v4, v0

    .line 727
    .local v4, enginesArray:[Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TextToSpeechSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 728
    .local v10, pm:Landroid/content/pm/PackageManager;
    const/16 v17, 0x0

    move-object v0, v10

    move-object v1, v8

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4           #enginesArray:[Landroid/content/pm/ResolveInfo;
    check-cast v4, [Landroid/content/pm/ResolveInfo;

    .line 729
    .restart local v4       #enginesArray:[Landroid/content/pm/ResolveInfo;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 730
    .local v5, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 731
    .local v15, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const-string v3, ""

    .line 732
    .local v3, enabledEngines:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object v0, v4

    array-length v0, v0

    move/from16 v17, v0

    move v0, v7

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 733
    aget-object v17, v4, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v9, v0

    .line 734
    .local v9, pluginPackageName:Ljava/lang/String;
    const-string v17, "com.svox.pico"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 735
    aget-object v17, v4, v7

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 738
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ENABLED_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    .line 740
    .local v11, pref:Landroid/preference/CheckBoxPreference;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 741
    aget-object v17, v4, v7

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 747
    .end local v9           #pluginPackageName:Ljava/lang/String;
    .end local v11           #pref:Landroid/preference/CheckBoxPreference;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 748
    .local v12, resolver:Landroid/content/ContentResolver;
    const-string v17, "tts_enabled_plugins"

    move-object v0, v12

    move-object/from16 v1, v17

    move-object v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 750
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object v6, v0

    .line 751
    .local v6, entriesArray:[Ljava/lang/CharSequence;
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    .line 753
    .local v16, valuesArray:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3           #enabledEngines:Ljava/lang/String;
    check-cast v3, [Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 757
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "tts_default_synth"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 758
    .local v13, selectedEngine:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v14

    .line 759
    .local v14, selectedEngineIndex:I
    const/16 v17, -0x1

    move v0, v14

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const-string v18, "com.svox.pico"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v14

    .line 762
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 763
    return-void
.end method

.method private parseLocaleInfo(Ljava/lang/String;)V
    .locals 2
    .parameter "locale"

    .prologue
    .line 616
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "-"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    .local v0, tokenizer:Ljava/util/StringTokenizer;
    const-string v1, ""

    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 618
    const-string v1, ""

    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    .line 619
    const-string v1, ""

    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    .line 620
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 623
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 624
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    .line 626
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 627
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    .line 629
    :cond_2
    return-void
.end method

.method private pluginHasSettings(Ljava/lang/String;)Z
    .locals 4
    .parameter "pluginPackageName"

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 208
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 209
    .local v0, i:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".EngineSettings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const/high16 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 211
    const/4 v2, 0x1

    .line 213
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateWidgetState()V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    iget-boolean v1, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 607
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mUseDefaultPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 608
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    iget-boolean v1, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 609
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    iget-boolean v1, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 611
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mInstallData:Landroid/preference/Preference;

    iget-boolean v1, p0, Lcom/android/settings/TextToSpeechSettings;->mVoicesMissing:Z

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 612
    return-void
.end method

.method private useCurrentLocAsDefault()V
    .locals 4

    .prologue
    .line 701
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 702
    .local v0, currentLocale:Ljava/util/Locale;
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 703
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "tts_default_lang"

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 704
    const-string v2, "tts_default_country"

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 705
    const-string v2, "tts_default_variant"

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 706
    return-void
.end method

.method private useSupportedLocAsDefault()V
    .locals 3

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 714
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "tts_default_lang"

    const-string v2, "eng"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 715
    const-string v1, "tts_default_country"

    const-string v2, "USA"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 716
    const-string v1, "tts_default_variant"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 717
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 23
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 379
    const/16 v18, 0x7b9

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 380
    if-nez p3, :cond_1

    .line 383
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    .line 384
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TextToSpeechSettings;->mVoicesMissing:Z

    .line 385
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/TextToSpeechSettings;->updateWidgetState()V

    .line 490
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 388
    .restart local p1
    :cond_1
    const-string v18, "availableVoices"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 390
    .local v4, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v18, "unavailableVoices"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 392
    .local v17, unavailable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    if-nez v17, :cond_3

    .line 395
    :cond_2
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    .line 396
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TextToSpeechSettings;->mVoicesMissing:Z

    .line 397
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/TextToSpeechSettings;->updateWidgetState()V

    goto :goto_0

    .line 400
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_f

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 402
    new-instance v18, Landroid/speech/tts/TextToSpeech;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 404
    :cond_4
    const-string v18, "tts_default_lang"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/ListPreference;

    .line 406
    .local v16, ttsLanguagePref:Landroid/preference/ListPreference;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object v6, v0

    .line 407
    .local v6, entries:[Ljava/lang/CharSequence;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object v7, v0

    .line 408
    .local v7, entryValues:[Ljava/lang/CharSequence;
    const/4 v14, -0x1

    .line 409
    .local v14, selectedLanguageIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    move-object v15, v0

    .line 410
    .local v15, selectedLanguagePref:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_5

    .line 411
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 414
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_6

    .line 415
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 418
    :cond_6
    const/4 v8, 0x0

    .end local p1
    .local v8, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    move v0, v8

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    .line 419
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v18, "-"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 420
    .local v9, langCountryVariant:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 421
    .local v11, loc:Ljava/util/Locale;
    move-object v0, v9

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 422
    new-instance v11, Ljava/util/Locale;

    .end local v11           #loc:Ljava/util/Locale;
    const/16 v18, 0x0

    aget-object v18, v9, v18

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 429
    .restart local v11       #loc:Ljava/util/Locale;
    :cond_7
    :goto_2
    if-eqz v11, :cond_8

    .line 430
    invoke-virtual {v11}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v8

    .line 431
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    aput-object p1, v7, v8

    .line 432
    aget-object v18, v7, v8

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 433
    move v14, v8

    .line 418
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 423
    :cond_9
    move-object v0, v9

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 424
    new-instance v11, Ljava/util/Locale;

    .end local v11           #loc:Ljava/util/Locale;
    const/16 v18, 0x0

    aget-object v18, v9, v18

    const/16 v19, 0x1

    aget-object v19, v9, v19

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v11       #loc:Ljava/util/Locale;
    goto :goto_2

    .line 425
    :cond_a
    move-object v0, v9

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 426
    new-instance v11, Ljava/util/Locale;

    .end local v11           #loc:Ljava/util/Locale;
    const/16 v18, 0x0

    aget-object v18, v9, v18

    const/16 v19, 0x1

    aget-object v19, v9, v19

    const/16 v20, 0x2

    aget-object v20, v9, v20

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v11       #loc:Ljava/util/Locale;
    goto :goto_2

    .line 437
    .end local v9           #langCountryVariant:[Ljava/lang/String;
    .end local v11           #loc:Ljava/util/Locale;
    :cond_b
    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 438
    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 439
    const/16 v18, -0x1

    move v0, v14

    move/from16 v1, v18

    if-le v0, v1, :cond_c

    .line 440
    move-object/from16 v0, v16

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 442
    :cond_c
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v18, v0

    new-instance v19, Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v19 .. v22}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v10

    .line 446
    .local v10, languageResult:I
    if-gez v10, :cond_e

    .line 447
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 448
    .local v5, currentLocale:Ljava/util/Locale;
    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 449
    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    .line 450
    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v18, v0

    new-instance v19, Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v19 .. v22}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v10

    .line 455
    if-gez v10, :cond_d

    .line 456
    invoke-virtual/range {v16 .. v16}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/TextToSpeechSettings;->parseLocaleInfo(Ljava/lang/String;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v18, v0

    new-instance v19, Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v19 .. v22}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 460
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 461
    .local v12, resolver:Landroid/content/ContentResolver;
    const-string v18, "tts_default_lang"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 462
    const-string v18, "tts_default_country"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 463
    const-string v18, "tts_default_variant"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 469
    .end local v5           #currentLocale:Ljava/util/Locale;
    .end local v6           #entries:[Ljava/lang/CharSequence;
    .end local v7           #entryValues:[Ljava/lang/CharSequence;
    .end local v8           #i:I
    .end local v10           #languageResult:I
    .end local v12           #resolver:Landroid/content/ContentResolver;
    .end local v14           #selectedLanguageIndex:I
    .end local v15           #selectedLanguagePref:Ljava/lang/String;
    .end local v16           #ttsLanguagePref:Landroid/preference/ListPreference;
    :cond_e
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_10

    .line 470
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TextToSpeechSettings;->mVoicesMissing:Z

    .line 475
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/TextToSpeechSettings;->updateWidgetState()V

    goto/16 :goto_0

    .line 466
    .restart local p1
    :cond_f
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    goto :goto_3

    .line 472
    .end local p1
    :cond_10
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TextToSpeechSettings;->mVoicesMissing:Z

    goto :goto_4

    .line 476
    .end local v4           #available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #unavailable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p1
    :cond_11
    const/16 v18, 0x7bf

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 477
    if-nez p2, :cond_13

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const v19, 0x7f080491

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 479
    .local v13, sample:Ljava/lang/String;
    if-eqz p3, :cond_12

    const-string v18, "sampleText"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_12

    .line 480
    const-string v18, "sampleText"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 482
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object v1, v13

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto/16 :goto_0

    .line 487
    .end local v13           #sample:Ljava/lang/String;
    :cond_13
    const-string v18, "TextToSpeechSettings"

    const-string v19, "Did not have a sample string for the requested language"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 112
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const v2, 0x7f050029

    invoke-virtual {p0, v2}, Lcom/android/settings/TextToSpeechSettings;->addPreferencesFromResource(I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 116
    .local v0, activity:Landroid/app/Activity;
    invoke-direct {p0, v0}, Lcom/android/settings/TextToSpeechSettings;->addEngineSpecificSettings(Landroid/content/Context;)V

    .line 118
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 120
    iput-boolean v3, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    .line 121
    iput-boolean v3, p0, Lcom/android/settings/TextToSpeechSettings;->mTtsStarted:Z

    .line 123
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 124
    .local v1, currentLocale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 125
    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    .line 126
    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    .line 128
    new-instance v2, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v2, v0, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v2, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 129
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->initClickers()V

    .line 130
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 149
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 152
    :cond_0
    return-void
.end method

.method public onInit(I)V
    .locals 6
    .parameter "status"

    .prologue
    const/4 v5, 0x1

    .line 349
    if-nez p1, :cond_3

    .line 350
    iput-boolean v5, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    .line 351
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 352
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 355
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 358
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Ljava/util/Locale;

    iget-object v2, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 361
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->initDefaultSettings()V

    .line 362
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->updateWidgetState()V

    .line 363
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->checkVoiceData()V

    .line 364
    iput-boolean v5, p0, Lcom/android/settings/TextToSpeechSettings;->mTtsStarted:Z

    .line 365
    const-string v0, "TextToSpeechSettings"

    const-string v1, "TTS engine for settings screen initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->updateWidgetState()V

    .line 371
    return-void

    .line 367
    :cond_3
    const-string v0, "TextToSpeechSettings"

    const-string v1, "TTS engine for settings screen failed to initialize successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 157
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultSynthPref:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 166
    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 493
    const-string v5, "toggle_use_default_tts_settings"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 495
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v11

    .line 496
    .local v4, value:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tts_use_defaults"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 498
    const-string v5, "TextToSpeechSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TTS use default settings is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .end local v4           #value:I
    .end local p2
    :cond_0
    :goto_1
    return v11

    .restart local p2
    :cond_1
    move v4, v10

    .line 495
    goto :goto_0

    .line 499
    :cond_2
    const-string v5, "tts_default_rate"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 501
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRate:I

    .line 503
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tts_default_rate"

    iget v7, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 505
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v5, :cond_3

    .line 506
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v6, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRate:I

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 508
    :cond_3
    const-string v5, "TextToSpeechSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TTS default rate is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultRate:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 509
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 510
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v5, "TextToSpeechSettings"

    const-string v6, "could not persist default TTS rate setting"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 512
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_4
    const-string v5, "tts_default_lang"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 514
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 515
    .local v3, resolver:Landroid/content/ContentResolver;
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    invoke-direct {p0, v5}, Lcom/android/settings/TextToSpeechSettings;->parseLocaleInfo(Ljava/lang/String;)V

    .line 516
    const-string v5, "tts_default_lang"

    iget-object v6, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 517
    const-string v5, "tts_default_country"

    iget-object v6, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 518
    const-string v5, "tts_default_variant"

    iget-object v6, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 519
    const-string v5, "TextToSpeechSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TTS default lang/country/variant set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v5, :cond_5

    .line 522
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v6, Ljava/util/Locale;

    iget-object v7, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLanguage:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultCountry:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocVariant:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 524
    :cond_5
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultLocPref:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v5, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 525
    .local v2, newIndex:I
    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " selected is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v5, -0x1

    if-le v2, v5, :cond_6

    move v5, v2

    :goto_2
    iput v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDemoStringIndex:I

    goto/16 :goto_1

    :cond_6
    move v5, v10

    goto :goto_2

    .line 527
    .end local v2           #newIndex:I
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .restart local p2
    :cond_7
    const-string v5, "tts_default_synth"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 528
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    .line 529
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tts_default_synth"

    iget-object v7, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 530
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v5, :cond_8

    .line 531
    iget-object v5, p0, Lcom/android/settings/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/android/settings/TextToSpeechSettings;->mDefaultEng:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/speech/tts/TextToSpeech;->setEngineByPackageName(Ljava/lang/String;)I

    .line 532
    iput-boolean v10, p0, Lcom/android/settings/TextToSpeechSettings;->mEnableDemo:Z

    .line 533
    iput-boolean v10, p0, Lcom/android/settings/TextToSpeechSettings;->mVoicesMissing:Z

    .line 534
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->updateWidgetState()V

    .line 535
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->checkVoiceData()V

    .line 537
    :cond_8
    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The default synth is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 548
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 551
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->getSampleText()V

    move v0, v1

    .line 560
    :goto_0
    return v0

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings;->mInstallData:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 555
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->installVoiceData()V

    .line 557
    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->finish()V

    move v0, v1

    .line 558
    goto :goto_0

    .line 560
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 565
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v8

    .line 601
    :goto_0
    return v3

    .line 569
    :cond_0
    instance-of v3, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    .line 570
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v1, v0

    .line 571
    .local v1, chkPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "toggle_use_default_tts_settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 572
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 573
    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 574
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f080496

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/TextToSpeechSettings$3;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/TextToSpeechSettings$3;-><init>(Lcom/android/settings/TextToSpeechSettings;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/android/settings/TextToSpeechSettings$2;

    invoke-direct {v5, p0}, Lcom/android/settings/TextToSpeechSettings$2;-><init>(Lcom/android/settings/TextToSpeechSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 594
    .local v2, d:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .end local v2           #d:Landroid/app/AlertDialog;
    :goto_1
    move v3, v9

    .line 598
    goto :goto_0

    .line 596
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->loadEngines()V

    goto :goto_1

    .end local v1           #chkPref:Landroid/preference/CheckBoxPreference;
    :cond_2
    move v3, v8

    .line 601
    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 136
    iget-boolean v0, p0, Lcom/android/settings/TextToSpeechSettings;->mTtsStarted:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->updateWidgetState()V

    .line 141
    invoke-direct {p0}, Lcom/android/settings/TextToSpeechSettings;->checkVoiceData()V

    .line 143
    :cond_0
    return-void
.end method
