.class public Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
.super Ljava/lang/Object;
.source "RecognitionParameters.java"


# static fields
.field public static final API_APPLICATION_ID:Ljava/lang/String; = "intent-speech-api"

.field public static final VOICE_SEARCH_APPLICATION_ID:Ljava/lang/String; = "voice-search"


# instance fields
.field private final mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

.field private mAlternatesEnabled:Z

.field private mApiMode:Z

.field private mAudioEncoding:I

.field private mAudioSampleRate:I

.field private mCarDock:Z

.field private mClientApplicationId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mCookieStore:Lcom/google/android/voicesearch/util/CookieStore;

.field private final mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

.field private mLanguageModel:Ljava/lang/String;

.field private mLanguageOverride:Ljava/lang/String;

.field private final mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

.field private final mLocationHelper:Lcom/google/android/voicesearch/LocationHelper;

.field private final mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

.field private mMaxResults:I

.field private mMultislotActionSelectedSlot:Ljava/lang/String;

.field private mMultislotActionType:I

.field private mNetworkType:I

.field private mNoiseLevel:F

.field private mPartialTranscriptsEnabled:Z

.field private final mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

.field private mRecognitionContextBundle:Landroid/os/Bundle;

.field private mRequestId:I

.field private mSessionId:Ljava/lang/String;

.field private mSnr:F

.field private mSpeechServerUrlOverride:Ljava/lang/String;

.field private mUseContactAuth:Z

.field private mUseLocation:Z

.field private mWebSearchOnly:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v3, -0x4080

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSessionId:Ljava/lang/String;

    .line 51
    iput v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRequestId:I

    .line 53
    iput-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mApiMode:Z

    .line 55
    iput-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mUseLocation:Z

    .line 57
    iput-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mUseContactAuth:Z

    .line 64
    iput-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mPartialTranscriptsEnabled:Z

    .line 67
    iput-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mAlternatesEnabled:Z

    .line 74
    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mClientApplicationId:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguageModel:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRecognitionContextBundle:Landroid/os/Bundle;

    .line 82
    iput-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mCarDock:Z

    .line 85
    iput-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mWebSearchOnly:Z

    .line 87
    iput v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMultislotActionType:I

    .line 89
    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMultislotActionSelectedSlot:Ljava/lang/String;

    .line 91
    iput v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMaxResults:I

    .line 93
    iput v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mNetworkType:I

    .line 95
    iput v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mNoiseLevel:F

    .line 97
    iput v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSnr:F

    .line 108
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mContext:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    .line 110
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getPersonalizationPrefManager()Lcom/google/android/voicesearch/PersonalizationPrefManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

    .line 112
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 113
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLanguagePrefManager()Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    .line 114
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLocationHelper()Lcom/google/android/voicesearch/LocationHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLocationHelper:Lcom/google/android/voicesearch/LocationHelper;

    .line 115
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getVoiceSearchLogger()Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    .line 116
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getCookieStore()Lcom/google/android/voicesearch/util/CookieStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mCookieStore:Lcom/google/android/voicesearch/util/CookieStore;

    .line 117
    return-void
.end method


# virtual methods
.method public clearSession()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSessionId:Ljava/lang/String;

    .line 323
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRequestId:I

    .line 324
    return-void
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mApiMode:Z

    if-eqz v0, :cond_0

    const-string v0, "intent-speech-api"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "voice-search"

    goto :goto_0
.end method

.method public getAudioEncoding()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mAudioEncoding:I

    return v0
.end method

.method public getAudioSampleRate()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mAudioSampleRate:I

    return v0
.end method

