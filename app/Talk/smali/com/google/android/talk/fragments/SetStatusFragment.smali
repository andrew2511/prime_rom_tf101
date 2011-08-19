.class public Lcom/google/android/talk/fragments/SetStatusFragment;
.super Landroid/app/Fragment;
.source "SetStatusFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;,
        Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;,
        Lcom/google/android/talk/fragments/SetStatusFragment$WriteSettingsTask;,
        Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;,
        Lcom/google/android/talk/fragments/SetStatusFragment$Host;,
        Lcom/google/android/talk/fragments/SetStatusFragment$Controller;
    }
.end annotation


# static fields
.field private static final PHOTO_DIR:Ljava/io/File;


# instance fields
.field private mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

.field private mActivity:Landroid/app/Activity;

.field private mApp:Lcom/google/android/talk/TalkApp;

.field private mAsyncReadSettingsTask:Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;

.field private mAsyncWriteSettingsTask:Lcom/google/android/talk/fragments/SetStatusFragment$WriteSettingsTask;

.field private mAudioChatEnabled:Z

.field private mAvatarPicker:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

.field private mAvatarView:Landroid/widget/ImageView;

.field private mColumnAvatarData:I

.field private mConnectionStateListener:Lcom/google/android/gtalkservice/IConnectionStateListener;

.field private mController:Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

.field private mCreated:Z

.field private mCustomStatusEditButton:Landroid/view/View;

.field private mCustomStatusHistoryButton:Landroid/widget/Button;

.field private mCustomStatusText:Landroid/widget/TextView;

.field private mEnabled:Z

.field mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mHaveAvatar:Z

.field private mImSession:Lcom/google/android/gtalkservice/IImSession;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mListenersRegistered:Z

.field protected mLogLevel:I

.field private mOfflineWarning:Landroid/widget/TextView;

.field private mPaused:Z

.field private mPendingAvatarUpdate:Landroid/graphics/Bitmap;

.field private mPendingAvatarUpdateDeleteMagic:Landroid/graphics/Bitmap;

.field private mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

.field mRoot:Landroid/view/View;

.field private mRosterListener:Lcom/google/android/gtalkservice/IRosterListener;

.field private mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

.field private mSettings:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

.field private mStandardStatusButton:Landroid/widget/Button;

.field private mUsername:Landroid/widget/TextView;

.field private mVideoChatEnabled:Z

.field private mVideoEnabledCheckBox:Landroid/widget/CheckBox;

