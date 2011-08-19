.class public Lcom/google/android/talk/videochat/VideoChatActivity;
.super Landroid/app/Activity;
.source "VideoChatActivity.java"

# interfaces
.implements Lcom/google/android/talk/videochat/GlVideoView$DrawingStartedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;,
        Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;,
        Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;
    }
.end annotation


# static fields
.field private static RETRY_COUNT:I

.field private static final sChatListener:Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;


# instance fields
.field private dismissButtonPanelRunnable:Ljava/lang/Runnable;

.field private dismissTextOverlayRunnable:Ljava/lang/Runnable;

.field private mAccountId:J

.field private final mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

.field mAvatarQuery:Lcom/google/android/talk/ContactInfoQuery;

.field private mBareJid:Ljava/lang/String;

.field private mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

.field private mButtonPanel:Landroid/view/View;

.field private mCallStateListener:Lcom/google/android/talk/videochat/ICallStateListener;

.field private mCallStateListenerRegistered:Ljava/lang/Boolean;

.field mConnectCallTask:Ljava/lang/Runnable;

.field private mConnectRetryCount:I

.field private mConnectingProgressBar:Landroid/widget/ProgressBar;

.field private mConnectingStatus:Landroid/view/View;

.field private mConnectingStatusText:Landroid/widget/TextView;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mDrawingStarted:Ljava/lang/Boolean;

.field private mFadeInLong:Landroid/view/animation/Animation;

.field private mFadeInMedium:Landroid/view/animation/Animation;

.field private mFadeOutLong:Landroid/view/animation/Animation;

.field private mFadeOutMedium:Landroid/view/animation/Animation;

.field private mGlVideoView:Lcom/google/android/talk/videochat/GlVideoView;

.field private final mHandler:Landroid/os/Handler;

.field private mImageStabilizationLock:Ljava/lang/Object;

.field private mInitialTransition:Ljava/lang/Runnable;

.field private mInitialized:Z

.field private mIntentAction:Ljava/lang/String;

.field private mMuteButton:Landroid/widget/ImageButton;

.field private mPaused:Z

.field private mRecentChatMessageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mReevaluateCallState:Z

.field private mRemoteJid:Ljava/lang/String;

.field private mSecureView:Landroid/view/View;

.field private mSessionReadyTask:Ljava/lang/Runnable;

.field private mStabilizationResetButton:Landroid/view/View;

.field private mStabilizationSlider:Landroid/widget/SeekBar;

.field private mStabilizationSliderContainer:Landroid/view/View;

.field private mState:I

.field private mStopped:Z

.field private mTextOverlay:Landroid/widget/LinearLayout;

.field private mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

.field private mVideoFadeInAnimationDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 347
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity$1;)V

    sput-object v0, Lcom/google/android/talk/videochat/VideoChatActivity;->sChatListener:Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;

    .line 1096
    const/16 v0, 0xa

    sput v0, Lcom/google/android/talk/videochat/VideoChatActivity;->RETRY_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 298
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;

    .line 149
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRecentChatMessageQueue:Ljava/util/Queue;

    .line 152
    iput-boolean v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mStopped:Z

    .line 153
    iput-boolean v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mPaused:Z

    .line 442
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallStateListenerRegistered:Ljava/lang/Boolean;

    .line 443
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$4;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallStateListener:Lcom/google/android/talk/videochat/ICallStateListener;

    .line 509
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatActivity$5;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$5;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->dismissTextOverlayRunnable:Ljava/lang/Runnable;

    .line 559
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatActivity$6;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$6;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->dismissButtonPanelRunnable:Ljava/lang/Runnable;

    .line 901
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatActivity$9;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$9;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 964
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatActivity$11;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$11;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectCallTask:Ljava/lang/Runnable;

    .line 1095
    iput v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectRetryCount:I

    .line 1192
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mImageStabilizationLock:Ljava/lang/Object;

    .line 299
    iput-object p0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    .line 300
    return-void
