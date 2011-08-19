.class public Lcom/google/android/voicesearch/VoiceSearchPreferences;
.super Landroid/preference/PreferenceActivity;
.source "VoiceSearchPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final ACTION_PERSONALIZATION_OPT_IN:Ljava/lang/String; = "com.google.android.voicesearch.action.PERSONALIZATION_OPT_IN"

.field static final EXTRA_PERSONALIZATION_OPT_IN_ENABLE:Ljava/lang/String; = "PERSONALIZATION_OPT_IN_ENABLE"

.field public static final KEY_LANGUAGE:Ljava/lang/String; = "language"

.field public static final KEY_MANAGE_PERSONALIZATION:Ljava/lang/String; = "managePersonalization"

.field public static final KEY_PERSONALIZATION_BOOL:Ljava/lang/String; = "personalizedResults"

.field public static final KEY_PROFANITY_FILTER:Ljava/lang/String; = "profanityFilter"

.field public static final KEY_SAFE_SEARCH:Ljava/lang/String; = "safeSearch"

.field public static final KEY_SHOW_FIRST_RUN_DIALOG:Ljava/lang/String; = "showFirstRunDialog"

.field public static final KEY_SHOW_HINTS_ON_SEARCH:Ljava/lang/String; = "showHintsOnSearch"

.field public static final PREFERENCES_NAME:Ljava/lang/String; = "VoiceSearchPreferences"

.field public static final SAFE_SEARCH_MODERATE:Ljava/lang/String; = "moderate"

.field public static final SAFE_SEARCH_OFF:Ljava/lang/String; = "off"

.field public static final SAFE_SEARCH_STRICT:Ljava/lang/String; = "strict"

.field private static final TAG:Ljava/lang/String; = "VoiceSearchPreferences"


# instance fields
.field private mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

.field private mLanguagePref:Landroid/preference/ListPreference;

.field private mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

.field private mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

.field private mManagePersonalizationPref:Landroid/preference/PreferenceScreen;

.field private mPersonalizationBoolPref:Landroid/preference/CheckBoxPreference;

.field private mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private setSafeSearchSummary(Landroid/preference/ListPreference;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 215
    const-string v0, "off"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const v0, 0x7f09073e

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090741

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 224
    return-void

    .line 217
    :cond_0
    const-string v0, "strict"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    const v0, 0x7f090740

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 220
    :cond_1
    const v0, 0x7f09073f

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setShouldShowFirstRunMessage(Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 129
    const-string v0, "VoiceSearchPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showFirstRunDialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 134
    return-void
.end method

.method private setUpLanguagePref()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 183
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageChoices()[Ljava/lang/String;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 187
    iget-object v2, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 197
    :cond_0
    const-string v0, "VoiceSearchPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLanguagePref.getValue() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getLanguageOverride()Ljava/lang/String;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_1

    .line 203
    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    const v2, 0x7f090739

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 211
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    iget-object v2, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public static shouldShowFirstRunMessage(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 124
    const-string v0, "VoiceSearchPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showFirstRunDialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-static {p0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v1

    .line 88
    invoke-interface {v1}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 89
    invoke-interface {v1}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getPersonalizationPrefManager()Lcom/google/android/voicesearch/PersonalizationPrefManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

    .line 90
    invoke-interface {v1}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getVoiceSearchLogger()Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    .line 94
    invoke-virtual {p0}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v2, "VoiceSearchPreferences"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 97
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->addPreferencesFromResource(I)V

    .line 100
    const-string v0, "safeSearch"

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 101
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 102
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->setSafeSearchSummary(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 104
    const-string v0, "language"

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    .line 105
    invoke-interface {v1}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLanguagePrefManager()Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    .line 106
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    invoke-direct {p0}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->setUpLanguagePref()V

    .line 109
    const-string v0, "personalizedResults"

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mPersonalizationBoolPref:Landroid/preference/CheckBoxPreference;

    .line 110
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mPersonalizationBoolPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 112
    const-string v0, "managePersonalization"

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mManagePersonalizationPref:Landroid/preference/PreferenceScreen;

    .line 113
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mManagePersonalizationPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 115
    invoke-virtual {p0}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/PersonalizationPrefManager;->isPersonalizationAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mPersonalizationBoolPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 119
    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mManagePersonalizationPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 121
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 139
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 161
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 162
    const-string v1, "safeSearch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    check-cast p1, Landroid/preference/ListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->setSafeSearchSummary(Landroid/preference/ListPreference;Ljava/lang/String;)V

    :cond_0
    :goto_0
    move v0, v4

    .line 179
    :goto_1
    return v0

    .line 164
    :cond_1
    const-string v1, "language"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/LanguagePrefManager;->updateLanguageSetting(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 167
    :cond_2
    const-string v1, "personalizedResults"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    if-nez p2, :cond_3

    move v0, v4

    goto :goto_1

    .line 170
    :cond_3
    check-cast p2, Ljava/lang/Boolean;

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.voicesearch.action.PERSONALIZATION_OPT_IN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    const-string v1, "PERSONALIZATION_OPT_IN_ENABLE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 174
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    const-string v1, "VoiceSearchPreferences"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t start personalization opt-in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v1, "managePersonalization"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->personalizationDashboardLink()V

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/GservicesHelper;->getPersonalizationDashboardUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 153
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->startActivity(Landroid/content/Intent;)V

    .line 154
    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 144
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mPersonalizationBoolPref:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchPreferences;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/PersonalizationPrefManager;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 145
    return-void
.end method