.field mViewsToDisableWhenOffline:[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1213
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/talk/fragments/SetStatusFragment;->PHOTO_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 318
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 135
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdateDeleteMagic:Landroid/graphics/Bitmap;

    .line 143
    iput-boolean v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mEnabled:Z

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mHandler:Landroid/os/Handler;

    .line 150
    iput-boolean v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mListenersRegistered:Z

    .line 157
    iput v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mLogLevel:I

    .line 199
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$1;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRosterListener:Lcom/google/android/gtalkservice/IRosterListener;

    .line 215
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$2;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mConnectionStateListener:Lcom/google/android/gtalkservice/IConnectionStateListener;

    .line 1228
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment$14;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$14;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 319
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->initialize()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/fragments/SetStatusFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/talk/fragments/SetStatusFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/SetStatusFragment;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->bindViews()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/fragments/SetStatusFragment$Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mController:Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/talk/fragments/SetStatusFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/talk/fragments/SetStatusFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mVideoChatEnabled:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/google/android/talk/fragments/SetStatusFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mVideoChatEnabled:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/google/android/talk/fragments/SetStatusFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAudioChatEnabled:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/google/android/talk/fragments/SetStatusFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAudioChatEnabled:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mSettings:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/google/android/talk/fragments/SetStatusFragment;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mSettings:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/google/android/talk/fragments/SetStatusFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mVideoEnabledCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/gtalkservice/IConnectionStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mConnectionStateListener:Lcom/google/android/gtalkservice/IConnectionStateListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->clearStatusLists()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/android/talk/fragments/SetStatusFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->uploadAvatar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2202(Lcom/google/android/talk/fragments/SetStatusFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdate:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/google/android/talk/fragments/SetStatusFragment;Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/SetStatusFragment;->makeCustomStatusItems(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/talk/fragments/SetStatusFragment;Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/SetStatusFragment;->makeDefaultStatusItems(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/talk/fragments/SetStatusFragment;Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/SetStatusFragment;->handlePresenceChoice(Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/android/talk/fragments/SetStatusFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->saveStatusMessageIfChanged()V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAvatarPicker:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/android/talk/fragments/SetStatusFragment;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/fragments/SetStatusFragment;->asyncWriteSettings(ZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->enableUI()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/talk/fragments/SetStatusFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mHaveAvatar:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->discardAvatar()V

    return-void
.end method

.method static synthetic access$3200()Ljava/io/File;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/google/android/talk/fragments/SetStatusFragment;->PHOTO_DIR:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->disableUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/TalkApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mApp:Lcom/google/android/talk/TalkApp;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/gtalkservice/IImSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/talk/fragments/SetStatusFragment;Lcom/google/android/gtalkservice/IImSession;)Lcom/google/android/gtalkservice/IImSession;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->initializeFromImSession()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->registerListeners()V

    return-void
.end method

.method private asyncLoadSettings()V
    .locals 2

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->waitForAsyncTasksToComplete()V

    .line 474
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;Lcom/google/android/talk/fragments/SetStatusFragment$1;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAsyncReadSettingsTask:Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;

    .line 475
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAsyncReadSettingsTask:Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 476
    return-void
.end method

.method private asyncWriteSettings(ZZ)V
    .locals 4
    .parameter "videoChatEnabled"
    .parameter "audioChatEnabled"

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->waitForAsyncWriteSettingsToComplete()V

    .line 485
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment$WriteSettingsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/fragments/SetStatusFragment$WriteSettingsTask;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;Lcom/google/android/talk/fragments/SetStatusFragment$1;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAsyncWriteSettingsTask:Lcom/google/android/talk/fragments/SetStatusFragment$WriteSettingsTask;

    .line 486
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAsyncWriteSettingsTask:Lcom/google/android/talk/fragments/SetStatusFragment$WriteSettingsTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/SetStatusFragment$WriteSettingsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 487
    return-void
.end method

.method private bindViews()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 967
    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mStandardStatusButton:Landroid/widget/Button;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v5, :cond_1

    .line 1014
    :cond_0
    :goto_0
    return-void

    .line 970
    :cond_1
    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    if-eqz v5, :cond_0

    .line 973
    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    invoke-static {v5}, Lcom/google/android/talk/util/PresenceUtils;->translatePresence(Lcom/google/android/gtalkservice/Presence;)I

    move-result v4

    .line 974
    .local v4, mode:I
    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mUsername:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v6, v6, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 975
    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mStandardStatusButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v6, v6, Lcom/google/android/talk/TalkApp;->mDefaultStatusStrings:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 976
    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mStandardStatusButton:Landroid/widget/Button;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 977
    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mStandardStatusButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->getVideoChatEnabled()Z

    move-result v7

    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->getAudioChatEnabled()Z

    move-result v8

    invoke-static {v7, v8}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getCapabilities(ZZ)I

    move-result v7

    invoke-virtual {v6, v4, v7}, Lcom/google/android/talk/TalkApp;->getStatusIcon(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6, v9, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 984
    const/4 v1, 0x0

    .line 985
    .local v1, b:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdate:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdateDeleteMagic:Landroid/graphics/Bitmap;

    if-eq v5, v6, :cond_2

    .line 986
    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdate:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    .line 987
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdate:Landroid/graphics/Bitmap;

    .line 994
    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    const/4 v5, 0x1

    :goto_2
    iput-boolean v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mHaveAvatar:Z

    .line 995
    iget-boolean v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mHaveAvatar:Z

    if-eqz v5, :cond_5

    .line 996
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1001
    .local v0, avatar:Landroid/graphics/drawable/Drawable;
    :goto_3
    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1003
    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v6}, Lcom/google/android/gtalkservice/Presence;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v5}, Lcom/google/android/gtalkservice/Presence;->getDefaultStatusList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v6}, Lcom/google/android/gtalkservice/Presence;->getDndStatusList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int v2, v5, v6

    .line 1009
    .local v2, customCount:I
    if-lez v2, :cond_6

    move v3, v10

    .line 1011
    .local v3, customVisible:I
    :goto_4
    iget-boolean v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mEnabled:Z

    if-eqz v5, :cond_0

    .line 1012
    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusHistoryButton:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 989
    .end local v0           #avatar:Landroid/graphics/drawable/Drawable;
    .end local v2           #customCount:I
    .end local v3           #customVisible:I
    :cond_3
    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    iget v6, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mColumnAvatarData:I

    invoke-static {v5, v6}, Lcom/google/android/talk/DatabaseUtils;->getAvatarFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_4
    move v5, v10

    .line 994
    goto :goto_2

    .line 998
    :cond_5
    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v5}, Lcom/google/android/talk/TalkApp;->getGenericAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #avatar:Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 1009
    .restart local v2       #customCount:I
    :cond_6
    const/16 v5, 0x8

    move v3, v5

    goto :goto_4
.end method

.method private clearStatusLists()V
    .locals 3

    .prologue
    .line 762
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    if-nez v1, :cond_0

    .line 771
    :goto_0
    return-void

    .line 765
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/Presence;->clearStatusLists()V

    .line 766
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IImSession;->setPresence(Lcom/google/android/gtalkservice/Presence;)V

    .line 767
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->initializeFromImSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 768
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 769
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "talk"

    const-string v2, "RemoteException failure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private disableUI()V
    .locals 7

    .prologue
    .line 162
    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mConnectionStateListener:Lcom/google/android/gtalkservice/IConnectionStateListener;

    monitor-enter v4

    .line 163
    :try_start_0
    iget-boolean v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mEnabled:Z

    if-nez v5, :cond_0

    .line 164
    monitor-exit v4

    .line 179
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPaused:Z

    if-eqz v5, :cond_2

    .line 168
    :cond_1
    monitor-exit v4

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 171
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mViewsToDisableWhenOffline:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 172
    .local v3, v:Landroid/view/View;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 174
    .end local v3           #v:Landroid/view/View;
    :cond_3
    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mOfflineWarning:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusHistoryButton:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 177
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mEnabled:Z

    .line 178
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private discardAvatar()V
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdateDeleteMagic:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdate:Landroid/graphics/Bitmap;

    .line 934
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->bindViews()V

    .line 937
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->savePendingAvatarChanges()V

    .line 938
    return-void
.end method

.method private enableUI()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 183
    iget-boolean v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mEnabled:Z

    if-eqz v4, :cond_0

    .line 195
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mViewsToDisableWhenOffline:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 188
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 190
    .end local v3           #v:Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mOfflineWarning:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusHistoryButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 193
    iput-boolean v6, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mEnabled:Z

    .line 194
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->initialize()V

    goto :goto_0
.end method

.method private getAudioChatEnabled()Z
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAudioChatEnabled:Z

    return v0
.end method

.method private getCapabilities()I
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mSettings:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mSettings:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getCapabilities()I

    move-result v0

    goto :goto_0
.end method

.method public static getCropImageIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x60

    const/4 v3, 0x1

    .line 1179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1180
    const-string v1, "image/*"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1181
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1182
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1183
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1184
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1185
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1186
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1187
    return-object v0
.end method

.method public static getPhotoPickIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    const/16 v4, 0x60

    const/4 v3, 0x1

    .line 1194
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1195
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1196
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1197
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1198
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1199
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1200
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1201
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1202
    return-object v0
.end method

.method public static getTakePickIntent(Ljava/io/File;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 1209
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1210
    const-string v1, "output"

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1211
    return-object v0
.end method

.method private getVideoChatEnabled()Z
    .locals 1

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mVideoChatEnabled:Z

    return v0
.end method

.method private handlePresenceChoice(Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 792
    const/4 v0, 0x0

    .line 794
    .local v0, p:Lcom/google/android/gtalkservice/Presence;
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    .line 796
    iget-object v2, p1, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 797
    iget-object v2, p1, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 829
    :goto_0
    return-void

    .line 801
    :cond_0
    iget-object v1, p1, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    .line 802
    .local v1, show:Lcom/google/android/gtalkservice/Presence$Show;
    iget-boolean v2, p1, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mInvisible:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gtalkservice/Presence;->setInvisible(Z)Z

    .line 804
    sget-object v2, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    if-ne v1, v2, :cond_1

    .line 805
    sget-object v1, Lcom/google/android/gtalkservice/Presence$Show;->AVAILABLE:Lcom/google/android/gtalkservice/Presence$Show;

    .line 807
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gtalkservice/Presence;->setAvailable(Z)V

    .line 809
    iget-boolean v2, p1, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mCustomPresence:Z

    if-eqz v2, :cond_2

    .line 810
    iget-object v2, p1, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gtalkservice/Presence;->setStatus(Lcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;)V

    .line 818
    :goto_1
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->getCapabilities()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gtalkservice/Presence;->setCapabilities(I)V

    .line 819
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v2, v0}, Lcom/google/android/gtalkservice/IImSession;->setPresence(Lcom/google/android/gtalkservice/Presence;)V

    .line 820
    iget-boolean v2, p1, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mCustomPresence:Z

    if-eqz v2, :cond_3

    .line 821
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusText:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mStatus:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 825
    :goto_2
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->savePendingAvatarChanges()V

    .line 826
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->bindViews()V

    goto :goto_0

    .line 827
    .end local v1           #show:Lcom/google/android/gtalkservice/Presence$Show;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 812
    .restart local v1       #show:Lcom/google/android/gtalkservice/Presence$Show;
    :cond_2
    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gtalkservice/Presence;->setStatus(Lcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;)V

    goto :goto_1

    .line 823
    :cond_3
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private initViews()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 857
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f100009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAvatarView:Landroid/widget/ImageView;

    .line 858
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f10001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mStandardStatusButton:Landroid/widget/Button;

    .line 859
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f10008b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusText:Landroid/widget/TextView;

    .line 860
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f10008e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusHistoryButton:Landroid/widget/Button;

    .line 861
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f10008c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusEditButton:Landroid/view/View;

    .line 862
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f10008f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mOfflineWarning:Landroid/widget/TextView;

    .line 863
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f100018

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mUsername:Landroid/widget/TextView;

    .line 865
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAvatarView:Landroid/widget/ImageView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mStandardStatusButton:Landroid/widget/Button;

    aput-object v2, v1, v5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusText:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusEditButton:Landroid/view/View;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusHistoryButton:Landroid/widget/Button;

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mViewsToDisableWhenOffline:[Landroid/view/View;

    .line 873
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mStandardStatusButton:Landroid/widget/Button;

    invoke-direct {p0, v1, v4}, Lcom/google/android/talk/fragments/SetStatusFragment;->setupPresencePopdown(Landroid/view/View;Z)V

    .line 874
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusHistoryButton:Landroid/widget/Button;

    invoke-direct {p0, v1, v5}, Lcom/google/android/talk/fragments/SetStatusFragment;->setupPresencePopdown(Landroid/view/View;Z)V

    .line 876
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment$10;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$10;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    .line 900
    .local v0, listener:Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusEditButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 901
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 904
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAvatarView:Landroid/widget/ImageView;

    new-instance v2, Lcom/google/android/talk/fragments/SetStatusFragment$11;

    invoke-direct {v2, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$11;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 910
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f10008d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mVideoEnabledCheckBox:Landroid/widget/CheckBox;

    .line 912
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mVideoEnabledCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/google/android/talk/fragments/SetStatusFragment$12;

    invoke-direct {v2, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$12;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 929
    return-void
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 270
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment$3;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$3;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    .line 301
    .local v0, initializer:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/talk/TalkApp;->addServiceStateChangedCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 302
    return-void
.end method

.method private initializeFromImSession()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 942
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    .line 943
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v1}, Lcom/google/android/gtalkservice/IImSession;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    :goto_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    if-eqz v1, :cond_0

    .line 949
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    invoke-virtual {v1}, Lcom/google/android/talk/SelfStatusCursor;->close()V

    .line 950
    iput-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    .line 953
    :cond_0
    new-instance v1, Lcom/google/android/talk/SelfStatusCursor;

    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/talk/SelfStatusCursor;-><init>(Landroid/app/Activity;Lcom/google/android/gtalkservice/Presence;Lcom/google/android/talk/TalkApp$AccountInfo;)V

    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    .line 954
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    new-instance v2, Lcom/google/android/talk/fragments/SetStatusFragment$13;

    invoke-direct {v2, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$13;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/talk/SelfStatusCursor;->setOnAvatarRunnable(Ljava/lang/Runnable;)V

    .line 960
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    const-string v2, "avatars_data"

    invoke-virtual {v1, v2}, Lcom/google/android/talk/SelfStatusCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mColumnAvatarData:I

    .line 961
    return-void

    .line 944
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 945
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "talk"

    const-string v2, "unable to get presence"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 946
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mController:Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

    invoke-interface {v1}, Lcom/google/android/talk/fragments/SetStatusFragment$Controller;->finish()V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 1223
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SetStatusFragment."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    return-void
.end method

.method private makeAdapter(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/widget/ArrayAdapter;
    .locals 8
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;",
            ">;)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 597
    .local p2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;>;"
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 599
    .local v6, inflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment$5;

    const v3, 0x7f040032

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p2

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/talk/fragments/SetStatusFragment$5;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;Landroid/content/Context;ILjava/util/List;Ljava/util/ArrayList;Landroid/view/LayoutInflater;Landroid/content/Context;)V

    return-object v0
.end method

.method private makeCustomStatusItems(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 28
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    move-object/from16 v26, v0

    .line 682
    .local v26, p:Lcom/google/android/gtalkservice/Presence;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 683
    .local v24, dropDownItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;>;"
    invoke-direct/range {p0 .. p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->getVideoChatEnabled()Z

    move-result v27

    .line 684
    .local v27, videoChatEnabled:Z
    if-eqz v27, :cond_0

    const v3, 0x10800ae

    move v8, v3

    .line 686
    .local v8, presenceOnlineResId:I
    :goto_0
    if-eqz v27, :cond_1

    const v3, 0x10800ad

    move v14, v3

    .line 689
    .local v14, presenceBusyResId:I
    :goto_1
    if-eqz v26, :cond_3

    .line 690
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gtalkservice/Presence;->getDefaultStatusList()Ljava/util/List;

    move-result-object v22

    .line 691
    .local v22, defaultStatusList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v22, :cond_2

    .line 692
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 693
    .local v5, status:Ljava/lang/String;
    new-instance v3, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;

    sget-object v6, Lcom/google/android/gtalkservice/Presence$Show;->AVAILABLE:Lcom/google/android/gtalkservice/Presence$Show;

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;Ljava/lang/String;Lcom/google/android/gtalkservice/Presence$Show;ZIZ)V

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 684
    .end local v5           #status:Ljava/lang/String;
    .end local v8           #presenceOnlineResId:I
    .end local v14           #presenceBusyResId:I
    .end local v22           #defaultStatusList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v25           #i$:Ljava/util/Iterator;
    :cond_0
    const v3, 0x108006b

    move v8, v3

    goto :goto_0

    .line 686
    .restart local v8       #presenceOnlineResId:I
    :cond_1
    const v3, 0x1080068

    move v14, v3

    goto :goto_1

    .line 702
    .restart local v14       #presenceBusyResId:I
    .restart local v22       #defaultStatusList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gtalkservice/Presence;->getDndStatusList()Ljava/util/List;

    move-result-object v23

    .line 703
    .local v23, dndStatusList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v23, :cond_3

    .line 704
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 705
    .restart local v5       #status:Ljava/lang/String;
    new-instance v9, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;

    sget-object v12, Lcom/google/android/gtalkservice/Presence$Show;->DND:Lcom/google/android/gtalkservice/Presence$Show;

    const/4 v13, 0x0

    const/4 v15, 0x1

    move-object/from16 v10, p0

    move-object v11, v5

    invoke-direct/range {v9 .. v15}, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;Ljava/lang/String;Lcom/google/android/gtalkservice/Presence$Show;ZIZ)V

    move-object/from16 v0, v24

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 715
    .end local v5           #status:Ljava/lang/String;
    .end local v22           #defaultStatusList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v23           #dndStatusList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v25           #i$:Ljava/util/Iterator;
    :cond_3
    new-instance v15, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    move-object v3, v0

    const v4, 0x7f0c0032

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, p0

    invoke-direct/range {v15 .. v21}, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;Ljava/lang/String;Lcom/google/android/gtalkservice/Presence$Show;ZIZ)V

    .line 721
    .local v15, clearStatusItem:Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;
    new-instance v3, Lcom/google/android/talk/fragments/SetStatusFragment$7;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/talk/fragments/SetStatusFragment$7;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    invoke-virtual {v15, v3}, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->setClickRunnable(Ljava/lang/Runnable;)V

    .line 726
    move-object/from16 v0, v24

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->makeAdapter(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    return-object v3
.end method

.method private makeDefaultStatusItems(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 25
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    move-object/from16 v23, v0

    .line 624
    .local v23, p:Lcom/google/android/gtalkservice/Presence;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .local v22, dropDownItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;>;"
    invoke-direct/range {p0 .. p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->getVideoChatEnabled()Z

    move-result v24

    .line 626
    .local v24, videoChatEnabled:Z
    if-eqz v24, :cond_0

    const v3, 0x10800ae

    move v8, v3

    .line 628
    .local v8, presenceOnlineResId:I
    :goto_0
    if-eqz v24, :cond_1

    const v3, 0x10800ad

    move v14, v3

    .line 632
    .local v14, presenceBusyResId:I
    :goto_1
    new-instance v3, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    move-object v4, v0

    const v5, 0x7f0c0001

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gtalkservice/Presence$Show;->AVAILABLE:Lcom/google/android/gtalkservice/Presence$Show;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;Ljava/lang/String;Lcom/google/android/gtalkservice/Presence$Show;ZIZ)V

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    new-instance v9, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    move-object v3, v0

    const v4, 0x7f0c0002

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/google/android/gtalkservice/Presence$Show;->DND:Lcom/google/android/gtalkservice/Presence$Show;

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v15}, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;Ljava/lang/String;Lcom/google/android/gtalkservice/Presence$Show;ZIZ)V

    move-object/from16 v0, v22

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    new-instance v15, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    move-object v3, v0

    const v4, 0x7f0c0005

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lcom/google/android/gtalkservice/Presence$Show;->AVAILABLE:Lcom/google/android/gtalkservice/Presence$Show;

    const/16 v19, 0x1

    const v20, 0x1080069

    const/16 v21, 0x0

    move-object/from16 v16, p0

    invoke-direct/range {v15 .. v21}, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;Ljava/lang/String;Lcom/google/android/gtalkservice/Presence$Show;ZIZ)V

    move-object/from16 v0, v22

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    new-instance v15, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    move-object v3, v0

    const v4, 0x7f0c000d

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, p0

    invoke-direct/range {v15 .. v21}, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;Ljava/lang/String;Lcom/google/android/gtalkservice/Presence$Show;ZIZ)V

    .line 662
    .local v15, signout:Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;
    new-instance v3, Lcom/google/android/talk/fragments/SetStatusFragment$6;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/talk/fragments/SetStatusFragment$6;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    invoke-virtual {v15, v3}, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->setClickRunnable(Ljava/lang/Runnable;)V

    .line 675
    move-object/from16 v0, v22

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->makeAdapter(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    return-object v3

    .line 626
    .end local v8           #presenceOnlineResId:I
    .end local v14           #presenceBusyResId:I
    .end local v15           #signout:Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;
    :cond_0
    const v3, 0x108006b

    move v8, v3

    goto/16 :goto_0

    .line 628
    .restart local v8       #presenceOnlineResId:I
    :cond_1
    const v3, 0x1080068

    move v14, v3

    goto/16 :goto_1
.end method

.method private registerForIntentBroadcast()V
    .locals 3

    .prologue
    .line 1248
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mFilter:Landroid/content/IntentFilter;

    .line 1249
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.GTALK_AVATAR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1250
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1251
    return-void
.end method

.method private registerListeners()V
    .locals 2

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mListenersRegistered:Z

    if-nez v0, :cond_0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mConnectionStateListener:Lcom/google/android/gtalkservice/IConnectionStateListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->addConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    .line 247
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRosterListener:Lcom/google/android/gtalkservice/IRosterListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->addRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mListenersRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private savePendingAvatarChanges()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 733
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdate:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 734
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdate:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdateDeleteMagic:Landroid/graphics/Bitmap;

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    move v1, v2

    .line 735
    .local v1, delete:Z
    :goto_0
    if-eqz v1, :cond_3

    move-object v0, v4

    .line 736
    .local v0, avatar:Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v1, :cond_0

    .line 737
    iput-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdate:Landroid/graphics/Bitmap;

    .line 739
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/google/android/talk/fragments/SetStatusFragment$8;

    invoke-direct {v3, p0, v0}, Lcom/google/android/talk/fragments/SetStatusFragment$8;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;Landroid/graphics/Bitmap;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 758
    .end local v0           #avatar:Landroid/graphics/Bitmap;
    .end local v1           #delete:Z
    :cond_1
    return-void

    .line 734
    :cond_2
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 735
    .restart local v1       #delete:Z
    :cond_3
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdate:Landroid/graphics/Bitmap;

    move-object v0, v2

    goto :goto_1
.end method

.method private saveStatusMessageIfChanged()V
    .locals 6

    .prologue
    .line 774
    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 775
    .local v2, newStatus:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v4}, Lcom/google/android/gtalkservice/Presence;->getStatus()Ljava/lang/String;

    move-result-object v3

    .line 776
    .local v3, oldStatus:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 777
    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v4}, Lcom/google/android/gtalkservice/Presence;->getShow()Lcom/google/android/gtalkservice/Presence$Show;

    move-result-object v1

    .line 778
    .local v1, newShow:Lcom/google/android/gtalkservice/Presence$Show;
    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    sget-object v5, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    if-eq v1, v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v4, v5}, Lcom/google/android/gtalkservice/Presence;->setAvailable(Z)V

    .line 779
    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gtalkservice/Presence;->setStatus(Lcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;)V

    .line 781
    :try_start_0
    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    invoke-interface {v4, v5}, Lcom/google/android/gtalkservice/IImSession;->setPresence(Lcom/google/android/gtalkservice/Presence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :goto_1
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->savePendingAvatarChanges()V

    .line 787
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->bindViews()V

    .line 789
    .end local v1           #newShow:Lcom/google/android/gtalkservice/Presence$Show;
    :cond_0
    return-void

    .line 778
    .restart local v1       #newShow:Lcom/google/android/gtalkservice/Presence$Show;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 782
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 783
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "talk"

    const-string v5, "RemoteException failure"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private setupPresencePopdown(Landroid/view/View;Z)V
    .locals 1
    .parameter "anchor"
    .parameter "custom"

    .prologue
    .line 832
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment$9;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/talk/fragments/SetStatusFragment$9;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;ZLandroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 852
    return-void
.end method

.method private unregisterForIntentBroadcast()V
    .locals 2

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1255
    return-void
.end method

.method private unregisterListeners()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v0, :cond_0

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mConnectionStateListener:Lcom/google/android/gtalkservice/IConnectionStateListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->removeConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    .line 258
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRosterListener:Lcom/google/android/gtalkservice/IRosterListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->removeRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mListenersRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private uploadAvatar()Z
    .locals 3

    .prologue
    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v1}, Lcom/google/android/gtalkservice/IImSession;->uploadAvatarFromDb()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 524
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 525
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "talk"

    const-string v2, "RemoteException failure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private waitForAsyncReadSettingsToComplete()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAsyncReadSettingsTask:Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->waitForAsyncTaskToComplete(Landroid/os/AsyncTask;)V

    .line 452
    return-void
.end method

.method private waitForAsyncTaskToComplete(Landroid/os/AsyncTask;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 441
    .local p1, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    if-eqz p1, :cond_0

    .line 443
    :try_start_0
    invoke-virtual {p1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Talk"

    const-string v2, "SetStatusFragment.waitForAsyncTaskToComplete get error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private waitForAsyncTasksToComplete()V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->waitForAsyncReadSettingsToComplete()V

    .line 464
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->waitForAsyncWriteSettingsToComplete()V

    .line 465
    return-void
.end method

.method private waitForAsyncWriteSettingsToComplete()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAsyncWriteSettingsTask:Lcom/google/android/talk/fragments/SetStatusFragment$WriteSettingsTask;

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->waitForAsyncTaskToComplete(Landroid/os/AsyncTask;)V

    .line 456
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 534
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 535
    packed-switch p1, :pswitch_data_0

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 537
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 538
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 539
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdate:Landroid/graphics/Bitmap;

    .line 540
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->savePendingAvatarChanges()V

    goto :goto_0

    .line 546
    .end local v0           #extras:Landroid/os/Bundle;
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAvatarPicker:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    invoke-virtual {v1}, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->cropPhoto()V

    goto :goto_0

    .line 535
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 306
    iget v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mLogLevel:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 307
    const-string v2, "onAttach"

    invoke-direct {p0, v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->log(Ljava/lang/String;)V

    .line 309
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 311
    move-object v0, p1

    check-cast v0, Lcom/google/android/talk/fragments/SetStatusFragment$Host;

    move-object v1, v0

    .line 313
    .local v1, host:Lcom/google/android/talk/fragments/SetStatusFragment$Host;
    invoke-interface {v1}, Lcom/google/android/talk/fragments/SetStatusFragment$Host;->getSetStatusController()Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mController:Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

    .line 314
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    .line 315
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 331
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 332
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRoot:Landroid/view/View;

    const v3, 0x7f100089

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 333
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 334
    .local v0, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 335
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 341
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 323
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 324
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mApp:Lcom/google/android/talk/TalkApp;

    .line 325
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, p1, v1, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;Landroid/os/Bundle;Landroid/app/Activity;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAvatarPicker:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCreated:Z

    .line 327
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "m"

    .prologue
    .line 508
    const v1, 0x7f0c0032

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 509
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 510
    new-instance v1, Lcom/google/android/talk/fragments/SetStatusFragment$4;

    invoke-direct {v1, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$4;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 516
    const/4 v1, 0x1

    return v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 414
    const v0, 0x7f040031

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRoot:Landroid/view/View;

    .line 415
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->initViews()V

    .line 416
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 495
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 497
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPaused:Z

    .line 498
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAvatarPicker:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1019
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 421
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 423
    invoke-static {}, Lcom/google/android/talk/TalkApp;->queryDebugLevel()I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mLogLevel:I

    .line 425
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;

    invoke-interface {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 427
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->asyncLoadSettings()V

    .line 429
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->initialize()V

    .line 430
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->registerForIntentBroadcast()V

    .line 431
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 502
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 503
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->unregisterListeners()V

    .line 504
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->unregisterForIntentBroadcast()V

    .line 505
    return-void
.end method

.method public switchAccounts(Lcom/google/android/talk/TalkApp$AccountInfo;)V
    .locals 2
    .parameter "accountInfo"

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCreated:Z

    if-nez v0, :cond_1

    .line 345
    const-string v0, "switchAccounts: fragment\'s onCreate not called yet"

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->log(Ljava/lang/String;)V

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 349
    iget v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mLogLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 350
    const-string v0, "switchAccounts: mActivity is NULL"

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :cond_2
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->waitForAsyncTasksToComplete()V

    .line 360
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 361
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->asyncLoadSettings()V

    .line 362
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->initialize()V

    .line 363
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->initViews()V

    goto :goto_0
.end method
