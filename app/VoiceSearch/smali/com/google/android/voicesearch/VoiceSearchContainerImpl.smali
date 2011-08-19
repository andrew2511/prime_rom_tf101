.class public Lcom/google/android/voicesearch/VoiceSearchContainerImpl;
.super Ljava/lang/Object;
.source "VoiceSearchContainerImpl.java"

# interfaces
.implements Lcom/google/android/voicesearch/VoiceSearchContainer;


# static fields
.field public static final DEBUG_ENABLE_TEST_AUTOMATION:Z


# instance fields
.field private final mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

.field private final mContext:Landroid/content/Context;

.field private final mCookieStore:Lcom/google/android/voicesearch/util/CookieStore;

.field private final mDeviceCapabilityManager:Lcom/google/android/voicesearch/DeviceCapabilityManager;

.field private final mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

.field private final mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

.field private final mLocationHelper:Lcom/google/android/voicesearch/LocationHelper;

.field private final mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

.field private final mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/google/android/voicesearch/GservicesHelper;

    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 57
    new-instance v0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    .line 58
    new-instance v0, Lcom/google/android/voicesearch/PersonalizationPrefManager;

    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    iget-object v3, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/voicesearch/PersonalizationPrefManager;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/GservicesHelper;Lcom/google/android/voicesearch/logging/VoiceSearchLogger;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

    .line 60
    new-instance v0, Lcom/google/android/voicesearch/LanguagePrefManager;

    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/LanguagePrefManager;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/GservicesHelper;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    .line 61
    new-instance v0, Lcom/google/android/voicesearch/util/AccountHelper;

    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/util/AccountHelper;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/PersonalizationPrefManager;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    .line 62
    new-instance v0, Lcom/google/android/voicesearch/util/CookieStore;

    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/util/CookieStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mCookieStore:Lcom/google/android/voicesearch/util/CookieStore;

    .line 63
    new-instance v0, Lcom/google/android/voicesearch/DeviceCapabilityManager;

    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/DeviceCapabilityManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mDeviceCapabilityManager:Lcom/google/android/voicesearch/DeviceCapabilityManager;

    .line 65
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/voicesearch/LocationHelperImpl;->hasGoogleSettingsProvider(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lcom/google/android/voicesearch/LocationHelperImpl;

    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/LocationHelperImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mLocationHelper:Lcom/google/android/voicesearch/LocationHelper;

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    new-instance v0, Lcom/google/android/voicesearch/DummyLocationHelper;

    invoke-direct {v0}, Lcom/google/android/voicesearch/DummyLocationHelper;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mLocationHelper:Lcom/google/android/voicesearch/LocationHelper;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized createDebugRecognitionController(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/voicesearch/speechservice/RecognitionController;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 81
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized createRecognitionController()Lcom/google/android/voicesearch/speechservice/RecognitionController;
    .locals 6

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    iget-object v1, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->getAccountHelper()Lcom/google/android/voicesearch/util/AccountHelper;

    move-result-object v2

    new-instance v3, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;

    iget-object v4, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;

    iget-object v5, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper;Lcom/google/android/voicesearch/speechservice/ServerConnector;Lcom/google/android/voicesearch/speechservice/MicrophoneManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAccountHelper()Lcom/google/android/voicesearch/util/AccountHelper;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    return-object v0
.end method

.method public getCookieStore()Lcom/google/android/voicesearch/util/CookieStore;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mCookieStore:Lcom/google/android/voicesearch/util/CookieStore;

    return-object v0
.end method

.method public getDeviceCapabilityManager()Lcom/google/android/voicesearch/DeviceCapabilityManager;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mDeviceCapabilityManager:Lcom/google/android/voicesearch/DeviceCapabilityManager;

    return-object v0
.end method

.method public getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    return-object v0
.end method

.method public getLanguagePrefManager()Lcom/google/android/voicesearch/LanguagePrefManager;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    return-object v0
.end method

.method public getLocationHelper()Lcom/google/android/voicesearch/LocationHelper;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mLocationHelper:Lcom/google/android/voicesearch/LocationHelper;

    return-object v0
.end method

.method public getPersonalizationPrefManager()Lcom/google/android/voicesearch/PersonalizationPrefManager;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

    return-object v0
.end method

.method public getVoiceSearchLogger()Lcom/google/android/voicesearch/logging/VoiceSearchLogger;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;->mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    return-object v0
.end method