.method public getClientApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mClientApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/Utils;->buildClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactAuthTokens()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mUseContactAuth:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/util/AccountHelper;->getContactAuthTokens()[Ljava/lang/String;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCookie()Ljava/lang/String;
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mCookieStore:Lcom/google/android/voicesearch/util/CookieStore;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/util/CookieStore;->getCookie()J

    move-result-wide v0

    .line 194
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageSetting()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentHash()J
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/voicesearch/Experiments;->getExperimentHash(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGeoPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mUseLocation:Z

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 221
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLocationHelper:Lcom/google/android/voicesearch/LocationHelper;

    invoke-interface {v0}, Lcom/google/android/voicesearch/LocationHelper;->getGeoPosition()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguageOverride:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguageOverride:Ljava/lang/String;

    .line 157
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageSetting()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLanguageModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguageModel:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceLanguageCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxResults()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMaxResults:I

    return v0
.end method

.method public getMofeHttpUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getMofeHttpUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMofeProtoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getMofeProtoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMultislotActionSelectedSlot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMultislotActionSelectedSlot:Ljava/lang/String;

    return-object v0
.end method

.method public getMultislotActionType()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMultislotActionType:I

    return v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mNetworkType:I

    return v0
.end method

.method public getNoiseLevel()F
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mNoiseLevel:F

    return v0
.end method

.method public getRecognitionContextBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRecognitionContextBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRequestId:I

    return v0
.end method

.method public getRevClientId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 133
    const-string v1, "voicesearch_client_id"

    const-string v2, "unknown"

    invoke-static {v0, v1, v2}, Lcom/google/android/voicesearch/util/GoogleSettingsUtil;->getGooglePartnerString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSafeSearchSetting()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/Utils;->getSafeSearchSetting(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSnr()F
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSnr:F

    return v0
.end method

.method public getSpeechPersonalizationServiceAuthToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/util/AccountHelper;->getSpeechPersonalizationServiceAuthToken()Ljava/lang/String;

    move-result-object v0

    .line 211
    if-nez v0, :cond_0

    .line 212
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->personalizationAuthTokenFailure()V

    .line 214
    :cond_0
    return-object v0
.end method

.method public getSpeechServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSpeechServerUrlOverride:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSpeechServerUrlOverride:Ljava/lang/String;

    .line 249
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getSsfeUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedActionInterpretations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isWebSearchOnly()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getAdvancedFeaturesEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    :cond_0
    invoke-static {}, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->getBasicActions()Ljava/util/List;

    move-result-object v0

    .line 234
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->getAllActionTypes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/Utils;->buildUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasNoiseEstmation()Z
    .locals 2

    .prologue
    .line 298
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSnr:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public incrementRequestId()V
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRequestId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRequestId:I

    .line 332
    return-void
.end method

.method public isAlternatesEnabled()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mAlternatesEnabled:Z

    return v0
.end method

.method public isApiMode()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mApiMode:Z

    return v0
.end method

.method public isCarDock()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mCarDock:Z

    return v0
.end method

.method public isPartialTranscriptsEnabled()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mPartialTranscriptsEnabled:Z

    return v0
.end method

.method public isPersonalizationEnabled()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/PersonalizationPrefManager;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isPersonalizationSet()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/PersonalizationPrefManager;->isSet()Z

    move-result v0

    return v0
.end method

.method public isProfanityFilterEnabled()Z
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mContext:Landroid/content/Context;

    const-string v1, "VoiceSearchPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 164
    const-string v1, "profanityFilter"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isWebSearchOnly()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mWebSearchOnly:Z

    return v0
.end method

.method public setAlternatesEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mAlternatesEnabled:Z

    .line 360
    return-void
.end method

.method public setApiMode(Z)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mApiMode:Z

    .line 336
    return-void
.end method

.method public setAudioEncoding(I)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mAudioEncoding:I

    .line 364
    return-void
.end method

.method public setAudioSampleRate(I)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mAudioSampleRate:I

    .line 368
    return-void
.end method

.method public setCarDock(Z)V
    .locals 0
    .parameter

    .prologue
    .line 383
    iput-boolean p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mCarDock:Z

    .line 384
    return-void
.end method

.method public setClientApplicationId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mClientApplicationId:Ljava/lang/String;

    .line 372
    return-void
.end method

.method public setLanguageModel(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguageModel:Ljava/lang/String;

    .line 376
    return-void
.end method

.method public setLanguageOverride(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mLanguageOverride:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setMaxResults(I)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMaxResults:I

    .line 392
    return-void
.end method

.method public setMultislotActionSelectedSlot(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMultislotActionSelectedSlot:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public setMultislotActionType(I)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mMultislotActionType:I

    .line 408
    return-void
.end method

.method public setNetworkType(I)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mNetworkType:I

    .line 396
    return-void
.end method

.method public setNoiseLevel(F)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mNoiseLevel:F

    .line 400
    return-void
.end method

.method public setPartialTranscriptsEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-boolean p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mPartialTranscriptsEnabled:Z

    .line 356
    return-void
.end method

.method public setRecognitionContextBundle(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRecognitionContextBundle:Landroid/os/Bundle;

    .line 380
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSessionId:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setSnr(F)V
    .locals 0
    .parameter

    .prologue
    .line 403
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSnr:F

    .line 404
    return-void
.end method

.method public setSpeechServerUrlOverride(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSpeechServerUrlOverride:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public setUseContactAuth(Z)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mUseContactAuth:Z

    .line 344
    return-void
.end method

.method public setUseLocation(Z)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mUseLocation:Z

    .line 340
    return-void
.end method

.method public setWebSearchOnly(Z)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput-boolean p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mWebSearchOnly:Z

    .line 388
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecognitionParameters{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    const-string v1, "session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const-string v1, "request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->mRequestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 419
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
