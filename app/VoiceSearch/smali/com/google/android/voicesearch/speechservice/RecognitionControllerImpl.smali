.class public Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;
.super Ljava/lang/Object;
.source "RecognitionControllerImpl.java"

# interfaces
.implements Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;
.implements Lcom/google/android/voicesearch/speechservice/RecognitionController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$3;,
        Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;,
        Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    }
.end annotation


# static fields
.field private static final ALTERNATES_BUNDLE:Ljava/lang/String; = "alternates_bundle"

.field private static final DBG:Z = false

.field private static final EXTRA_ALTERNATES:Ljava/lang/String; = "android.speech.extra.ALTERNATES"

.field private static final EXTRA_CAR_DOCK:Ljava/lang/String; = "car_dock"

.field private static final EXTRA_SERVER_URL:Ljava/lang/String; = "android.speech.extras.SERVER_URL"

.field private static final MSG_START_LISTENING:I = 0x1

.field private static final SLEEP_BETWEEN_RETRIES_MILLIS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "RecognitionControllerImpl"


# instance fields
.field private final mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

.field private mAddFullRecognitionResult:Z

.field private mAudioBuffer:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mConnectionRetries:I

.field private final mContext:Landroid/content/Context;

.field private final mDefaultSpeechTimeoutMillis:I

.field private final mEndResultTimeoutMillis:I

.field private final mEndpointerListener:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;

.field private mError:I

.field private final mExtraTotalResultTimeoutMillis:I

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsFollowUpRecognition:Z

.field private mIsSpeechDetected:Z

.field private final mLock:Ljava/util/concurrent/locks/Lock;

.field private final mMicrophoneManager:Lcom/google/android/voicesearch/speechservice/MicrophoneManager;

.field private mNetworkType:I

.field private mNoiseLevel:F

.field private mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

.field private mPerformanceLogger:Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;

.field private final mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

.field private mRawAudio:Ljava/io/ByteArrayOutputStream;

.field private mRecognitionListener:Landroid/speech/RecognitionListener;

.field private mResponse:Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

.field private final mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

.field private mSnr:F

.field private mSpeechBeginTimeMillis:J

.field private mSpeechRecordingTimer:Lcom/google/android/voicesearch/speechservice/TimeoutTimer;

.field private mSpeechTimeoutMillis:I

.field private mState:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

.field private final mStateChanged:Ljava/util/concurrent/locks/Condition;

.field private final mTcpAttempts:I

.field private mUtteranceLengthMillis:J

.field private final mUtteranceLengthTimeoutFactor:F

