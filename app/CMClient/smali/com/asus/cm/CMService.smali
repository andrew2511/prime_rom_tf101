.class public Lcom/asus/cm/CMService;
.super Landroid/app/Service;
.source "CMService.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/SessionStateObserver;
.implements Lcom/asus/dmlib/vdm/NIAMsgHandler;
.implements Lcom/asus/dmlib/vdm/SessionInitiator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/cm/CMService$7;,
        Lcom/asus/cm/CMService$RetryBroadcastReceiver;,
        Lcom/asus/cm/CMService$LockScreenButListener;,
        Lcom/asus/cm/CMService$DmPersister;,
        Lcom/asus/cm/CMService$SNRegister;,
        Lcom/asus/cm/CMService$MmiCallBackService;,
        Lcom/asus/cm/CMService$CMSystemService;,
        Lcom/asus/cm/CMService$DialogId;,
        Lcom/asus/cm/CMService$UIAlertResult;
    }
.end annotation


# static fields
.field static final ACTION_DELAY_BOOT_COMPLETED:Ljava/lang/String; = "com.asus.dm.DMService.delayBootCompleted"

.field static final ACTION_FOTA_POLLING:Ljava/lang/String; = "com.asus.dm.DMService.doFotaPolling"

.field static final ACTION_RESUME_DOWLOAD:Ljava/lang/String; = "com.asus.dm.DMService.resumeDownload"

.field public static final ACTION_SEND_C2DM_REGISTRATION_ID:Ljava/lang/String; = "com.asus.dm.DMService.sendRegID"

.field public static final ACTION_SEND_VIBE_ID:Ljava/lang/String; = "com.asus.cm.CMService.sendVibeID"

.field private static final ALLOW_UPDATE_BATTERY_THRESHOLD:I = 0x32

.field public static final DMV:I = 0x1

.field public static final DOWNLOAD_PROGRESS_UPDATE:I = 0x3

.field public static final LAWMO_LOCK_DEVICE:I = 0x9

.field public static final LAWMO_UNLOCK_DEVICE:I = 0xa

.field public static final LAWMO_WIPE_DATA:I = 0xb

.field private static MAX_MSG_SIZE:I = 0x0

.field public static final NI_SHOW_DM_DL_CONFIRM_DIALOG:I = 0x6

.field public static final NI_SHOW_SS_NOTIFICATION:I = 0x8

.field public static final SHOW_DIALOG:I = 0x5

.field public static final STOP_RING:I = 0xc

.field public static final STOP_SERVICE:I = 0x7

.field private static final TAG:Ljava/lang/String; = "CMService"

.field private static final TRIGGER_DL_RESUME_SESSION:I = 0x3e8

.field private static mCurrentSessionState:I

.field private static mCurrentSessionType:I


# instance fields
.field private final SAVE_DIALOG_INSTANCE:I

.field private dmSSNotify:Landroid/app/Notification;

.field private lockDevice:Z

.field private mACPowerState:I

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryState:I

.field private final mBinder:Lcom/asus/cm/CMService$CMSystemService;

.field public mConnectivityStateReceiver:Lcom/asus/cm/ConnectivityStateReceiver;

.field mDLProgress:Lcom/asus/cm/CMDownloadProgress;

.field private mDefaultConfirmResult:Lcom/asus/dmlib/vdm/MmiConfirmation$ConfirmCommand;

.field private mDialFactory:Lcom/asus/cm/mmi/dialog/DialogFactory;

.field private final mDmPersisterBinder:Lcom/asus/cm/CMService$DmPersister;

.field private mDownDescriptor:Lcom/asus/cm/RBDownloadDescriptor;

.field private mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

.field private mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

.field mFumoHandler:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

.field private mHandler:Landroid/os/Handler;

.field private mIsDLResuming:Z

.field private mIsNeedEnablePost:Z

.field private mIsShowConfirmUpdate:Z

.field private mLawmo:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;

.field mLawmoHandler:Lcom/asus/cm/handler/DefaultLawmoHandler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreen:Landroid/app/Dialog;

.field public mLogger:Lcom/asus/cm/util/CMLog;

.field private mMMIFactory:Lcom/asus/cm/mmi/CMMMIFactory;

.field private final mMmiCallBackBinder:Lcom/asus/cm/CMService$MmiCallBackService;

.field private mMmiObserver:Lcom/asus/dmlib/vdm/MmiObserver;

.field private final mPostLimit:I

.field private mPostQuota:I

.field private mRegMgr:Lcom/asus/cm/CMCRegistryManager;

.field private mResumeHandler:Landroid/os/Handler;

.field private mResumeLooper:Landroid/os/Looper;

.field private mRetryReceiver:Lcom/asus/cm/CMService$RetryBroadcastReceiver;

.field private mRingtone:Landroid/media/Ringtone;

.field private final mSNBinder:Lcom/asus/cm/CMService$SNRegister;

.field private mStateCbList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/cm/IDMServiceStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mTree:Lcom/asus/dmlib/vdm/VdmTree;

.field private mUIAlertParaDescriptor:Lcom/asus/cm/UIAlertParaDescriptor;

.field private mWakelock:Landroid/os/PowerManager$WakeLock;

.field private mbBatteryNotEnough:Z

.field private notifyMgr:Landroid/app/NotificationManager;

.field private wipeData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 96
    const/16 v0, 0xbb8

    sput v0, Lcom/asus/cm/CMService;->MAX_MSG_SIZE:I

    .line 130
    sput v1, Lcom/asus/cm/CMService;->mCurrentSessionType:I

    .line 131
    sput v1, Lcom/asus/cm/CMService;->mCurrentSessionState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/cm/CMService;->mIsNeedEnablePost:Z

    .line 98
    const/4 v0, 0x3

    iput v0, p0, Lcom/asus/cm/CMService;->mPostLimit:I

    .line 99
    iput v1, p0, Lcom/asus/cm/CMService;->mPostQuota:I

    .line 133
    new-instance v0, Lcom/asus/cm/CMService$CMSystemService;

    invoke-direct {v0, p0}, Lcom/asus/cm/CMService$CMSystemService;-><init>(Lcom/asus/cm/CMService;)V

    iput-object v0, p0, Lcom/asus/cm/CMService;->mBinder:Lcom/asus/cm/CMService$CMSystemService;

    .line 134
    new-instance v0, Lcom/asus/cm/CMService$SNRegister;

    invoke-direct {v0, p0}, Lcom/asus/cm/CMService$SNRegister;-><init>(Lcom/asus/cm/CMService;)V

    iput-object v0, p0, Lcom/asus/cm/CMService;->mSNBinder:Lcom/asus/cm/CMService$SNRegister;

    .line 135
    new-instance v0, Lcom/asus/cm/CMService$DmPersister;

    invoke-direct {v0, p0}, Lcom/asus/cm/CMService$DmPersister;-><init>(Lcom/asus/cm/CMService;)V

    iput-object v0, p0, Lcom/asus/cm/CMService;->mDmPersisterBinder:Lcom/asus/cm/CMService$DmPersister;

    .line 136
    new-instance v0, Lcom/asus/cm/CMService$MmiCallBackService;

    invoke-direct {v0, p0}, Lcom/asus/cm/CMService$MmiCallBackService;-><init>(Lcom/asus/cm/CMService;)V

    iput-object v0, p0, Lcom/asus/cm/CMService;->mMmiCallBackBinder:Lcom/asus/cm/CMService$MmiCallBackService;

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/cm/CMService;->mBatteryState:I

    .line 145
    iput-boolean v1, p0, Lcom/asus/cm/CMService;->mbBatteryNotEnough:Z

    .line 149
    iput-boolean v1, p0, Lcom/asus/cm/CMService;->mIsShowConfirmUpdate:Z

    .line 151
    const/16 v0, 0x920

    iput v0, p0, Lcom/asus/cm/CMService;->SAVE_DIALOG_INSTANCE:I

    .line 161
    new-instance v0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/asus/cm/CMService$RetryBroadcastReceiver;-><init>(Lcom/asus/cm/CMService;)V

    iput-object v0, p0, Lcom/asus/cm/CMService;->mRetryReceiver:Lcom/asus/cm/CMService$RetryBroadcastReceiver;

    .line 166
    iput-boolean v1, p0, Lcom/asus/cm/CMService;->mIsDLResuming:Z

    .line 167
    new-instance v0, Lcom/asus/cm/ConnectivityStateReceiver;

    invoke-direct {v0}, Lcom/asus/cm/ConnectivityStateReceiver;-><init>()V

    iput-object v0, p0, Lcom/asus/cm/CMService;->mConnectivityStateReceiver:Lcom/asus/cm/ConnectivityStateReceiver;

    .line 174
    iput-boolean v1, p0, Lcom/asus/cm/CMService;->wipeData:Z

    .line 175
    iput-boolean v1, p0, Lcom/asus/cm/CMService;->lockDevice:Z

    .line 1064
    new-instance v0, Lcom/asus/cm/CMService$2;

    invoke-direct {v0, p0}, Lcom/asus/cm/CMService$2;-><init>(Lcom/asus/cm/CMService;)V

    iput-object v0, p0, Lcom/asus/cm/CMService;->mHandler:Landroid/os/Handler;

    .line 1930
    new-instance v0, Lcom/asus/cm/CMService$6;

    invoke-direct {v0, p0}, Lcom/asus/cm/CMService$6;-><init>(Lcom/asus/cm/CMService;)V

    iput-object v0, p0, Lcom/asus/cm/CMService;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 1994
    return-void
.end method

