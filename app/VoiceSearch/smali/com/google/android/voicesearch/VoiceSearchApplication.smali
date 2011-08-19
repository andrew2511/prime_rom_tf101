.class public Lcom/google/android/voicesearch/VoiceSearchApplication;
.super Landroid/app/Application;
.source "VoiceSearchApplication.java"


# static fields
.field private static final APP_RECEIVER:Landroid/content/BroadcastReceiver; = null

.field private static final APP_RECEIVER_ACTIONS:[Ljava/lang/String; = null

.field private static final APP_RECEIVER_DATA_SCHEME_PREFIX:Ljava/lang/String; = "package"

.field private static final LOG_RECEIVER:Landroid/content/BroadcastReceiver; = null

.field private static final LOG_RECEIVER_ACTION:Ljava/lang/String; = "com.android.common.speech.LOG_EVENT"

.field private static mOverrideContainer:Lcom/google/android/voicesearch/VoiceSearchContainer;


# instance fields
.field private mPerformanceLogger:Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;

.field private mSoundManager:Lcom/google/android/voicesearch/SoundManager;

.field private mVoiceSearchContainer:Lcom/google/android/voicesearch/VoiceSearchContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/voicesearch/VoiceSearchApplication;->APP_RECEIVER_ACTIONS:[Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/google/android/voicesearch/AppNotificationReceiver;

    invoke-direct {v0}, Lcom/google/android/voicesearch/AppNotificationReceiver;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/VoiceSearchApplication;->APP_RECEIVER:Landroid/content/BroadcastReceiver;

    .line 43
    new-instance v0, Lcom/google/android/voicesearch/logging/LoggingReceiver;

    invoke-direct {v0}, Lcom/google/android/voicesearch/logging/LoggingReceiver;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/VoiceSearchApplication;->LOG_RECEIVER:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchApplication;->mPerformanceLogger:Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;

    return-void
.end method

.method public static getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/google/android/voicesearch/VoiceSearchApplication;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer()Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    return-object v0
.end method

.method public static setContainer(Lcom/google/android/voicesearch/VoiceSearchContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    sput-object p0, Lcom/google/android/voicesearch/VoiceSearchApplication;->mOverrideContainer:Lcom/google/android/voicesearch/VoiceSearchContainer;

    .line 107
    return-void
.end method


# virtual methods
.method public getContainer()Lcom/google/android/voicesearch/VoiceSearchContainer;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/google/android/voicesearch/VoiceSearchApplication;->mOverrideContainer:Lcom/google/android/voicesearch/VoiceSearchContainer;

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchApplication;->mVoiceSearchContainer:Lcom/google/android/voicesearch/VoiceSearchContainer;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/voicesearch/VoiceSearchApplication;->mOverrideContainer:Lcom/google/android/voicesearch/VoiceSearchContainer;

    goto :goto_0
.end method

.method public getPerformanceLogger()Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchApplication;->mPerformanceLogger:Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchApplication;->mPerformanceLogger:Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;

    .line 78
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchApplication;->mPerformanceLogger:Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;

    goto :goto_0
.end method

.method public getSoundManager()Lcom/google/android/voicesearch/SoundManager;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchApplication;->mSoundManager:Lcom/google/android/voicesearch/SoundManager;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 57
    new-instance v0, Lcom/google/android/voicesearch/SoundManager;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/SoundManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchApplication;->mSoundManager:Lcom/google/android/voicesearch/SoundManager;

    .line 59
    sget-object v0, Lcom/google/android/voicesearch/VoiceSearchApplication;->mOverrideContainer:Lcom/google/android/voicesearch/VoiceSearchContainer;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/VoiceSearchContainerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchApplication;->mVoiceSearchContainer:Lcom/google/android/voicesearch/VoiceSearchContainer;

    .line 63
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    sget-object v1, Lcom/google/android/voicesearch/VoiceSearchApplication;->APP_RECEIVER_ACTIONS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 65
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67
    :cond_1
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 68
    sget-object v1, Lcom/google/android/voicesearch/VoiceSearchApplication;->APP_RECEIVER:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.common.speech.LOG_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 71
    sget-object v1, Lcom/google/android/voicesearch/VoiceSearchApplication;->LOG_RECEIVER:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/google/android/voicesearch/VoiceSearchApplication;->APP_RECEIVER:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    sget-object v0, Lcom/google/android/voicesearch/VoiceSearchApplication;->LOG_RECEIVER:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 85
    iget-object v0, p0, Lcom/google/android/voicesearch/VoiceSearchApplication;->mSoundManager:Lcom/google/android/voicesearch/SoundManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/SoundManager;->release()V

    .line 86
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 87
    return-void
.end method