.field private mWaitingForResultsTimer:Lcom/google/android/voicesearch/speechservice/TimeoutTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper;Lcom/google/android/voicesearch/speechservice/ServerConnector;Lcom/google/android/voicesearch/speechservice/MicrophoneManager;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, -0x4080

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 126
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mStateChanged:Ljava/util/concurrent/locks/Condition;

    .line 131
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mError:I

    .line 134
    sget-object v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->STARTING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mState:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    .line 150
    iput-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    .line 159
    iput-boolean v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mIsSpeechDetected:Z

    .line 164
    iput-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioBuffer:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    .line 167
    iput-boolean v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mIsFollowUpRecognition:Z

    .line 173
    iput v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSnr:F

    .line 176
    iput v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mNoiseLevel:F

    .line 178
    iput-boolean v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAddFullRecognitionResult:Z

    .line 183
    new-instance v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;

    invoke-direct {v0, p0, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;-><init>(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$1;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mEndpointerListener:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;

    .line 213
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mUtteranceLengthMillis:J

    .line 219
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mContext:Landroid/content/Context;

    .line 220
    iput-object p2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    .line 221
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v1

    .line 224
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getPersonalizationPrefManager()Lcom/google/android/voicesearch/PersonalizationPrefManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

    .line 225
    invoke-virtual {v1}, Lcom/google/android/voicesearch/GservicesHelper;->getSpeechTimeout()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mDefaultSpeechTimeoutMillis:I

    .line 226
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mDefaultSpeechTimeoutMillis:I

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechTimeoutMillis:I

    .line 227
    invoke-virtual {v1}, Lcom/google/android/voicesearch/GservicesHelper;->getConnectionRetries()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mConnectionRetries:I

    .line 228
    invoke-virtual {v1}, Lcom/google/android/voicesearch/GservicesHelper;->getTcpAttempts()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mTcpAttempts:I

    .line 229
    invoke-virtual {v1}, Lcom/google/android/voicesearch/GservicesHelper;->getEndResultTimout()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mEndResultTimeoutMillis:I

    .line 230
    invoke-virtual {v1}, Lcom/google/android/voicesearch/GservicesHelper;->getExtraTotalResultTimeout()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mExtraTotalResultTimeoutMillis:I

    .line 231
    invoke-virtual {v1}, Lcom/google/android/voicesearch/GservicesHelper;->getUtteranceLengthTimoutFactor()F

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mUtteranceLengthTimeoutFactor:F

    .line 232
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 233
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Audio manager not found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    iput-object p4, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mMicrophoneManager:Lcom/google/android/voicesearch/speechservice/MicrophoneManager;

    .line 237
    iput-object p3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    .line 238
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-interface {v0, p0}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setCallback(Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;)V

    .line 239
    new-instance v0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;

    invoke-direct {v0}, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechRecordingTimer:Lcom/google/android/voicesearch/speechservice/TimeoutTimer;

    .line 240
    new-instance v0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;

    invoke-direct {v0}, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mWaitingForResultsTimer:Lcom/google/android/voicesearch/speechservice/TimeoutTimer;

    .line 242
    invoke-static {}, Lcom/google/android/voicesearch/speechservice/Utils;->loadClasses()V

    .line 243
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RecognitionControllerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 244
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 245
    new-instance v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$1;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$1;-><init>(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandler:Landroid/os/Handler;

    .line 260
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->startRecognition(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mUtteranceLengthMillis:J

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mNoiseLevel:F

    return p1
.end method

.method static synthetic access$1202(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSnr:F

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Lcom/google/android/voicesearch/speechservice/ServerConnector;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)J
    .locals 2
    .parameter

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechBeginTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechBeginTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mIsSpeechDetected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)I
    .locals 1
    .parameter

    .prologue
    .line 82
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mExtraTotalResultTimeoutMillis:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Lcom/google/android/voicesearch/speechservice/TimeoutTimer;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechRecordingTimer:Lcom/google/android/voicesearch/speechservice/TimeoutTimer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Landroid/speech/RecognitionListener;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Landroid/speech/RecognitionListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->stateIs(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Landroid/media/AudioManager;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private changeState(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)V
    .locals 2
    .parameter

    .prologue
    .line 877
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 879
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->changeStateInternal(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 883
    return-void

    .line 881
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private varargs changeStateIfOneOf(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;[Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 886
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 888
    :try_start_0
    array-length v0, p2

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 889
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mState:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    if-ne v3, v2, :cond_0

    .line 890
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->changeStateInternal(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 891
    const/4 v0, 0x1

    .line 896
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return v0

    .line 888
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 896
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v0, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private changeStateInternal(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)V
    .locals 3
    .parameter

    .prologue
    .line 902
    const-string v0, "RecognitionControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mState:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mState:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    .line 904
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mStateChanged:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 905
    return-void
.end method

.method private checkAuthToken(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)V
    .locals 3
    .parameter

    .prologue
    .line 741
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasGaiaResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 742
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getGaiaResult()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    .line 743
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getCode()Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    move-result-object v1

    sget-object v2, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->GAIA_TOKEN_EXPIRED:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getCode()Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    move-result-object v0

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->GAIA_ERROR:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    if-ne v0, v1, :cond_1

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/PersonalizationPrefManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 746
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/util/AccountHelper;->refreshSpeechPersonalization()V

    .line 750
    :cond_1
    return-void
.end method

.method private clearVariables()V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mMicrophoneManager:Lcom/google/android/voicesearch/speechservice/MicrophoneManager;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/MicrophoneManager;->close()V

    .line 486
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 487
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioBuffer:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioBuffer:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->stop()V

    .line 492
    :cond_0
    return-void
.end method

.method private getNetworkType(Landroid/net/NetworkInfo;)I
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 455
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 468
    :goto_0
    return v0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 460
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 468
    const/4 v0, -0x1

    goto :goto_0

    .line 462
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 465
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 460
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getState()Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    .locals 2

    .prologue
    .line 864
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 866
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mState:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private notifyError(I)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x14

    .line 913
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->getState()Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    move-result-object v0

    .line 914
    sget-object v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->CANCELED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->PAUSED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    if-ne v0, v1, :cond_1

    .line 961
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 954
    const-string v0, "RecognitionControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Landroid/speech/RecognitionListener;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Landroid/speech/RecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onError(I)V

    goto :goto_0

    .line 924
    :pswitch_1
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "ERROR_SPEECH_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setEndpointTriggerType(I)V

    .line 926
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setRequestStatus(I)V

    goto :goto_1

    .line 930
    :pswitch_2
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "ERROR_NETWORK_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setRequestStatus(I)V

    goto :goto_1

    .line 935
    :pswitch_3
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "ERROR_AUDIO"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-interface {v0, v2}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setRequestStatus(I)V

    goto :goto_1

    .line 940
    :pswitch_4
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "ERROR_CLIENT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-interface {v0, v2}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setRequestStatus(I)V

    goto :goto_1

    .line 945
    :pswitch_5
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "ERROR_NETWORK"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setRequestStatus(I)V

    goto :goto_1

    .line 922
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onPartialTranscript(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 753
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 754
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 755
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    const-string v2, "results_recognition"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 757
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Landroid/speech/RecognitionListener;

    if-eqz v1, :cond_0

    .line 758
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Landroid/speech/RecognitionListener;

    invoke-interface {v1, v0}, Landroid/speech/RecognitionListener;->onPartialResults(Landroid/os/Bundle;)V

    .line 760
    :cond_0
    return-void
.end method

.method private onSearchResult(Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 824
    invoke-static {p1}, Lcom/google/android/voicesearch/TestPlatformLog;->logResults(Ljava/util/ArrayList;)V

    .line 826
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 827
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 828
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 829
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 831
    :cond_0
    const-string v0, "results_recognition"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 832
    iget-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAddFullRecognitionResult:Z

    if-eqz v0, :cond_1

    .line 833
    const-string v0, "fullRecognitionResults"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 835
    :cond_1
    if-eqz p2, :cond_2

    .line 836
    const-string v0, "alternates_bundle"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 838
    :cond_2
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRawAudio:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_3

    .line 839
    const-string v0, "android.speech.extras.RAW_AUDIO"

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRawAudio:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 840
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRawAudio:Ljava/io/ByteArrayOutputStream;

    .line 843
    :cond_3
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Landroid/speech/RecognitionListener;

    if-eqz v0, :cond_4

    .line 844
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Landroid/speech/RecognitionListener;

    invoke-interface {v0, v1}, Landroid/speech/RecognitionListener;->onResults(Landroid/os/Bundle;)V

    .line 849
    :cond_4
    return-void
.end method

.method private prepareForRetry(Z)V
    .locals 3
    .parameter

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioBuffer:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->restartBuffersToBackup()V

    .line 578
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Landroid/speech/RecognitionListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 579
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Landroid/speech/RecognitionListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/speech/RecognitionListener;->onEvent(ILandroid/os/Bundle;)V

    .line 581
    :cond_0
    sget-object v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->STARTING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->changeState(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)V

    .line 582
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "Connection error occurred, retrying (resending data if needed)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :goto_0
    return-void

    .line 585
    :catch_0
    move-exception v0

    .line 586
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "Interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processApiResult(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x4

    .line 764
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/voicesearch/speechservice/Utils;->parseRawRecognitionResult(Landroid/content/Context;Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)Ljava/util/ArrayList;

    move-result-object v0

    .line 766
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 767
    invoke-static {p1}, Lcom/google/android/voicesearch/speechservice/Utils;->getAlternates(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->onSearchResult(Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 768
    const/4 v0, 0x0

    .line 773
    :goto_0
    return v0

    .line 770
    :cond_0
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "Failed to parse recognition results in server response"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->onError(I)V

    .line 772
    invoke-direct {p0, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(I)V

    .line 773
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private processResponse()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 696
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mResponse:Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getStatus()Lcom/google/protos/speech/service/SpeechService$Status;

    move-result-object v1

    .line 697
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->CANCELED:Lcom/google/protos/speech/service/SpeechService$Status;

    if-ne v1, v0, :cond_0

    .line 698
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "Request canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-direct {p0, v5}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(I)V

    .line 700
    const/4 v0, 0x2

    .line 733
    :goto_0
    return v0

    .line 702
    :cond_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->PREPROCESSOR_ERROR:Lcom/google/protos/speech/service/SpeechService$Status;

    if-ne v1, v0, :cond_1

    .line 703
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "Server reported preprocessor error"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-direct {p0, v5}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(I)V

    move v0, v4

    .line 705
    goto :goto_0

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mResponse:Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    sget-object v2, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->recognizeResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v0, v2}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    .line 709
    sget-object v2, Lcom/google/protos/speech/service/SpeechService$Status;->OK:Lcom/google/protos/speech/service/SpeechService$Status;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasRecognitionResult()Z

    move-result v2

    if-nez v2, :cond_3

    .line 710
    :cond_2
    const-string v0, "RecognitionControllerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server reported error status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-direct {p0, v5}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(I)V

    move v0, v4

    .line 712
    goto :goto_0

    .line 714
    :cond_3
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getRecognitionResult()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v1

    .line 716
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->checkAuthToken(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)V

    .line 718
    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getStatus()Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    move-result-object v1

    .line 719
    sget-object v2, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->NO_MATCH:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    if-ne v1, v2, :cond_4

    .line 720
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "no match found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(I)V

    move v0, v4

    .line 722
    goto :goto_0

    .line 724
    :cond_4
    sget-object v2, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->SUCCESS:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    if-eq v1, v2, :cond_5

    .line 725
    const-string v0, "RecognitionControllerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server reported error SpeechServiceMessageTypes."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-direct {p0, v5}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(I)V

    move v0, v4

    .line 727
    goto :goto_0

    .line 730
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->isApiMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 731
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->processApiResult(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)I

    move-result v0

    goto/16 :goto_0

    .line 733
    :cond_6
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->processVoiceSearchResult(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)I

    move-result v0

    goto/16 :goto_0
.end method

.method private processVoiceSearchResult(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)I
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x4

    .line 779
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasResponse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 780
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "No ApplicationData found in response"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-virtual {p0, v5}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->onError(I)V

    .line 782
    invoke-direct {p0, v5}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(I)V

    move v0, v6

    .line 798
    :goto_0
    return v0

    .line 785
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getResponse()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    .line 786
    iget-boolean v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mIsFollowUpRecognition:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 787
    :goto_1
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v4}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getContactAuthTokens()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v0, v4, v1}, Lcom/google/android/voicesearch/speechservice/Utils;->parseApplicationData(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper;Lcom/google/protos/speech/service/SpeechService$ApplicationData;[Ljava/lang/String;Lcom/google/android/voicesearch/speechservice/AudioBuffer;)Ljava/util/ArrayList;

    move-result-object v0

    .line 790
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 791
    :cond_1
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "Failed to parse application data in server response"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-virtual {p0, v5}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->onError(I)V

    .line 793
    invoke-direct {p0, v5}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(I)V

    move v0, v6

    .line 794
    goto :goto_0

    .line 786
    :cond_2
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioBuffer:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    goto :goto_1

    .line 797
    :cond_3
    invoke-static {p1}, Lcom/google/android/voicesearch/speechservice/Utils;->getAlternates(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->onSearchResult(Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 798
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recordAndSend()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 523
    const/4 v0, 0x0

    .line 524
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechRecordingTimer:Lcom/google/android/voicesearch/speechservice/TimeoutTimer;

    iget v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechTimeoutMillis:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->set(J)V

    .line 526
    :goto_0
    sget-object v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->stateIs(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechRecordingTimer:Lcom/google/android/voicesearch/speechservice/TimeoutTimer;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->remaining()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 528
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioBuffer:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 529
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v5

    .line 532
    :cond_0
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-interface {v2, v1, v0}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->postAudioChunk(Ljava/nio/ByteBuffer;Z)V

    goto :goto_0

    .line 534
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mIsSpeechDetected:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioBuffer:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->postAudioChunk(Ljava/nio/ByteBuffer;Z)V

    .line 537
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mMicrophoneManager:Lcom/google/android/voicesearch/speechservice/MicrophoneManager;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/MicrophoneManager;->stopListening()V

    .line 539
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mIsSpeechDetected:Z

    if-eqz v0, :cond_4

    .line 540
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setEndpointTriggerType(I)V

    .line 545
    :cond_3
    :goto_1
    return-void

    .line 541
    :cond_4
    sget-object v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->stateIs(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 543
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->onError(I)V

    goto :goto_1
.end method

.method private resetRequest()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mResponse:Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mIsSpeechDetected:Z

    .line 303
    return-void
.end method

.method private runRecognitionMainLoop()V
    .locals 9

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 598
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v7, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 602
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->resetRequest()V

    move v0, v6

    move v1, v6

    .line 603
    :goto_0
    iget v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mConnectionRetries:I

    if-gt v0, v2, :cond_1

    .line 605
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    iget v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mNetworkType:I

    invoke-virtual {v2, v3}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setNetworkType(I)V

    .line 606
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    iget v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mTcpAttempts:I

    if-ge v0, v3, :cond_3

    move v3, v8

    :goto_1
    invoke-interface {v2, v3}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setUseTcp(Z)V

    .line 608
    sget-object v2, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->STARTING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    aput-object v5, v3, v4

    invoke-direct {p0, v2, v3}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->changeStateIfOneOf(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;[Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 609
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-interface {v2, v3}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->createSession(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)V

    .line 611
    sget-object v2, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    invoke-direct {p0, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->stateIs(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 612
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    iget v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSnr:F

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setSnr(F)V

    .line 613
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    iget v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mNoiseLevel:F

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setNoiseLevel(F)V

    .line 614
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-interface {v1}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->startRecognize()V

    .line 615
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->recordAndSend()V

    .line 617
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->waitForFinalResult()V

    move v1, v8

    .line 623
    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->getState()Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    move-result-object v2

    .line 624
    const-string v3, "RecognitionControllerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Final state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    sget-object v3, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$3;->$SwitchMap$com$google$android$voicesearch$speechservice$RecognitionControllerImpl$State:[I

    invoke-virtual {v2}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_3
    move v2, v6

    .line 657
    :goto_4
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-interface {v3}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->createClientReport()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 658
    if-nez v2, :cond_6

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 673
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->sendClientReports()V

    .line 675
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->isApiMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 676
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->onStop()V

    .line 679
    :cond_2
    :goto_5
    return-void

    :cond_3
    move v3, v6

    .line 606
    goto :goto_1

    .line 620
    :cond_4
    :try_start_1
    const-string v2, "RecognitionControllerImpl"

    const-string v3, "Not in STARTING state"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 663
    :catch_0
    move-exception v0

    .line 664
    :try_start_2
    const-string v1, "RecognitionControllerImpl"

    const-string v2, "Audio capture error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 665
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->onError(I)V

    .line 666
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 672
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 673
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->sendClientReports()V

    .line 675
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->isApiMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 676
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->onStop()V

    goto :goto_5

    .line 627
    :pswitch_0
    :try_start_3
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->processResponse()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setRequestStatus(I)V

    move v2, v6

    .line 628
    goto :goto_4

    .line 632
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setRequestStatus(I)V

    .line 634
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-interface {v2}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->cancelRecognition()V

    move v2, v6

    .line 635
    goto :goto_4

    .line 639
    :pswitch_2
    iget v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mConnectionRetries:I

    if-ge v0, v2, :cond_5

    iget v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mError:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_5

    move v2, v8

    .line 641
    goto :goto_4

    .line 643
    :cond_5
    iget v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mError:I

    invoke-direct {p0, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(I)V

    move v2, v6

    .line 646
    goto :goto_4

    .line 652
    :pswitch_3
    const-string v3, "RecognitionControllerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    const/16 v3, 0x14

    invoke-interface {v2, v3}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setRequestStatus(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 667
    :catch_1
    move-exception v0

    .line 668
    :try_start_4
    const-string v1, "RecognitionControllerImpl"

    const-string v2, "an unexpected exception occurred"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 669
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->onError(I)V

    .line 670
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 672
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 673
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->sendClientReports()V

    .line 675
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->isApiMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 676
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->onStop()V

    goto/16 :goto_5

    .line 661
    :cond_6
    :try_start_5
    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->prepareForRetry(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 672
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v7}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 673
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-interface {v1}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->sendClientReports()V

    .line 675
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->isApiMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 676
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->onStop()V

    :cond_7
    throw v0

    .line 625
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private startRecognition(Landroid/content/Intent;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, -0x1

    const-wide/16 v5, -0x1

    .line 311
    const-string v0, "RecognitionControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecognition("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    sget-object v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->STARTING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->changeState(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)V

    .line 317
    const-string v0, "android.speech.extras.SPEECH_INPUT_MINIMUM_LENGTH_MILLIS"

    invoke-virtual {p1, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 319
    const-string v2, "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

    invoke-virtual {p1, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 321
    const-string v4, "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 324
    iget-object v6, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mMicrophoneManager:Lcom/google/android/voicesearch/speechservice/MicrophoneManager;

    invoke-interface {v6, v0, v1}, Lcom/google/android/voicesearch/speechservice/MicrophoneManager;->setSpeechInputMinimumLengthMillis(J)V

    .line 325
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mMicrophoneManager:Lcom/google/android/voicesearch/speechservice/MicrophoneManager;

    invoke-interface {v0, v2, v3}, Lcom/google/android/voicesearch/speechservice/MicrophoneManager;->setSpeechInputCompleteSilenceLengthMillis(J)V

    .line 327
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mMicrophoneManager:Lcom/google/android/voicesearch/speechservice/MicrophoneManager;

    invoke-interface {v0, v4, v5}, Lcom/google/android/voicesearch/speechservice/MicrophoneManager;->setSpeechInputPossiblyCompleteSilenceLengthMillis(J)V

    .line 330
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->updateNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "No active network found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(I)V

    .line 333
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->clearVariables()V

    .line 392
    :goto_0
    return-void

    .line 339
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->updateParams(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    iput-object v9, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    .line 341
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(I)V

    .line 342
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->clearVariables()V

    goto :goto_0

    .line 347
    :cond_1
    const-string v0, "fullRecognitionResultsRequest"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAddFullRecognitionResult:Z

    .line 348
    const-string v0, "android.speech.extras.SPEECH_TIMEOUT_MILLIS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 349
    const-string v0, "android.speech.extras.SPEECH_TIMEOUT_MILLIS"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechTimeoutMillis:I

    .line 353
    :goto_1
    const-string v0, "android.speech.action.ANALYZE_SPEECH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 354
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRawAudio:Ljava/io/ByteArrayOutputStream;

    .line 359
    :goto_2
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioBuffer:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioBuffer:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 362
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mMicrophoneManager:Lcom/google/android/voicesearch/speechservice/MicrophoneManager;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mEndpointerListener:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;

    iget v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mNetworkType:I

    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isApiMode()Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRawAudio:Ljava/io/ByteArrayOutputStream;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/voicesearch/speechservice/MicrophoneManager;->setupMicrophone(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;IZLjava/io/ByteArrayOutputStream;)Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioBuffer:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    .line 364
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->getState()Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->STARTING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    if-eq v0, v1, :cond_6

    .line 368
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->clearVariables()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    const-string v1, "RecognitionControllerImpl"

    const-string v2, "Audio error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(I)V

    .line 374
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->clearVariables()V

    goto :goto_0

    .line 351
    :cond_3
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mDefaultSpeechTimeoutMillis:I

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechTimeoutMillis:I

    goto :goto_1

    .line 356
    :cond_4
    iput-object v9, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRawAudio:Ljava/io/ByteArrayOutputStream;

    goto :goto_2

    .line 379
    :cond_5
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mMicrophoneManager:Lcom/google/android/voicesearch/speechservice/MicrophoneManager;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/MicrophoneManager;->restartStream()V

    .line 380
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioBuffer:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->restart()V

    .line 383
    :cond_6
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mMicrophoneManager:Lcom/google/android/voicesearch/speechservice/MicrophoneManager;

    invoke-interface {v1}, Lcom/google/android/voicesearch/speechservice/MicrophoneManager;->getEncoding()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setAudioEncoding(I)V

    .line 384
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mMicrophoneManager:Lcom/google/android/voicesearch/speechservice/MicrophoneManager;

    invoke-interface {v1}, Lcom/google/android/voicesearch/speechservice/MicrophoneManager;->getSamplingRate()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setAudioSampleRate(I)V

    .line 386
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    const-string v1, "android.speech.extras.ACTION_CONTEXT_ACTION_TYPE"

    invoke-virtual {p1, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setMultislotActionType(I)V

    .line 387
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    const-string v1, "android.speech.extras.ACTION_CONTEXT_SELECTED_SLOT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setMultislotActionSelectedSlot(Ljava/lang/String;)V

    .line 390
    const-string v0, "android.speech.extras.ACTION_CONTEXT_ACTION_TYPE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mIsFollowUpRecognition:Z

    .line 391
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->runRecognitionMainLoop()V

    goto/16 :goto_0
.end method

.method private stateIs(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z
    .locals 1
    .parameter

    .prologue
    .line 873
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->getState()Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateNetwork()Z
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 442
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 444
    :cond_0
    const/4 v0, 0x0

    .line 448
    :goto_0
    return v0

    .line 447
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->getNetworkType(Landroid/net/NetworkInfo;)I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mNetworkType:I

    .line 448
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateParams(Landroid/content/Intent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 395
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    .line 397
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    const-string v1, "android.speech.extras.SERVER_URL"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setSpeechServerUrlOverride(Ljava/lang/String;)V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    const-string v1, "android.speech.extras.RECOGNITION_CONTEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setRecognitionContextBundle(Landroid/os/Bundle;)V

    .line 400
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    const-string v1, "car_dock"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setCarDock(Z)V

    .line 401
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    const-string v1, "useLocation"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setUseLocation(Z)V

    .line 402
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    const-string v1, "contact_auth"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setUseContactAuth(Z)V

    .line 406
    const-string v0, "android.speech.action.WEB_SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.speech.extra.WEB_SEARCH_ONLY"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v0, v4}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setWebSearchOnly(Z)V

    .line 413
    :goto_0
    const-string v0, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.speech.action.ANALYZE_SPEECH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v0, v4}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setApiMode(Z)V

    .line 416
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setLanguageModel(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    const-string v1, "android.speech.extra.MAX_RESULTS"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setMaxResults(I)V

    .line 418
    const-string v0, "calling_package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 420
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "required extra \'calling_package\' missing in voice search intent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 430
    :goto_1
    return v0

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v0, v3}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setWebSearchOnly(Z)V

    goto :goto_0

    .line 424
    :cond_3
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setClientApplicationId(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    const-string v1, "android.speech.extra.LANGUAGE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setLanguageOverride(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    const-string v1, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setPartialTranscriptsEnabled(Z)V

    .line 428
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    const-string v1, "android.speech.extra.ALTERNATES"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setAlternatesEnabled(Z)V

    :cond_4
    move v0, v4

    .line 430
    goto :goto_1
.end method

.method private waitForFinalResult()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 555
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mWaitingForResultsTimer:Lcom/google/android/voicesearch/speechservice/TimeoutTimer;

    iget v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mEndResultTimeoutMillis:I

    int-to-long v1, v1

    iget v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mUtteranceLengthTimeoutFactor:F

    iget-wide v4, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mUtteranceLengthMillis:J

    long-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->set(J)V

    .line 557
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 559
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mState:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    sget-object v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    if-ne v0, v1, :cond_1

    .line 560
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mWaitingForResultsTimer:Lcom/google/android/voicesearch/speechservice/TimeoutTimer;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->remaining()J

    move-result-wide v0

    .line 561
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 562
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "Recognition request timed out"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->onError(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 571
    :goto_1
    return-void

    .line 566
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mStateChanged:Ljava/util/concurrent/locks/Condition;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v0, v1, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 569
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1
.end method


# virtual methods
.method public enterIntoPauseMode()V
    .locals 4

    .prologue
    .line 284
    sget-object v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->PAUSED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->STARTING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->ERROR:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->changeStateIfOneOf(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;[Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mMicrophoneManager:Lcom/google/android/voicesearch/speechservice/MicrophoneManager;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/MicrophoneManager;->pauseStream()V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    const-string v0, "RecognitionControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause() called from illegal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mState:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isApiMode()Z
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isApiMode()Z

    move-result v0

    return v0
.end method

.method public onCancel(Landroid/speech/RecognitionListener;)V
    .locals 2
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Landroid/speech/RecognitionListener;

    .line 295
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 296
    sget-object v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->CANCELED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->changeState(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)V

    .line 297
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 511
    return-void
.end method

.method public onError(I)V
    .locals 4
    .parameter

    .prologue
    .line 856
    sget-object v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->ERROR:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->changeStateIfOneOf(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;[Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mError:I

    .line 861
    :goto_0
    return-void

    .line 859
    :cond_0
    const-string v0, "RecognitionControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onIsAlive()V
    .locals 6

    .prologue
    .line 818
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mWaitingForResultsTimer:Lcom/google/android/voicesearch/speechservice/TimeoutTimer;

    iget v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mEndResultTimeoutMillis:I

    int-to-long v1, v1

    iget v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mUtteranceLengthTimeoutFactor:F

    iget-wide v4, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mUtteranceLengthMillis:J

    long-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->set(J)V

    .line 820
    return-void
.end method

.method public onPartialResponse(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 804
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasPartialTranscript()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 805
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getPartialTranscript()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->getTranscript()Ljava/lang/String;

    move-result-object v0

    .line 806
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->onPartialTranscript(Ljava/lang/String;)V

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isApiMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/voicesearch/speechservice/Utils;->parseRawRecognitionResult(Landroid/content/Context;Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)Ljava/util/ArrayList;

    move-result-object v0

    .line 811
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 812
    invoke-static {p1}, Lcom/google/android/voicesearch/speechservice/Utils;->getAlternates(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->onSearchResult(Ljava/util/ArrayList;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 476
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->clearVariables()V

    .line 478
    return-void
.end method

.method public onResponse(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)V
    .locals 4
    .parameter

    .prologue
    .line 682
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mResponse:Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    .line 683
    sget-object v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->changeStateIfOneOf(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;[Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 684
    const-string v0, "RecognitionControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Final response received in state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->getState()Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_0
    return-void
.end method

.method public onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 265
    iput-object p2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Landroid/speech/RecognitionListener;

    .line 266
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 495
    sget-object v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->CANCELED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->changeState(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)V

    .line 497
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    :goto_0
    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$2;-><init>(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onStopListening(Landroid/speech/RecognitionListener;)V
    .locals 2
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Landroid/speech/RecognitionListener;

    .line 279
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 280
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mMicrophoneManager:Lcom/google/android/voicesearch/speechservice/MicrophoneManager;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/MicrophoneManager;->stopListening()V

    .line 281
    return-void
.end method
