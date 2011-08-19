.class public Lcom/google/android/voicesearch/RecognitionActivity;
.super Landroid/app/Activity;
.source "RecognitionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;,
        Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;,
        Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;
    }
.end annotation


# static fields
.field private static final ACTION_REJECTION_TIME_THRESHOLD_MILLIS:J = 0xbb8L

.field private static final BUNDLE_KEY_FIRST_TIME_ACTION_MESSAGE:Ljava/lang/String; = "message"

.field private static final DBG:Z = false

.field private static final DELAY_BEFORE_SHOWING_FINAL_SPINNER_MILLIS:I = 0xc8

.field private static final DIALOG_FIRST_TIME_ACTION:I = 0x6

.field private static final DIALOG_UNSUPPORTED_ACTION:I = 0x5

.field private static final DOCK_EVENT_FILTER:Landroid/content/IntentFilter; = null

.field private static final INTENT_API_MODE:I = 0x2

.field private static final KEY_STATE_ALL_RESULTS:Ljava/lang/String; = "key_state_all_results"

.field private static final KEY_STATE_SCREEN_ON_RESUME:Ljava/lang/String; = "key_state_sceen_on_resume"

.field private static final KEY_STATE_TOP_RESULT:Ljava/lang/String; = "key_state_top_result"

.field private static final MSG_LAST:I = 0x8

.field private static final MSG_SET_RETRY_HEADER:I = 0x6

.field private static final MSG_SHOW_DISAMBIG:I = 0x5

.field private static final MSG_SHOW_ERROR:I = 0x3

.field private static final MSG_SHOW_LISTENING:I = 0x1

.field private static final MSG_SHOW_RESULTS:I = 0x4

.field private static final MSG_SHOW_SPINNER:I = 0x7

.field private static final MSG_SHOW_WORKING:I = 0x2

.field private static final PERSONALIZATION_ACTION:Ljava/lang/String; = "com.google.android.voicesearch.action.PERSONALIZATION_OPT_IN"

.field private static final PREF_KEY_ENABLE_TEST_PLATFORM_LOGGING:Ljava/lang/String; = "enableTestPlatformLogging"

.field private static final REQUEST_CODE_OPT_IN_LOCATION:I = 0x0

.field private static final REQUEST_CODE_OPT_IN_PERSONALIZATION:I = 0x1

.field private static final REQUEST_CODE_START_ACTION:I = 0x2

.field private static final SCREEN_DISAMBIG:I = 0x2

.field private static final SCREEN_EDITOR:I = 0x3

.field private static final SCREEN_NONE:I = 0x4

.field private static final SCREEN_RECOGNITION:I = 0x0

.field private static final SCREEN_TIMEOUT:I = 0x1

.field private static final SYSTEM_PACKAGE:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String; = "RecognitionActivity"

.field private static final TIMEOUT_COUNTER_MILLIS:I = 0xfa0

.field private static final WARNING_DIALOG_LOCALE_CHANGED:I = 0x2

.field private static final WARNING_DIALOG_NEW_BACKOFF:I = 0x3

.field private static final WARNING_DIALOG_NEW_SUPPORTED_LANGUAGE:I = 0x4

.field private static final WARNING_DIALOG_UNSUPPORTED_LANGUAGE:I = 0x1

.field private static final WEB_SEARCH_MODE:I = 0x1


# instance fields
.field private mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

.field private mActionCounter:Lcom/google/android/voicesearch/actions/ActionCounter;

.field private mActionTimeoutListener:Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;

.field private mActivityCreateTime:J

.field private mAllResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Lcom/google/android/voicesearch/VoiceSearchApplication;

.field private mCallback:Landroid/speech/RecognitionListener;

.field private mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

.field private mDevice:Lcom/google/android/voicesearch/DeviceCapabilityManager;

.field private mDialog:Lcom/google/android/voicesearch/RecognitionDialog;

.field private mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;

.field private final mDockReceiver:Landroid/content/BroadcastReceiver;

.field private mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;

.field private mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

.field private mHandler:Landroid/os/Handler;

.field private mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

.field private mLocationUtils:Lcom/google/android/voicesearch/LocationHelper;

.field private mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

.field private mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

.field private mProgress:Landroid/view/View;

.field private mRecognitionMode:I

.field private mScreenOnResume:I

.field private mSendApplicationIdExtra:Z

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mSoundManager:Lcom/google/android/voicesearch/SoundManager;

.field mSpeechEndPosition:I

.field mSpeechStartPosition:I

.field private mStartActionTime:J

.field private mStartedAction:Lcom/google/android/voicesearch/actions/VoiceAction;

.field private mTimeoutDialog:Lcom/google/android/voicesearch/TimeoutDialog;

.field private mToExitOnStartup:Z

.field private mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

.field private mUnsupportedResult:Lcom/google/android/voicesearch/actions/VoiceAction;

.field private mVibrator:Lcom/google/android/voicesearch/Vibrator;

.field final mWaveBuffer:Ljava/io/ByteArrayOutputStream;

