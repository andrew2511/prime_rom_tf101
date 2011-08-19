.class public Lcom/google/android/voicesearch/PersonalizationPrefManager;
.super Ljava/lang/Object;
.source "PersonalizationPrefManager.java"


# static fields
.field public static final DBG:Z = false

.field private static final DEFAULT_PERSONALIZATION_COUNT_DOWN:I = 0x0

.field private static final KEY_PERSONALIZATION:Ljava/lang/String; = "pref-voice-personalization-status"

.field private static final KEY_PERSONALIZATION_PROMPT_THRESHOLD:Ljava/lang/String; = "personalizedPromptThresholdInt"

.field private static final PERSONALIZATION_COUNT_DOWN:I = 0x5

.field private static final PERSONALIZATION_DISABLED:I = 0x3

.field private static final PERSONALIZATION_ENABLED:I = 0x4

.field private static final PERSONALIZATION_PROMPT:I = 0x2

.field private static final PERSONALIZATION_UNAVAILABLE:I = 0x1

.field private static final PERSONALIZATION_UNKNOWN:I = 0x0

.field public static final SOURCE_IGNORE:I = 0x0

.field public static final SOURCE_POP_UP:I = 0x1

.field public static final SOURCE_SETTING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PersonalizationPrefManagerImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

.field private final mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

.field private final mPref:Landroid/content/SharedPreferences;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object v0, p0, Lcom/google/android/voicesearch/PersonalizationPrefManager;->mContext:Landroid/content/Context;

    .line 100
    iput-object v0, p0, Lcom/google/android/voicesearch/PersonalizationPrefManager;->mPref:Landroid/content/SharedPreferences;

    .line 101
    iput-object v0, p0, Lcom/google/android/voicesearch/PersonalizationPrefManager;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 102
    iput-object v0, p0, Lcom/google/android/voicesearch/PersonalizationPrefManager;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/GservicesHelper;Lcom/google/android/voicesearch/logging/VoiceSearchLogger;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/google/android/voicesearch/PersonalizationPrefManager;->mContext:Landroid/content/Context;

    .line 91
    const-string v0, "VoiceSearchPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/PersonalizationPrefManager;->mPref:Landroid/content/SharedPreferences;

    .line 93
    iput-object p2, p0, Lcom/google/android/voicesearch/PersonalizationPrefManager;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 94
    iput-object p3, p0, Lcom/google/android/voicesearch/PersonalizationPrefManager;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    .line 95
    return-void
.end method

.method private getPersonalizationValue()I
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/PersonalizationPrefManager;->getPersonalizationValue(Z)I

    move-result v0

    return v0
.end method

.method private getPersonalizationValue(Z)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 244
    iget-object v0, p0, Lcom/google/android/voicesearch/PersonalizationPrefManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref-voice-personalization-status"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 246
    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    if-ne v0, v3, :cond_1

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/PersonalizationPrefManager;->isPersonalizationAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    const/4 v0, 0x5

    .line 254
    :goto_0
    iget-object v1, p0, Lcom/google/android/voicesearch/PersonalizationPrefManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref-voice-personalization-status"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 260
    :cond_1
    return v0

    :cond_2
    move v0, v3

    .line 252
    goto :goto_0
.end method


# virtual methods
.method public handleGservicesChange(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 208
    iget-object v0, p0, Lcom/google/android/voicesearch/PersonalizationPrefManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref-voice-personalization-status"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 209
    invoke-virtual {p0}, Lcom/google/android/voicesearch/PersonalizationPrefManager;->isPersonalizationAvailable()Z

    move-result v1

    .line 210
    if-eq v0, v5, :cond_0

    if-nez v0, :cond_1

    :cond_0
    if-eqz v1, :cond_1

    .line 213
    iget-object v2, p0, Lcom/google/android/voicesearch/PersonalizationPrefManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pref-voice-personalization-status"

    const/4 v4, 0x5

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 216
    :cond_1
    if-nez v1, :cond_2

    if-eq v0, v5, :cond_2

    .line 217
    iget-object v0, p0, Lcom/google/android/voicesearch/PersonalizationPrefManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref-voice-personalization-status"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 220
    :cond_2
    return-void
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/google/android/voicesearch/PersonalizationPrefManager;->getPersonalizationValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersonalizationAvailable()Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 171
    iget-object v0, p0, Lcom/google/android/voicesearch/PersonalizationPrefManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 173
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v7, :cond_3

    .line 176
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/google/android/voicesearch/PersonalizationPrefManager;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/GservicesHelper;->getPersonalizationCountries()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 178
    array-length v2, v1

    move v3, v6

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 181
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v7, :cond_1

    .line 178
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 185
    if-ne v4, v0, :cond_0

    .line 187
    const/4 v0, 0x1

    .line 198
    :goto_1
    return v0

    .line 196
    :cond_2
    const-string v1, "PersonalizationPrefManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Personalization disabled for SIM country code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, v6

    .line 198
    goto :goto_1
.end method

.method public isSet()Z
    .locals 2

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/google/android/voicesearch/PersonalizationPrefManager;->getPersonalizationValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/voicesearch/PersonalizationPrefManager;->getPersonalizationValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(ZI)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 137
    if-eqz p1, :cond_2

    .line 138
    iget-object v0, p0, Lcom/google/android/voicesearch/PersonalizationPrefManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref-voice-personalization-status"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 145
    :goto_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/google/android/voicesearch/PersonalizationPrefManager;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->personalizationPopup(Z)V

    .line 149
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/google/android/voicesearch/PersonalizationPrefManager;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->personalizationSetting(Z)V

    .line 152
    :cond_1
    return-void

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/google/android/voicesearch/PersonalizationPrefManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref-voice-personalization-status"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method public shouldPrompt(Z)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 112
    invoke-direct {p0, v2}, Lcom/google/android/voicesearch/PersonalizationPrefManager;->getPersonalizationValue(Z)I

    move-result v0

    .line 114
    if-ne v0, v4, :cond_0

    move v0, v2

    .line 132
    :goto_0
    return v0

    .line 116
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 117
    iget-object v0, p0, Lcom/google/android/voicesearch/PersonalizationPrefManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "personalizedPromptThresholdInt"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 119
    if-lez v0, :cond_2

    .line 120
    if-eqz p1, :cond_1

    .line 121
    add-int/lit8 v0, v0, -0x1

    .line 122
    iget-object v1, p0, Lcom/google/android/voicesearch/PersonalizationPrefManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "personalizedPromptThresholdInt"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    :cond_1
    move v0, v3

    .line 125
    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/google/android/voicesearch/PersonalizationPrefManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref-voice-personalization-status"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    move v0, v2

    .line 129
    goto :goto_0

    :cond_3
    move v0, v3

    .line 132
    goto :goto_0
.end method
