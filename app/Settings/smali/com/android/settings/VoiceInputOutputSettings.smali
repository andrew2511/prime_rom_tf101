.class public Lcom/android/settings/VoiceInputOutputSettings;
.super Ljava/lang/Object;
.source "VoiceInputOutputSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAvailableRecognizersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mParent:Landroid/preference/PreferenceGroup;

.field private mRecognizerPref:Landroid/preference/ListPreference;

.field private mSettingsPref:Landroid/preference/PreferenceScreen;

.field private mVoiceInputCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 68
    return-void
.end method

.method private populateOrRemoveRecognizerPreference()V
    .locals 8

    .prologue
    .line 85
    iget-object v5, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v5}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.speech.RecognitionService"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 88
    .local v0, availableRecognitionServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 90
    .local v2, numAvailable:I
    if-nez v2, :cond_0

    .line 92
    iget-object v5, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v5}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceInputCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 113
    :goto_0
    return-void

    .line 93
    :cond_0
    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 96
    iget-object v5, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceInputCategory:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 99
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 100
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, recognizerComponent:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/VoiceInputOutputSettings;->mAvailableRecognizersMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v5, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v5}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voice_recognition_service"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, currentSetting:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/settings/VoiceInputOutputSettings;->updateSettingsLink(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    .end local v1           #currentSetting:Ljava/lang/String;
    .end local v3           #recognizerComponent:Ljava/lang/String;
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/VoiceInputOutputSettings;->populateRecognizerPreference(Ljava/util/List;)V

    goto :goto_0
.end method

.method private populateRecognizerPreference(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, recognizers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 117
    .local v5, size:I
    new-array v1, v5, [Ljava/lang/CharSequence;

    .line 118
    .local v1, entries:[Ljava/lang/CharSequence;
    new-array v6, v5, [Ljava/lang/CharSequence;

    .line 121
    .local v6, values:[Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v7}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "voice_recognition_service"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, currentSetting:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 128
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 129
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, recognizerComponent:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/VoiceInputOutputSettings;->mAvailableRecognizersMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v7, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v7}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v1, v2

    .line 136
    aput-object v3, v6, v2

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v3           #recognizerComponent:Ljava/lang/String;
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    iget-object v7, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 140
    iget-object v7, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 142
    iget-object v7, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 143
    iget-object v7, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, v0}, Lcom/android/settings/VoiceInputOutputSettings;->updateSettingsLink(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method private updateSettingsLink(Ljava/lang/String;)V
    .locals 14
    .parameter "currentSetting"

    .prologue
    .line 149
    iget-object v11, p0, Lcom/android/settings/VoiceInputOutputSettings;->mAvailableRecognizersMap:Ljava/util/HashMap;

    invoke-virtual {v11, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 150
    .local v2, currentRecognizer:Landroid/content/pm/ResolveInfo;
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 151
    .local v9, si:Landroid/content/pm/ServiceInfo;
    const/4 v6, 0x0

    .line 152
    .local v6, parser:Landroid/content/res/XmlResourceParser;
    const/4 v8, 0x0

    .line 154
    .local v8, settingsActivity:Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v11}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "android.speech"

    invoke-virtual {v9, v11, v12}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 156
    if-nez v6, :cond_1

    .line 157
    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No android.speech meta-data for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 182
    :catch_0
    move-exception v11

    move-object v3, v11

    .line 183
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    const-string v11, "VoiceInputOutputSettings"

    const-string v12, "error parsing recognition service meta-data"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 192
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_0
    :goto_0
    if-nez v8, :cond_6

    .line 194
    const-string v11, "VoiceInputOutputSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "no recognizer settings available for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v11, p0, Lcom/android/settings/VoiceInputOutputSettings;->mSettingsPref:Landroid/preference/PreferenceScreen;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 196
    iget-object v11, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceInputCategory:Landroid/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/settings/VoiceInputOutputSettings;->mSettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    :goto_1
    return-void

    .line 161
    :cond_1
    :try_start_2
    iget-object v11, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v11}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    iget-object v12, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v7

    .line 164
    .local v7, res:Landroid/content/res/Resources;
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 168
    .local v1, attrs:Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    .local v10, type:I
    const/4 v11, 0x1

    if-eq v10, v11, :cond_3

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 171
    :cond_3
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, nodeName:Ljava/lang/String;
    const-string v11, "recognition-service"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 173
    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v12, "Meta-data does not start with recognition-service tag"

    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 184
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v5           #nodeName:Ljava/lang/String;
    .end local v7           #res:Landroid/content/res/Resources;
    .end local v10           #type:I
    :catch_1
    move-exception v11

    move-object v3, v11

    .line 185
    .local v3, e:Ljava/io/IOException;
    :try_start_3
    const-string v11, "VoiceInputOutputSettings"

    const-string v12, "error parsing recognition service meta-data"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 177
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #attrs:Landroid/util/AttributeSet;
    .restart local v5       #nodeName:Ljava/lang/String;
    .restart local v7       #res:Landroid/content/res/Resources;
    .restart local v10       #type:I
    :cond_4
    :try_start_4
    sget-object v11, Lcom/android/internal/R$styleable;->RecognitionService:[I

    invoke-virtual {v7, v1, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 179
    .local v0, array:Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 181
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 189
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 186
    .end local v0           #array:Landroid/content/res/TypedArray;
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v5           #nodeName:Ljava/lang/String;
    .end local v7           #res:Landroid/content/res/Resources;
    .end local v10           #type:I
    :catch_2
    move-exception v11

    move-object v3, v11

    .line 187
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    const-string v11, "VoiceInputOutputSettings"

    const-string v12, "error parsing recognition service meta-data"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 189
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v11

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5
    throw v11

    .line 198
    :cond_6
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v4, i:Landroid/content/Intent;
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v11, v12, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 200
    iget-object v11, p0, Lcom/android/settings/VoiceInputOutputSettings;->mSettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 201
    iget-object v11, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v12}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mParent:Landroid/preference/PreferenceGroup;

    .line 73
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mParent:Landroid/preference/PreferenceGroup;

    const-string v1, "voice_input_category"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceInputCategory:Landroid/preference/PreferenceCategory;

    .line 74
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceInputCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "recognizer"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    .line 75
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceInputCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "recognizer_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mSettingsPref:Landroid/preference/PreferenceScreen;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mAvailableRecognizersMap:Ljava/util/HashMap;

    .line 81
    invoke-direct {p0}, Lcom/android/settings/VoiceInputOutputSettings;->populateOrRemoveRecognizerPreference()V

    .line 82
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 206
    iget-object v2, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    .line 207
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 210
    .local v1, setting:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_recognition_service"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 215
    invoke-direct {p0, v1}, Lcom/android/settings/VoiceInputOutputSettings;->updateSettingsLink(Ljava/lang/String;)V

    .line 217
    .end local v1           #setting:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