.field private mWebSearchOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 229
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/RecognitionActivity;->DOCK_EVENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 80
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mWebSearchOnly:Z

    .line 150
    iput-boolean v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mSendApplicationIdExtra:Z

    .line 153
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mScreenOnResume:I

    .line 158
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mStartActionTime:J

    .line 198
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    .line 217
    iput-boolean v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mToExitOnStartup:Z

    .line 243
    new-instance v0, Lcom/google/android/voicesearch/RecognitionActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/RecognitionActivity$1;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 1092
    new-instance v0, Lcom/google/android/voicesearch/RecognitionActivity$18;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/RecognitionActivity$18;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mActionTimeoutListener:Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;

    .line 1659
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->showWorking()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/logging/VoiceSearchLogger;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->hideProgressSpinner()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/voicesearch/RecognitionActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/RecognitionActivity;->showScreen(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/voicesearch/RecognitionActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->latency()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/SoundManager;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mSoundManager:Lcom/google/android/voicesearch/SoundManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/Vibrator;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mVibrator:Lcom/google/android/voicesearch/Vibrator;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->showResults()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/voicesearch/RecognitionActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/RecognitionActivity;->showDisambig(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->showProgressSpinner()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/voicesearch/RecognitionActivity;)Landroid/speech/RecognitionListener;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mCallback:Landroid/speech/RecognitionListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/RecognitionActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/RecognitionActivity;->onError(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/speechservice/RecognitionController;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->startHelpActivity()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->showInitializing()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->startRecognitionTask()V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/DisambigDialog;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/voicesearch/RecognitionActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mAllResults:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/DeviceCapabilityManager;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDevice:Lcom/google/android/voicesearch/DeviceCapabilityManager;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/EditorDialog;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/google/android/voicesearch/RecognitionActivity;Lcom/google/android/voicesearch/actions/VoiceAction;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/RecognitionActivity;->startAction(Lcom/google/android/voicesearch/actions/VoiceAction;Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/TimeoutDialog;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTimeoutDialog:Lcom/google/android/voicesearch/TimeoutDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->onReadyForSpeech()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/LanguagePrefManager;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->continueStartRecognitionTask()V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->continueShowingResults()V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/android/voicesearch/RecognitionActivity;Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/RecognitionActivity;->countAction(Lcom/google/android/voicesearch/actions/VoiceAction;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/actions/VoiceAction;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/RecognitionDialog;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/voicesearch/RecognitionActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 80
    iget v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mRecognitionMode:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/voicesearch/RecognitionActivity;Ljava/util/ArrayList;[B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/RecognitionActivity;->handleIntentApiResults(Ljava/util/ArrayList;[B)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/voicesearch/RecognitionActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/RecognitionActivity;->handleVoiceSearchResults(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/voicesearch/RecognitionActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->updateLayout()V

    return-void
.end method

.method private continueShowingResults()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1387
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/VoiceAction;->shouldShowDisambig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1388
    invoke-direct {p0, v3}, Lcom/google/android/voicesearch/RecognitionActivity;->showDisambig(Z)V

    .line 1389
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->hideProgressSpinner()V

    .line 1418
    :goto_0
    return-void

    .line 1393
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mSoundManager:Lcom/google/android/voicesearch/SoundManager;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getSoundId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/SoundManager;->playSound(I)V

    .line 1394
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDevice:Lcom/google/android/voicesearch/DeviceCapabilityManager;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actions/VoiceAction;->isEditorNeeded(Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1397
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;

    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    check-cast v0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mAllResults:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/voicesearch/EditorDialog;->setAction(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;Ljava/util/List;)V

    .line 1399
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->showScreen(I)V

    .line 1400
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->actionPresented(Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 1401
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->hideProgressSpinner()V

    goto :goto_0

    .line 1405
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/VoiceAction;->isCountdownNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1406
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTimeoutDialog:Lcom/google/android/voicesearch/TimeoutDialog;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/actions/VoiceAction;->prepareResultDialog(Landroid/content/Context;Lcom/google/android/voicesearch/TimeoutDialog;)V

    .line 1407
    invoke-direct {p0, v3}, Lcom/google/android/voicesearch/RecognitionActivity;->showScreen(I)V

    .line 1408
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTimeoutDialog:Lcom/google/android/voicesearch/TimeoutDialog;

    const/16 v1, 0xfa0

    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mActionTimeoutListener:Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/TimeoutDialog;->startCountDown(ILcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;)V

    .line 1409
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->actionPresented(Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 1410
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->hideProgressSpinner()V

    .line 1417
    :goto_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mScreenOnResume:I

    goto :goto_0

    .line 1415
    :cond_2
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->startAction(Lcom/google/android/voicesearch/actions/VoiceAction;Z)V

    goto :goto_1
.end method

.method private continueStartRecognitionTask()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1217
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1218
    if-nez v1, :cond_1

    .line 1311
    :cond_0
    :goto_0
    return-void

    .line 1223
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->reset()V

    .line 1224
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->start(Landroid/content/Intent;)V

    .line 1226
    iget v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mRecognitionMode:I

    packed-switch v0, :pswitch_data_0

    .line 1306
    :goto_1
    const-string v0, "fullRecognitionResultsRequest"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1308
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->setBrandingAndLanguageText(Landroid/content/Intent;)V

    .line 1310
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mCallback:Landroid/speech/RecognitionListener;

    invoke-interface {v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionListener;)V

    goto :goto_0

    .line 1228
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 1229
    if-nez v2, :cond_8

    .line 1230
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1231
    if-eqz v0, :cond_0

    .line 1235
    const-string v3, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1237
    if-nez v0, :cond_3

    .line 1244
    const-string v0, "RecognitionActivity"

    const-string v3, "ACTION_RECOGNIZE_SPEECH intent called incorrectly. Maybe you called startActivity, but you should have called startActivityForResult (or otherwise included a pending intent)."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 1255
    :goto_2
    const-string v2, "android"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "calling_package"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1257
    const-string v0, "calling_package"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1260
    :cond_2
    const-string v2, "calling_package"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1249
    :cond_3
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1283
    :pswitch_1
    iput-boolean v4, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mSendApplicationIdExtra:Z

    .line 1284
    const-string v0, "calling_package"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1286
    if-eqz v0, :cond_4

    .line 1287
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1288
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1290
    :cond_4
    if-eqz v0, :cond_5

    const-string v2, "com.android.browser"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const-string v0, "android.speech.extras.SEND_APPLICATION_ID_EXTRA"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1293
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mSendApplicationIdExtra:Z

    .line 1295
    :cond_7
    const-string v0, "contact_auth"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1296
    const-string v0, "useLocation"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1297
    const-string v0, "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/GservicesHelper;->getEndpointerCompleteSilenceMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1299
    const-string v0, "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/GservicesHelper;->getEndpointerPossiblyCompleteSilenceMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_8
    move-object v0, v2

    goto :goto_2

    .line 1226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private countAction(Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 2
    .parameter

    .prologue
    .line 1644
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getActionCounter()Lcom/google/android/voicesearch/actions/ActionCounter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actions/ActionCounter;->recordActionPerformed(I)V

    .line 1645
    return-void
.end method

.method private forwardRecognitionResults(Ljava/util/ArrayList;[BLandroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[B",
            "Landroid/app/PendingIntent;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1519
    if-nez p4, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .line 1520
    :goto_0
    const-string v2, "query"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1522
    if-eqz p2, :cond_0

    .line 1523
    const-string v0, "android.speech.extras.RAW_AUDIO"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1527
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 1529
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p3, p0, v1, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1533
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->finish()V

    .line 1534
    return-void

    .line 1530
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v1, p4

    goto :goto_0
.end method

.method private getActionCounter()Lcom/google/android/voicesearch/actions/ActionCounter;
    .locals 2

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mActionCounter:Lcom/google/android/voicesearch/actions/ActionCounter;

    if-nez v0, :cond_0

    .line 1638
    new-instance v0, Lcom/google/android/voicesearch/actions/ActionCounter;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/actions/ActionCounter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mActionCounter:Lcom/google/android/voicesearch/actions/ActionCounter;

    .line 1640
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mActionCounter:Lcom/google/android/voicesearch/actions/ActionCounter;

    return-object v0
.end method

.method private getActionWarningDialog(Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;Z)Landroid/app/Dialog;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 887
    const v0, 0x7f09076d

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getActionString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 889
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getUnsupportedActionDialogMarketUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 892
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getCountdownIcon()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f09074d

    new-instance v3, Lcom/google/android/voicesearch/RecognitionActivity$16;

    invoke-direct {v3, p0, p3}, Lcom/google/android/voicesearch/RecognitionActivity$16;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;Z)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/google/android/voicesearch/RecognitionActivity$15;

    invoke-direct {v2, p0, p3}, Lcom/google/android/voicesearch/RecognitionActivity$15;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;Z)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 919
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 921
    const-string v2, "market"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 922
    const v2, 0x7f090773

    .line 926
    :goto_0
    new-instance v3, Lcom/google/android/voicesearch/RecognitionActivity$17;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/android/voicesearch/RecognitionActivity$17;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 945
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 924
    :cond_1
    const v2, 0x7f090774

    goto :goto_0
.end method

.method private getLanguageWarningDialog(IILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 854
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020060

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09074d

    invoke-virtual {v0, v1, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0906ff

    new-instance v2, Lcom/google/android/voicesearch/RecognitionActivity$14;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/RecognitionActivity$14;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/voicesearch/RecognitionActivity$13;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/RecognitionActivity$13;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private handleIntentApiResults(Ljava/util/ArrayList;[B)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 1475
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1476
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 1477
    instance-of v3, v0, Lcom/google/android/voicesearch/actions/ShowRawResultAction;

    if-eqz v3, :cond_0

    .line 1478
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1482
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1483
    if-nez v2, :cond_2

    .line 1497
    :goto_1
    return-void

    .line 1488
    :cond_2
    const-string v0, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1490
    if-eqz v0, :cond_3

    .line 1491
    const-string v3, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1493
    invoke-direct {p0, v1, p2, v0, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->forwardRecognitionResults(Ljava/util/ArrayList;[BLandroid/app/PendingIntent;Landroid/os/Bundle;)V

    goto :goto_1

    .line 1495
    :cond_3
    invoke-direct {p0, v1, p2}, Lcom/google/android/voicesearch/RecognitionActivity;->returnRecognitionResults(Ljava/util/ArrayList;[B)V

    goto :goto_1
.end method

.method private handleVoiceSearchResults(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1545
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1546
    :cond_0
    const-string v0, "RecognitionActivity"

    const-string v1, "Unexpected error, server returned no results."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->onError(I)V

    .line 1580
    :goto_0
    return-void

    .line 1559
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->getSupportedActionTypes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 1562
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 1563
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1564
    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mUnsupportedResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 1569
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1570
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 1571
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->isEmptyWebSearchResult(Lcom/google/android/voicesearch/actions/VoiceAction;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1572
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1566
    :cond_3
    iput-object v6, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mUnsupportedResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    goto :goto_1

    .line 1576
    :cond_4
    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mAllResults:Ljava/util/ArrayList;

    .line 1577
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v6

    :goto_3
    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 1579
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1577
    :cond_5
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/VoiceAction;

    goto :goto_3
.end method

.method private hideProgressSpinner()V
    .locals 2

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1634
    return-void
.end method

.method private isEmptyWebSearchResult(Lcom/google/android/voicesearch/actions/VoiceAction;)Z
    .locals 2
    .parameter

    .prologue
    .line 1589
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private latency()J
    .locals 4

    .prologue
    .line 1086
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mActivityCreateTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private launchOptInActivity(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1039
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mToExitOnStartup:Z

    .line 1041
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1045
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1047
    invoke-virtual {p0, v0, p2}, Lcom/google/android/voicesearch/RecognitionActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    :goto_0
    return-void

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    const-string v1, "RecognitionActivity"

    const-string v2, "Couldn\'t start location opt-in"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onError(I)V
    .locals 2
    .parameter

    .prologue
    .line 1118
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->setRecognitionState(I)V

    .line 1122
    :cond_0
    invoke-static {p1}, Lcom/google/android/voicesearch/StringUtils;->getErrorMessageId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->showError(I)V

    .line 1123
    return-void
.end method

.method private onReadyForSpeech()V
    .locals 2

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1148
    return-void
.end method

.method private removeAllMessages()V
    .locals 2

    .prologue
    .line 1129
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 1130
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1132
    :cond_0
    return-void
.end method

.method private returnRecognitionResults(Ljava/util/ArrayList;[B)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 1504
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1505
    const-string v1, "android.speech.extra.RESULTS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1506
    if-eqz p2, :cond_0

    .line 1507
    const-string v1, "android.speech.extras.RAW_AUDIO"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1509
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->setResult(ILandroid/content/Intent;)V

    .line 1510
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->finish()V

    .line 1511
    return-void
.end method

.method private setBrandingAndLanguageText(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 977
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mRecognitionMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 978
    const-string v0, "android.speech.extra.PROMPT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 979
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v4

    .line 981
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/RecognitionDialog;->setBrandingText(Ljava/lang/String;)V

    .line 985
    if-eqz p1, :cond_4

    const-string v0, "android.speech.extra.LANGUAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "android.speech.extra.LANGUAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 989
    const-string v0, "android.speech.extra.LANGUAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 990
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/LanguagePrefManager;->getSupportedLanguages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 991
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1005
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v4

    .line 1006
    :cond_1
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/RecognitionDialog;->setLanguageText(Ljava/lang/String;)V

    .line 1007
    return-void

    .line 993
    :cond_2
    const-string v1, "RecognitionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown language requested in voice recognition intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (use RecognizerIntent.ACTION_GET_LANGUAGE_DETAILS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "to retrieve a list of supported languages)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v0, v4

    goto :goto_1

    .line 1000
    :cond_4
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageSetting()Ljava/lang/String;

    move-result-object v0

    .line 1001
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1002
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v4

    goto :goto_0
.end method

.method private setMode(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 949
    const-string v0, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.speech.action.ANALYZE_SPEECH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 951
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mRecognitionMode:I

    .line 952
    iput-boolean v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mWebSearchOnly:Z

    .line 958
    :goto_0
    return-void

    .line 954
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mRecognitionMode:I

    .line 955
    const-string v0, "android.speech.extra.WEB_SEARCH_ONLY"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mWebSearchOnly:Z

    goto :goto_0
.end method

.method private shouldShowHelpButton()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 962
    iget v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mRecognitionMode:I

    if-eq v0, v2, :cond_0

    move v0, v1

    .line 966
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->languageSettingHasVoiceActions()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mWebSearchOnly:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getAdvancedFeaturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private showDisambig(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1317
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1328
    :cond_0
    :goto_0
    return-void

    .line 1323
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mAllResults:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/voicesearch/DisambigDialog;->update(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 1324
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->showScreen(I)V

    .line 1325
    if-eqz p1, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mSoundManager:Lcom/google/android/voicesearch/SoundManager;

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/SoundManager;->playSound(I)V

    goto :goto_0
.end method

.method private showError(I)V
    .locals 2
    .parameter

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1163
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1164
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1165
    return-void
.end method

.method private showInitializing()V
    .locals 1

    .prologue
    .line 1139
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->showScreen(I)V

    .line 1140
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->showProgressSpinner()V

    .line 1141
    return-void
.end method

.method private showOptInIfNeeded()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1011
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLocationUtils:Lcom/google/android/voicesearch/LocationHelper;

    invoke-interface {v0}, Lcom/google/android/voicesearch/LocationHelper;->isLocationInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1012
    const-string v0, "com.google.android.gsf.action.SET_USE_LOCATION_FOR_SERVICES"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->launchOptInActivity(Ljava/lang/String;I)V

    .line 1020
    :goto_0
    return-void

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/PersonalizationPrefManager;->shouldPrompt(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1015
    const-string v0, "com.google.android.voicesearch.action.PERSONALIZATION_OPT_IN"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->launchOptInActivity(Ljava/lang/String;I)V

    goto :goto_0

    .line 1018
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->showScreen(I)V

    goto :goto_0
.end method

.method private showProgressSpinner()V
    .locals 2

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mProgress:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1630
    return-void
.end method

.method private showResults()V
    .locals 4

    .prologue
    .line 1334
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1373
    :goto_0
    return-void

    .line 1340
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mUnsupportedResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    if-eqz v0, :cond_1

    .line 1344
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->showDialog(I)V

    .line 1345
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->hideProgressSpinner()V

    goto :goto_0

    .line 1351
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mAllResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1352
    const-string v0, "RecognitionActivity"

    const-string v1, "No supported result were received by the client."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->onError(I)V

    goto :goto_0

    .line 1359
    :cond_2
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getActionCounter()Lcom/google/android/voicesearch/actions/ActionCounter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actions/ActionCounter;->getActionPerformedCount(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 1360
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getFirstTimeUseDialogMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1363
    if-eqz v0, :cond_3

    .line 1364
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1365
    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 1367
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->hideProgressSpinner()V

    goto :goto_0

    .line 1372
    :cond_3
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->continueShowingResults()V

    goto :goto_0
.end method

.method private showScreen(I)V
    .locals 2
    .parameter

    .prologue
    .line 1598
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/EditorDialog;->show()V

    .line 1604
    :goto_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1605
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->disambigPresented()V

    .line 1606
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/DisambigDialog;->show()V

    .line 1611
    :goto_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1612
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTimeoutDialog:Lcom/google/android/voicesearch/TimeoutDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/TimeoutDialog;->show()V

    .line 1617
    :goto_2
    if-nez p1, :cond_3

    .line 1618
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/RecognitionDialog;->setVisibility(I)V

    .line 1623
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->closeOptionsMenu()V

    .line 1625
    iput p1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mScreenOnResume:I

    .line 1626
    return-void

    .line 1601
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/EditorDialog;->dismiss()V

    goto :goto_0

    .line 1608
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/DisambigDialog;->dismiss()V

    goto :goto_1

    .line 1614
    :cond_2
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTimeoutDialog:Lcom/google/android/voicesearch/TimeoutDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/TimeoutDialog;->dismiss()V

    goto :goto_2

    .line 1620
    :cond_3
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/RecognitionDialog;->hide()V

    goto :goto_3
.end method

.method private showWorking()V
    .locals 2

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1155
    return-void
.end method

.method private startAction(Lcom/google/android/voicesearch/actions/VoiceAction;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1424
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1466
    :goto_0
    return-void

    .line 1428
    :cond_0
    const-string v0, "RecognitionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    if-eqz p2, :cond_1

    .line 1432
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->actionAccepted(Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 1435
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/RecognitionActivity;->countAction(Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 1441
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mStartActionTime:J

    .line 1442
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mStartedAction:Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 1444
    iget-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mSendApplicationIdExtra:Z

    if-eqz v0, :cond_2

    .line 1445
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/voicesearch/actions/VoiceAction;->setForwardApplicationId(Ljava/lang/String;)V

    .line 1450
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 1451
    if-eqz v0, :cond_5

    .line 1452
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 1453
    if-nez v1, :cond_3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1454
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1456
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getCompletionToast(Landroid/content/Context;)Landroid/widget/Toast;

    move-result-object v0

    .line 1457
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1459
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->finish()V

    .line 1465
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/voicesearch/Shortcuts;->addShortcut(Landroid/content/Context;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto :goto_0

    .line 1462
    :cond_5
    new-instance v0, Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mAllResults:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method private startHelpActivity()V
    .locals 4

    .prologue
    .line 1026
    invoke-static {p0}, Lcom/google/android/voicesearch/Experiments$HelpBubble;->incrementHelpCount(Landroid/content/Context;)V

    .line 1027
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1028
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/android/voicesearch/HelpActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1029
    if-eqz v0, :cond_0

    .line 1030
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1032
    :cond_0
    const-string v0, "show_hints_checkbox_key"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1033
    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->startActivity(Landroid/content/Intent;)V

    .line 1034
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->finish()V

    .line 1035
    return-void
.end method

.method private startRecognitionTask()V
    .locals 4

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->languageSettingIsDefault()Z

    move-result v0

    .line 1175
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/LanguagePrefManager;->deviceLanguageIsSupported()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/LanguagePrefManager;->hasAcknowledgedUnsupportedDeviceLanguage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->showDialog(I)V

    .line 1209
    :goto_0
    return-void

    .line 1179
    :cond_0
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "default_language_changed"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1183
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1186
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->continueStartRecognitionTask()V

    goto :goto_0

    .line 1192
    :pswitch_1
    if-eqz v0, :cond_1

    .line 1193
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->showDialog(I)V

    goto :goto_0

    .line 1195
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->resetDefaultLanguageChange()V

    .line 1196
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->continueStartRecognitionTask()V

    goto :goto_0

    .line 1201
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->showDialog(I)V

    goto :goto_0

    .line 1205
    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->showDialog(I)V

    goto :goto_0

    .line 1183
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateLayout()V
    .locals 5

    .prologue
    .line 1061
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1062
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mProgress:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1063
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/RecognitionDialog;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1065
    const/high16 v3, 0x7f08

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1066
    const v3, 0x7f080005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 1067
    const v4, 0x7f080004

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 1072
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1073
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1075
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mProgress:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1076
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/RecognitionDialog;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1077
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/DisambigDialog;->updateLayout()V

    .line 1078
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTimeoutDialog:Lcom/google/android/voicesearch/TimeoutDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/TimeoutDialog;->updateLayout()V

    .line 1079
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/EditorDialog;->updateLayout()V

    .line 1080
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 619
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 623
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 624
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/EditorDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/EditorDialog;->dismiss()V

    .line 626
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->finish()V

    .line 634
    :cond_1
    :goto_0
    return-void

    .line 628
    :cond_2
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLocationUtils:Lcom/google/android/voicesearch/LocationHelper;

    invoke-interface {v0}, Lcom/google/android/voicesearch/LocationHelper;->isLocationInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/PersonalizationPrefManager;->shouldPrompt(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 632
    const-string v0, "com.google.android.voicesearch.action.PERSONALIZATION_OPT_IN"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->launchOptInActivity(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->updateLayout()V

    .line 574
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 575
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 414
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mActivityCreateTime:J

    .line 415
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 417
    invoke-static {p0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v1

    .line 428
    invoke-interface {v1}, Lcom/google/android/voicesearch/VoiceSearchContainer;->createRecognitionController()Lcom/google/android/voicesearch/speechservice/RecognitionController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    .line 431
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/VoiceSearchApplication;

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mApplication:Lcom/google/android/voicesearch/VoiceSearchApplication;

    .line 432
    const-string v0, "VoiceSearchPreferences"

    invoke-virtual {p0, v0, v3}, Lcom/google/android/voicesearch/RecognitionActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 434
    invoke-interface {v1}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getPersonalizationPrefManager()Lcom/google/android/voicesearch/PersonalizationPrefManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

    .line 435
    invoke-interface {v1}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getAccountHelper()Lcom/google/android/voicesearch/util/AccountHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    .line 436
    invoke-interface {v1}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLocationHelper()Lcom/google/android/voicesearch/LocationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLocationUtils:Lcom/google/android/voicesearch/LocationHelper;

    .line 437
    invoke-interface {v1}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 438
    invoke-interface {v1}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLanguagePrefManager()Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    .line 439
    invoke-interface {v1}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getDeviceCapabilityManager()Lcom/google/android/voicesearch/DeviceCapabilityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDevice:Lcom/google/android/voicesearch/DeviceCapabilityManager;

    .line 441
    new-instance v0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;Lcom/google/android/voicesearch/RecognitionActivity$1;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mCallback:Landroid/speech/RecognitionListener;

    .line 443
    invoke-interface {v1}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getVoiceSearchLogger()Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    .line 444
    new-instance v0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mHandler:Landroid/os/Handler;

    .line 445
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->setMode(Landroid/content/Intent;)V

    .line 446
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->setContentView(I)V

    .line 448
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 450
    const-string v1, "enableTestPlatformLogging"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/voicesearch/TestPlatformLog;->setEnabled(Z)V

    .line 452
    const v0, 0x7f0d005b

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/RecognitionDialog;

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;

    .line 453
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;

    new-instance v1, Lcom/google/android/voicesearch/RecognitionActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/RecognitionActivity$2;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/RecognitionDialog;->setListener(Lcom/google/android/voicesearch/RecognitionDialog$Listener;)V

    .line 473
    new-instance v0, Lcom/google/android/voicesearch/DisambigDialog;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/DisambigDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;

    .line 474
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;

    invoke-virtual {v0, p0}, Lcom/google/android/voicesearch/DisambigDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 475
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;

    new-instance v1, Lcom/google/android/voicesearch/RecognitionActivity$3;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/RecognitionActivity$3;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/DisambigDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 482
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;

    new-instance v1, Lcom/google/android/voicesearch/RecognitionActivity$4;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/RecognitionActivity$4;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/DisambigDialog;->setDisambigListener(Lcom/google/android/voicesearch/DisambigDialog$Listener;)V

    .line 516
    new-instance v0, Lcom/google/android/voicesearch/EditorDialog;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/voicesearch/EditorDialog;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper;Lcom/google/android/voicesearch/speechservice/RecognitionController;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;

    .line 517
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;

    new-instance v1, Lcom/google/android/voicesearch/RecognitionActivity$5;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/RecognitionActivity$5;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/EditorDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 523
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;

    new-instance v1, Lcom/google/android/voicesearch/RecognitionActivity$6;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/RecognitionActivity$6;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/EditorDialog;->setListener(Lcom/google/android/voicesearch/EditorDialog$Listener;)V

    .line 539
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getResources()Landroid/content/res/Resources;

    .line 540
    new-instance v0, Lcom/google/android/voicesearch/TimeoutDialog;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/TimeoutDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTimeoutDialog:Lcom/google/android/voicesearch/TimeoutDialog;

    .line 543
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTimeoutDialog:Lcom/google/android/voicesearch/TimeoutDialog;

    new-instance v1, Lcom/google/android/voicesearch/RecognitionActivity$7;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/RecognitionActivity$7;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/TimeoutDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 549
    const v0, 0x7f0d005c

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mProgress:Landroid/view/View;

    .line 550
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mApplication:Lcom/google/android/voicesearch/VoiceSearchApplication;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getSoundManager()Lcom/google/android/voicesearch/SoundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mSoundManager:Lcom/google/android/voicesearch/SoundManager;

    .line 551
    new-instance v0, Lcom/google/android/voicesearch/Vibrator;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/Vibrator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mVibrator:Lcom/google/android/voicesearch/Vibrator;

    .line 560
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->updateLayout()V

    .line 561
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    invoke-virtual {v0, p0}, Lcom/google/android/voicesearch/util/AccountHelper;->promptForPermissions(Landroid/app/Activity;)V

    .line 562
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->showOptInIfNeeded()V

    .line 563
    if-eqz p1, :cond_0

    const-string v0, "key_state_sceen_on_resume"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    const-string v0, "key_state_sceen_on_resume"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mScreenOnResume:I

    .line 566
    const-string v0, "key_state_top_result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/VoiceAction;

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 567
    const-string v0, "key_state_all_results"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mAllResults:Ljava/util/ArrayList;

    .line 569
    :cond_0
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f090746

    .line 753
    packed-switch p1, :pswitch_data_0

    .line 844
    const-string v0, "RecognitionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown dialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 845
    :goto_0
    return-object v0

    .line 755
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceDefaultLanguageName()Ljava/lang/String;

    move-result-object v0

    .line 756
    const v1, 0x7f090747

    new-instance v2, Lcom/google/android/voicesearch/RecognitionActivity$9;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/RecognitionActivity$9;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    invoke-direct {p0, v3, v1, v0, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->getLanguageWarningDialog(IILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 766
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceDefaultLanguageName()Ljava/lang/String;

    move-result-object v0

    .line 767
    const v1, 0x7f090748

    new-instance v2, Lcom/google/android/voicesearch/RecognitionActivity$10;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/RecognitionActivity$10;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    invoke-direct {p0, v3, v1, v0, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->getLanguageWarningDialog(IILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 777
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceDefaultLanguageName()Ljava/lang/String;

    move-result-object v0

    .line 782
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/LanguagePrefManager;->languageSettingIsDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 783
    const v1, 0x7f090749

    .line 788
    :goto_1
    new-instance v2, Lcom/google/android/voicesearch/RecognitionActivity$11;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/RecognitionActivity$11;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    invoke-direct {p0, v3, v1, v0, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->getLanguageWarningDialog(IILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 785
    :cond_0
    const v1, 0x7f09074a

    goto :goto_1

    .line 798
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceDefaultLanguageName()Ljava/lang/String;

    move-result-object v0

    .line 803
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/LanguagePrefManager;->languageSettingIsDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 804
    const v1, 0x7f09074b

    .line 809
    :goto_2
    new-instance v2, Lcom/google/android/voicesearch/RecognitionActivity$12;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/RecognitionActivity$12;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    invoke-direct {p0, v3, v1, v0, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->getLanguageWarningDialog(IILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 806
    :cond_1
    const v1, 0x7f09074c

    goto :goto_2

    .line 819
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mUnsupportedResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    if-nez v0, :cond_2

    move-object v0, v4

    .line 823
    goto :goto_0

    .line 825
    :cond_2
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mUnsupportedResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mUnsupportedResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/actions/VoiceAction;->getUnsupportedActionDialogMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->getActionWarningDialog(Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 832
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    if-nez v0, :cond_3

    move-object v0, v4

    .line 836
    goto/16 :goto_0

    .line 838
    :cond_3
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    const-string v1, "message"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->getActionWarningDialog(Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 753
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 593
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 747
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 748
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->onDestroy()V

    .line 749
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 609
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mActivityCreateTime:J

    .line 610
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mCallback:Landroid/speech/RecognitionListener;

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->onCancel(Landroid/speech/RecognitionListener;)V

    .line 611
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/RecognitionActivity;->setIntent(Landroid/content/Intent;)V

    .line 612
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mToExitOnStartup:Z

    .line 613
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->showOptInIfNeeded()V

    .line 614
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 615
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 579
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 586
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 581
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 582
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/voicesearch/VoiceSearchPreferences;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 583
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->startActivity(Landroid/content/Intent;)V

    .line 584
    const/4 v0, 0x1

    goto :goto_0

    .line 579
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d005d
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 693
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 695
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :goto_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLocationUtils:Lcom/google/android/voicesearch/LocationHelper;

    invoke-interface {v0}, Lcom/google/android/voicesearch/LocationHelper;->isLocationInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/PersonalizationPrefManager;->shouldPrompt(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    :cond_0
    :goto_1
    return-void

    .line 705
    :cond_1
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->removeAllMessages()V

    .line 706
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 707
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mCallback:Landroid/speech/RecognitionListener;

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->onCancel(Landroid/speech/RecognitionListener;)V

    .line 709
    :cond_2
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->onPause()V

    .line 710
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLocationUtils:Lcom/google/android/voicesearch/LocationHelper;

    invoke-interface {v0}, Lcom/google/android/voicesearch/LocationHelper;->stopLocationService()V

    .line 711
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTimeoutDialog:Lcom/google/android/voicesearch/TimeoutDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/TimeoutDialog;->stopCountDown()V

    .line 712
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/RecognitionDialog;->stopAudioMeter()V

    .line 713
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/EditorDialog;->onPause()V

    goto :goto_1

    .line 696
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 639
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 640
    iget-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mToExitOnStartup:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLocationUtils:Lcom/google/android/voicesearch/LocationHelper;

    invoke-interface {v0}, Lcom/google/android/voicesearch/LocationHelper;->isLocationInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

    invoke-virtual {v0, v2}, Lcom/google/android/voicesearch/PersonalizationPrefManager;->shouldPrompt(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->finish()V

    .line 688
    :goto_0
    return-void

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLocationUtils:Lcom/google/android/voicesearch/LocationHelper;

    invoke-interface {v0}, Lcom/google/android/voicesearch/LocationHelper;->isLocationInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

    invoke-virtual {v0, v2}, Lcom/google/android/voicesearch/PersonalizationPrefManager;->shouldPrompt(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 652
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mToExitOnStartup:Z

    goto :goto_0

    .line 656
    :cond_3
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLocationUtils:Lcom/google/android/voicesearch/LocationHelper;

    invoke-interface {v0}, Lcom/google/android/voicesearch/LocationHelper;->startLocationService()V

    .line 657
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->shouldShowHelpButton()Z

    move-result v0

    .line 658
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/RecognitionDialog;->setShowHelpButton(Z)V

    .line 659
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/DisambigDialog;->setShowHelpButton(Z)V

    .line 661
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->shouldShowFirstRunMessage(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 663
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->showInitializing()V

    .line 664
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->startHelpActivity()V

    goto :goto_0

    .line 668
    :cond_4
    iget v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mScreenOnResume:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    .line 670
    iget v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mScreenOnResume:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 672
    invoke-direct {p0, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->showDisambig(Z)V

    .line 676
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mStartedAction:Lcom/google/android/voicesearch/actions/VoiceAction;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mStartedAction:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/VoiceAction;->shouldWatchForQuickReturns()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mStartActionTime:J

    sub-long/2addr v0, v2

    .line 678
    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 679
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mStartedAction:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->actionRejected(Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 683
    :cond_5
    iget v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mScreenOnResume:I

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->showScreen(I)V

    goto :goto_0

    .line 685
    :cond_6
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->showInitializing()V

    .line 686
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->startRecognitionTask()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1649
    iget v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mScreenOnResume:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1650
    const-string v0, "key_state_sceen_on_resume"

    iget v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mScreenOnResume:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1651
    const-string v0, "key_state_top_result"

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1652
    const-string v0, "key_state_all_results"

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mAllResults:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1654
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1655
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 719
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 721
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDockReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/google/android/voicesearch/RecognitionActivity;->DOCK_EVENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 722
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-static {p0, v0}, Lcom/google/android/voicesearch/Experiments$HelpBubble;->shouldShowHelpBubble(Landroid/content/Context;Lcom/google/android/voicesearch/GservicesHelper;)Z

    move-result v0

    .line 724
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/RecognitionDialog;->setShowHelpHintBubble(Z)V

    .line 725
    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/Experiments$HelpBubble;->incrementAppStartCount(Landroid/content/Context;)V

    .line 728
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 734
    iget v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mScreenOnResume:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mScreenOnResume:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 735
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->showScreen(I)V

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->onStop()V

    .line 738
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->flush()V

    .line 742
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 743
    return-void
.end method