.method static synthetic access$000(Lcom/asus/cm/CMService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/asus/cm/CMService;->mIsDLResuming:Z

    return v0
.end method

.method static synthetic access$002(Lcom/asus/cm/CMService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/asus/cm/CMService;->mIsDLResuming:Z

    return p1
.end method

.method static synthetic access$100(Lcom/asus/cm/CMService;)Lcom/asus/dmlib/vdm/VdmEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/asus/cm/CMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/asus/cm/CMService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/asus/cm/CMService;->lockDevice:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/asus/cm/CMService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/asus/cm/CMService;->mStateCbList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 91
    sget v0, Lcom/asus/cm/CMService;->mCurrentSessionType:I

    return v0
.end method

.method static synthetic access$1202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    sput p0, Lcom/asus/cm/CMService;->mCurrentSessionType:I

    return p0
.end method

.method static synthetic access$1300(Lcom/asus/cm/CMService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/asus/cm/CMService;->execStateCallback(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/asus/cm/CMService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/asus/cm/CMService;->destoryEngine()V

    return-void
.end method

.method static synthetic access$1500(Lcom/asus/cm/CMService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/asus/cm/CMService;->startEngine()V

    return-void
.end method

.method static synthetic access$1600(Lcom/asus/cm/CMService;)Lcom/asus/dmlib/vdm/VdmTree;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/asus/cm/CMService;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMService$CMSystemService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/asus/cm/CMService;->mBinder:Lcom/asus/cm/CMService$CMSystemService;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/asus/cm/CMService;)Lcom/asus/dmlib/vdm/MmiObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/asus/cm/CMService;->mMmiObserver:Lcom/asus/dmlib/vdm/MmiObserver;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/asus/cm/CMService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/asus/cm/CMService;->showNIDMDLCDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/asus/cm/CMService;)Lcom/asus/dmlib/vdm/fumo/VdmFumo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/asus/cm/CMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/asus/cm/CMService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/asus/cm/CMService;->lockDevice()V

    return-void
.end method

.method static synthetic access$2100(Lcom/asus/cm/CMService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/asus/cm/CMService;->unlockDevice()V

    return-void
.end method

.method static synthetic access$2200(Lcom/asus/cm/CMService;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/asus/cm/CMService;->getDialog()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/asus/cm/CMService;)Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/asus/cm/CMService;->mLawmo:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/asus/cm/CMService;)Lcom/asus/cm/RBDownloadDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/asus/cm/CMService;->mDownDescriptor:Lcom/asus/cm/RBDownloadDescriptor;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/asus/cm/CMService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/asus/cm/CMService;->mACPowerState:I

    return p1
.end method

.method static synthetic access$2600(Lcom/asus/cm/CMService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/asus/cm/CMService;->mBatteryState:I

    return v0
.end method

.method static synthetic access$2602(Lcom/asus/cm/CMService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/asus/cm/CMService;->mBatteryState:I

    return p1
.end method

.method static synthetic access$2700(Lcom/asus/cm/CMService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/asus/cm/CMService;->mbBatteryNotEnough:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/asus/cm/CMService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/asus/cm/CMService;->mbBatteryNotEnough:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/asus/cm/CMService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/asus/cm/CMService;->checkBatteryStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/asus/cm/CMService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/asus/cm/CMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/asus/cm/CMService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/asus/cm/CMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$300(Lcom/asus/cm/CMService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/asus/cm/CMService;->mResumeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMCRegistryManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/asus/cm/CMService;Lcom/asus/cm/CMCRegistryManager;)Lcom/asus/cm/CMCRegistryManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    return-object p1
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 91
    sget v0, Lcom/asus/cm/CMService;->mCurrentSessionState:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    sput p0, Lcom/asus/cm/CMService;->mCurrentSessionState:I

    return p0
.end method

.method static synthetic access$700(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMService$RetryBroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/asus/cm/CMService;->mRetryReceiver:Lcom/asus/cm/CMService$RetryBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/asus/cm/CMService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/asus/cm/CMService;->preparDMSession()Z

    move-result v0

    return v0
.end method

.method private cancelAlarmService()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1006
    const-string v3, "cancel AlarmService....."

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1008
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/asus/cm/CMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1009
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/asus/cm/CMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/asus/cm/CMService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1010
    .local v2, postIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/asus/cm/CMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1011
    .local v1, pendIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1012
    return-void
.end method

.method private checkBatteryStatus()Z
    .locals 3

    .prologue
    .line 1918
    const/4 v0, 0x0

    .line 1920
    .local v0, ret:Z
    iget v1, p0, Lcom/asus/cm/CMService;->mBatteryState:I

    const/16 v2, 0x32

    if-lt v1, v2, :cond_1

    .line 1921
    const/4 v0, 0x1

    .line 1926
    :cond_0
    :goto_0
    return v0

    .line 1922
    :cond_1
    iget v1, p0, Lcom/asus/cm/CMService;->mACPowerState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method private clearDMHandlerHelper()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v0}, Lcom/asus/cm/CMCRegistryManager;->getCurrentTree()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 620
    :pswitch_0
    const-string v0, "clear default register"

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    invoke-static {}, Lcom/asus/cm/util/DMHandlerHelper;->clearDMHandlerHelper()V

    .line 624
    :goto_0
    return-void

    .line 607
    :pswitch_1
    const-string v0, "clear tmo register"

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    invoke-static {}, Lcom/asus/cm/util/DMHandlerHelperTMO;->clearDMHandlerHelper()V

    goto :goto_0

    .line 612
    :pswitch_2
    const-string v0, "clear Asus register"

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    invoke-static {}, Lcom/asus/cm/util/DMHandlerHelperAsus;->clearDMHandlerHelper()V

    goto :goto_0

    .line 616
    :pswitch_3
    const-string v0, "clear telus register"

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    invoke-static {}, Lcom/asus/cm/util/DMHandlerHelperTelUs;->clearDMHandlerHelper()V

    goto :goto_0

    .line 603
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private destoryEngine()V
    .locals 2

    .prologue
    .line 941
    :try_start_0
    iget-object v1, p0, Lcom/asus/cm/CMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v1, p0}, Lcom/asus/dmlib/vdm/VdmEngine;->unregisterSessionStateObserver(Lcom/asus/dmlib/vdm/SessionStateObserver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/asus/cm/CMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmEngine;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 950
    :goto_1
    return-void

    .line 942
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 943
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "unregisterSessionStateObserver get Exception"

    invoke-static {p0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 947
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 948
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "destroy Engine get Exception"

    invoke-static {p0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private do_update(Ljava/lang/String;)Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    .locals 11
    .parameter "path"

    .prologue
    const/4 v9, 0x1

    .line 1759
    new-instance v5, Lcom/asus/cm/fota/UnPack;

    invoke-direct {v5}, Lcom/asus/cm/fota/UnPack;-><init>()V

    .line 1760
    .local v5, up:Lcom/asus/cm/fota/UnPack;
    sget-object v3, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->SUCCESSFUL:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1764
    .local v3, ret:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    const-string v8, "power"

    invoke-virtual {p0, v8}, Lcom/asus/cm/CMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 1765
    .local v2, pm:Landroid/os/PowerManager;
    const-string v8, "DMService_update"

    invoke-virtual {v2, v9, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    .line 1767
    .local v7, wakelock:Landroid/os/PowerManager$WakeLock;
    if-eqz v7, :cond_0

    .line 1768
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1769
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1770
    const-string v8, "===== acquire wake_lock"

    invoke-static {p0, v8}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1775
    :cond_0
    :try_start_0
    invoke-virtual {v5, p1}, Lcom/asus/cm/fota/UnPack;->do_unpack(Ljava/lang/String;)Lcom/asus/cm/fota/UnPack$ResultCode;

    move-result-object v4

    .line 1777
    .local v4, unpackResult:Lcom/asus/cm/fota/UnPack$ResultCode;
    sget-object v8, Lcom/asus/cm/fota/UnPack$ResultCode;->SUCCESS:Lcom/asus/cm/fota/UnPack$ResultCode;

    if-ne v4, v8, :cond_6

    .line 1779
    const/4 v6, 0x0

    .line 1780
    .local v6, updateString:Ljava/lang/String;
    invoke-static {}, Lcom/asus/cm/util/CMUtils;->waitforCall()V

    .line 1782
    invoke-virtual {v5}, Lcom/asus/cm/fota/UnPack;->isIncludeUA()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1783
    const-string v6, "CASE0"

    .line 1794
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.asus.dm.action.fotareboot"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1795
    .local v1, intent:Landroid/content/Intent;
    const-string v8, "com.asus.dm.fotareboot.args"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--fota_update="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1796
    invoke-virtual {p0, v1}, Lcom/asus/cm/CMService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1808
    .end local v1           #intent:Landroid/content/Intent;
    .end local v6           #updateString:Ljava/lang/String;
    :cond_1
    :goto_1
    sget-object v8, Lcom/asus/cm/CMService$7;->$SwitchMap$com$asus$cm$fota$UnPack$ResultCode:[I

    invoke-virtual {v4}, Lcom/asus/cm/fota/UnPack$ResultCode;->ordinal()I

    move-result v9

    aget v8, v8, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v8, :pswitch_data_0

    .line 1824
    :goto_2
    if-eqz v7, :cond_2

    .line 1825
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1828
    :cond_2
    const/4 v7, 0x0

    .line 1829
    const-string v8, "===== release wake_lock"

    invoke-static {p0, v8}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    .line 1785
    .restart local v6       #updateString:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .line 1786
    .local v0, cnt:I
    :try_start_1
    invoke-virtual {v5}, Lcom/asus/cm/fota/UnPack;->isIncludeFW()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1787
    or-int/lit8 v0, v0, 0x1

    .line 1789
    :cond_4
    invoke-virtual {v5}, Lcom/asus/cm/fota/UnPack;->isIncludeFS()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1790
    or-int/lit8 v0, v0, 0x2

    .line 1792
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CASE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1799
    .end local v0           #cnt:I
    .end local v6           #updateString:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "unpack error;"

    invoke-static {v8, v9}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    invoke-static {}, Lcom/asus/cm/CMConfig;->isAllowShowMoreInfoOnError()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1802
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f06001d

    invoke-virtual {p0, v9}, Lcom/asus/cm/CMService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", error msg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/asus/cm/fota/UnPack$ResultCode;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1824
    .end local v4           #unpackResult:Lcom/asus/cm/fota/UnPack$ResultCode;
    :catchall_0
    move-exception v8

    if-eqz v7, :cond_7

    .line 1825
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1828
    :cond_7
    const/4 v7, 0x0

    .line 1829
    const-string v9, "===== release wake_lock"

    invoke-static {p0, v9}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    throw v8

    .line 1815
    .restart local v4       #unpackResult:Lcom/asus/cm/fota/UnPack$ResultCode;
    :pswitch_0
    :try_start_2
    sget-object v3, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->FW_UP_CORRUPT:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1816
    goto :goto_2

    .line 1818
    :pswitch_1
    sget-object v3, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->SUCCESSFUL:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 1808
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private execStateCallback(II)V
    .locals 5
    .parameter "type"
    .parameter "state"

    .prologue
    .line 1374
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/asus/cm/CMService;->mStateCbList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1378
    iget-object v2, p0, Lcom/asus/cm/CMService;->mStateCbList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/cm/IDMServiceStateCallback;

    invoke-interface {v2, p1, p2}, Lcom/asus/cm/IDMServiceStateCallback;->stateChange(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1377
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1380
    .end local v1           #i:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1381
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1383
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private execStateCallback(Ljava/lang/String;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 1387
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/asus/cm/CMService;->mStateCbList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1390
    iget-object v2, p0, Lcom/asus/cm/CMService;->mStateCbList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/cm/IDMServiceStateCallback;

    invoke-interface {v2, p1}, Lcom/asus/cm/IDMServiceStateCallback;->notifyStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1389
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1392
    .end local v1           #i:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1393
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1395
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private executeFwUpdate()V
    .locals 2

    .prologue
    .line 1285
    :try_start_0
    iget-object v1, p0, Lcom/asus/cm/CMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->executeFwUpdate()V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1289
    :goto_0
    return-void

    .line 1286
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1287
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_0
.end method

.method private getDialog()Landroid/app/AlertDialog;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1615
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1617
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1618
    .local v1, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f03000a

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1620
    .local v3, rootLayout:Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x108009b

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "Unlock"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    invoke-virtual {p0, v5}, Lcom/asus/cm/CMService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lcom/asus/cm/CMService$3;

    invoke-direct {v6, p0, v3}, Lcom/asus/cm/CMService$3;-><init>(Lcom/asus/cm/CMService;Landroid/widget/LinearLayout;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {p0, v5}, Lcom/asus/cm/CMService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1651
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1653
    .local v2, retVal:Landroid/app/AlertDialog;
    return-object v2
.end method

.method private lockDevice()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 1524
    :try_start_0
    const-string v7, "9527"

    iget-object v8, p0, Lcom/asus/cm/CMService;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/asus/cm/CMConfig;->getLawmoRootUri()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/Ext/UnlockCode"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/asus/dmlib/vdm/VdmTree;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1525
    const-string v7, "CMService"

    const-string v8, "not replace UnlockCode"

    invoke-static {v7, v8}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1576
    :goto_0
    return-void

    .line 1528
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 1529
    .local v1, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    .line 1531
    .end local v1           #e:Lcom/asus/dmlib/vdm/VdmException;
    :cond_0
    const-string v7, "CMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isLockScreenDisabled(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/asus/cm/CMService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    iget-object v7, p0, Lcom/asus/cm/CMService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1534
    iget-object v7, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v7, v11}, Lcom/asus/cm/CMCRegistryManager;->setKeyguardOn(Z)V

    .line 1535
    iget-object v7, p0, Lcom/asus/cm/CMService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->clearLock()V

    .line 1536
    iget-object v7, p0, Lcom/asus/cm/CMService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v11}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 1539
    :cond_1
    const-string v7, "statusbar"

    invoke-virtual {p0, v7}, Lcom/asus/cm/CMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    .line 1541
    .local v5, statusBarMgr:Landroid/app/StatusBarManager;
    const/high16 v7, 0xe1

    invoke-virtual {v5, v7}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1548
    new-instance v3, Lcom/asus/cm/CMService$LockScreenButListener;

    invoke-direct {v3, p0}, Lcom/asus/cm/CMService$LockScreenButListener;-><init>(Lcom/asus/cm/CMService;)V

    .line 1550
    .local v3, lockButListener:Lcom/asus/cm/CMService$LockScreenButListener;
    iget-object v7, p0, Lcom/asus/cm/CMService;->mLockScreen:Landroid/app/Dialog;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/asus/cm/CMService;->mLockScreen:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1551
    iget-object v7, p0, Lcom/asus/cm/CMService;->mLockScreen:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 1553
    :cond_2
    new-instance v7, Landroid/app/Dialog;

    const v8, 0x1030007

    invoke-direct {v7, p0, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/asus/cm/CMService;->mLockScreen:Landroid/app/Dialog;

    .line 1554
    iget-object v7, p0, Lcom/asus/cm/CMService;->mLockScreen:Landroid/app/Dialog;

    const/high16 v8, 0x7f03

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setContentView(I)V

    .line 1555
    iget-object v7, p0, Lcom/asus/cm/CMService;->mLockScreen:Landroid/app/Dialog;

    const v8, 0x7f0b0003

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1556
    .local v4, lockDesc:Landroid/widget/TextView;
    const-string v0, ""

    .line 1559
    .local v0, descStr:Ljava/lang/String;
    :try_start_1
    iget-object v7, p0, Lcom/asus/cm/CMService;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/asus/cm/CMConfig;->getLawmoRootUri()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/Ext/UnlockDesc"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/asus/dmlib/vdm/VdmTree;->getStringValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1565
    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1566
    iget-object v7, p0, Lcom/asus/cm/CMService;->mLockScreen:Landroid/app/Dialog;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1568
    iget-object v7, p0, Lcom/asus/cm/CMService;->mLockScreen:Landroid/app/Dialog;

    const v8, 0x7f0b0005

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 1569
    .local v6, unlockBut:Landroid/widget/Button;
    invoke-virtual {v6, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1574
    iget-object v7, p0, Lcom/asus/cm/CMService;->mLockScreen:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d3

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 1575
    iget-object v7, p0, Lcom/asus/cm/CMService;->mLockScreen:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 1561
    .end local v6           #unlockBut:Landroid/widget/Button;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 1562
    .local v2, ex:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_1
.end method

.method private notifyDefaultAccount()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1254
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmConfig;->getInstance()Lcom/asus/dmlib/vdm/VdmConfig;

    move-result-object v1

    .line 1255
    .local v1, cfg:Lcom/asus/dmlib/vdm/VdmConfig;
    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmConfig;->getDmAccConfiguration()Lcom/asus/dmlib/vdm/VdmConfig$DmAccConfiguration;

    move-result-object v8

    iget-object v3, v8, Lcom/asus/dmlib/vdm/VdmConfig$DmAccConfiguration;->dm12root:Ljava/lang/String;

    .line 1256
    .local v3, dmRoot:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "use default account: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1258
    iget-object v8, p0, Lcom/asus/cm/CMService;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-static {v8, v3}, Lcom/asus/cm/util/CMUtils;->getAllChildURIs(Lcom/asus/dmlib/vdm/VdmTree;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1259
    .local v2, dmAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 1261
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/AppAddr/APPSRV/Addr"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1262
    .local v5, nodeAddr:Ljava/lang/String;
    const-string v0, ""

    .line 1263
    .local v0, address:Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1265
    :try_start_0
    iget-object v8, p0, Lcom/asus/cm/CMService;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-interface {v8, v5}, Lcom/asus/dmlib/vdm/VdmTree;->getStringValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1269
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/AppAddr/APPSRV/Port/Port/PortNbr"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1270
    .local v6, nodePort:Ljava/lang/String;
    const-string v7, ""

    .line 1271
    .local v7, port:Ljava/lang/String;
    invoke-static {p0, v6}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1273
    :try_start_1
    iget-object v8, p0, Lcom/asus/cm/CMService;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-interface {v8, v6}, Lcom/asus/dmlib/vdm/VdmTree;->getStringValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 1277
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Connect to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", port: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/asus/cm/CMService;->execStateCallback(Ljava/lang/String;)V

    .line 1281
    .end local v0           #address:Ljava/lang/String;
    .end local v5           #nodeAddr:Ljava/lang/String;
    .end local v6           #nodePort:Ljava/lang/String;
    .end local v7           #port:Ljava/lang/String;
    :goto_2
    return-void

    .line 1266
    .restart local v0       #address:Ljava/lang/String;
    .restart local v5       #nodeAddr:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 1267
    .local v4, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_0

    .line 1274
    .end local v4           #e:Lcom/asus/dmlib/vdm/VdmException;
    .restart local v6       #nodePort:Ljava/lang/String;
    .restart local v7       #port:Ljava/lang/String;
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 1275
    .restart local v4       #e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_1

    .line 1279
    .end local v0           #address:Ljava/lang/String;
    .end local v4           #e:Lcom/asus/dmlib/vdm/VdmException;
    .end local v5           #nodeAddr:Ljava/lang/String;
    .end local v6           #nodePort:Ljava/lang/String;
    .end local v7           #port:Ljava/lang/String;
    :cond_0
    const-string v8, "multiple accounts"

    invoke-direct {p0, v8}, Lcom/asus/cm/CMService;->execStateCallback(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private notifyTreeType()V
    .locals 5

    .prologue
    .line 1241
    const-string v2, "./treename"

    .line 1242
    .local v2, nodeUri:Ljava/lang/String;
    const-string v1, ""

    .line 1243
    .local v1, name:Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1245
    :try_start_0
    iget-object v3, p0, Lcom/asus/cm/CMService;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-interface {v3, v2}, Lcom/asus/dmlib/vdm/VdmTree;->getStringValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1250
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "use "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/asus/cm/CMService;->execStateCallback(Ljava/lang/String;)V

    .line 1251
    return-void

    .line 1246
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1247
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logW(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private preparDMSession()Z
    .locals 5

    .prologue
    .line 560
    const/4 v1, 0x0

    .line 563
    .local v1, isSetUpdateStatuse:Z
    :try_start_0
    iget-object v3, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v3}, Lcom/asus/cm/CMCRegistryManager;->getCurrentTree()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 580
    :pswitch_0
    const-string v3, "use default register"

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    iget-object v3, p0, Lcom/asus/cm/CMService;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-static {p0, v3}, Lcom/asus/cm/util/DMHandlerHelper;->registerHandlers(Landroid/content/Context;Lcom/asus/dmlib/vdm/VdmTree;)V
    :try_end_0
    .catch Lcom/asus/cm/exception/DMInvalidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :goto_0
    iget-object v3, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v3}, Lcom/asus/cm/CMCRegistryManager;->getUnlockResult()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 589
    iget-object v3, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v3}, Lcom/asus/cm/CMCRegistryManager;->getUnlockResult()I

    move-result v3

    invoke-static {v3}, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->getLawmoStatus(I)Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    move-result-object v2

    .line 590
    .local v2, lawStatus:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;
    if-eqz v2, :cond_0

    .line 592
    :try_start_1
    iget-object v3, p0, Lcom/asus/cm/CMService;->mLawmo:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;

    invoke-virtual {v3, v2}, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->triggerUnlockSession(Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;)V
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 596
    :goto_1
    const/4 v1, 0x1

    .line 599
    .end local v2           #lawStatus:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;
    :cond_0
    return v1

    .line 567
    :pswitch_1
    :try_start_2
    const-string v3, "use tmo register"

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    iget-object v3, p0, Lcom/asus/cm/CMService;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-static {p0, v3}, Lcom/asus/cm/util/DMHandlerHelperTMO;->registerHandlers(Landroid/content/Context;Lcom/asus/dmlib/vdm/VdmTree;)V
    :try_end_2
    .catch Lcom/asus/cm/exception/DMInvalidException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 584
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 585
    .local v0, e:Lcom/asus/cm/exception/DMInvalidException;
    invoke-virtual {v0}, Lcom/asus/cm/exception/DMInvalidException;->printStackTrace()V

    goto :goto_0

    .line 572
    .end local v0           #e:Lcom/asus/cm/exception/DMInvalidException;
    :pswitch_2
    :try_start_3
    const-string v3, "use Asus register"

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    iget-object v3, p0, Lcom/asus/cm/CMService;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-static {p0, v3}, Lcom/asus/cm/util/DMHandlerHelperAsus;->registerHandlers(Landroid/content/Context;Lcom/asus/dmlib/vdm/VdmTree;)V

    goto :goto_0

    .line 576
    :pswitch_3
    const-string v3, "use telus register"

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    iget-object v3, p0, Lcom/asus/cm/CMService;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-static {p0, v3}, Lcom/asus/cm/util/DMHandlerHelperTelUs;->registerHandlers(Landroid/content/Context;Lcom/asus/dmlib/vdm/VdmTree;)V
    :try_end_3
    .catch Lcom/asus/cm/exception/DMInvalidException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 593
    .restart local v2       #lawStatus:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 594
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_1

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private releaseWakelock()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/asus/cm/CMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/asus/cm/CMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 553
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/cm/CMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 554
    const-string v0, "===== release wake_lock"

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    :cond_0
    return-void
.end method

.method private setAlarmService()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 991
    invoke-virtual {p0}, Lcom/asus/cm/CMService;->getPostponeTime()I

    move-result v5

    .line 993
    .local v5, postTime:I
    const-string v6, "alarm"

    invoke-virtual {p0, v6}, Lcom/asus/cm/CMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 994
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/asus/cm/CMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/asus/cm/CMService;

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 995
    .local v4, postIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/asus/cm/CMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v10, v4, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 996
    .local v3, pendIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 998
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAlarmService "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    int-to-long v8, v5

    add-long v1, v6, v8

    .line 1001
    .local v1, nextPostTime:J
    iget-object v6, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v6, v1, v2}, Lcom/asus/cm/CMCRegistryManager;->setNextPostTime(J)V

    .line 1002
    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1003
    return-void
.end method

.method private setUpdateStatus(I)Z
    .locals 6
    .parameter "result"

    .prologue
    .line 1840
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->SUCCESSFUL:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1841
    .local v1, rc:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    const/4 v2, 0x1

    .line 1843
    .local v2, ret:Z
    sparse-switch p1, :sswitch_data_0

    .line 1899
    const/4 v2, 0x0

    .line 1902
    :goto_0
    if-eqz v2, :cond_0

    .line 1904
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUpdateResult "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    iget-object v3, p0, Lcom/asus/cm/CMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-virtual {v3, v1}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->triggerReportSession(Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1911
    :cond_0
    :goto_1
    return v2

    .line 1845
    :sswitch_0
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->SUCCESSFUL:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1846
    goto :goto_0

    .line 1848
    :sswitch_1
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->CLIENT_ERROR:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1849
    goto :goto_0

    .line 1851
    :sswitch_2
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->DOWNLOAD_CANCELED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1852
    goto :goto_0

    .line 1854
    :sswitch_3
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->FW_UP_CORRUPT:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1855
    goto :goto_0

    .line 1857
    :sswitch_4
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->PACKAGE_MISMATCH:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1858
    goto :goto_0

    .line 1860
    :sswitch_5
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->SIGNATURE_FAILED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1861
    goto :goto_0

    .line 1863
    :sswitch_6
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->NOT_ACCEPTABLE:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1864
    goto :goto_0

    .line 1866
    :sswitch_7
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->AUTH_FAILED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1867
    goto :goto_0

    .line 1869
    :sswitch_8
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->REQUEST_TIMEOUT:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1870
    goto :goto_0

    .line 1872
    :sswitch_9
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->NOT_IMPLEMENTED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1873
    goto :goto_0

    .line 1875
    :sswitch_a
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->UNDEFINED_ERROR:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1876
    goto :goto_0

    .line 1878
    :sswitch_b
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->UPDATE_FAILED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1879
    goto :goto_0

    .line 1881
    :sswitch_c
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->BAD_URL:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1882
    goto :goto_0

    .line 1884
    :sswitch_d
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->DL_SERVER_UNAVAILABLE:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1885
    goto :goto_0

    .line 1887
    :sswitch_e
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->DL_SERVER_ERROR:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1888
    goto :goto_0

    .line 1890
    :sswitch_f
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->OUT_OF_MEMORY_FOR_DOWNLOAD:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1891
    goto :goto_0

    .line 1893
    :sswitch_10
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->OUT_OF_MEMORY_FOR_UPDATE:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1894
    goto :goto_0

    .line 1896
    :sswitch_11
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->NETWORK:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1897
    goto :goto_0

    .line 1906
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1907
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUpdateResult fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    const/4 v2, 0x0

    goto :goto_1

    .line 1843
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x190 -> :sswitch_1
        0x191 -> :sswitch_2
        0x192 -> :sswitch_3
        0x193 -> :sswitch_4
        0x194 -> :sswitch_5
        0x195 -> :sswitch_6
        0x196 -> :sswitch_7
        0x197 -> :sswitch_8
        0x198 -> :sswitch_9
        0x199 -> :sswitch_a
        0x19a -> :sswitch_b
        0x19b -> :sswitch_c
        0x19c -> :sswitch_d
        0x1f4 -> :sswitch_e
        0x1f5 -> :sswitch_f
        0x1f6 -> :sswitch_10
        0x1f7 -> :sswitch_11
    .end sparse-switch
.end method

.method private showClientAlertDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 1973
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/asus/cm/CMService;->showClientAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    return-void
.end method

.method private showClientAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "message"
    .parameter "title"
    .parameter "positiveText"

    .prologue
    .line 1978
    new-instance v1, Lcom/asus/cm/UIAlertParaDescriptor;

    invoke-direct {v1}, Lcom/asus/cm/UIAlertParaDescriptor;-><init>()V

    .line 1979
    .local v1, paraDescriptor:Lcom/asus/cm/UIAlertParaDescriptor;
    iput-object p1, v1, Lcom/asus/cm/UIAlertParaDescriptor;->mDialogContent:Ljava/lang/String;

    .line 1980
    iput-object p2, v1, Lcom/asus/cm/UIAlertParaDescriptor;->mTitle:Ljava/lang/String;

    .line 1982
    iput-object p3, v1, Lcom/asus/cm/UIAlertParaDescriptor;->mPositiveButtonText:Ljava/lang/String;

    .line 1984
    invoke-virtual {p0, v1}, Lcom/asus/cm/CMService;->setUIAlertParaDescriptor(Lcom/asus/cm/UIAlertParaDescriptor;)V

    .line 1986
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1987
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1988
    sget-object v2, Lcom/asus/cm/CMService$DialogId;->UI_ALERT_DISPLAY:Lcom/asus/cm/CMService$DialogId;

    invoke-virtual {v2}, Lcom/asus/cm/CMService$DialogId;->ordinal()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1989
    const/16 v2, 0x920

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 1990
    invoke-virtual {p0, v0}, Lcom/asus/cm/CMService;->sendMessage(Landroid/os/Message;)V

    .line 1991
    return-void
.end method

.method private showNIDMDLCDialog()V
    .locals 5

    .prologue
    .line 1717
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1718
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f060020

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1719
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    new-instance v4, Lcom/asus/cm/CMService$4;

    invoke-direct {v4, p0}, Lcom/asus/cm/CMService$4;-><init>(Lcom/asus/cm/CMService;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1735
    const v2, 0x1040009

    new-instance v3, Lcom/asus/cm/CMService$5;

    invoke-direct {v3, p0}, Lcom/asus/cm/CMService$5;-><init>(Lcom/asus/cm/CMService;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1747
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1748
    .local v1, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1749
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1750
    return-void
.end method

.method private startEngine()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 866
    invoke-static {p0}, Lcom/asus/cm/CMDownloadProgress;->getDMDownloadProgress(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMDownloadProgress;

    move-result-object v3

    iput-object v3, p0, Lcom/asus/cm/CMService;->mDLProgress:Lcom/asus/cm/CMDownloadProgress;

    .line 868
    new-instance v3, Lcom/asus/cm/mmi/CMMMIFactory;

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v4, p0}, Lcom/asus/cm/mmi/CMMMIFactory;-><init>(Landroid/widget/TextView;Lcom/asus/cm/CMService;)V

    iput-object v3, p0, Lcom/asus/cm/CMService;->mMMIFactory:Lcom/asus/cm/mmi/CMMMIFactory;

    .line 870
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/asus/cm/CMService;->mStateCbList:Ljava/util/ArrayList;

    .line 872
    :try_start_0
    new-instance v3, Lcom/asus/dmlib/vdm/VdmEngine;

    iget-object v4, p0, Lcom/asus/cm/CMService;->mMMIFactory:Lcom/asus/cm/mmi/CMMMIFactory;

    new-instance v5, Lcom/asus/cm/CMPLFactory;

    invoke-direct {v5, p0}, Lcom/asus/cm/CMPLFactory;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, p0, v4, v5}, Lcom/asus/dmlib/vdm/VdmEngine;-><init>(Landroid/content/Context;Lcom/asus/dmlib/vdm/MmiFactory;Lcom/asus/dmlib/vdm/PLFactory;)V

    iput-object v3, p0, Lcom/asus/cm/CMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    .line 873
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmConfig;->getInstance()Lcom/asus/dmlib/vdm/VdmConfig;

    move-result-object v0

    .line 875
    .local v0, cfg:Lcom/asus/dmlib/vdm/VdmConfig;
    sget-object v3, Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;->DISABLED:Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

    invoke-virtual {v0, v3}, Lcom/asus/dmlib/vdm/VdmConfig;->setNotificationVerificationMode(Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;)V

    .line 876
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmConfig;->getMaxMsgSize()I

    move-result v3

    sget v4, Lcom/asus/cm/CMService;->MAX_MSG_SIZE:I

    if-eq v3, v4, :cond_0

    .line 877
    sget v3, Lcom/asus/cm/CMService;->MAX_MSG_SIZE:I

    invoke-virtual {v0, v3}, Lcom/asus/dmlib/vdm/VdmConfig;->setMaxMsgSize(I)V

    .line 881
    :cond_0
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmConfig;->getEncodeWBXMLMsg()Z

    move-result v3

    if-eq v3, v6, :cond_1

    .line 882
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/asus/dmlib/vdm/VdmConfig;->setEncodeWBXMLMsg(Z)V

    .line 886
    :cond_1
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmConfig;->getAllowChallengeWithPkg1()Z

    move-result v3

    if-eq v3, v6, :cond_2

    .line 887
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/asus/dmlib/vdm/VdmConfig;->setAllowChallengeWithPkg1(Z)V

    .line 890
    :cond_2
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmConfig;->getIsServerNoncePerMessage()Z

    move-result v3

    if-eq v3, v6, :cond_3

    .line 891
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/asus/dmlib/vdm/VdmConfig;->setIsServerNoncePerMessage(Z)V

    .line 895
    :cond_3
    iget-object v3, p0, Lcom/asus/cm/CMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    sget-object v4, Lcom/asus/dmlib/vdm/VdmLogLevel;->ERROR:Lcom/asus/dmlib/vdm/VdmLogLevel;

    invoke-virtual {v3, v4}, Lcom/asus/dmlib/vdm/VdmEngine;->setDefaultLogLevel(Lcom/asus/dmlib/vdm/VdmLogLevel;)V

    .line 897
    iget-object v3, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v3}, Lcom/asus/cm/CMCRegistryManager;->isDMDebugable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 898
    iget-object v3, p0, Lcom/asus/cm/CMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    sget-object v4, Lcom/asus/dmlib/vdm/VdmLogLevel;->DEBUG:Lcom/asus/dmlib/vdm/VdmLogLevel;

    invoke-virtual {v3, v4}, Lcom/asus/dmlib/vdm/VdmEngine;->setDefaultLogLevel(Lcom/asus/dmlib/vdm/VdmLogLevel;)V

    .line 906
    :cond_4
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    if-lez v3, :cond_5

    .line 907
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 908
    .local v2, proxy:Ljava/lang/String;
    const-string v3, "CMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proxy= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    invoke-virtual {v0, v2}, Lcom/asus/dmlib/vdm/VdmConfig;->setDmProxy(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v0, v2}, Lcom/asus/dmlib/vdm/VdmConfig;->setDlProxy(Ljava/lang/String;)V

    .line 912
    const-string v3, "CMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DMProxy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmConfig;->getDmProxy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string v3, "CMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLProxy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmConfig;->getDlProxy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    .end local v2           #proxy:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/asus/cm/CMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v3}, Lcom/asus/dmlib/vdm/VdmEngine;->start()V

    .line 918
    iget-object v3, p0, Lcom/asus/cm/CMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v3, p0}, Lcom/asus/dmlib/vdm/VdmEngine;->registerSessionStateObserver(Lcom/asus/dmlib/vdm/SessionStateObserver;)Z

    .line 919
    invoke-static {}, Lcom/asus/dmlib/tree/DMTree;->getDMTree()Lcom/asus/dmlib/tree/DMTree;

    move-result-object v3

    iput-object v3, p0, Lcom/asus/cm/CMService;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    .line 921
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMConfig.getFumoHandlerName()= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/asus/cm/CMConfig;->getFumoHandlerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 922
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMConfig.getFumoRootUri()= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/asus/cm/CMConfig;->getFumoRootUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 923
    invoke-static {p0}, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->getFumoHandler(Landroid/content/Context;)Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/asus/cm/CMService;->mFumoHandler:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    .line 924
    new-instance v3, Lcom/asus/cm/handler/DefaultLawmoHandler;

    invoke-direct {v3, p0}, Lcom/asus/cm/handler/DefaultLawmoHandler;-><init>(Lcom/asus/cm/CMService;)V

    iput-object v3, p0, Lcom/asus/cm/CMService;->mLawmoHandler:Lcom/asus/cm/handler/DefaultLawmoHandler;

    .line 925
    new-instance v3, Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-static {}, Lcom/asus/cm/CMConfig;->getFumoRootUri()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/cm/CMService;->mFumoHandler:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    invoke-direct {v3, v4, v5}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;-><init>(Ljava/lang/String;Lcom/asus/dmlib/vdm/fumo/FumoHandler;)V

    iput-object v3, p0, Lcom/asus/cm/CMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    .line 926
    new-instance v3, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;

    invoke-static {}, Lcom/asus/cm/CMConfig;->getLawmoRootUri()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/cm/CMService;->mLawmoHandler:Lcom/asus/cm/handler/DefaultLawmoHandler;

    invoke-direct {v3, v4, v5}, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;-><init>(Ljava/lang/String;Lcom/asus/dmlib/vdm/lawmo/LawmoHandler;)V

    iput-object v3, p0, Lcom/asus/cm/CMService;->mLawmo:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;

    .line 927
    const-string v3, "============== finish onCreate ============="

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    .end local v0           #cfg:Lcom/asus/dmlib/vdm/VdmConfig;
    :goto_0
    return-void

    .line 928
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 931
    .local v1, ex:Lcom/asus/dmlib/vdm/VdmException;
    const-string v3, "============== catched exception start ============="

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 932
    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    .line 933
    const-string v3, "=============== catched exception end =============="

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 934
    invoke-virtual {p0}, Lcom/asus/cm/CMService;->stopSelf()V

    goto :goto_0
.end method

.method private unlockDevice()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1585
    iget-object v1, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v1}, Lcom/asus/cm/CMCRegistryManager;->getKeyguardOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1586
    iget-object v1, p0, Lcom/asus/cm/CMService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 1589
    :cond_0
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/asus/cm/CMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1590
    .local v0, statusBarMgr:Landroid/app/StatusBarManager;
    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1592
    iget-object v1, p0, Lcom/asus/cm/CMService;->mLockScreen:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/asus/cm/CMService;->mLockScreen:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1593
    iget-object v1, p0, Lcom/asus/cm/CMService;->mLockScreen:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1595
    :cond_1
    iget-object v1, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    sget-object v2, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->Unlocked:Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    invoke-virtual {v1, v2}, Lcom/asus/cm/CMCRegistryManager;->setLawmoState(Lcom/asus/dmlib/vdm/lawmo/LawmoState;)V

    .line 1596
    return-void
.end method


# virtual methods
.method public cancelProgressNotification()V
    .locals 1

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/asus/cm/CMService;->mDLProgress:Lcom/asus/cm/CMDownloadProgress;

    invoke-virtual {v0}, Lcom/asus/cm/CMDownloadProgress;->cancelProgressNotification()V

    .line 2108
    return-void
.end method

.method public cleanDLNotification()V
    .locals 0

    .prologue
    .line 2116
    invoke-static {p0}, Lcom/asus/cm/CMDLNotification;->clearNotification(Landroid/content/Context;)V

    .line 2117
    return-void
.end method

.method public dismissLockScreen()V
    .locals 2

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/asus/cm/CMService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1666
    return-void
.end method

.method public doCancelDMSession(Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;)V
    .locals 3
    .parameter "resultCode"

    .prologue
    .line 1488
    :try_start_0
    iget-object v1, p0, Lcom/asus/cm/CMService;->mFumoHandler:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->setDLResume(Z)V

    .line 1489
    iget-object v1, p0, Lcom/asus/cm/CMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmEngine;->cancelSession()V

    .line 1491
    iget-object v1, p0, Lcom/asus/cm/CMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-virtual {v1, p1}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->triggerReportSession(Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1497
    :goto_0
    return-void

    .line 1493
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1494
    .local v0, ex:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->getError()[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doDownload()V
    .locals 2

    .prologue
    .line 1446
    :try_start_0
    const-string v1, "================ vDMEngine.notifyDLSessionProceed() ================"

    invoke-static {p0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1447
    iget-object v1, p0, Lcom/asus/cm/CMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmEngine;->isIdle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1448
    iget-object v1, p0, Lcom/asus/cm/CMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->notifyDLSessionProceed()V

    .line 1454
    :goto_0
    return-void

    .line 1450
    :cond_0
    iget-object v1, p0, Lcom/asus/cm/CMService;->mBinder:Lcom/asus/cm/CMService$CMSystemService;

    invoke-virtual {v1}, Lcom/asus/cm/CMService$CMSystemService;->doDMSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1451
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1452
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public doInstall()V
    .locals 1

    .prologue
    .line 953
    const-string v0, "doInstall()->clear notify"

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 954
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/cm/CMService;->mIsShowConfirmUpdate:Z

    .line 955
    invoke-direct {p0}, Lcom/asus/cm/CMService;->executeFwUpdate()V

    .line 956
    return-void
.end method

.method public doPostpone()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1457
    const-string v0, "doPostpone()->clear notify"

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1458
    iget-object v0, p0, Lcom/asus/cm/CMService;->mDLProgress:Lcom/asus/cm/CMDownloadProgress;

    invoke-virtual {v0}, Lcom/asus/cm/CMDownloadProgress;->cancelProgressNotification()V

    .line 1459
    invoke-direct {p0}, Lcom/asus/cm/CMService;->setAlarmService()V

    .line 1460
    iput-boolean v1, p0, Lcom/asus/cm/CMService;->mIsShowConfirmUpdate:Z

    .line 1461
    iget-object v0, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v0}, Lcom/asus/cm/CMCRegistryManager;->updatePostponeNumber()V

    .line 1462
    invoke-static {p0, v1}, Lcom/asus/cm/CMNotification;->createNotification(Landroid/content/Context;Z)V

    .line 1463
    invoke-direct {p0}, Lcom/asus/cm/CMService;->releaseWakelock()V

    .line 1464
    return-void
.end method

.method public factoryReset()V
    .locals 1

    .prologue
    .line 1669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/cm/CMService;->wipeData:Z

    .line 1671
    return-void
.end method

.method public getDLDescriptor()Lcom/asus/cm/RBDownloadDescriptor;
    .locals 1

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/asus/cm/CMService;->mDownDescriptor:Lcom/asus/cm/RBDownloadDescriptor;

    return-object v0
.end method

.method public getEstimatedInstallTime()I
    .locals 1

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/asus/cm/CMService;->mFumoHandler:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    invoke-virtual {v0}, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->getEstimatedInstallTime()I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1754
    const-string v0, "DM_SERVICE"

    return-object v0
.end method

.method public getIsNeedEnablePost()Z
    .locals 1

    .prologue
    .line 1675
    iget-boolean v0, p0, Lcom/asus/cm/CMService;->mIsNeedEnablePost:Z

    return v0
.end method

.method public getMmiObserver()Lcom/asus/dmlib/vdm/MmiObserver;
    .locals 1

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/asus/cm/CMService;->mMmiObserver:Lcom/asus/dmlib/vdm/MmiObserver;

    return-object v0
.end method

.method public getPostQuota()I
    .locals 1

    .prologue
    .line 1683
    iget v0, p0, Lcom/asus/cm/CMService;->mPostQuota:I

    return v0
.end method

.method public getPostponeTime()I
    .locals 1

    .prologue
    .line 2102
    const-string v0, "getPostponeTime: "

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2103
    iget-object v0, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v0}, Lcom/asus/cm/CMCRegistryManager;->getPostponeTime()I

    move-result v0

    return v0
.end method

.method public getUIAlertParaDescriptor()Lcom/asus/cm/UIAlertParaDescriptor;
    .locals 1

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/asus/cm/CMService;->mUIAlertParaDescriptor:Lcom/asus/cm/UIAlertParaDescriptor;

    return-object v0
.end method

.method public notify(Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;S[BLcom/asus/dmlib/vdm/SessionInitiator;)V
    .locals 11
    .parameter "pUIMode"
    .parameter "dmVersion"
    .parameter "vendorSpecificData"
    .parameter "initiator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1404
    const/4 v4, 0x0

    .line 1406
    .local v4, proceed:Z
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***** notify, UIMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " *****"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    sget-object v5, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;->INFORMATIVE:Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

    if-ne p1, v5, :cond_1

    .line 1408
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/asus/cm/CMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/asus/cm/CMService;->notifyMgr:Landroid/app/NotificationManager;

    .line 1409
    new-instance v5, Landroid/app/Notification;

    const v6, 0x7f020001

    const-string v7, "New DM Session"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v5, p0, Lcom/asus/cm/CMService;->dmSSNotify:Landroid/app/Notification;

    .line 1411
    invoke-virtual {p0}, Lcom/asus/cm/CMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v10, v6, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1413
    .local v1, contentIntent:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/asus/cm/CMService;->dmSSNotify:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 1414
    iget-object v5, p0, Lcom/asus/cm/CMService;->dmSSNotify:Landroid/app/Notification;

    const/4 v6, -0x1

    iput v6, v5, Landroid/app/Notification;->defaults:I

    .line 1415
    iget-object v5, p0, Lcom/asus/cm/CMService;->dmSSNotify:Landroid/app/Notification;

    const-string v6, "New DM Session"

    const-string v7, "Device Management Session Start!"

    invoke-virtual {v5, p0, v6, v7, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1416
    iget-object v5, p0, Lcom/asus/cm/CMService;->notifyMgr:Landroid/app/NotificationManager;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/asus/cm/CMService;->dmSSNotify:Landroid/app/Notification;

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1417
    const/4 v4, 0x1

    .line 1429
    .end local v1           #contentIntent:Landroid/app/PendingIntent;
    :goto_0
    if-eqz v4, :cond_0

    .line 1431
    :try_start_0
    iget-object v5, p0, Lcom/asus/cm/CMService;->mDownDescriptor:Lcom/asus/cm/RBDownloadDescriptor;

    if-nez v5, :cond_3

    const-string v5, "mDD is null"

    :goto_1
    invoke-static {p0, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1432
    iget-object v5, p0, Lcom/asus/cm/CMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v5}, Lcom/asus/dmlib/vdm/VdmEngine;->getCurrentAccount()Ljava/lang/String;

    move-result-object v0

    .line 1433
    .local v0, account:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1434
    iget-object v5, p0, Lcom/asus/cm/CMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v5}, Lcom/asus/dmlib/vdm/VdmEngine;->notifyNIASessionProceed()V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1440
    .end local v0           #account:Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 1418
    :cond_1
    sget-object v5, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;->UI:Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

    if-ne p1, v5, :cond_2

    .line 1419
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1420
    .local v3, msg:Landroid/os/Message;
    const/4 v5, 0x6

    iput v5, v3, Landroid/os/Message;->what:I

    .line 1421
    iput v10, v3, Landroid/os/Message;->arg1:I

    .line 1422
    iput v10, v3, Landroid/os/Message;->arg2:I

    .line 1423
    invoke-virtual {p0, v3}, Lcom/asus/cm/CMService;->sendMessage(Landroid/os/Message;)V

    .line 1424
    const/4 v4, 0x0

    .line 1425
    goto :goto_0

    .line 1426
    .end local v3           #msg:Landroid/os/Message;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 1431
    :cond_3
    :try_start_1
    const-string v5, "mDD is not null"
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1435
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 1436
    .local v2, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_2
.end method

.method public notify(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;Lcom/asus/dmlib/vdm/SessionInitiator;)V
    .locals 9
    .parameter "pSessionType"
    .parameter "pSessionState"
    .parameter "lastError"
    .parameter "pSessionInitiator"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1122
    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->ordinal()I

    move-result v4

    sput v4, Lcom/asus/cm/CMService;->mCurrentSessionType:I

    .line 1123
    invoke-virtual {p2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ordinal()I

    move-result v4

    sput v4, Lcom/asus/cm/CMService;->mCurrentSessionState:I

    .line 1124
    const-string v4, "CMService"

    const-string v5, "********** notify_start **********"

    invoke-static {v4, v5}, Lcom/asus/cm/util/CMLog;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    const-string v4, "CMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentSessionType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mCurrentSessionState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lastError="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p3, :cond_1

    const-string v6, "0"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", SessionInitiator="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p4, :cond_2

    const-string v6, "null"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/cm/util/CMLog;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    const-string v4, "CMService"

    const-string v5, "********** notify_end **********"

    invoke-static {v4, v5}, Lcom/asus/cm/util/CMLog;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    if-eqz p4, :cond_3

    instance-of v4, p4, Lcom/asus/cm/c2dm/RegC2dmIdInitiator;

    if-eqz v4, :cond_3

    .line 1132
    check-cast p4, Lcom/asus/cm/c2dm/RegC2dmIdInitiator;

    .end local p4
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/asus/cm/c2dm/RegC2dmIdInitiator;->notify(Lcom/asus/cm/CMService;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V

    .line 1133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C2DMRegSession: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lastError="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1134
    .local v2, info:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/asus/cm/CMService;->execStateCallback(Ljava/lang/String;)V

    .line 1238
    .end local v2           #info:Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 1125
    .restart local p4
    :cond_1
    invoke-virtual {p3}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->name()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    invoke-interface {p4}, Lcom/asus/dmlib/vdm/SessionInitiator;->getId()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1137
    :cond_3
    if-eqz p4, :cond_4

    instance-of v4, p4, Lcom/asus/cm/vibe/VibeSessionInitiator;

    if-eqz v4, :cond_4

    .line 1138
    check-cast p4, Lcom/asus/cm/vibe/VibeSessionInitiator;

    .end local p4
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/asus/cm/vibe/VibeSessionInitiator;->notify(Lcom/asus/cm/CMService;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V

    .line 1139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VibeRegSession: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lastError="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1140
    .restart local v2       #info:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/asus/cm/CMService;->execStateCallback(Ljava/lang/String;)V

    goto :goto_2

    .line 1145
    .end local v2           #info:Ljava/lang/String;
    .restart local p4
    :cond_4
    sget v4, Lcom/asus/cm/CMService;->mCurrentSessionType:I

    sget v5, Lcom/asus/cm/CMService;->mCurrentSessionState:I

    invoke-direct {p0, v4, v5}, Lcom/asus/cm/CMService;->execStateCallback(II)V

    .line 1147
    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DM:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1148
    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1149
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v4, v8}, Lcom/asus/cm/CMCRegistryManager;->setStartDMDLSession(Z)V

    .line 1150
    invoke-virtual {p0}, Lcom/asus/cm/CMService;->waitAndStopService()V

    .line 1151
    invoke-direct {p0}, Lcom/asus/cm/CMService;->notifyTreeType()V

    .line 1152
    iget-object v4, p0, Lcom/asus/cm/CMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/VdmEngine;->getCurrentAccount()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/cm/CMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v5}, Lcom/asus/dmlib/vdm/VdmEngine;->getCurrentAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1236
    :cond_5
    :goto_3
    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_CODE_OK:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    if-eq p3, v4, :cond_0

    .line 1237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lastError: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/asus/cm/CMService;->execStateCallback(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1155
    :cond_6
    invoke-direct {p0}, Lcom/asus/cm/CMService;->notifyDefaultAccount()V

    goto :goto_3

    .line 1157
    :cond_7
    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->COMPLETE:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1158
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v4}, Lcom/asus/cm/CMCRegistryManager;->getFirstBoot()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1159
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v4}, Lcom/asus/cm/CMCRegistryManager;->setFirstBoot()V

    .line 1161
    :cond_8
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v4, v7}, Lcom/asus/cm/CMCRegistryManager;->setStartDMDLSession(Z)V

    .line 1165
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v4, v7}, Lcom/asus/cm/CMCRegistryManager;->setRetryCount(I)V

    .line 1166
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v4}, Lcom/asus/cm/CMCRegistryManager;->clearUnlockResult()V

    .line 1167
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v4, v7}, Lcom/asus/cm/CMCRegistryManager;->setDMErrorHasShown(Z)V

    .line 1169
    iget-boolean v4, p0, Lcom/asus/cm/CMService;->wipeData:Z

    if-eqz v4, :cond_9

    .line 1170
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/asus/cm/CMService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1171
    iput-boolean v7, p0, Lcom/asus/cm/CMService;->wipeData:Z

    .line 1173
    :cond_9
    iget-boolean v4, p0, Lcom/asus/cm/CMService;->lockDevice:Z

    if-eqz v4, :cond_5

    .line 1174
    iget-object v4, p0, Lcom/asus/cm/CMService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1175
    iput-boolean v7, p0, Lcom/asus/cm/CMService;->lockDevice:Z

    goto :goto_3

    .line 1177
    :cond_a
    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1178
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v4}, Lcom/asus/cm/CMCRegistryManager;->getDLResume()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Session Aborted, set retry count."

    invoke-static {v4, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRetryReceiver:Lcom/asus/cm/CMService$RetryBroadcastReceiver;

    invoke-static {v4}, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->access$400(Lcom/asus/cm/CMService$RetryBroadcastReceiver;)V

    .line 1185
    :goto_4
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v4, v7}, Lcom/asus/cm/CMCRegistryManager;->setStartDMDLSession(Z)V

    .line 1186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DM.ABORTED: mEngine.isIdle(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/cm/CMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v5}, Lcom/asus/dmlib/vdm/VdmEngine;->isIdle()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1183
    :cond_b
    iput-boolean v7, p0, Lcom/asus/cm/CMService;->mIsDLResuming:Z

    goto :goto_4

    .line 1188
    :cond_c
    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": mEngine.isIdle(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/cm/CMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v5}, Lcom/asus/dmlib/vdm/VdmEngine;->isIdle()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1191
    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1193
    iget-object v4, p0, Lcom/asus/cm/CMService;->mFumoHandler:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    invoke-virtual {v4, v8}, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->setDLResume(Z)V

    .line 1194
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v4, v8}, Lcom/asus/cm/CMCRegistryManager;->setStartDMDLSession(Z)V

    .line 1195
    const-string v4, "Notify DL STARTED"

    invoke-static {p0, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1196
    :cond_d
    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->COMPLETE:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1197
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v4, v7}, Lcom/asus/cm/CMCRegistryManager;->setStartDMDLSession(Z)V

    .line 1198
    iput-boolean v7, p0, Lcom/asus/cm/CMService;->mIsDLResuming:Z

    .line 1202
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v4, v7}, Lcom/asus/cm/CMCRegistryManager;->setRetryCount(I)V

    .line 1203
    const-string v4, "Notify DL COMPLETE"

    invoke-static {p0, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1204
    :cond_e
    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1205
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v4, v7}, Lcom/asus/cm/CMCRegistryManager;->setStartDMDLSession(Z)V

    .line 1208
    iput-boolean v7, p0, Lcom/asus/cm/CMService;->mIsDLResuming:Z

    .line 1209
    const-string v4, "Notify DL ABORTED"

    invoke-static {p0, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1211
    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_MAX_DL_TIMES_EXPIRE:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    if-ne p3, v4, :cond_f

    .line 1212
    const v4, 0x7f060019

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 1213
    invoke-virtual {p0}, Lcom/asus/cm/CMService;->cancelProgressNotification()V

    goto/16 :goto_3

    .line 1217
    :cond_f
    iget-object v4, p0, Lcom/asus/cm/CMService;->mFumoHandler:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    invoke-virtual {v4}, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->getDLResume()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1219
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/asus/cm/CMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1220
    .local v0, cmgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1221
    .local v3, ninfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_5

    .line 1222
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v4, v5}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1223
    const-string v4, "CMService"

    const-string v5, "===== DL Abort setRetryAlarm() ====="

    invoke-static {v4, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    :try_start_0
    iget-object v4, p0, Lcom/asus/cm/CMService;->mBinder:Lcom/asus/cm/CMService$CMSystemService;

    invoke-virtual {v4}, Lcom/asus/cm/CMService$CMSystemService;->doDMSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 1226
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1227
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_3
.end method

.method public notifyUIAlertDialogResult(IIZLjava/lang/String;)V
    .locals 3
    .parameter "pEventId"
    .parameter "pBitflags"
    .parameter "pConfirmed"
    .parameter "pUserInput"

    .prologue
    .line 961
    invoke-static {}, Lcom/asus/cm/CMService$UIAlertResult;->values()[Lcom/asus/cm/CMService$UIAlertResult;

    move-result-object v1

    aget-object v0, v1, p1

    .line 962
    .local v0, eventType:Lcom/asus/cm/CMService$UIAlertResult;
    iget-object v1, p0, Lcom/asus/cm/CMService;->mMmiObserver:Lcom/asus/dmlib/vdm/MmiObserver;

    if-nez v1, :cond_0

    .line 963
    const-string v1, "DMService.this.mMmiObserver == null return"

    invoke-static {p0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 988
    :goto_0
    return-void

    .line 966
    :cond_0
    sget-object v1, Lcom/asus/cm/CMService$7;->$SwitchMap$com$asus$cm$CMService$UIAlertResult:[I

    invoke-virtual {v0}, Lcom/asus/cm/CMService$UIAlertResult;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 968
    :pswitch_0
    iget-object v1, p0, Lcom/asus/cm/CMService;->mMmiObserver:Lcom/asus/dmlib/vdm/MmiObserver;

    invoke-interface {v1, p2}, Lcom/asus/dmlib/vdm/MmiObserver;->notfiyChoicelistSelection(I)V

    goto :goto_0

    .line 971
    :pswitch_1
    iget-object v1, p0, Lcom/asus/cm/CMService;->mMmiObserver:Lcom/asus/dmlib/vdm/MmiObserver;

    invoke-interface {v1}, Lcom/asus/dmlib/vdm/MmiObserver;->notifyCancelEvent()V

    goto :goto_0

    .line 974
    :pswitch_2
    iget-object v1, p0, Lcom/asus/cm/CMService;->mMmiObserver:Lcom/asus/dmlib/vdm/MmiObserver;

    invoke-interface {v1, p3}, Lcom/asus/dmlib/vdm/MmiObserver;->notifyConfirmationResult(Z)V

    goto :goto_0

    .line 977
    :pswitch_3
    iget-object v1, p0, Lcom/asus/cm/CMService;->mMmiObserver:Lcom/asus/dmlib/vdm/MmiObserver;

    invoke-interface {v1}, Lcom/asus/dmlib/vdm/MmiObserver;->notifyInfoMsgClosed()V

    goto :goto_0

    .line 980
    :pswitch_4
    iget-object v1, p0, Lcom/asus/cm/CMService;->mMmiObserver:Lcom/asus/dmlib/vdm/MmiObserver;

    invoke-interface {v1, p4}, Lcom/asus/dmlib/vdm/MmiObserver;->notifyInputResult(Ljava/lang/String;)V

    goto :goto_0

    .line 983
    :pswitch_5
    iget-object v1, p0, Lcom/asus/cm/CMService;->mMmiObserver:Lcom/asus/dmlib/vdm/MmiObserver;

    invoke-interface {v1}, Lcom/asus/dmlib/vdm/MmiObserver;->notifyTimeoutEvent()V

    goto :goto_0

    .line 966
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

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 533
    iget-object v0, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v0}, Lcom/asus/cm/CMCRegistryManager;->getCurrentTree()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 534
    const-string v0, "no tree file return @ onBind()"

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0}, Lcom/asus/cm/CMService;->stopSelf()V

    move-object v0, v2

    .line 546
    :goto_0
    return-object v0

    .line 538
    :cond_0
    const-class v0, Lcom/asus/cm/IDMService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/asus/cm/CMService;->mBinder:Lcom/asus/cm/CMService$CMSystemService;

    goto :goto_0

    .line 540
    :cond_1
    const-class v0, Lcom/asus/cm/IStatusNotifyRegister;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 541
    iget-object v0, p0, Lcom/asus/cm/CMService;->mSNBinder:Lcom/asus/cm/CMService$SNRegister;

    goto :goto_0

    .line 542
    :cond_2
    const-class v0, Lcom/asus/provisioning/IDmPersister;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 543
    const-string v0, "return me"

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/asus/cm/CMService;->mDmPersisterBinder:Lcom/asus/cm/CMService$DmPersister;

    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 546
    goto :goto_0
.end method

.method public onCreate()V
    .locals 14

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 191
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "=================== "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " onCreate() ==================="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    new-instance v9, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v9, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/asus/cm/CMService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 194
    invoke-static {p0}, Lcom/asus/cm/CMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v9

    iput-object v9, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    .line 196
    const-string v9, "check current tree"

    invoke-static {p0, v9}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iget-object v9, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v9}, Lcom/asus/cm/CMCRegistryManager;->getCurrentTree()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 198
    invoke-static {p0}, Lcom/asus/cm/util/UniqueId;->getInstances(Landroid/content/Context;)Lcom/asus/cm/util/UniqueId;

    move-result-object v9

    invoke-virtual {v9}, Lcom/asus/cm/util/UniqueId;->getId()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    .line 199
    const-string v9, "id is null return @ onCreate()"

    invoke-static {p0, v9}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/asus/cm/CMService;->stopSelf()V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    const-string v9, "create tree"

    invoke-static {p0, v9}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-static {p0}, Lcom/asus/cm/util/CMUtils;->createDMTreeFile(Landroid/content/Context;)V

    .line 207
    :cond_2
    iget-object v9, p0, Lcom/asus/cm/CMService;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9, v10}, Lcom/asus/cm/CMService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    iget-object v9, p0, Lcom/asus/cm/CMService;->mRetryReceiver:Lcom/asus/cm/CMService$RetryBroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "com.asus.dm.DMService.RetryBroadcastReceiver.retry"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9, v10}, Lcom/asus/cm/CMService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    iget-object v9, p0, Lcom/asus/cm/CMService;->mConnectivityStateReceiver:Lcom/asus/cm/ConnectivityStateReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9, v10}, Lcom/asus/cm/CMService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    invoke-direct {p0}, Lcom/asus/cm/CMService;->startEngine()V

    .line 212
    iget-object v9, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v9}, Lcom/asus/cm/CMCRegistryManager;->getDMVersion()I

    move-result v9

    if-eq v9, v12, :cond_4

    .line 213
    const-string v2, "http://waveshare.asus.com/LocationReport"

    .line 215
    .local v2, newURL:Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/asus/cm/CMService;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    const-string v10, "./LOCMO/ReportURL"

    invoke-interface {v9, v10}, Lcom/asus/dmlib/vdm/VdmTree;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 216
    .local v7, reportURL:Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 217
    iget-object v9, p0, Lcom/asus/cm/CMService;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    const-string v10, "./LOCMO/ReportURL"

    invoke-interface {v9, v10, v2}, Lcom/asus/dmlib/vdm/VdmTree;->replaceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v9, p0, Lcom/asus/cm/CMService;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-interface {v9}, Lcom/asus/dmlib/vdm/VdmTree;->writeToPersistentStorage()V

    .line 219
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "change tree value to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v7           #reportURL:Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v9, "register c2dm"

    invoke-static {p0, v9}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    const-string v9, "mdm.admasus@gmail.com"

    invoke-static {p0, v9}, Lcom/asus/cm/c2dm/C2DMessaging;->register(Landroid/content/Context;Ljava/lang/String;)V

    .line 226
    iget-object v9, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v9, v12}, Lcom/asus/cm/CMCRegistryManager;->setDMVersion(I)V

    .line 229
    .end local v2           #newURL:Ljava/lang/String;
    :cond_4
    new-instance v8, Landroid/os/HandlerThread;

    const-string v9, "vDMResumeHandler"

    const/16 v10, 0xa

    invoke-direct {v8, v9, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 230
    .local v8, thread:Landroid/os/HandlerThread;
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 232
    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    iput-object v9, p0, Lcom/asus/cm/CMService;->mResumeLooper:Landroid/os/Looper;

    .line 233
    new-instance v9, Lcom/asus/cm/CMService$1;

    iget-object v10, p0, Lcom/asus/cm/CMService;->mResumeLooper:Landroid/os/Looper;

    invoke-direct {v9, p0, v10}, Lcom/asus/cm/CMService$1;-><init>(Lcom/asus/cm/CMService;Landroid/os/Looper;)V

    iput-object v9, p0, Lcom/asus/cm/CMService;->mResumeHandler:Landroid/os/Handler;

    .line 269
    iget-object v9, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v9}, Lcom/asus/cm/CMCRegistryManager;->getStartDMDLSession()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 270
    const-string v9, "alarm"

    invoke-virtual {p0, v9}, Lcom/asus/cm/CMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 271
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/asus/cm/CMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/asus/cm/CMService;

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    .local v6, postIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/asus/cm/CMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v13, v6, v13}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 275
    .local v5, pendIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x1388

    add-long v3, v9, v11

    .line 277
    .local v3, nextPostTime:J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "===== Coredump setAlarmService "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0, v13, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 221
    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v3           #nextPostTime:J
    .end local v5           #pendIntent:Landroid/app/PendingIntent;
    .end local v6           #postIntent:Landroid/content/Intent;
    .end local v8           #thread:Landroid/os/HandlerThread;
    .restart local v2       #newURL:Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 222
    .local v1, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 502
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=================== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDestroy() ==================="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v1}, Lcom/asus/cm/CMCRegistryManager;->getCurrentTree()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 506
    const-string v1, "no tree file return @ onDestroy()"

    invoke-static {p0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    invoke-direct {p0}, Lcom/asus/cm/CMService;->destoryEngine()V

    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/asus/cm/CMService;->mConnectivityStateReceiver:Lcom/asus/cm/ConnectivityStateReceiver;

    invoke-virtual {p0, v1}, Lcom/asus/cm/CMService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 513
    iget-object v1, p0, Lcom/asus/cm/CMService;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/asus/cm/CMService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 514
    iget-object v1, p0, Lcom/asus/cm/CMService;->mRetryReceiver:Lcom/asus/cm/CMService$RetryBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/asus/cm/CMService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :goto_1
    iget-object v1, p0, Lcom/asus/cm/CMService;->mResumeLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 524
    iget-object v1, p0, Lcom/asus/cm/CMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/asus/cm/CMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 526
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/asus/cm/CMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 527
    const-string v1, "===== release wake_lock"

    invoke-static {p0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 516
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 517
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "============== catched unbind \"Provisioning Service\" exception start ============="

    invoke-static {p0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 519
    const-string v1, "=============== catched exception end =============="

    invoke-static {p0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 14
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 285
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "=================== "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " onStartCommand() ==================="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    const/4 v3, 0x0

    .line 289
    .local v3, bStartDMSession:Z
    const/4 v2, 0x0

    .line 291
    .local v2, bDelay:Z
    iget-object v11, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v11}, Lcom/asus/cm/CMCRegistryManager;->getCurrentTree()I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    .line 292
    const-string v11, "no tree file return @ onStartCommand()"

    invoke-static {p0, v11}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lcom/asus/cm/CMService;->stopSelf()V

    .line 294
    const/4 v11, 0x2

    .line 487
    :goto_0
    return v11

    .line 296
    :cond_0
    const-string v11, "alarm"

    invoke-virtual {p0, v11}, Lcom/asus/cm/CMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 297
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v9, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/asus/cm/CMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-class v12, Lcom/asus/cm/CMService;

    invoke-direct {v9, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 299
    .local v9, postIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/asus/cm/CMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v12, v9, v13}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 301
    .local v7, pendIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 303
    const-string v11, "power"

    invoke-virtual {p0, v11}, Lcom/asus/cm/CMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 305
    .local v8, pm:Landroid/os/PowerManager;
    iget-object v11, p0, Lcom/asus/cm/CMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    if-nez v11, :cond_1

    .line 306
    const/4 v11, 0x1

    const-string v12, "DMService"

    invoke-virtual {v8, v11, v12}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    iput-object v11, p0, Lcom/asus/cm/CMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 308
    iget-object v11, p0, Lcom/asus/cm/CMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 309
    iget-object v11, p0, Lcom/asus/cm/CMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 310
    const-string v11, "===== acquire wake_lock"

    invoke-static {p0, v11}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    :cond_1
    if-eqz p1, :cond_3

    const-string v11, "com.asus.dm.DMService.sendRegID"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 314
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "===== doC2dmIDSession ====="

    invoke-static {v11, v12}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v11, "registration_id"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 316
    .local v10, regID:Ljava/lang/String;
    const-string v11, "registration_app_name"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, appName:Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 319
    iget-object v11, p0, Lcom/asus/cm/CMService;->mBinder:Lcom/asus/cm/CMService$CMSystemService;

    new-instance v12, Lcom/asus/cm/c2dm/RegC2dmIdInitiator;

    invoke-direct {v12}, Lcom/asus/cm/c2dm/RegC2dmIdInitiator;-><init>()V

    invoke-virtual {v11, v10, v1, v12}, Lcom/asus/cm/CMService$CMSystemService;->doC2dmIDSession(Ljava/lang/String;Ljava/lang/String;Lcom/asus/dmlib/vdm/SessionInitiator;)V

    .line 322
    :cond_2
    const/4 v11, 0x1

    goto :goto_0

    .line 325
    .end local v1           #appName:Ljava/lang/String;
    .end local v10           #regID:Ljava/lang/String;
    :cond_3
    if-eqz p1, :cond_5

    const-string v11, "com.asus.cm.CMService.sendVibeID"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 326
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "===== doVibeDSession ====="

    invoke-static {v11, v12}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v11, "vibe_id"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 328
    .restart local v10       #regID:Ljava/lang/String;
    const-string v11, "registration_app_name"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    .restart local v1       #appName:Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 331
    iget-object v11, p0, Lcom/asus/cm/CMService;->mBinder:Lcom/asus/cm/CMService$CMSystemService;

    new-instance v12, Lcom/asus/cm/vibe/VibeSessionInitiator;

    invoke-direct {v12}, Lcom/asus/cm/vibe/VibeSessionInitiator;-><init>()V

    invoke-virtual {v11, v10, v1, v12}, Lcom/asus/cm/CMService$CMSystemService;->doVibeIDSession(Ljava/lang/String;Ljava/lang/String;Lcom/asus/dmlib/vdm/SessionInitiator;)V

    .line 334
    :cond_4
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 338
    .end local v1           #appName:Ljava/lang/String;
    .end local v10           #regID:Ljava/lang/String;
    :cond_5
    iget-object v11, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v11}, Lcom/asus/cm/CMCRegistryManager;->getBatteryNotEnoughFlag()Z

    move-result v11

    iput-boolean v11, p0, Lcom/asus/cm/CMService;->mbBatteryNotEnough:Z

    .line 342
    iget-object v11, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    if-nez v11, :cond_6

    .line 343
    invoke-static {p0}, Lcom/asus/cm/CMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v11

    iput-object v11, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    .line 347
    :cond_6
    iget-object v11, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v11}, Lcom/asus/cm/CMCRegistryManager;->getLawmoState()Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    move-result-object v11

    sget-object v12, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->Partially_Locked:Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    if-ne v11, v12, :cond_7

    .line 348
    invoke-direct {p0}, Lcom/asus/cm/CMService;->lockDevice()V

    .line 351
    :cond_7
    iget-object v11, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v11}, Lcom/asus/cm/CMCRegistryManager;->getState()Lcom/asus/cm/CMClient$DMClientState;

    move-result-object v11

    sget-object v12, Lcom/asus/cm/CMClient$DMClientState;->CONFIRM_UPDATE_DIALOG:Lcom/asus/cm/CMClient$DMClientState;

    if-ne v11, v12, :cond_8

    .line 352
    invoke-virtual {p0}, Lcom/asus/cm/CMService;->showConfirmUpdateUI()V

    .line 353
    const-string v11, "currently have update file --> show confirm update UI"

    invoke-static {p0, v11}, Lcom/asus/cm/util/CMLog;->logW(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    invoke-direct {p0}, Lcom/asus/cm/CMService;->releaseWakelock()V

    .line 355
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 356
    :cond_8
    iget-object v11, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v11}, Lcom/asus/cm/CMCRegistryManager;->getState()Lcom/asus/cm/CMClient$DMClientState;

    move-result-object v11

    sget-object v12, Lcom/asus/cm/CMClient$DMClientState;->CONFIRM_DOWNLOAD_DIALOG:Lcom/asus/cm/CMClient$DMClientState;

    if-ne v11, v12, :cond_a

    .line 357
    const-string v11, "show confirm download @1"

    invoke-static {p0, v11}, Lcom/asus/cm/util/CMLog;->logW(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    if-eqz p1, :cond_9

    const-string v11, "com.asus.dm.DMService.showConfirmDownload"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 361
    const-string v11, "show confirm download @1"

    invoke-static {p0, v11}, Lcom/asus/cm/util/CMLog;->logW(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/asus/cm/CMService;->showConfirmDownloadUI()V

    .line 367
    :goto_1
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 364
    :cond_9
    const-string v11, "create dl notification"

    invoke-static {p0, v11}, Lcom/asus/cm/util/CMLog;->logW(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    const/4 v11, 0x0

    invoke-static {p0, v11}, Lcom/asus/cm/CMDLNotification;->createNotification(Landroid/content/Context;Z)V

    goto :goto_1

    .line 371
    :cond_a
    if-eqz p1, :cond_11

    .line 372
    const-string v11, "com.asus.dm.DMService.showConfirmUpdate"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 374
    invoke-virtual {p0}, Lcom/asus/cm/CMService;->showConfirmUpdateUI()V

    .line 375
    const-string v11, "currently have update file 2 --> show confirm update UI"

    invoke-static {p0, v11}, Lcom/asus/cm/util/CMLog;->logW(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    invoke-direct {p0}, Lcom/asus/cm/CMService;->releaseWakelock()V

    .line 377
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 379
    :cond_b
    const-string v11, "com.asus.dm.DMService.showConfirmDownload"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 380
    const-string v11, "show confirm download @2"

    invoke-static {p0, v11}, Lcom/asus/cm/util/CMLog;->logW(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/asus/cm/CMService;->showConfirmDownloadUI()V

    .line 382
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 384
    :cond_c
    const-string v11, "com.asus.dm.DMService.resumeDownload"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 386
    :try_start_0
    iget-object v11, p0, Lcom/asus/cm/CMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-virtual {v11}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->getState()Lcom/asus/dmlib/vdm/fumo/FumoState;

    move-result-object v11

    sget-object v12, Lcom/asus/dmlib/vdm/fumo/FumoState;->DOWNLOAD_PROGRESSING:Lcom/asus/dmlib/vdm/fumo/FumoState;

    if-eq v11, v12, :cond_d

    .line 387
    const-string v11, "CMService"

    const-string v12, "===== ConnectivityStateReceiver call do DMSession() ====="

    invoke-static {v11, v12}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 389
    :try_start_1
    iget-object v11, p0, Lcom/asus/cm/CMService;->mBinder:Lcom/asus/cm/CMService$CMSystemService;

    invoke-virtual {v11}, Lcom/asus/cm/CMService$CMSystemService;->doDMSession()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 397
    :cond_d
    :goto_2
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 390
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 391
    .local v4, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 394
    .end local v4           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v11

    move-object v4, v11

    .line 395
    .local v4, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_2

    .line 399
    .end local v4           #e:Lcom/asus/dmlib/vdm/VdmException;
    :cond_e
    const-string v11, "com.asus.dm.DMService.doFotaPolling"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 401
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "=================== FumoState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/asus/cm/CMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-virtual {v12}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->getState()Lcom/asus/dmlib/vdm/fumo/FumoState;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    iget-object v11, p0, Lcom/asus/cm/CMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-virtual {v11}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->getState()Lcom/asus/dmlib/vdm/fumo/FumoState;

    move-result-object v11

    sget-object v12, Lcom/asus/dmlib/vdm/fumo/FumoState;->DOWNLOAD_PROGRESSING:Lcom/asus/dmlib/vdm/fumo/FumoState;

    if-eq v11, v12, :cond_f

    iget-object v11, p0, Lcom/asus/cm/CMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-virtual {v11}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->getState()Lcom/asus/dmlib/vdm/fumo/FumoState;

    move-result-object v11

    sget-object v12, Lcom/asus/dmlib/vdm/fumo/FumoState;->UPDATE_READY_TO_UPDATE:Lcom/asus/dmlib/vdm/fumo/FumoState;

    if-eq v11, v12, :cond_f

    iget-object v11, p0, Lcom/asus/cm/CMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-virtual {v11}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->getState()Lcom/asus/dmlib/vdm/fumo/FumoState;

    move-result-object v11

    sget-object v12, Lcom/asus/dmlib/vdm/fumo/FumoState;->UPDATE_PROGRESSING:Lcom/asus/dmlib/vdm/fumo/FumoState;
    :try_end_3
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_3 .. :try_end_3} :catch_2

    if-eq v11, v12, :cond_f

    .line 405
    const/4 v3, 0x1

    .line 414
    :cond_f
    :goto_3
    const-string v11, "NIParams"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    .line 415
    .local v6, msg:[B
    if-eqz v6, :cond_10

    .line 417
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "===== doNIDMSession ====="

    invoke-static {v11, v12}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v11, p0, Lcom/asus/cm/CMService;->mBinder:Lcom/asus/cm/CMService$CMSystemService;

    check-cast v6, [B

    .end local v6           #msg:[B
    invoke-virtual {v11, v6}, Lcom/asus/cm/CMService$CMSystemService;->doNIDMSession([B)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 426
    :goto_4
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 407
    :catch_2
    move-exception v11

    move-object v4, v11

    .line 408
    .restart local v4       #e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_3

    .line 423
    .end local v4           #e:Lcom/asus/dmlib/vdm/VdmException;
    :catch_3
    move-exception v11

    move-object v4, v11

    .line 424
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 429
    .end local v4           #e:Landroid/os/RemoteException;
    .restart local v6       #msg:[B
    :cond_10
    const-string v11, "com.asud.cm.fromBootComplete"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 431
    const-string v11, "com.asus.dm.fota.upgradestatus"

    const/4 v12, -0x1

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 432
    .local v5, fotaStatus:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fotaStatus "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    if-lez v5, :cond_11

    .line 438
    const/4 v3, 0x1

    .line 442
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mRegMgr.getUpgradeErrorHasShown() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v12}, Lcom/asus/cm/CMCRegistryManager;->getUpgradeErrorHasShown()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    const/16 v11, 0xc8

    if-eq v5, v11, :cond_11

    iget-object v11, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v11}, Lcom/asus/cm/CMCRegistryManager;->getUpgradeErrorHasShown()Z

    move-result v11

    if-nez v11, :cond_11

    .line 444
    iget-object v11, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/asus/cm/CMCRegistryManager;->setDMErrorHasShown(Z)V

    .line 445
    const-string v11, "show dialog"

    invoke-static {p0, v11}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Lcom/asus/cm/CMService;->showFirmwareUpdateFailAlertDialog()V

    .line 457
    .end local v5           #fotaStatus:I
    .end local v6           #msg:[B
    :cond_11
    iget-object v11, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v11}, Lcom/asus/cm/CMCRegistryManager;->getStartDMDLSession()Z

    move-result v11

    if-eqz v11, :cond_12

    .line 458
    const-string v11, "restart DM session"

    invoke-static {p0, v11}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    const/4 v3, 0x1

    .line 462
    :cond_12
    if-eqz v3, :cond_14

    .line 463
    if-eqz v2, :cond_13

    .line 464
    const-string v11, "***** boot_complete, schedule next wakeup after 30s "

    invoke-static {p0, v11}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    const-string v11, "***** delay start DM session*********"

    invoke-static {p0, v11}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    iget-object v11, p0, Lcom/asus/cm/CMService;->mRetryReceiver:Lcom/asus/cm/CMService$RetryBroadcastReceiver;

    invoke-static {v11}, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->access$400(Lcom/asus/cm/CMService$RetryBroadcastReceiver;)V

    .line 470
    iget-object v11, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/asus/cm/CMCRegistryManager;->setStartDMDLSession(Z)V

    .line 472
    invoke-direct {p0}, Lcom/asus/cm/CMService;->releaseWakelock()V

    .line 474
    iget-object v11, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v11, v2}, Lcom/asus/cm/CMCRegistryManager;->setBootCompletedDelay(Z)V

    .line 486
    :goto_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "=================== "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " end onStartCommand() ==================="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 477
    :cond_13
    :try_start_5
    const-string v11, "***** onStartCommand start DM session*********"

    invoke-static {p0, v11}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    iget-object v11, p0, Lcom/asus/cm/CMService;->mBinder:Lcom/asus/cm/CMService$CMSystemService;

    invoke-virtual {v11}, Lcom/asus/cm/CMService$CMSystemService;->doDMSession()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    .line 479
    :catch_4
    move-exception v11

    move-object v4, v11

    .line 480
    .restart local v4       #e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    .line 484
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_14
    invoke-direct {p0}, Lcom/asus/cm/CMService;->releaseWakelock()V

    goto :goto_5
.end method

.method public prepareDLNotification(Z)V
    .locals 0
    .parameter "notifyUser"

    .prologue
    .line 2111
    invoke-static {p0, p1}, Lcom/asus/cm/CMDLNotification;->createNotification(Landroid/content/Context;Z)V

    .line 2112
    invoke-direct {p0}, Lcom/asus/cm/CMService;->releaseWakelock()V

    .line 2113
    return-void
.end method

.method public ringStatus(Z)V
    .locals 9
    .parameter "start"

    .prologue
    const/16 v8, 0xc

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 2120
    if-eqz p1, :cond_3

    .line 2121
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/asus/cm/CMService;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2122
    invoke-virtual {p0, v7}, Lcom/asus/cm/CMService;->ringStatus(Z)V

    .line 2124
    :cond_0
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 2125
    .local v3, ringUri:Landroid/net/Uri;
    if-eqz v3, :cond_2

    .line 2126
    const/4 v2, 0x0

    .line 2127
    .local v2, ringMode:I
    invoke-static {p0, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    iput-object v4, p0, Lcom/asus/cm/CMService;->mRingtone:Landroid/media/Ringtone;

    .line 2128
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/asus/cm/CMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2129
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 2130
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-eq v4, v6, :cond_1

    .line 2131
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 2132
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v4, v2}, Lcom/asus/cm/CMCRegistryManager;->setRingMode(I)V

    .line 2135
    :cond_1
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/asus/cm/CMCRegistryManager;->setRingVolume(I)V

    .line 2137
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    invoke-virtual {v0, v6, v4, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2138
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->play()V

    .line 2139
    const-string v4, "ring.play();"

    invoke-static {p0, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2140
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2141
    .local v1, msg:Landroid/os/Message;
    iput v8, v1, Landroid/os/Message;->what:I

    .line 2142
    iget-object v4, p0, Lcom/asus/cm/CMService;->mHandler:Landroid/os/Handler;

    const-wide/32 v5, 0x493e0

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2143
    const-string v4, "delay 300s"

    invoke-static {p0, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2173
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #ringMode:I
    .end local v3           #ringUri:Landroid/net/Uri;
    :cond_2
    :goto_0
    return-void

    .line 2146
    :cond_3
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_2

    .line 2147
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/asus/cm/CMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2150
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2151
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->stop()V

    .line 2152
    const-string v4, "ring.stop();"

    invoke-static {p0, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2155
    :cond_4
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v4}, Lcom/asus/cm/CMCRegistryManager;->getRingVolume()I

    move-result v4

    sget v5, Lcom/asus/cm/CMCRegistryManager;->NO_RING_VOLUME_PREFS:I

    if-eq v4, v5, :cond_5

    .line 2156
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v4}, Lcom/asus/cm/CMCRegistryManager;->getRingVolume()I

    move-result v4

    invoke-virtual {v0, v6, v4, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2157
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    sget v5, Lcom/asus/cm/CMCRegistryManager;->NO_RING_VOLUME_PREFS:I

    invoke-virtual {v4, v5}, Lcom/asus/cm/CMCRegistryManager;->setRingVolume(I)V

    .line 2159
    :cond_5
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v4}, Lcom/asus/cm/CMCRegistryManager;->getRingMode()I

    move-result v2

    .line 2160
    .restart local v2       #ringMode:I
    sget v4, Lcom/asus/cm/CMCRegistryManager;->NO_RING_VOLUME_PREFS:I

    if-eq v2, v4, :cond_6

    .line 2161
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 2163
    iget-object v4, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    sget v5, Lcom/asus/cm/CMCRegistryManager;->NO_RING_VOLUME_PREFS:I

    invoke-virtual {v4, v5}, Lcom/asus/cm/CMCRegistryManager;->setRingMode(I)V

    .line 2166
    :cond_6
    iget-object v4, p0, Lcom/asus/cm/CMService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2168
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/asus/cm/CMService;->mRingtone:Landroid/media/Ringtone;

    goto :goto_0
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "pMsg"

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/asus/cm/CMService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1114
    return-void
.end method

.method public sessionCompleteNotify(ILcom/asus/dmlib/vdm/fumo/VdmFumo;)V
    .locals 3
    .parameter "lastError"
    .parameter "fumoInstance"

    .prologue
    .line 1358
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sessionCompleteNotify lastError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    return-void
.end method

.method public setDLDescriptor(Lcom/asus/cm/RBDownloadDescriptor;)V
    .locals 3
    .parameter "dd"

    .prologue
    .line 1472
    iput-object p1, p0, Lcom/asus/cm/CMService;->mDownDescriptor:Lcom/asus/cm/RBDownloadDescriptor;

    .line 1473
    if-eqz p1, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    iget-object v1, p1, Lcom/asus/cm/RBDownloadDescriptor;->field:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/asus/cm/CMCRegistryManager;->setDLName(Ljava/lang/String;)V

    .line 1475
    iget-object v0, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    iget-object v1, p1, Lcom/asus/cm/RBDownloadDescriptor;->field:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/asus/cm/CMCRegistryManager;->setDLDescriotion(Ljava/lang/String;)V

    .line 1476
    iget-object v0, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    iget-wide v1, p1, Lcom/asus/cm/RBDownloadDescriptor;->size:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/asus/cm/CMCRegistryManager;->setDLTotalSize(I)V

    .line 1479
    :cond_0
    return-void
.end method

.method public setDefaultConfirmResult(Lcom/asus/dmlib/vdm/MmiConfirmation$ConfirmCommand;)V
    .locals 0
    .parameter "pDefaultConfirmResult"

    .prologue
    .line 1704
    iput-object p1, p0, Lcom/asus/cm/CMService;->mDefaultConfirmResult:Lcom/asus/dmlib/vdm/MmiConfirmation$ConfirmCommand;

    .line 1705
    return-void
.end method

.method public setIsNeedEnablePost(Z)V
    .locals 0
    .parameter "isNeedEnablePost"

    .prologue
    .line 1679
    iput-boolean p1, p0, Lcom/asus/cm/CMService;->mIsNeedEnablePost:Z

    .line 1680
    return-void
.end method

.method public setMmiObserver(Lcom/asus/dmlib/vdm/MmiObserver;)V
    .locals 0
    .parameter "mmiObserver"

    .prologue
    .line 1700
    iput-object p1, p0, Lcom/asus/cm/CMService;->mMmiObserver:Lcom/asus/dmlib/vdm/MmiObserver;

    .line 1701
    return-void
.end method

.method public setPostponeTime(I)V
    .locals 2
    .parameter "pTime"

    .prologue
    .line 2097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPostponeTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2098
    iget-object v0, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v0, p1}, Lcom/asus/cm/CMCRegistryManager;->setPostponeTime(I)V

    .line 2099
    return-void
.end method

.method public setUIAlertParaDescriptor(Lcom/asus/cm/UIAlertParaDescriptor;)V
    .locals 0
    .parameter "pAlertParaDescriptor"

    .prologue
    .line 1692
    iput-object p1, p0, Lcom/asus/cm/CMService;->mUIAlertParaDescriptor:Lcom/asus/cm/UIAlertParaDescriptor;

    .line 1693
    return-void
.end method

.method public showBatteryNotEnoughUI()V
    .locals 3

    .prologue
    .line 1292
    const-string v0, "showConfirmUpdateUI() battery < 50% wait"

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/cm/CMService;->mbBatteryNotEnough:Z

    .line 1294
    iget-object v0, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    iget-boolean v1, p0, Lcom/asus/cm/CMService;->mbBatteryNotEnough:Z

    invoke-virtual {v0, v1}, Lcom/asus/cm/CMCRegistryManager;->setBatteryNotEnoughFlag(Z)V

    .line 1295
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lcom/asus/cm/CMService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060008

    invoke-virtual {p0, v1}, Lcom/asus/cm/CMService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/asus/cm/CMService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/asus/cm/CMService;->showClientAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    return-void
.end method

.method public showConfirmDownloadUI()V
    .locals 2

    .prologue
    .line 492
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 493
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 494
    sget-object v1, Lcom/asus/cm/CMService$DialogId;->CONFIRM_DOWNLOAD:Lcom/asus/cm/CMService$DialogId;

    invoke-virtual {v1}, Lcom/asus/cm/CMService$DialogId;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 495
    const/16 v1, 0x920

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 496
    invoke-virtual {p0, v0}, Lcom/asus/cm/CMService;->sendMessage(Landroid/os/Message;)V

    .line 497
    return-void
.end method

.method public showConfirmUpdateUI()V
    .locals 2

    .prologue
    .line 1303
    invoke-direct {p0}, Lcom/asus/cm/CMService;->checkBatteryStatus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1304
    invoke-virtual {p0}, Lcom/asus/cm/CMService;->showBatteryNotEnoughUI()V

    .line 1319
    :cond_0
    :goto_0
    return-void

    .line 1308
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1310
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1311
    sget-object v1, Lcom/asus/cm/CMService$DialogId;->CONFIRM_UPDATE:Lcom/asus/cm/CMService$DialogId;

    invoke-virtual {v1}, Lcom/asus/cm/CMService$DialogId;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1313
    iget-boolean v1, p0, Lcom/asus/cm/CMService;->mIsShowConfirmUpdate:Z

    if-nez v1, :cond_0

    .line 1314
    invoke-static {}, Lcom/asus/cm/util/CMUtils;->waitforCall()V

    .line 1315
    invoke-virtual {p0, v0}, Lcom/asus/cm/CMService;->sendMessage(Landroid/os/Message;)V

    .line 1316
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/asus/cm/CMService;->mIsShowConfirmUpdate:Z

    goto :goto_0
.end method

.method public showDMDialog(ILcom/asus/dmlib/vdm/MmiObserver;I)V
    .locals 3
    .parameter "pId"
    .parameter "pObserver"
    .parameter "pSaveInstenctMagic"

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/asus/cm/CMService;->mDialFactory:Lcom/asus/cm/mmi/dialog/DialogFactory;

    if-nez v0, :cond_0

    .line 1501
    new-instance v0, Lcom/asus/cm/mmi/dialog/DialogFactory;

    iget-object v1, p0, Lcom/asus/cm/CMService;->mMmiCallBackBinder:Lcom/asus/cm/CMService$MmiCallBackService;

    invoke-virtual {p0}, Lcom/asus/cm/CMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/asus/cm/mmi/dialog/DialogFactory;-><init>(Lcom/asus/cm/IMmiCallback;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/asus/cm/CMService;->mDialFactory:Lcom/asus/cm/mmi/dialog/DialogFactory;

    .line 1504
    :cond_0
    if-eqz p2, :cond_1

    .line 1505
    iput-object p2, p0, Lcom/asus/cm/CMService;->mMmiObserver:Lcom/asus/dmlib/vdm/MmiObserver;

    .line 1508
    :cond_1
    sget-object v0, Lcom/asus/cm/CMService$DialogId;->CONFIRM_UPDATE:Lcom/asus/cm/CMService$DialogId;

    invoke-virtual {v0}, Lcom/asus/cm/CMService$DialogId;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 1509
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v1}, Lcom/asus/cm/CMCRegistryManager;->getPostponeNumber()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/asus/cm/CMService;->mPostQuota:I

    .line 1510
    invoke-direct {p0}, Lcom/asus/cm/CMService;->cancelAlarmService()V

    .line 1513
    :cond_2
    iget-object v0, p0, Lcom/asus/cm/CMService;->mDialFactory:Lcom/asus/cm/mmi/dialog/DialogFactory;

    invoke-virtual {v0, p1}, Lcom/asus/cm/mmi/dialog/DialogFactory;->createDMDialog(I)V

    .line 1514
    return-void
.end method

.method public showFirmwareUpdateFailAlertDialog()V
    .locals 3

    .prologue
    .line 1961
    new-instance v1, Lcom/asus/cm/UIAlertParaDescriptor;

    invoke-direct {v1}, Lcom/asus/cm/UIAlertParaDescriptor;-><init>()V

    .line 1962
    .local v1, paraDescriptor:Lcom/asus/cm/UIAlertParaDescriptor;
    const v2, 0x7f060007

    invoke-virtual {p0, v2}, Lcom/asus/cm/CMService;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/asus/cm/UIAlertParaDescriptor;->mDialogContent:Ljava/lang/String;

    .line 1963
    invoke-virtual {p0, v1}, Lcom/asus/cm/CMService;->setUIAlertParaDescriptor(Lcom/asus/cm/UIAlertParaDescriptor;)V

    .line 1965
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1966
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1967
    sget-object v2, Lcom/asus/cm/CMService$DialogId;->UI_ALERT_FIRMWARE_UPGRADE_FAIL:Lcom/asus/cm/CMService$DialogId;

    invoke-virtual {v2}, Lcom/asus/cm/CMService$DialogId;->ordinal()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1968
    const/16 v2, 0x920

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 1969
    invoke-virtual {p0, v0}, Lcom/asus/cm/CMService;->sendMessage(Landroid/os/Message;)V

    .line 1970
    return-void
.end method

.method public showLockScreen()V
    .locals 2

    .prologue
    .line 1658
    :try_start_0
    iget-object v1, p0, Lcom/asus/cm/CMService;->mBinder:Lcom/asus/cm/CMService$CMSystemService;

    invoke-virtual {v1}, Lcom/asus/cm/CMService$CMSystemService;->showLockScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1662
    :goto_0
    return-void

    .line 1659
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1660
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public update_Process(Ljava/lang/String;)Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    .locals 4
    .parameter "path"

    .prologue
    .line 1323
    const/4 v1, 0x0

    .line 1325
    .local v1, update:Z
    iget-object v2, p0, Lcom/asus/cm/CMService;->mFumoHandler:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    invoke-virtual {v2}, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->getDLTotalSize()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMUtils;->isEnoughDiskSpaceToDownload(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1326
    const/4 v1, 0x1

    .line 1334
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 1336
    invoke-direct {p0}, Lcom/asus/cm/CMService;->checkBatteryStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1337
    iget-object v2, p0, Lcom/asus/cm/CMService;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/asus/cm/CMCRegistryManager;->setUpgradeFromDM(Z)V

    .line 1338
    invoke-direct {p0, p1}, Lcom/asus/cm/CMService;->do_update(Ljava/lang/String;)Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    move-result-object v0

    .line 1340
    .local v0, ret:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    invoke-static {p0}, Lcom/asus/cm/CMNotification;->clearNotification(Landroid/content/Context;)V

    .line 1353
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1354
    return-object v0

    .line 1328
    .end local v0           #ret:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    :cond_1
    invoke-static {}, Lcom/asus/cm/fota/UnPack;->deleteUpdates()V

    .line 1329
    invoke-static {}, Lcom/asus/cm/util/CMUtils;->clearCache()V

    .line 1330
    iget-object v2, p0, Lcom/asus/cm/CMService;->mFumoHandler:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    invoke-virtual {v2}, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->getDLTotalSize()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMUtils;->isEnoughDiskSpaceToDownload(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1331
    const/4 v1, 0x1

    goto :goto_0

    .line 1346
    :cond_2
    invoke-virtual {p0}, Lcom/asus/cm/CMService;->showBatteryNotEnoughUI()V

    .line 1347
    sget-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->NOT_ACCEPTABLE:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .restart local v0       #ret:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    goto :goto_1

    .line 1350
    .end local v0           #ret:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    :cond_3
    const v2, 0x7f060025

    invoke-virtual {p0, v2}, Lcom/asus/cm/CMService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/asus/cm/CMService;->showClientAlertDialog(Ljava/lang/String;)V

    .line 1351
    sget-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->OUT_OF_MEMORY_FOR_UPDATE:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .restart local v0       #ret:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    goto :goto_1
.end method

.method public waitAndStopService()V
    .locals 6

    .prologue
    .line 1020
    const/4 v1, 0x0

    .line 1023
    .local v1, isEngineNull:Z
    :try_start_0
    iget-object v3, p0, Lcom/asus/cm/CMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/asus/cm/CMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v3}, Lcom/asus/dmlib/vdm/VdmEngine;->isIdle()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_2

    .line 1024
    const/4 v1, 0x0

    .line 1032
    :goto_0
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/asus/cm/CMService;->mRingtone:Landroid/media/Ringtone;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/asus/cm/CMService;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v3}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1033
    :cond_0
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1034
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x7

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1036
    iget-object v3, p0, Lcom/asus/cm/CMService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1062
    .end local v2           #msg:Landroid/os/Message;
    :cond_1
    :goto_1
    return-void

    .line 1026
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1028
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1029
    .local v0, ex:Ljava/lang/NullPointerException;
    const/4 v1, 0x1

    goto :goto_0

    .line 1039
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/asus/cm/CMService;->ringStatus(Z)V

    .line 1042
    iget-boolean v3, p0, Lcom/asus/cm/CMService;->mbBatteryNotEnough:Z

    if-nez v3, :cond_1

    .line 1043
    const-string v3, "stop me"

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1044
    invoke-direct {p0}, Lcom/asus/cm/CMService;->clearDMHandlerHelper()V

    .line 1046
    iget-object v3, p0, Lcom/asus/cm/CMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_4

    .line 1047
    iget-object v3, p0, Lcom/asus/cm/CMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1048
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/asus/cm/CMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 1049
    const-string v3, "===== release wake_lock"

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1052
    :cond_4
    iget-object v3, p0, Lcom/asus/cm/CMService;->mStateCbList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1053
    const-string v3, "DM process finish"

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