.end method

.method private acceptCall()V
    .locals 2

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteJid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteJid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/VideoChatSession;->acceptIncomingCall(Ljava/lang/String;)Z

    move-result v0

    .line 1075
    if-eqz v0, :cond_1

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accpted call from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteJid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    .line 1081
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    const-string v0, "Call connect failed"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/GlVideoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlVideoView:Lcom/google/android/talk/videochat/GlVideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/talk/videochat/VideoChatActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity;->showButtonPanel(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/util/Queue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRecentChatMessageQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/talk/videochat/VideoChatActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity;->setState(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->finishActivity()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSecureView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/talk/videochat/VideoChatActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity;->updateBluetoothUi(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->startTextOverlayFadeOut()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mButtonPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/talk/videochat/VideoChatActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity;->hideButtonPanel(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/talk/videochat/VideoChatActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity;->showImageStabilizationSlider(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mStabilizationSliderContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/talk/videochat/VideoChatActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mIntentAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->acceptCall()V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->makeCall()V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->connectToExistingCall()V

    return-void
.end method

.method static synthetic access$2702(Lcom/google/android/talk/videochat/VideoChatActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mReevaluateCallState:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/google/android/talk/videochat/VideoChatActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mStopped:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/talk/videochat/VideoChatSession;)Lcom/google/android/talk/videochat/VideoChatSession;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->registerCallStateListener()V

    return-void
.end method

.method static synthetic access$3100()Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/google/android/talk/videochat/VideoChatActivity;->sChatListener:Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSessionReadyTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSessionReadyTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/google/android/talk/videochat/VideoChatActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getImageStabilizationPref()I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mStabilizationSlider:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/google/android/talk/videochat/VideoChatActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity;->saveImageStabilizationPref(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->startTextChatActivity()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mBareJid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/talk/videochat/VideoChatActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->isInCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity;->updateRecentMessageQueue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mTextOverlay:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->bindRecentMessages()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/talk/videochat/VideoChatActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/videochat/VideoChatActivity;->scheduleTextOverlayFadeOut(J)V

    return-void
.end method

.method private bindRecentMessages()V
    .locals 9

    .prologue
    .line 327
    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRecentChatMessageQueue:Ljava/util/Queue;

    monitor-enter v4

    .line 329
    :try_start_0
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mTextOverlay:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 330
    const/4 v1, 0x1

    .line 331
    .local v1, first:Z
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRecentChatMessageQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;

    .line 332
    .local v0, cm:Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;
    if-eqz v1, :cond_0

    .line 333
    const/4 v1, 0x0

    .line 339
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040037

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 341
    .local v3, tv:Landroid/widget/TextView;
    iget-object v5, v0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;->mMessage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mTextOverlay:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 344
    .end local v0           #cm:Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;
    .end local v1           #first:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #tv:Landroid/widget/TextView;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 335
    .restart local v0       #cm:Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;
    .restart local v1       #first:Z
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mTextOverlay:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040036

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 344
    .end local v0           #cm:Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    return-void
.end method

.method private connectToExistingCall()V
    .locals 4

    .prologue
    .line 1099
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->isInitiatingCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1121
    :cond_0
    :goto_0
    return-void

    .line 1107
    :cond_1
    iget v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectRetryCount:I

    sget v1, Lcom/google/android/talk/videochat/VideoChatActivity;->RETRY_COUNT:I

    if-ge v0, v1, :cond_2

    .line 1108
    const-string v0, "No call to connect to. Retrying."

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    .line 1109
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/talk/videochat/VideoChatActivity$12;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$12;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1115
    iget v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectRetryCount:I

    goto :goto_0

    .line 1117
    :cond_2
    const-string v0, "No call to connect to. Finishing activity."

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    .line 1118
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->finishActivity()V

    goto :goto_0
.end method

.method private endCall()V
    .locals 3

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoChatSession;->getConnectedCallRemoteJid()Ljava/lang/String;

    move-result-object v0

    .line 1139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "terminated call for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    .line 1140
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

    invoke-virtual {v1, v0}, Lcom/google/android/talk/videochat/VideoChatSession;->terminateChat(Ljava/lang/String;)V

    .line 1142
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->finishActivity()V

    .line 1143
    return-void
.end method

.method private finishActivity()V
    .locals 1

    .prologue
    .line 1146
    const-string v0, "call finish"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1148
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->finish()V

    .line 1150
    :cond_0
    return-void
.end method

.method private getImageStabilizationPref()I
    .locals 4

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mImageStabilizationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1204
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "imageStabLevel"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1206
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private hideButtonPanel(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    .line 547
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->dismissButtonPanelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 549
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 550
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 551
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 553
    if-eqz p1, :cond_0

    .line 554
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mButtonPanel:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFadeOutLong:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mButtonPanel:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 557
    return-void
.end method

.method private initAnimations()V
    .locals 1

    .prologue
    .line 1154
    const v0, 0x7f050002

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFadeInMedium:Landroid/view/animation/Animation;

    .line 1155
    const v0, 0x7f050001

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFadeInLong:Landroid/view/animation/Animation;

    .line 1156
    const v0, 0x7f050005

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFadeOutMedium:Landroid/view/animation/Animation;

    .line 1157
    const v0, 0x7f050004

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFadeOutLong:Landroid/view/animation/Animation;

    .line 1160
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->initToVanityResources()V

    .line 1161
    return-void
.end method

.method private initToVanityResources()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 917
    new-instance v0, Lcom/google/android/talk/ContactInfoQuery;

    iget-wide v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAccountId:J

    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mBareJid:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/ContactInfoQuery;-><init>(Landroid/content/Context;JLjava/lang/String;Landroid/database/ContentObserver;Z)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAvatarQuery:Lcom/google/android/talk/ContactInfoQuery;

    .line 919
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAvatarQuery:Lcom/google/android/talk/ContactInfoQuery;

    new-instance v1, Lcom/google/android/talk/videochat/VideoChatActivity$10;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$10;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ContactInfoQuery;->setContactInfoCallback(Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;)V

    .line 927
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectingStatus:Landroid/view/View;

    if-nez v0, :cond_0

    .line 928
    const v0, 0x7f10009f

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectingStatus:Landroid/view/View;

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectingStatusText:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 932
    const v0, 0x7f1000a3

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectingStatusText:Landroid/widget/TextView;

    .line 933
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectingStatusText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0130

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mBareJid:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 936
    :cond_1
    return-void
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 889
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mInitialized:Z

    if-nez v0, :cond_1

    .line 890
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->initAnimations()V

    .line 892
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mReevaluateCallState:Z

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectCallTask:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->setSessionReadyTask(Ljava/lang/Runnable;)V

    .line 897
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mInitialized:Z

    .line 899
    :cond_1
    return-void
.end method

.method private isInCall()Z
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoChatSession;->isInCall()Z

    move-result v0

    .line 1127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInitiatingCall()Z
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoChatSession;->isInitiatingCall()Z

    move-result v0

    .line 1134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1214
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VideoChatActivity] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    return-void
.end method

.method private makeCall()V
    .locals 2

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteJid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteJid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/VideoChatSession;->initiateVideoChat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteJid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1090
    :cond_1
    const-string v0, "Call failed"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerCallStateListener()V
    .locals 3

    .prologue
    .line 993
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallStateListenerRegistered:Ljava/lang/Boolean;

    monitor-enter v0

    .line 994
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallStateListenerRegistered:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mPaused:Z

    if-nez v1, :cond_0

    .line 999
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallStateListener:Lcom/google/android/talk/videochat/ICallStateListener;

    invoke-virtual {v1, v2}, Lcom/google/android/talk/videochat/VideoChatSession;->addRemoteCallStateListener(Lcom/google/android/talk/videochat/ICallStateListener;)V

    .line 1000
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

    invoke-virtual {v1}, Lcom/google/android/talk/videochat/VideoChatSession;->requestCallStateUpdate()V

    .line 1001
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallStateListenerRegistered:Ljava/lang/Boolean;

    .line 1003
    :cond_0
    monitor-exit v0

    .line 1004
    return-void

    .line 1003
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetButtonPanelFadeOutCountdown()V
    .locals 4

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->dismissButtonPanelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 520
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->dismissButtonPanelRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 521
    return-void
.end method

.method private resolveIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 939
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 941
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 943
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 944
    const-string v0, "talk"

    const-string v1, "[TestVideoChatScreenNoLogin] invalid uri"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->finish()V

    .line 962
    :goto_0
    return-void

    .line 949
    :cond_0
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 951
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAccountId:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mIntentAction:Ljava/lang/String;

    .line 960
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteJid:Ljava/lang/String;

    .line 961
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteJid:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mBareJid:Ljava/lang/String;

    goto :goto_0

    .line 952
    :catch_0
    move-exception v1

    .line 953
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TestVideoChatScreenNoLogin] invalid account id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->finish()V

    goto :goto_0
.end method

.method private saveImageStabilizationPref(I)V
    .locals 3
    .parameter

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mImageStabilizationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1196
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1197
    const-string v2, "imageStabLevel"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1198
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1199
    monitor-exit v0

    .line 1200
    return-void

    .line 1199
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private scheduleTextOverlayFadeOut(J)V
    .locals 2
    .parameter "millis"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->dismissTextOverlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 500
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->dismissTextOverlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 501
    return-void
.end method

.method private sendImageStabilizationReset()V
    .locals 2

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/VideoChatSession;->setImageStabilizationLevel(I)V

    .line 1211
    return-void
.end method

.method private setSessionReadyTask(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 985
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

    if-nez v0, :cond_0

    .line 986
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSessionReadyTask:Ljava/lang/Runnable;

    .line 990
    :goto_0
    return-void

    .line 988
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private setState(I)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    iget v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mState:I

    if-ne p1, v2, :cond_0

    .line 192
    :goto_0
    :pswitch_0
    return-void

    .line 170
    :cond_0
    iget v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mState:I

    .line 171
    .local v1, previousState:I
    iput p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mState:I

    .line 173
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 179
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->transitionToPaused()V

    goto :goto_0

    .line 182
    :pswitch_2
    if-ge v1, v5, :cond_1

    move v2, v4

    :goto_1
    invoke-direct {p0, v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->transitionUiToVanity(Z)V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 185
    :pswitch_3
    if-ne v1, v5, :cond_2

    move v2, v4

    :goto_2
    invoke-direct {p0, v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->transitionUiToConnected(Z)V

    .line 188
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 189
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    move v2, v3

    .line 185
    goto :goto_2

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setupOverlayClickLogic()V
    .locals 2

    .prologue
    .line 1164
    const v0, 0x7f1000a4

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mTextOverlay:Landroid/widget/LinearLayout;

    .line 1165
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mTextOverlay:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/google/android/talk/videochat/VideoChatActivity$13;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$13;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1173
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlVideoView:Lcom/google/android/talk/videochat/GlVideoView;

    new-instance v1, Lcom/google/android/talk/videochat/VideoChatActivity$14;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$14;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/GlVideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1189
    return-void
.end method

.method private showButtonPanel(Z)V
    .locals 5
    .parameter "animate"

    .prologue
    const/4 v4, 0x0

    .line 531
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 532
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 533
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 535
    if-eqz p1, :cond_0

    .line 536
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mButtonPanel:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFadeInMedium:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 538
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mButtonPanel:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 539
    const v2, 0x7f100096

    invoke-virtual {p0, v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 540
    .local v0, fadedEnd:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 541
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 543
    :cond_1
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->resetButtonPanelFadeOutCountdown()V

    .line 544
    return-void
.end method

.method private showImageStabilizationSlider(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 524
    if-eqz p1, :cond_0

    .line 525
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mStabilizationSliderContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFadeInMedium:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mStabilizationSliderContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 528
    return-void
.end method

.method public static startActivityCallInProgress(Landroid/content/Context;JLjava/lang/String;)V
    .locals 6
    .parameter "originatingContext"
    .parameter "accountId"
    .parameter "remoteJid"

    .prologue
    .line 589
    const/4 v4, 0x0

    const-string v5, "android.intent.action.VIEW"

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->startActivityInternal(Landroid/content/Context;JLjava/lang/String;ZLjava/lang/String;)V

    .line 591
    return-void
.end method

.method private static startActivityInternal(Landroid/content/Context;JLjava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 570
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    const-string v0, "talk"

    const-string v1, "full jid required"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :goto_0
    return-void

    .line 575
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 576
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 577
    const-class v0, Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 579
    const-string v0, "AudioOnly"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 580
    const/high16 v0, 0x1401

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 584
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static startActivityToInitiate(Landroid/content/Context;JLjava/lang/String;Z)V
    .locals 6
    .parameter "originatingContext"
    .parameter "accountId"
    .parameter "remoteJid"
    .parameter "voiceOnly"

    .prologue
    .line 595
    const-string v5, "initiate"

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->startActivityInternal(Landroid/content/Context;JLjava/lang/String;ZLjava/lang/String;)V

    .line 597
    return-void
.end method

.method private startTextChatActivity()V
    .locals 5

    .prologue
    .line 669
    iget-wide v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAccountId:J

    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mBareJid:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 671
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 673
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "from"

    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mBareJid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    const-string v2, "accountId"

    iget-wide v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAccountId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 676
    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->startActivity(Landroid/content/Intent;)V

    .line 677
    return-void
.end method

.method private startTextOverlayFadeOut()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->dismissTextOverlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 505
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mTextOverlay:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mTextOverlay:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFadeOutLong:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 507
    return-void
.end method

.method private transitionToPaused()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 204
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlVideoView:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlVideoView;->hideRemoteVideo()V

    .line 205
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlVideoView:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlVideoView;->hideCameraVideo()V

    .line 206
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectingStatus:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mStabilizationSliderContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    return-void
.end method

.method private transitionUiToConnected(Z)V
    .locals 5
    .parameter "fromVanity"

    .prologue
    const/4 v3, 0x0

    .line 235
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectingStatus:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectingStatus:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mStabilizationResetButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 243
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->setupOverlayClickLogic()V

    .line 245
    if-eqz p1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlVideoView:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-virtual {v1, p1}, Lcom/google/android/talk/videochat/GlVideoView;->placeCameraViewInCorner(Z)V

    .line 250
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlVideoView:Lcom/google/android/talk/videochat/GlVideoView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/talk/videochat/GlVideoView;->showDarkBackgroundImage(Z)V

    .line 253
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/talk/videochat/VideoChatActivity$2;

    invoke-direct {v2, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$2;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    const-wide/16 v3, 0x4b0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 285
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-direct {p0, v3}, Lcom/google/android/talk/videochat/VideoChatActivity;->showButtonPanel(Z)V

    .line 265
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mDrawingStarted:Ljava/lang/Boolean;

    monitor-enter v1

    .line 266
    :try_start_0
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$3;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 278
    .local v0, showContentRunnable:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mDrawingStarted:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 279
    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mInitialTransition:Ljava/lang/Runnable;

    .line 283
    :goto_1
    monitor-exit v1

    goto :goto_0

    .end local v0           #showContentRunnable:Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 281
    .restart local v0       #showContentRunnable:Ljava/lang/Runnable;
    :cond_2
    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private transitionUiToVanity(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectingStatus:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    if-eqz p1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectingStatus:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFadeInLong:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAvatarQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v0}, Lcom/google/android/talk/ContactInfoQuery;->startQueryForContactInfo()V

    .line 220
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mDrawingStarted:Ljava/lang/Boolean;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mDrawingStarted:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 222
    new-instance v1, Lcom/google/android/talk/videochat/VideoChatActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity$1;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;Z)V

    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mInitialTransition:Ljava/lang/Runnable;

    .line 228
    monitor-exit v0

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unregisterCallStateListener()V
    .locals 3

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallStateListenerRegistered:Ljava/lang/Boolean;

    monitor-enter v0

    .line 1008
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallStateListenerRegistered:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

    if-eqz v1, :cond_0

    .line 1009
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallStateListener:Lcom/google/android/talk/videochat/ICallStateListener;

    invoke-virtual {v1, v2}, Lcom/google/android/talk/videochat/VideoChatSession;->removeRemoteCallStateListener(Lcom/google/android/talk/videochat/ICallStateListener;)V

    .line 1010
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallStateListenerRegistered:Ljava/lang/Boolean;

    .line 1012
    :cond_0
    monitor-exit v0

    .line 1014
    return-void

    .line 1012
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateBluetoothUi(I)V
    .locals 2
    .parameter "bluetoothState"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/BluetoothButton;->handleBluetoothStateChange(I)V

    .line 197
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    if-nez p1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/talk/BluetoothButton;->setVisibility(I)V

    .line 201
    return-void

    .line 197
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateRecentMessageQueue(Ljava/lang/String;)V
    .locals 8
    .parameter "message"

    .prologue
    .line 313
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRecentChatMessageQueue:Ljava/util/Queue;

    monitor-enter v5

    .line 314
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 315
    .local v0, currentTime:J
    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRecentChatMessageQueue:Ljava/util/Queue;

    new-instance v6, Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;

    invoke-direct {v6, p1, v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;-><init>(Ljava/lang/String;J)V

    invoke-interface {v4, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 317
    const-wide/16 v6, 0x3a98

    sub-long v2, v0, v6

    .line 320
    .local v2, dropOffTime:J
    :goto_0
    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRecentChatMessageQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRecentChatMessageQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;

    iget-wide v6, v4, Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;->mTimestamp:J

    cmp-long v4, v6, v2

    if-gez v4, :cond_0

    .line 321
    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRecentChatMessageQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 323
    .end local v0           #currentTime:J
    .end local v2           #dropOffTime:J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #currentTime:J
    .restart local v2       #dropOffTime:J
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    return-void
.end method


# virtual methods
.method public clickHandler(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 613
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 665
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->resetButtonPanelFadeOutCountdown()V

    .line 666
    return-void

    .line 616
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->endCall()V

    .line 620
    const-string v1, "call ended"

    invoke-direct {p0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 623
    :pswitch_2
    const/4 v0, 0x0

    .line 625
    .local v0, newMuteState:Z
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

    invoke-virtual {v1}, Lcom/google/android/talk/videochat/VideoChatSession;->isMute()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    .line 626
    :goto_1
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

    invoke-virtual {v1, v0}, Lcom/google/android/talk/videochat/VideoChatSession;->setMute(Z)V

    .line 627
    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->setMuteButtonState(Z)V

    goto :goto_0

    :cond_0
    move v0, v2

    .line 625
    goto :goto_1

    .line 631
    .end local v0           #newMuteState:Z
    :pswitch_3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/google/android/talk/videochat/VideoChatActivity$7;

    invoke-direct {v2, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$7;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    const-string v3, "switchCamera"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 639
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlVideoView:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-virtual {v1}, Lcom/google/android/talk/videochat/GlVideoView;->setLocalVideoUnavailable()V

    goto :goto_0

    .line 642
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->startTextChatActivity()V

    goto :goto_0

    .line 645
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->endCall()V

    .line 646
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectingProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 649
    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->sendImageStabilizationReset()V

    goto :goto_0

    .line 652
    :pswitch_7
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

    invoke-virtual {v1}, Lcom/google/android/talk/videochat/VideoChatSession;->getBluetoothState()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :pswitch_8
    goto :goto_0

    .line 654
    :pswitch_9
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

    invoke-virtual {v1, v3}, Lcom/google/android/talk/videochat/VideoChatSession;->setUseBluetooth(Z)V

    goto :goto_0

    .line 657
    :pswitch_a
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

    invoke-virtual {v1, v2}, Lcom/google/android/talk/videochat/VideoChatSession;->setUseBluetooth(Z)V

    goto :goto_0

    .line 613
    :pswitch_data_0
    .packed-switch 0x7f100096
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 652
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 881
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 883
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->isInitiatingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->endCall()V

    .line 886
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 681
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 685
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x680080

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 690
    const v1, 0x7f040038

    invoke-virtual {p0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->setContentView(I)V

    .line 692
    const v1, 0x7f100099

    invoke-virtual {p0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mButtonPanel:Landroid/view/View;

    .line 693
    const v1, 0x7f1000a2

    invoke-virtual {p0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectingProgressBar:Landroid/widget/ProgressBar;

    .line 694
    const v1, 0x7f100097

    invoke-virtual {p0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSecureView:Landroid/view/View;

    .line 696
    const v1, 0x7f10009b

    invoke-virtual {p0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mMuteButton:Landroid/widget/ImageButton;

    .line 697
    const v1, 0x7f10009e

    invoke-virtual {p0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/BluetoothButton;

    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    .line 698
    const v1, 0x7f1000a6

    invoke-virtual {p0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mStabilizationSlider:Landroid/widget/SeekBar;

    .line 699
    const v1, 0x7f1000a5

    invoke-virtual {p0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mStabilizationSliderContainer:Landroid/view/View;

    .line 700
    const v1, 0x7f1000a7

    invoke-virtual {p0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mStabilizationResetButton:Landroid/view/View;

    .line 702
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoFadeInAnimationDuration:I

    .line 705
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mReevaluateCallState:Z

    .line 706
    if-eqz p1, :cond_0

    const-string v1, "restore"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 710
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->setIntent(Landroid/content/Intent;)V

    .line 713
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->resolveIntent(Landroid/content/Intent;)V

    .line 716
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mBareJid:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 717
    return-void
.end method

.method public onDrawingStarted()V
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mDrawingStarted:Ljava/lang/Boolean;

    monitor-enter v0

    .line 290
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mDrawingStarted:Ljava/lang/Boolean;

    .line 291
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mInitialTransition:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mInitialTransition:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 293
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mInitialTransition:Ljava/lang/Runnable;

    .line 295
    :cond_0
    monitor-exit v0

    .line 296
    return-void

    .line 295
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 799
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 804
    invoke-static {}, Lcom/google/android/talk/videochat/CameraManager;->getInstance()Lcom/google/android/talk/videochat/CameraManager;

    move-result-object v0

    .line 805
    .local v0, camera:Lcom/google/android/talk/videochat/CameraManager;
    invoke-virtual {v0}, Lcom/google/android/talk/videochat/CameraManager;->suspendCamera()V

    .line 807
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlVideoView:Lcom/google/android/talk/videochat/GlVideoView;

    if-eqz v1, :cond_0

    .line 808
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlVideoView:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-virtual {v1}, Lcom/google/android/talk/videochat/GlVideoView;->onPause()V

    .line 811
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->setState(I)V

    .line 812
    iput-boolean v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mPaused:Z

    .line 813
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->unregisterCallStateListener()V

    .line 815
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mInitialized:Z

    .line 816
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 721
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 723
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->resolveIntent(Landroid/content/Intent;)V

    .line 726
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->connectToExistingCall()V

    .line 727
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 820
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 822
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mPaused:Z

    .line 824
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlVideoView:Lcom/google/android/talk/videochat/GlVideoView;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlVideoView:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlVideoView;->onResume()V

    .line 828
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mDrawingStarted:Ljava/lang/Boolean;

    .line 829
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->registerCallStateListener()V

    .line 833
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->resetButtonPanelFadeOutCountdown()V

    .line 835
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->initialize()V

    .line 836
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 876
    const-string v0, "restore"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 877
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 731
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 733
    new-instance v0, Lcom/google/android/talk/videochat/GlVideoView;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/GlVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlVideoView:Lcom/google/android/talk/videochat/GlVideoView;

    .line 734
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlVideoView:Lcom/google/android/talk/videochat/GlVideoView;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mIntentAction:Ljava/lang/String;

    const-string v2, "initiate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    new-instance v2, Lcom/google/android/talk/videochat/VideoChatActivity$8;

    invoke-direct {v2, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$8;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/talk/videochat/GlVideoView;->initialize(ZLcom/google/android/talk/videochat/GlVideoView$DrawingStartedCallback;Lcom/google/android/talk/videochat/VideoAnimator$CameraViewSizeChangedCallback;)V

    .line 786
    const v0, 0x7f100095

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlVideoView:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 788
    invoke-static {}, Lcom/google/android/talk/TalkApp;->refreshTalkLogLevel()I

    .line 789
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mStopped:Z

    .line 792
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.talk.LOCAL_BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 793
    const-class v1, Lcom/google/android/talk/videochat/VideoChatService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 794
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 795
    return-void
.end method

.method public onStop()V
    .locals 6

    .prologue
    .line 840
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 842
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v3}, Lcom/google/android/talk/videochat/VideoChatActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 844
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

    if-eqz v3, :cond_2

    .line 845
    const/4 v2, 0x1

    .line 846
    .local v2, unregisterChatListener:Z
    sget-object v3, Lcom/google/android/talk/videochat/VideoChatActivity;->sChatListener:Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;

    monitor-enter v3

    .line 847
    :try_start_0
    sget-object v4, Lcom/google/android/talk/videochat/VideoChatActivity;->sChatListener:Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;

    invoke-virtual {v4}, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->getActivity()Lcom/google/android/talk/videochat/VideoChatActivity;

    move-result-object v0

    .line 848
    .local v0, activity:Landroid/app/Activity;
    sget-object v4, Lcom/google/android/talk/videochat/VideoChatActivity;->sChatListener:Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;

    invoke-virtual {v4}, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->getJid()Ljava/lang/String;

    move-result-object v1

    .line 853
    .local v1, jid:Ljava/lang/String;
    if-eq v0, p0, :cond_0

    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mBareJid:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 854
    const/4 v2, 0x0

    .line 856
    :cond_0
    sget-object v4, Lcom/google/android/talk/videochat/VideoChatActivity;->sChatListener:Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;

    invoke-virtual {v4, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->removeAssociation(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 857
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 859
    if-eqz v2, :cond_1

    .line 860
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mBareJid:Ljava/lang/String;

    sget-object v5, Lcom/google/android/talk/videochat/VideoChatActivity;->sChatListener:Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/talk/videochat/VideoChatSession;->removeRemoteChatListener(Ljava/lang/String;Lcom/google/android/gtalkservice/IChatListener;)V

    .line 865
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;

    .line 869
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #jid:Ljava/lang/String;
    .end local v2           #unregisterChatListener:Z
    :cond_2
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRecentChatMessageQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    .line 871
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mStopped:Z

    .line 872
    return-void

    .line 857
    .restart local v2       #unregisterChatListener:Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public setMuteButtonState(Z)V
    .locals 2
    .parameter "mute"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mMuteButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const v1, 0x7f020088

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 609
    return-void

    .line 606
    :cond_0
    const v1, 0x7f02008a

    goto :goto_0
.end method
