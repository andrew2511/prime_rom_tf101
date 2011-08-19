.class public Lcom/asus/dm/DMService;
.super Landroid/app/Service;
.source "DMService.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/SessionStateObserver;
.implements Lcom/asus/dmlib/vdm/NIAMsgHandler;
.implements Lcom/asus/dmlib/vdm/SessionInitiator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dm/DMService$6;,
        Lcom/asus/dm/DMService$RetryBroadcastReceiver;,
        Lcom/asus/dm/DMService$DmPersister;,
        Lcom/asus/dm/DMService$SNRegister;,
        Lcom/asus/dm/DMService$MmiCallBackService;,
        Lcom/asus/dm/DMService$DMSystemService;,
        Lcom/asus/dm/DMService$DialogId;,
        Lcom/asus/dm/DMService$UIAlertResult;
    }
.end annotation


# static fields
.field static final ACTION_DELAY_BOOT_COMPLETED:Ljava/lang/String; = "com.asus.dm.DMService.delayBootCompleted"

.field static final ACTION_FOTA_POLLING:Ljava/lang/String; = "com.asus.dm.DMService.doFotaPolling"

.field static final ACTION_RESUME_DOWLOAD:Ljava/lang/String; = "com.asus.dm.DMService.resumeDownload"

.field public static final ACTION_SEND_C2DM_REGISTRATION_ID:Ljava/lang/String; = "com.asus.dm.DMService.sendRegID"

.field public static final ALLOW_UPDATE_BATTERY_THRESHOLD:I = 0xf

.field private static final BATTERY_INIT_STATE:I = -0xd0b6

.field public static final DMV:I = 0x69

.field public static final DOWNLOAD_PROGRESS_UPDATE:I = 0x3

.field private static MAX_MSG_SIZE:I = 0x0

.field public static final NI_SHOW_DM_DL_CONFIRM_DIALOG:I = 0x6

.field public static final NI_SHOW_SS_NOTIFICATION:I = 0x8

.field public static final SHOW_DIALOG:I = 0x5

.field public static final STOP_SERVICE:I = 0x7

.field private static final TAG:Ljava/lang/String; = "DMService"

.field private static final TRIGGER_DL_RESUME_SESSION:I = 0x3e8

.field private static mCurrentSessionState:I

.field private static mCurrentSessionType:I


# instance fields
.field private final SAVE_DIALOG_INSTANCE:I

.field private dmSSNotify:Landroid/app/Notification;

.field private mACPowerState:I

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryState:I

.field private final mBinder:Lcom/asus/dm/DMService$DMSystemService;

.field public mConnectivityStateReceiver:Lcom/asus/dm/ConnectivityStateReceiver;

.field mDLProgress:Lcom/asus/dm/DMDownloadProgress;

.field private mDefaultConfirmResult:Lcom/asus/dmlib/vdm/MmiConfirmation$ConfirmCommand;

.field private mDialFactory:Lcom/asus/dm/mmi/dialog/DialogFactory;

.field private final mDmPersisterBinder:Lcom/asus/dm/DMService$DmPersister;

.field private mDownDescriptor:Lcom/asus/dm/RBDownloadDescriptor;

.field private mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

.field private mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

.field mFumoHandler:Lcom/asus/dm/fumoHandler/DefaultFumoHandler;

.field private mHandler:Landroid/os/Handler;

.field private mIsDLResuming:Z

.field private mIsNeedEnablePost:Z

.field private mIsShowConfirmUpdate:Z

.field public mLogger:Lcom/asus/dm/util/DMLog;

.field private mMMIFactory:Lcom/asus/dm/mmi/DMMMIFactory;

.field private final mMmiCallBackBinder:Lcom/asus/dm/DMService$MmiCallBackService;

.field private mMmiObserver:Lcom/asus/dmlib/vdm/MmiObserver;

.field private final mPostLimit:I

.field private mPostQuota:I

.field private mRegMgr:Lcom/asus/dm/DMCRegistryManager;

.field private mResumeHandler:Landroid/os/Handler;

.field private mResumeLooper:Landroid/os/Looper;

.field private mRetryReceiver:Lcom/asus/dm/DMService$RetryBroadcastReceiver;

.field private final mSNBinder:Lcom/asus/dm/DMService$SNRegister;

.field private mStateCbList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dm/IDMServiceStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mTree:Lcom/asus/dmlib/vdm/VdmTree;

.field private mUIAlertParaDescriptor:Lcom/asus/dm/UIAlertParaDescriptor;

.field private mWakelock:Landroid/os/PowerManager$WakeLock;

.field private mbBatteryNotEnough:Z

.field private notifyMgr:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 75
    const/16 v0, 0xbb8

    sput v0, Lcom/asus/dm/DMService;->MAX_MSG_SIZE:I

    .line 104
    sput v1, Lcom/asus/dm/DMService;->mCurrentSessionType:I

    .line 105
    sput v1, Lcom/asus/dm/DMService;->mCurrentSessionState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/dm/DMService;->mIsNeedEnablePost:Z

    .line 77
    const/4 v0, 0x3

    iput v0, p0, Lcom/asus/dm/DMService;->mPostLimit:I

    .line 78
    iput v1, p0, Lcom/asus/dm/DMService;->mPostQuota:I

    .line 107
    new-instance v0, Lcom/asus/dm/DMService$DMSystemService;

    invoke-direct {v0, p0}, Lcom/asus/dm/DMService$DMSystemService;-><init>(Lcom/asus/dm/DMService;)V

    iput-object v0, p0, Lcom/asus/dm/DMService;->mBinder:Lcom/asus/dm/DMService$DMSystemService;

    .line 108
    new-instance v0, Lcom/asus/dm/DMService$SNRegister;

    invoke-direct {v0, p0}, Lcom/asus/dm/DMService$SNRegister;-><init>(Lcom/asus/dm/DMService;)V

    iput-object v0, p0, Lcom/asus/dm/DMService;->mSNBinder:Lcom/asus/dm/DMService$SNRegister;

    .line 109
    new-instance v0, Lcom/asus/dm/DMService$DmPersister;

    invoke-direct {v0, p0}, Lcom/asus/dm/DMService$DmPersister;-><init>(Lcom/asus/dm/DMService;)V

    iput-object v0, p0, Lcom/asus/dm/DMService;->mDmPersisterBinder:Lcom/asus/dm/DMService$DmPersister;

    .line 110
    new-instance v0, Lcom/asus/dm/DMService$MmiCallBackService;

    invoke-direct {v0, p0}, Lcom/asus/dm/DMService$MmiCallBackService;-><init>(Lcom/asus/dm/DMService;)V

    iput-object v0, p0, Lcom/asus/dm/DMService;->mMmiCallBackBinder:Lcom/asus/dm/DMService$MmiCallBackService;

    .line 117
    const v0, -0xd0b6

    iput v0, p0, Lcom/asus/dm/DMService;->mBatteryState:I

    .line 120
    iput-boolean v1, p0, Lcom/asus/dm/DMService;->mbBatteryNotEnough:Z

    .line 124
    iput-boolean v1, p0, Lcom/asus/dm/DMService;->mIsShowConfirmUpdate:Z

    .line 126
    const/16 v0, 0x920

    iput v0, p0, Lcom/asus/dm/DMService;->SAVE_DIALOG_INSTANCE:I

    .line 136
    new-instance v0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/asus/dm/DMService$RetryBroadcastReceiver;-><init>(Lcom/asus/dm/DMService;)V

    iput-object v0, p0, Lcom/asus/dm/DMService;->mRetryReceiver:Lcom/asus/dm/DMService$RetryBroadcastReceiver;

    .line 141
    iput-boolean v1, p0, Lcom/asus/dm/DMService;->mIsDLResuming:Z

    .line 142
    new-instance v0, Lcom/asus/dm/ConnectivityStateReceiver;

    invoke-direct {v0}, Lcom/asus/dm/ConnectivityStateReceiver;-><init>()V

    iput-object v0, p0, Lcom/asus/dm/DMService;->mConnectivityStateReceiver:Lcom/asus/dm/ConnectivityStateReceiver;

    .line 1007
    new-instance v0, Lcom/asus/dm/DMService$2;

    invoke-direct {v0, p0}, Lcom/asus/dm/DMService$2;-><init>(Lcom/asus/dm/DMService;)V

    iput-object v0, p0, Lcom/asus/dm/DMService;->mHandler:Landroid/os/Handler;

    .line 1733
    new-instance v0, Lcom/asus/dm/DMService$5;

    invoke-direct {v0, p0}, Lcom/asus/dm/DMService$5;-><init>(Lcom/asus/dm/DMService;)V

    iput-object v0, p0, Lcom/asus/dm/DMService;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 1800
    return-void
.end method

.method static synthetic access$000(Lcom/asus/dm/DMService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/asus/dm/DMService;->mIsDLResuming:Z

    return v0
.end method

.method static synthetic access$002(Lcom/asus/dm/DMService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/asus/dm/DMService;->mIsDLResuming:Z

    return p1
.end method

.method static synthetic access$100(Lcom/asus/dm/DMService;)Lcom/asus/dmlib/vdm/VdmEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/asus/dm/DMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/asus/dm/DMService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/asus/dm/DMService;->mStateCbList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/asus/dm/DMService;->mCurrentSessionType:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    sput p0, Lcom/asus/dm/DMService;->mCurrentSessionType:I

    return p0
.end method

.method static synthetic access$1200(Lcom/asus/dm/DMService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/asus/dm/DMService;->execStateCallback(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/asus/dm/DMService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/asus/dm/DMService;->destoryEngine()V

    return-void
.end method

.method static synthetic access$1400(Lcom/asus/dm/DMService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/asus/dm/DMService;->startEngine()V

    return-void
.end method

.method static synthetic access$1500(Lcom/asus/dm/DMService;)Lcom/asus/dmlib/vdm/VdmTree;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/asus/dm/DMService;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMService$DMSystemService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/asus/dm/DMService;->mBinder:Lcom/asus/dm/DMService$DMSystemService;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/asus/dm/DMService;)Lcom/asus/dmlib/vdm/MmiObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/asus/dm/DMService;->mMmiObserver:Lcom/asus/dmlib/vdm/MmiObserver;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/asus/dm/DMService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/asus/dm/DMService;->showNIDMDLCDialog()V

    return-void
.end method

.method static synthetic access$1900(Lcom/asus/dm/DMService;)Lcom/asus/dm/RBDownloadDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/asus/dm/DMService;->mDownDescriptor:Lcom/asus/dm/RBDownloadDescriptor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/asus/dm/DMService;)Lcom/asus/dmlib/vdm/fumo/VdmFumo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/asus/dm/DMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/asus/dm/DMService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/asus/dm/DMService;->mACPowerState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/asus/dm/DMService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/asus/dm/DMService;->mBatteryState:I

    return v0
.end method

.method static synthetic access$2102(Lcom/asus/dm/DMService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/asus/dm/DMService;->mBatteryState:I

    return p1
.end method

.method static synthetic access$2200(Lcom/asus/dm/DMService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/asus/dm/DMService;->mbBatteryNotEnough:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/asus/dm/DMService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/asus/dm/DMService;->mbBatteryNotEnough:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/asus/dm/DMService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/asus/dm/DMService;->isBatteryEnough()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/asus/dm/DMService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/asus/dm/DMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/asus/dm/DMService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/asus/dm/DMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$300(Lcom/asus/dm/DMService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/asus/dm/DMService;->mResumeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMCRegistryManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/asus/dm/DMService;->mCurrentSessionState:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    sput p0, Lcom/asus/dm/DMService;->mCurrentSessionState:I

    return p0
.end method

.method static synthetic access$700(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMService$RetryBroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/asus/dm/DMService;->mRetryReceiver:Lcom/asus/dm/DMService$RetryBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/asus/dm/DMService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/asus/dm/DMService;->preparDMSession()Z

    move-result v0

    return v0
.end method

.method private cancelAlarmService()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 952
    const-string v3, "cancel AlarmService....."

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 954
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/asus/dm/DMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 955
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/asus/dm/DMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/asus/dm/DMService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 956
    .local v2, postIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/asus/dm/DMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 957
    .local v1, pendIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 958
    return-void
.end method

.method private clearDMHandlerHelper()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v0}, Lcom/asus/dm/DMCRegistryManager;->getCurrentTree()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 568
    :pswitch_0
    const-string v0, "clear default register"

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    invoke-static {}, Lcom/asus/dm/util/DMHandlerHelper;->clearDMHandlerHelper()V

    .line 572
    :goto_0
    return-void

    .line 555
    :pswitch_1
    const-string v0, "clear tmo register"

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    invoke-static {}, Lcom/asus/dm/util/DMHandlerHelperTMO;->clearDMHandlerHelper()V

    goto :goto_0

    .line 560
    :pswitch_2
    const-string v0, "clear Asus register"

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    invoke-static {}, Lcom/asus/dm/util/DMHandlerHelperAsus;->clearDMHandlerHelper()V

    goto :goto_0

    .line 564
    :pswitch_3
    const-string v0, "clear telus register"

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    invoke-static {}, Lcom/asus/dm/util/DMHandlerHelperTelUs;->clearDMHandlerHelper()V

    goto :goto_0

    .line 551
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
    .line 887
    :try_start_0
    iget-object v1, p0, Lcom/asus/dm/DMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v1, p0}, Lcom/asus/dmlib/vdm/VdmEngine;->unregisterSessionStateObserver(Lcom/asus/dmlib/vdm/SessionStateObserver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/asus/dm/DMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmEngine;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 896
    :goto_1
    return-void

    .line 888
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 889
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "unregisterSessionStateObserver get Exception"

    invoke-static {p0, v1}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 893
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 894
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "destroy Engine get Exception"

    invoke-static {p0, v1}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private do_update(Ljava/lang/String;)Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    .locals 8
    .parameter "path"

    .prologue
    const/4 v7, 0x1

    .line 1577
    new-instance v4, Lcom/asus/dm/fota/GoogleUnpack;

    invoke-direct {v4, p0}, Lcom/asus/dm/fota/GoogleUnpack;-><init>(Landroid/content/Context;)V

    .line 1578
    .local v4, up:Lcom/asus/dm/fota/UnPack;
    sget-object v2, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->SUCCESSFUL:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1582
    .local v2, ret:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    const-string v6, "power"

    invoke-virtual {p0, v6}, Lcom/asus/dm/DMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1583
    .local v1, pm:Landroid/os/PowerManager;
    const-string v6, "DMService_update"

    invoke-virtual {v1, v7, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    .line 1585
    .local v5, wakelock:Landroid/os/PowerManager$WakeLock;
    if-eqz v5, :cond_0

    .line 1586
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1587
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1588
    const-string v6, "===== acquire wake_lock"

    invoke-static {p0, v6}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1593
    :cond_0
    :try_start_0
    invoke-virtual {v4, p1}, Lcom/asus/dm/fota/GoogleUnpack;->do_unpack(Ljava/lang/String;)Lcom/asus/dm/fota/UnPack$ResultCode;

    move-result-object v3

    .line 1595
    .local v3, unpackResult:Lcom/asus/dm/fota/UnPack$ResultCode;
    sget-object v6, Lcom/asus/dm/fota/UnPack$ResultCode;->SUCCESS:Lcom/asus/dm/fota/UnPack$ResultCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v6, :cond_4

    .line 1597
    :try_start_1
    iget-object v6, p0, Lcom/asus/dm/DMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    sget-object v7, Lcom/asus/dmlib/vdm/fumo/FumoState;->IDLE:Lcom/asus/dmlib/vdm/fumo/FumoState;

    invoke-virtual {v6, v7}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->setFumoState(Lcom/asus/dmlib/vdm/fumo/FumoState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1601
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Lcom/asus/dm/fota/GoogleUnpack;->bootToRecovery()V

    .line 1612
    :cond_1
    :goto_1
    sget-object v6, Lcom/asus/dm/DMService$6;->$SwitchMap$com$asus$dm$fota$UnPack$ResultCode:[I

    invoke-virtual {v3}, Lcom/asus/dm/fota/UnPack$ResultCode;->ordinal()I

    move-result v7

    aget v6, v6, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    packed-switch v6, :pswitch_data_0

    .line 1624
    :goto_2
    if-eqz v5, :cond_2

    .line 1625
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1628
    :cond_2
    const/4 v5, 0x0

    .line 1629
    const-string v6, "===== release wake_lock"

    invoke-static {p0, v6}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    .line 1598
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 1599
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    :try_start_3
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1624
    .end local v0           #e:Lcom/asus/dmlib/vdm/VdmException;
    .end local v3           #unpackResult:Lcom/asus/dm/fota/UnPack$ResultCode;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_3

    .line 1625
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1628
    :cond_3
    const/4 v5, 0x0

    .line 1629
    const-string v7, "===== release wake_lock"

    invoke-static {p0, v7}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    throw v6

    .line 1603
    .restart local v3       #unpackResult:Lcom/asus/dm/fota/UnPack$ResultCode;
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "unpack error;"

    invoke-static {v6, v7}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    invoke-static {}, Lcom/asus/dm/DMConfig;->isAllowShowMoreInfoOnError()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1606
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f060015

    invoke-virtual {p0, v7}, Lcom/asus/dm/DMService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", error msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/asus/dm/fota/UnPack$ResultCode;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1615
    :pswitch_0
    sget-object v2, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->FW_UP_CORRUPT:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1616
    goto :goto_2

    .line 1618
    :pswitch_1
    sget-object v2, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->SUCCESSFUL:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1612
    :pswitch_data_0
    .packed-switch 0x1
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
    .line 1308
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

    invoke-static {v2, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/asus/dm/DMService;->mStateCbList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1312
    iget-object v2, p0, Lcom/asus/dm/DMService;->mStateCbList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dm/IDMServiceStateCallback;

    invoke-interface {v2, p1, p2}, Lcom/asus/dm/IDMServiceStateCallback;->stateChange(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1311
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1314
    .end local v1           #i:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1315
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1317
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private execStateCallback(Ljava/lang/String;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 1321
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

    invoke-static {v2, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/asus/dm/DMService;->mStateCbList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1324
    iget-object v2, p0, Lcom/asus/dm/DMService;->mStateCbList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/dm/IDMServiceStateCallback;

    invoke-interface {v2, p1}, Lcom/asus/dm/IDMServiceStateCallback;->notifyStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1326
    .end local v1           #i:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1327
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1329
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private executeFwUpdate()V
    .locals 2

    .prologue
    .line 1206
    :try_start_0
    iget-object v1, p0, Lcom/asus/dm/DMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->executeFwUpdate()V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    :goto_0
    return-void

    .line 1207
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1208
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_0
.end method

.method private isBatteryEnough()Z
    .locals 3

    .prologue
    .line 1721
    const/4 v0, 0x0

    .line 1723
    .local v0, ret:Z
    iget v1, p0, Lcom/asus/dm/DMService;->mBatteryState:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    .line 1724
    const/4 v0, 0x1

    .line 1729
    :cond_0
    return v0
.end method

.method private notifyDefaultAccount()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1175
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmConfig;->getInstance()Lcom/asus/dmlib/vdm/VdmConfig;

    move-result-object v1

    .line 1176
    .local v1, cfg:Lcom/asus/dmlib/vdm/VdmConfig;
    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmConfig;->getDmAccConfiguration()Lcom/asus/dmlib/vdm/VdmConfig$DmAccConfiguration;

    move-result-object v8

    iget-object v3, v8, Lcom/asus/dmlib/vdm/VdmConfig$DmAccConfiguration;->dm12root:Ljava/lang/String;

    .line 1177
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

    invoke-static {p0, v8}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1179
    iget-object v8, p0, Lcom/asus/dm/DMService;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-static {v8, v3}, Lcom/asus/dm/util/DMUtils;->getAllChildURIs(Lcom/asus/dmlib/vdm/VdmTree;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1180
    .local v2, dmAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 1182
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

    .line 1183
    .local v5, nodeAddr:Ljava/lang/String;
    const-string v0, ""

    .line 1184
    .local v0, address:Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1186
    :try_start_0
    iget-object v8, p0, Lcom/asus/dm/DMService;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-interface {v8, v5}, Lcom/asus/dmlib/vdm/VdmTree;->getStringValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1190
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

    .line 1191
    .local v6, nodePort:Ljava/lang/String;
    const-string v7, ""

    .line 1192
    .local v7, port:Ljava/lang/String;
    invoke-static {p0, v6}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1194
    :try_start_1
    iget-object v8, p0, Lcom/asus/dm/DMService;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-interface {v8, v6}, Lcom/asus/dmlib/vdm/VdmTree;->getStringValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 1198
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

    invoke-direct {p0, v8}, Lcom/asus/dm/DMService;->execStateCallback(Ljava/lang/String;)V

    .line 1202
    .end local v0           #address:Ljava/lang/String;
    .end local v5           #nodeAddr:Ljava/lang/String;
    .end local v6           #nodePort:Ljava/lang/String;
    .end local v7           #port:Ljava/lang/String;
    :goto_2
    return-void

    .line 1187
    .restart local v0       #address:Ljava/lang/String;
    .restart local v5       #nodeAddr:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 1188
    .local v4, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_0

    .line 1195
    .end local v4           #e:Lcom/asus/dmlib/vdm/VdmException;
    .restart local v6       #nodePort:Ljava/lang/String;
    .restart local v7       #port:Ljava/lang/String;
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 1196
    .restart local v4       #e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_1

    .line 1200
    .end local v0           #address:Ljava/lang/String;
    .end local v4           #e:Lcom/asus/dmlib/vdm/VdmException;
    .end local v5           #nodeAddr:Ljava/lang/String;
    .end local v6           #nodePort:Ljava/lang/String;
    .end local v7           #port:Ljava/lang/String;
    :cond_0
    const-string v8, "multiple accounts"

    invoke-direct {p0, v8}, Lcom/asus/dm/DMService;->execStateCallback(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private notifyTreeType()V
    .locals 5

    .prologue
    .line 1162
    const-string v2, "./treename"

    .line 1163
    .local v2, nodeUri:Ljava/lang/String;
    const-string v1, ""

    .line 1164
    .local v1, name:Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1166
    :try_start_0
    iget-object v3, p0, Lcom/asus/dm/DMService;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-interface {v3, v2}, Lcom/asus/dmlib/vdm/VdmTree;->getStringValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1171
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

    invoke-direct {p0, v3}, Lcom/asus/dm/DMService;->execStateCallback(Ljava/lang/String;)V

    .line 1172
    return-void

    .line 1167
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1168
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

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logW(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private preparDMSession()Z
    .locals 5

    .prologue
    .line 508
    const/4 v2, 0x0

    .line 513
    .local v2, isSetUpdateStatuse:Z
    :try_start_0
    iget-object v3, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v3}, Lcom/asus/dm/DMCRegistryManager;->getFotaResult()I

    move-result v1

    .line 515
    .local v1, fotaResult:I
    if-lez v1, :cond_0

    .line 516
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fotaResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    invoke-static {}, Lcom/asus/dm/fota/UnPack;->deleteUpdates()V

    .line 518
    invoke-direct {p0, v1}, Lcom/asus/dm/DMService;->setUpdateStatus(I)Z

    move-result v2

    .line 522
    :cond_0
    iget-object v3, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v3}, Lcom/asus/dm/DMCRegistryManager;->getCurrentTree()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 539
    :pswitch_0
    const-string v3, "use default register"

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    iget-object v3, p0, Lcom/asus/dm/DMService;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMHandlerHelper;->registerHandlers(Landroid/content/Context;Lcom/asus/dmlib/vdm/VdmTree;)V

    .line 547
    .end local v1           #fotaResult:I
    :goto_0
    return v2

    .line 526
    .restart local v1       #fotaResult:I
    :pswitch_1
    const-string v3, "use tmo register"

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    iget-object v3, p0, Lcom/asus/dm/DMService;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMHandlerHelperTMO;->registerHandlers(Landroid/content/Context;Lcom/asus/dmlib/vdm/VdmTree;)V
    :try_end_0
    .catch Lcom/asus/dm/exception/DMInvalidException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 543
    .end local v1           #fotaResult:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 544
    .local v0, e:Lcom/asus/dm/exception/DMInvalidException;
    invoke-virtual {v0}, Lcom/asus/dm/exception/DMInvalidException;->printStackTrace()V

    goto :goto_0

    .line 531
    .end local v0           #e:Lcom/asus/dm/exception/DMInvalidException;
    .restart local v1       #fotaResult:I
    :pswitch_2
    :try_start_1
    const-string v3, "use Asus register"

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    iget-object v3, p0, Lcom/asus/dm/DMService;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMHandlerHelperAsus;->registerHandlers(Landroid/content/Context;Lcom/asus/dmlib/vdm/VdmTree;)V

    goto :goto_0

    .line 535
    :pswitch_3
    const-string v3, "use telus register"

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    iget-object v3, p0, Lcom/asus/dm/DMService;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMHandlerHelperTelUs;->registerHandlers(Landroid/content/Context;Lcom/asus/dmlib/vdm/VdmTree;)V
    :try_end_1
    .catch Lcom/asus/dm/exception/DMInvalidException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 522
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
    .line 499
    iget-object v0, p0, Lcom/asus/dm/DMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/asus/dm/DMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/dm/DMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 502
    const-string v0, "===== release wake_lock"

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    :cond_0
    return-void
.end method

.method private setAlarmService()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 937
    invoke-virtual {p0}, Lcom/asus/dm/DMService;->getPostponeTime()I

    move-result v5

    .line 939
    .local v5, postTime:I
    const-string v6, "alarm"

    invoke-virtual {p0, v6}, Lcom/asus/dm/DMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 940
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/asus/dm/DMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/asus/dm/DMService;

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 941
    .local v4, postIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/asus/dm/DMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v10, v4, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 942
    .local v3, pendIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 944
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAlarmService "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 946
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    int-to-long v8, v5

    add-long v1, v6, v8

    .line 947
    .local v1, nextPostTime:J
    iget-object v6, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v6, v1, v2}, Lcom/asus/dm/DMCRegistryManager;->setNextPostTime(J)V

    .line 948
    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 949
    return-void
.end method

.method private setUpdateStatus(I)Z
    .locals 6
    .parameter "result"

    .prologue
    .line 1640
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->SUCCESSFUL:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1641
    .local v1, rc:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    const/4 v2, 0x1

    .line 1643
    .local v2, ret:Z
    sparse-switch p1, :sswitch_data_0

    .line 1699
    const/4 v2, 0x0

    .line 1702
    :goto_0
    if-eqz v2, :cond_0

    .line 1704
    iget-object v3, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v3, p1}, Lcom/asus/dm/DMCRegistryManager;->setFotaResult(I)V

    .line 1707
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

    invoke-static {v3, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    iget-object v3, p0, Lcom/asus/dm/DMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-virtual {v3, v1}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->triggerReportSession(Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1714
    :cond_0
    :goto_1
    return v2

    .line 1645
    :sswitch_0
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->SUCCESSFUL:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1646
    goto :goto_0

    .line 1648
    :sswitch_1
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->CLIENT_ERROR:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1649
    goto :goto_0

    .line 1651
    :sswitch_2
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->DOWNLOAD_CANCELED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1652
    goto :goto_0

    .line 1654
    :sswitch_3
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->FW_UP_CORRUPT:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1655
    goto :goto_0

    .line 1657
    :sswitch_4
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->PACKAGE_MISMATCH:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1658
    goto :goto_0

    .line 1660
    :sswitch_5
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->SIGNATURE_FAILED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1661
    goto :goto_0

    .line 1663
    :sswitch_6
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->NOT_ACCEPTABLE:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1664
    goto :goto_0

    .line 1666
    :sswitch_7
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->AUTH_FAILED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1667
    goto :goto_0

    .line 1669
    :sswitch_8
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->REQUEST_TIMEOUT:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1670
    goto :goto_0

    .line 1672
    :sswitch_9
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->NOT_IMPLEMENTED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1673
    goto :goto_0

    .line 1675
    :sswitch_a
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->UNDEFINED_ERROR:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1676
    goto :goto_0

    .line 1678
    :sswitch_b
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->UPDATE_FAILED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1679
    goto :goto_0

    .line 1681
    :sswitch_c
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->BAD_URL:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1682
    goto :goto_0

    .line 1684
    :sswitch_d
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->DL_SERVER_UNAVAILABLE:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1685
    goto :goto_0

    .line 1687
    :sswitch_e
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->DL_SERVER_ERROR:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1688
    goto :goto_0

    .line 1690
    :sswitch_f
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->OUT_OF_MEMORY_FOR_DOWNLOAD:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1691
    goto :goto_0

    .line 1693
    :sswitch_10
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->OUT_OF_MEMORY_FOR_UPDATE:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1694
    goto :goto_0

    .line 1696
    :sswitch_11
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->NETWORK:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 1697
    goto :goto_0

    .line 1709
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1710
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

    invoke-static {v3, v4}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    const/4 v2, 0x0

    goto :goto_1

    .line 1643
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
    .line 1779
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/asus/dm/DMService;->showClientAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    return-void
.end method

.method private showClientAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "message"
    .parameter "title"
    .parameter "positiveText"

    .prologue
    .line 1784
    new-instance v1, Lcom/asus/dm/UIAlertParaDescriptor;

    invoke-direct {v1}, Lcom/asus/dm/UIAlertParaDescriptor;-><init>()V

    .line 1785
    .local v1, paraDescriptor:Lcom/asus/dm/UIAlertParaDescriptor;
    iput-object p1, v1, Lcom/asus/dm/UIAlertParaDescriptor;->mDialogContent:Ljava/lang/String;

    .line 1786
    iput-object p2, v1, Lcom/asus/dm/UIAlertParaDescriptor;->mTitle:Ljava/lang/String;

    .line 1788
    iput-object p3, v1, Lcom/asus/dm/UIAlertParaDescriptor;->mPositiveButtonText:Ljava/lang/String;

    .line 1790
    invoke-virtual {p0, v1}, Lcom/asus/dm/DMService;->setUIAlertParaDescriptor(Lcom/asus/dm/UIAlertParaDescriptor;)V

    .line 1792
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1793
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1794
    sget-object v2, Lcom/asus/dm/DMService$DialogId;->UI_ALERT_DISPLAY:Lcom/asus/dm/DMService$DialogId;

    invoke-virtual {v2}, Lcom/asus/dm/DMService$DialogId;->ordinal()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1795
    const/16 v2, 0x920

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 1796
    invoke-virtual {p0, v0}, Lcom/asus/dm/DMService;->sendMessage(Landroid/os/Message;)V

    .line 1797
    return-void
.end method

.method private showNIDMDLCDialog()V
    .locals 5

    .prologue
    .line 1534
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1535
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f060018

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1536
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060022

    new-instance v4, Lcom/asus/dm/DMService$3;

    invoke-direct {v4, p0}, Lcom/asus/dm/DMService$3;-><init>(Lcom/asus/dm/DMService;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1552
    const v2, 0x7f060023

    new-instance v3, Lcom/asus/dm/DMService$4;

    invoke-direct {v3, p0}, Lcom/asus/dm/DMService$4;-><init>(Lcom/asus/dm/DMService;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1564
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1565
    .local v1, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1566
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1567
    return-void
.end method

.method private startEngine()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 811
    invoke-static {p0}, Lcom/asus/dm/DMDownloadProgress;->getDMDownloadProgress(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMDownloadProgress;

    move-result-object v3

    iput-object v3, p0, Lcom/asus/dm/DMService;->mDLProgress:Lcom/asus/dm/DMDownloadProgress;

    .line 813
    new-instance v3, Lcom/asus/dm/mmi/DMMMIFactory;

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v4, p0}, Lcom/asus/dm/mmi/DMMMIFactory;-><init>(Landroid/widget/TextView;Lcom/asus/dm/DMService;)V

    iput-object v3, p0, Lcom/asus/dm/DMService;->mMMIFactory:Lcom/asus/dm/mmi/DMMMIFactory;

    .line 815
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/asus/dm/DMService;->mStateCbList:Ljava/util/ArrayList;

    .line 817
    :try_start_0
    new-instance v3, Lcom/asus/dmlib/vdm/VdmEngine;

    iget-object v4, p0, Lcom/asus/dm/DMService;->mMMIFactory:Lcom/asus/dm/mmi/DMMMIFactory;

    new-instance v5, Lcom/asus/dm/DMPLFactory;

    invoke-direct {v5, p0}, Lcom/asus/dm/DMPLFactory;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, p0, v4, v5}, Lcom/asus/dmlib/vdm/VdmEngine;-><init>(Landroid/content/Context;Lcom/asus/dmlib/vdm/MmiFactory;Lcom/asus/dmlib/vdm/PLFactory;)V

    iput-object v3, p0, Lcom/asus/dm/DMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    .line 818
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmConfig;->getInstance()Lcom/asus/dmlib/vdm/VdmConfig;

    move-result-object v0

    .line 820
    .local v0, cfg:Lcom/asus/dmlib/vdm/VdmConfig;
    sget-object v3, Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;->DISABLED:Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

    invoke-virtual {v0, v3}, Lcom/asus/dmlib/vdm/VdmConfig;->setNotificationVerificationMode(Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;)V

    .line 821
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmConfig;->getMaxMsgSize()I

    move-result v3

    sget v4, Lcom/asus/dm/DMService;->MAX_MSG_SIZE:I

    if-eq v3, v4, :cond_0

    .line 822
    sget v3, Lcom/asus/dm/DMService;->MAX_MSG_SIZE:I

    invoke-virtual {v0, v3}, Lcom/asus/dmlib/vdm/VdmConfig;->setMaxMsgSize(I)V

    .line 826
    :cond_0
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmConfig;->getEncodeWBXMLMsg()Z

    move-result v3

    if-eq v3, v6, :cond_1

    .line 827
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/asus/dmlib/vdm/VdmConfig;->setEncodeWBXMLMsg(Z)V

    .line 830
    :cond_1
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmConfig;->getAllowChallengeWithPkg1()Z

    move-result v3

    if-eq v3, v6, :cond_2

    .line 831
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/asus/dmlib/vdm/VdmConfig;->setAllowChallengeWithPkg1(Z)V

    .line 834
    :cond_2
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmConfig;->getIsServerNoncePerMessage()Z

    move-result v3

    if-eq v3, v6, :cond_3

    .line 835
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/asus/dmlib/vdm/VdmConfig;->setIsServerNoncePerMessage(Z)V

    .line 838
    :cond_3
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmConfig;->getIsClientNoncePerMessage()Z

    move-result v3

    if-eq v3, v6, :cond_4

    .line 839
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/asus/dmlib/vdm/VdmConfig;->setIsClientNoncePerMessage(Z)V

    .line 843
    :cond_4
    iget-object v3, p0, Lcom/asus/dm/DMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    sget-object v4, Lcom/asus/dmlib/vdm/VdmLogLevel;->ERROR:Lcom/asus/dmlib/vdm/VdmLogLevel;

    invoke-virtual {v3, v4}, Lcom/asus/dmlib/vdm/VdmEngine;->setDefaultLogLevel(Lcom/asus/dmlib/vdm/VdmLogLevel;)V

    .line 845
    iget-object v3, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v3}, Lcom/asus/dm/DMCRegistryManager;->isDMDebugable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 846
    iget-object v3, p0, Lcom/asus/dm/DMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    sget-object v4, Lcom/asus/dmlib/vdm/VdmLogLevel;->DEBUG:Lcom/asus/dmlib/vdm/VdmLogLevel;

    invoke-virtual {v3, v4}, Lcom/asus/dmlib/vdm/VdmEngine;->setDefaultLogLevel(Lcom/asus/dmlib/vdm/VdmLogLevel;)V

    .line 853
    :cond_5
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    if-lez v3, :cond_6

    .line 854
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

    .line 855
    .local v2, proxy:Ljava/lang/String;
    const-string v3, "DMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proxy= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    invoke-virtual {v0, v2}, Lcom/asus/dmlib/vdm/VdmConfig;->setDmProxy(Ljava/lang/String;)V

    .line 858
    invoke-virtual {v0, v2}, Lcom/asus/dmlib/vdm/VdmConfig;->setDlProxy(Ljava/lang/String;)V

    .line 859
    const-string v3, "DMService"

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

    invoke-static {v3, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v3, "DMService"

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

    invoke-static {v3, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    .end local v2           #proxy:Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/asus/dm/DMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v3}, Lcom/asus/dmlib/vdm/VdmEngine;->start()V

    .line 865
    iget-object v3, p0, Lcom/asus/dm/DMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v3, p0}, Lcom/asus/dmlib/vdm/VdmEngine;->registerSessionStateObserver(Lcom/asus/dmlib/vdm/SessionStateObserver;)Z

    .line 866
    invoke-static {}, Lcom/asus/dmlib/tree/DMTree;->getDMTree()Lcom/asus/dmlib/tree/DMTree;

    move-result-object v3

    iput-object v3, p0, Lcom/asus/dm/DMService;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    .line 868
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMConfig.getFumoHandlerName()= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/asus/dm/DMConfig;->getFumoHandlerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 869
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMConfig.getFumoRootUri()= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/asus/dm/DMConfig;->getFumoRootUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 870
    invoke-static {p0}, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->getFumoHandler(Landroid/content/Context;)Lcom/asus/dm/fumoHandler/DefaultFumoHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/asus/dm/DMService;->mFumoHandler:Lcom/asus/dm/fumoHandler/DefaultFumoHandler;

    .line 871
    new-instance v3, Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-static {}, Lcom/asus/dm/DMConfig;->getFumoRootUri()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/dm/DMService;->mFumoHandler:Lcom/asus/dm/fumoHandler/DefaultFumoHandler;

    invoke-direct {v3, v4, v5}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;-><init>(Ljava/lang/String;Lcom/asus/dmlib/vdm/fumo/FumoHandler;)V

    iput-object v3, p0, Lcom/asus/dm/DMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    .line 873
    const-string v3, "============== finish onCreate ============="

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    .end local v0           #cfg:Lcom/asus/dmlib/vdm/VdmConfig;
    :goto_0
    return-void

    .line 874
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 875
    .local v1, ex:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmException;->getError()[C

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    .line 877
    const-string v3, "============== catched exception start ============="

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 878
    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    .line 879
    const-string v3, "=============== catched exception end =============="

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 880
    invoke-virtual {p0}, Lcom/asus/dm/DMService;->stopSelf()V

    goto :goto_0
.end method


# virtual methods
.method public cancelProgressNotification()V
    .locals 1

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/asus/dm/DMService;->mDLProgress:Lcom/asus/dm/DMDownloadProgress;

    invoke-virtual {v0}, Lcom/asus/dm/DMDownloadProgress;->cancelProgressNotification()V

    .line 1959
    return-void
.end method

.method public cleanDLNotification()V
    .locals 0

    .prologue
    .line 1967
    invoke-static {p0}, Lcom/asus/dm/DMDLNotification;->clearNotification(Landroid/content/Context;)V

    .line 1968
    return-void
.end method

.method public doCancelDMSession(Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;)V
    .locals 3
    .parameter "resultCode"

    .prologue
    .line 1422
    :try_start_0
    iget-object v1, p0, Lcom/asus/dm/DMService;->mFumoHandler:Lcom/asus/dm/fumoHandler/DefaultFumoHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->setDLResume(Z)V

    .line 1423
    iget-object v1, p0, Lcom/asus/dm/DMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmEngine;->cancelSession()V

    .line 1425
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->DOWNLOAD_CANCELED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    if-ne p1, v1, :cond_1

    .line 1426
    iget-object v1, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    const/16 v2, 0x191

    invoke-virtual {v1, v2}, Lcom/asus/dm/DMCRegistryManager;->setFotaResult(I)V

    .line 1432
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/asus/dm/DMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-virtual {v1, p1}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->triggerReportSession(Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;)V

    .line 1438
    :goto_1
    return-void

    .line 1427
    :cond_1
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->OUT_OF_MEMORY_FOR_DOWNLOAD:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    if-ne p1, v1, :cond_0

    .line 1428
    iget-object v1, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    const/16 v2, 0x1f5

    invoke-virtual {v1, v2}, Lcom/asus/dm/DMCRegistryManager;->setFotaResult(I)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1434
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1435
    .local v0, ex:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->getError()[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public doDownload()V
    .locals 2

    .prologue
    .line 1380
    :try_start_0
    const-string v1, "================ vDMEngine.notifyDLSessionProceed() ================"

    invoke-static {p0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1381
    iget-object v1, p0, Lcom/asus/dm/DMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmEngine;->isIdle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1382
    iget-object v1, p0, Lcom/asus/dm/DMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->notifyDLSessionProceed()V

    .line 1388
    :goto_0
    return-void

    .line 1384
    :cond_0
    iget-object v1, p0, Lcom/asus/dm/DMService;->mBinder:Lcom/asus/dm/DMService$DMSystemService;

    invoke-virtual {v1}, Lcom/asus/dm/DMService$DMSystemService;->doDMSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1385
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1386
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public doInstall()V
    .locals 1

    .prologue
    .line 899
    const-string v0, "doInstall()->clear notify"

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 900
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/dm/DMService;->mIsShowConfirmUpdate:Z

    .line 901
    invoke-direct {p0}, Lcom/asus/dm/DMService;->executeFwUpdate()V

    .line 902
    return-void
.end method

.method public doPostpone()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1391
    const-string v0, "doPostpone()->clear notify"

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1392
    iget-object v0, p0, Lcom/asus/dm/DMService;->mDLProgress:Lcom/asus/dm/DMDownloadProgress;

    invoke-virtual {v0}, Lcom/asus/dm/DMDownloadProgress;->cancelProgressNotification()V

    .line 1393
    invoke-direct {p0}, Lcom/asus/dm/DMService;->setAlarmService()V

    .line 1394
    iput-boolean v1, p0, Lcom/asus/dm/DMService;->mIsShowConfirmUpdate:Z

    .line 1395
    iget-object v0, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v0}, Lcom/asus/dm/DMCRegistryManager;->updatePostponeNumber()V

    .line 1396
    invoke-static {p0, v1}, Lcom/asus/dm/DMNotification;->createNotification(Landroid/content/Context;Z)V

    .line 1397
    invoke-direct {p0}, Lcom/asus/dm/DMService;->releaseWakelock()V

    .line 1398
    return-void
.end method

.method public getDLDescriptor()Lcom/asus/dm/RBDownloadDescriptor;
    .locals 1

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/asus/dm/DMService;->mDownDescriptor:Lcom/asus/dm/RBDownloadDescriptor;

    return-object v0
.end method

.method public getEstimatedInstallTime()I
    .locals 1

    .prologue
    .line 1944
    iget-object v0, p0, Lcom/asus/dm/DMService;->mFumoHandler:Lcom/asus/dm/fumoHandler/DefaultFumoHandler;

    invoke-virtual {v0}, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->getEstimatedInstallTime()I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1571
    const-string v0, "DM_SERVICE"

    return-object v0
.end method

.method public getIsNeedEnablePost()Z
    .locals 1

    .prologue
    .line 1492
    iget-boolean v0, p0, Lcom/asus/dm/DMService;->mIsNeedEnablePost:Z

    return v0
.end method

.method public getMmiObserver()Lcom/asus/dmlib/vdm/MmiObserver;
    .locals 1

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/asus/dm/DMService;->mMmiObserver:Lcom/asus/dmlib/vdm/MmiObserver;

    return-object v0
.end method

.method public getPostQuota()I
    .locals 1

    .prologue
    .line 1500
    iget v0, p0, Lcom/asus/dm/DMService;->mPostQuota:I

    return v0
.end method

.method public getPostponeTime()I
    .locals 1

    .prologue
    .line 1953
    const-string v0, "getPostponeTime: "

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1954
    iget-object v0, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v0}, Lcom/asus/dm/DMCRegistryManager;->getPostponeTime()I

    move-result v0

    return v0
.end method

.method public getUIAlertParaDescriptor()Lcom/asus/dm/UIAlertParaDescriptor;
    .locals 1

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/asus/dm/DMService;->mUIAlertParaDescriptor:Lcom/asus/dm/UIAlertParaDescriptor;

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

    .line 1338
    const/4 v4, 0x0

    .line 1340
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

    invoke-static {v5, v6}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    sget-object v5, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;->INFORMATIVE:Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

    if-ne p1, v5, :cond_1

    .line 1342
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/asus/dm/DMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/asus/dm/DMService;->notifyMgr:Landroid/app/NotificationManager;

    .line 1343
    new-instance v5, Landroid/app/Notification;

    const v6, 0x7f020001

    const-string v7, "New DM Session"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v5, p0, Lcom/asus/dm/DMService;->dmSSNotify:Landroid/app/Notification;

    .line 1345
    invoke-virtual {p0}, Lcom/asus/dm/DMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v10, v6, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1347
    .local v1, contentIntent:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/asus/dm/DMService;->dmSSNotify:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 1348
    iget-object v5, p0, Lcom/asus/dm/DMService;->dmSSNotify:Landroid/app/Notification;

    const/4 v6, -0x1

    iput v6, v5, Landroid/app/Notification;->defaults:I

    .line 1349
    iget-object v5, p0, Lcom/asus/dm/DMService;->dmSSNotify:Landroid/app/Notification;

    const-string v6, "New DM Session"

    const-string v7, "Device Management Session Start!"

    invoke-virtual {v5, p0, v6, v7, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1350
    iget-object v5, p0, Lcom/asus/dm/DMService;->notifyMgr:Landroid/app/NotificationManager;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/asus/dm/DMService;->dmSSNotify:Landroid/app/Notification;

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1351
    const/4 v4, 0x1

    .line 1363
    .end local v1           #contentIntent:Landroid/app/PendingIntent;
    :goto_0
    if-eqz v4, :cond_0

    .line 1365
    :try_start_0
    iget-object v5, p0, Lcom/asus/dm/DMService;->mDownDescriptor:Lcom/asus/dm/RBDownloadDescriptor;

    if-nez v5, :cond_3

    const-string v5, "mDD is null"

    :goto_1
    invoke-static {p0, v5}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1366
    iget-object v5, p0, Lcom/asus/dm/DMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v5}, Lcom/asus/dmlib/vdm/VdmEngine;->getCurrentAccount()Ljava/lang/String;

    move-result-object v0

    .line 1367
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

    invoke-static {p0, v5}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1368
    iget-object v5, p0, Lcom/asus/dm/DMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v5}, Lcom/asus/dmlib/vdm/VdmEngine;->notifyNIASessionProceed()V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1374
    .end local v0           #account:Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 1352
    :cond_1
    sget-object v5, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;->UI:Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

    if-ne p1, v5, :cond_2

    .line 1353
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1354
    .local v3, msg:Landroid/os/Message;
    const/4 v5, 0x6

    iput v5, v3, Landroid/os/Message;->what:I

    .line 1355
    iput v10, v3, Landroid/os/Message;->arg1:I

    .line 1356
    iput v10, v3, Landroid/os/Message;->arg2:I

    .line 1357
    invoke-virtual {p0, v3}, Lcom/asus/dm/DMService;->sendMessage(Landroid/os/Message;)V

    .line 1358
    const/4 v4, 0x0

    .line 1359
    goto :goto_0

    .line 1360
    .end local v3           #msg:Landroid/os/Message;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 1365
    :cond_3
    :try_start_1
    const-string v5, "mDD is not null"
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1369
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 1370
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

    .line 1050
    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->ordinal()I

    move-result v4

    sput v4, Lcom/asus/dm/DMService;->mCurrentSessionType:I

    .line 1051
    invoke-virtual {p2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ordinal()I

    move-result v4

    sput v4, Lcom/asus/dm/DMService;->mCurrentSessionState:I

    .line 1052
    const-string v4, "DMService"

    const-string v5, "********** notify_start **********"

    invoke-static {v4, v5}, Lcom/asus/dm/util/DMLog;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    const-string v4, "DMService"

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

    invoke-static {v4, v5}, Lcom/asus/dm/util/DMLog;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const-string v4, "DMService"

    const-string v5, "********** notify_end **********"

    invoke-static {v4, v5}, Lcom/asus/dm/util/DMLog;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    if-eqz p4, :cond_3

    instance-of v4, p4, Lcom/asus/dm/c2dm/RegC2dmIdInitiator;

    if-eqz v4, :cond_3

    .line 1060
    check-cast p4, Lcom/asus/dm/c2dm/RegC2dmIdInitiator;

    .end local p4
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/asus/dm/c2dm/RegC2dmIdInitiator;->notify(Lcom/asus/dm/DMService;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V

    .line 1061
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

    .line 1062
    .local v2, info:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/asus/dm/DMService;->execStateCallback(Ljava/lang/String;)V

    .line 1159
    .end local v2           #info:Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 1053
    .restart local p4
    :cond_1
    invoke-virtual {p3}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->name()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    invoke-interface {p4}, Lcom/asus/dmlib/vdm/SessionInitiator;->getId()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1067
    :cond_3
    sget v4, Lcom/asus/dm/DMService;->mCurrentSessionType:I

    sget v5, Lcom/asus/dm/DMService;->mCurrentSessionState:I

    invoke-direct {p0, v4, v5}, Lcom/asus/dm/DMService;->execStateCallback(II)V

    .line 1069
    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DM:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1070
    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1071
    iget-object v4, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v4, v8}, Lcom/asus/dm/DMCRegistryManager;->setStartDMDLSession(Z)V

    .line 1072
    iget-object v4, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v4, v7}, Lcom/asus/dm/DMCRegistryManager;->setLastFotaPollingSuccess(Z)V

    .line 1073
    invoke-virtual {p0}, Lcom/asus/dm/DMService;->waitAndStopService()V

    .line 1074
    invoke-direct {p0}, Lcom/asus/dm/DMService;->notifyTreeType()V

    .line 1075
    iget-object v4, p0, Lcom/asus/dm/DMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/VdmEngine;->getCurrentAccount()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1076
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/dm/DMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v5}, Lcom/asus/dmlib/vdm/VdmEngine;->getCurrentAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1155
    :cond_4
    :goto_3
    if-eqz p3, :cond_0

    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_CODE_OK:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    if-eq p3, v4, :cond_0

    .line 1156
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

    invoke-direct {p0, v4}, Lcom/asus/dm/DMService;->execStateCallback(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1078
    :cond_5
    invoke-direct {p0}, Lcom/asus/dm/DMService;->notifyDefaultAccount()V

    goto :goto_3

    .line 1080
    :cond_6
    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->COMPLETE:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1081
    iget-object v4, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v4}, Lcom/asus/dm/DMCRegistryManager;->getFirstBoot()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1082
    iget-object v4, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v4}, Lcom/asus/dm/DMCRegistryManager;->setFirstBoot()V

    .line 1084
    :cond_7
    iget-object v4, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v4, v7}, Lcom/asus/dm/DMCRegistryManager;->setStartDMDLSession(Z)V

    .line 1085
    iget-object v4, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v4, v8}, Lcom/asus/dm/DMCRegistryManager;->setLastFotaPollingSuccess(Z)V

    .line 1089
    iget-object v4, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v4, v7}, Lcom/asus/dm/DMCRegistryManager;->setRetryCount(I)V

    .line 1092
    iget-object v4, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v4}, Lcom/asus/dm/DMCRegistryManager;->clearFotaResult()V

    .line 1093
    iget-object v4, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v4, v7}, Lcom/asus/dm/DMCRegistryManager;->setDMErrorHasShown(Z)V

    goto :goto_3

    .line 1095
    :cond_8
    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1096
    iget-object v4, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v4}, Lcom/asus/dm/DMCRegistryManager;->getDLResume()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1097
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Session Aborted, set retry count."

    invoke-static {v4, v5}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    iget-object v4, p0, Lcom/asus/dm/DMService;->mRetryReceiver:Lcom/asus/dm/DMService$RetryBroadcastReceiver;

    invoke-static {v4}, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->access$400(Lcom/asus/dm/DMService$RetryBroadcastReceiver;)V

    .line 1103
    :goto_4
    iget-object v4, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v4, v7}, Lcom/asus/dm/DMCRegistryManager;->setStartDMDLSession(Z)V

    .line 1104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DM.ABORTED: mEngine.isIdle(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/dm/DMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v5}, Lcom/asus/dmlib/vdm/VdmEngine;->isIdle()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1101
    :cond_9
    iput-boolean v7, p0, Lcom/asus/dm/DMService;->mIsDLResuming:Z

    goto :goto_4

    .line 1106
    :cond_a
    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1107
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

    iget-object v5, p0, Lcom/asus/dm/DMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v5}, Lcom/asus/dmlib/vdm/VdmEngine;->isIdle()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1109
    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1111
    iget-object v4, p0, Lcom/asus/dm/DMService;->mFumoHandler:Lcom/asus/dm/fumoHandler/DefaultFumoHandler;

    invoke-virtual {v4, v8}, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->setDLResume(Z)V

    .line 1112
    iget-object v4, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v4, v8}, Lcom/asus/dm/DMCRegistryManager;->setStartDMDLSession(Z)V

    .line 1113
    const-string v4, "Notify DL STARTED"

    invoke-static {p0, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1114
    :cond_b
    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->COMPLETE:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1115
    iget-object v4, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v4, v7}, Lcom/asus/dm/DMCRegistryManager;->setStartDMDLSession(Z)V

    .line 1116
    iput-boolean v7, p0, Lcom/asus/dm/DMService;->mIsDLResuming:Z

    .line 1120
    iget-object v4, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v4, v7}, Lcom/asus/dm/DMCRegistryManager;->setRetryCount(I)V

    .line 1122
    const-string v4, "Notify DL COMPLETE"

    invoke-static {p0, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1123
    :cond_c
    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1124
    iget-object v4, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v4, v7}, Lcom/asus/dm/DMCRegistryManager;->setStartDMDLSession(Z)V

    .line 1127
    iput-boolean v7, p0, Lcom/asus/dm/DMService;->mIsDLResuming:Z

    .line 1128
    const-string v4, "Notify DL ABORTED"

    invoke-static {p0, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1130
    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_MAX_DL_TIMES_EXPIRE:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    if-ne p3, v4, :cond_d

    .line 1131
    const v4, 0x7f060011

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 1132
    invoke-virtual {p0}, Lcom/asus/dm/DMService;->cancelProgressNotification()V

    goto/16 :goto_3

    .line 1136
    :cond_d
    iget-object v4, p0, Lcom/asus/dm/DMService;->mFumoHandler:Lcom/asus/dm/fumoHandler/DefaultFumoHandler;

    invoke-virtual {v4}, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->getDLResume()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1138
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/asus/dm/DMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1139
    .local v0, cmgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1140
    .local v3, ninfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_4

    .line 1141
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v4, v5}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1142
    const-string v4, "DMService"

    const-string v5, "===== DL Abort setRetryAlarm() ====="

    invoke-static {v4, v5}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    :try_start_0
    iget-object v4, p0, Lcom/asus/dm/DMService;->mBinder:Lcom/asus/dm/DMService$DMSystemService;

    invoke-virtual {v4}, Lcom/asus/dm/DMService$DMSystemService;->doDMSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 1145
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1146
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
    .line 907
    invoke-static {}, Lcom/asus/dm/DMService$UIAlertResult;->values()[Lcom/asus/dm/DMService$UIAlertResult;

    move-result-object v1

    aget-object v0, v1, p1

    .line 908
    .local v0, eventType:Lcom/asus/dm/DMService$UIAlertResult;
    iget-object v1, p0, Lcom/asus/dm/DMService;->mMmiObserver:Lcom/asus/dmlib/vdm/MmiObserver;

    if-nez v1, :cond_0

    .line 909
    const-string v1, "DMService.this.mMmiObserver == null return"

    invoke-static {p0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 934
    :goto_0
    return-void

    .line 912
    :cond_0
    sget-object v1, Lcom/asus/dm/DMService$6;->$SwitchMap$com$asus$dm$DMService$UIAlertResult:[I

    invoke-virtual {v0}, Lcom/asus/dm/DMService$UIAlertResult;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 914
    :pswitch_0
    iget-object v1, p0, Lcom/asus/dm/DMService;->mMmiObserver:Lcom/asus/dmlib/vdm/MmiObserver;

    invoke-interface {v1, p2}, Lcom/asus/dmlib/vdm/MmiObserver;->notfiyChoicelistSelection(I)V

    goto :goto_0

    .line 917
    :pswitch_1
    iget-object v1, p0, Lcom/asus/dm/DMService;->mMmiObserver:Lcom/asus/dmlib/vdm/MmiObserver;

    invoke-interface {v1}, Lcom/asus/dmlib/vdm/MmiObserver;->notifyCancelEvent()V

    goto :goto_0

    .line 920
    :pswitch_2
    iget-object v1, p0, Lcom/asus/dm/DMService;->mMmiObserver:Lcom/asus/dmlib/vdm/MmiObserver;

    invoke-interface {v1, p3}, Lcom/asus/dmlib/vdm/MmiObserver;->notifyConfirmationResult(Z)V

    goto :goto_0

    .line 923
    :pswitch_3
    iget-object v1, p0, Lcom/asus/dm/DMService;->mMmiObserver:Lcom/asus/dmlib/vdm/MmiObserver;

    invoke-interface {v1}, Lcom/asus/dmlib/vdm/MmiObserver;->notifyInfoMsgClosed()V

    goto :goto_0

    .line 926
    :pswitch_4
    iget-object v1, p0, Lcom/asus/dm/DMService;->mMmiObserver:Lcom/asus/dmlib/vdm/MmiObserver;

    invoke-interface {v1, p4}, Lcom/asus/dmlib/vdm/MmiObserver;->notifyInputResult(Ljava/lang/String;)V

    goto :goto_0

    .line 929
    :pswitch_5
    iget-object v1, p0, Lcom/asus/dm/DMService;->mMmiObserver:Lcom/asus/dmlib/vdm/MmiObserver;

    invoke-interface {v1}, Lcom/asus/dmlib/vdm/MmiObserver;->notifyTimeoutEvent()V

    goto :goto_0

    .line 912
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

    .line 481
    iget-object v0, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v0}, Lcom/asus/dm/DMCRegistryManager;->getCurrentTree()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 482
    const-string v0, "no tree file return @ onBind()"

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/asus/dm/DMService;->stopSelf()V

    move-object v0, v2

    .line 494
    :goto_0
    return-object v0

    .line 486
    :cond_0
    const-class v0, Lcom/asus/dm/IDMService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/asus/dm/DMService;->mBinder:Lcom/asus/dm/DMService$DMSystemService;

    goto :goto_0

    .line 488
    :cond_1
    const-class v0, Lcom/asus/dm/IStatusNotifyRegister;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/asus/dm/DMService;->mSNBinder:Lcom/asus/dm/DMService$SNRegister;

    goto :goto_0

    .line 490
    :cond_2
    const-class v0, Lcom/asus/provisioning/IDmPersister;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 491
    const-string v0, "return me"

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/asus/dm/DMService;->mDmPersisterBinder:Lcom/asus/dm/DMService$DmPersister;

    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 494
    goto :goto_0
.end method

.method public onCreate()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 162
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=================== "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " onCreate() ==================="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-static {p0}, Lcom/asus/dm/DMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v6

    iput-object v6, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    .line 166
    const-string v6, "check current tree"

    invoke-static {p0, v6}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v6, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v6}, Lcom/asus/dm/DMCRegistryManager;->getCurrentTree()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 168
    invoke-static {p0}, Lcom/asus/dm/util/UniqueId;->getInstances(Landroid/content/Context;)Lcom/asus/dm/util/UniqueId;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/dm/util/UniqueId;->getId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 169
    const-string v6, "id is null return @ onCreate()"

    invoke-static {p0, v6}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/asus/dm/DMService;->stopSelf()V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const-string v6, "create tree"

    invoke-static {p0, v6}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-static {p0}, Lcom/asus/dm/util/DMUtils;->createDMTreeFile(Landroid/content/Context;)V

    .line 183
    :cond_2
    iget-object v6, p0, Lcom/asus/dm/DMService;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Lcom/asus/dm/DMService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    iget-object v6, p0, Lcom/asus/dm/DMService;->mRetryReceiver:Lcom/asus/dm/DMService$RetryBroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.asus.dm.DMService.RetryBroadcastReceiver.retry"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Lcom/asus/dm/DMService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    iget-object v6, p0, Lcom/asus/dm/DMService;->mConnectivityStateReceiver:Lcom/asus/dm/ConnectivityStateReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Lcom/asus/dm/DMService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    invoke-direct {p0}, Lcom/asus/dm/DMService;->startEngine()V

    .line 188
    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "vDMResumeHandler"

    const/16 v7, 0xa

    invoke-direct {v5, v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 189
    .local v5, thread:Landroid/os/HandlerThread;
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 191
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iput-object v6, p0, Lcom/asus/dm/DMService;->mResumeLooper:Landroid/os/Looper;

    .line 192
    new-instance v6, Lcom/asus/dm/DMService$1;

    iget-object v7, p0, Lcom/asus/dm/DMService;->mResumeLooper:Landroid/os/Looper;

    invoke-direct {v6, p0, v7}, Lcom/asus/dm/DMService$1;-><init>(Lcom/asus/dm/DMService;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/asus/dm/DMService;->mResumeHandler:Landroid/os/Handler;

    .line 229
    iget-object v6, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v6}, Lcom/asus/dm/DMCRegistryManager;->getStartDMDLSession()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 230
    const-string v6, "alarm"

    invoke-virtual {p0, v6}, Lcom/asus/dm/DMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 231
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/asus/dm/DMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/asus/dm/DMService;

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    .local v4, postIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/asus/dm/DMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v10, v4, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 235
    .local v3, pendIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x1388

    add-long v1, v6, v8

    .line 237
    .local v1, nextPostTime:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "===== Coredump setAlarmService "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 450
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 452
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

    invoke-static {p0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    iget-object v1, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v1}, Lcom/asus/dm/DMCRegistryManager;->getCurrentTree()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 454
    const-string v1, "no tree file return @ onDestroy()"

    invoke-static {p0, v1}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    invoke-direct {p0}, Lcom/asus/dm/DMService;->destoryEngine()V

    .line 460
    :try_start_0
    iget-object v1, p0, Lcom/asus/dm/DMService;->mConnectivityStateReceiver:Lcom/asus/dm/ConnectivityStateReceiver;

    invoke-virtual {p0, v1}, Lcom/asus/dm/DMService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 461
    iget-object v1, p0, Lcom/asus/dm/DMService;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/asus/dm/DMService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 462
    iget-object v1, p0, Lcom/asus/dm/DMService;->mRetryReceiver:Lcom/asus/dm/DMService$RetryBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/asus/dm/DMService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :goto_1
    iget-object v1, p0, Lcom/asus/dm/DMService;->mResumeLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 472
    iget-object v1, p0, Lcom/asus/dm/DMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/asus/dm/DMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 474
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/asus/dm/DMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 475
    const-string v1, "===== release wake_lock"

    invoke-static {p0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 465
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "============== catched unbind \"Provisioning Service\" exception start ============="

    invoke-static {p0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 467
    const-string v1, "=============== catched exception end =============="

    invoke-static {p0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 14
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 246
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

    invoke-static {p0, v11}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    const/4 v3, 0x0

    .line 250
    .local v3, bStartDMSession:Z
    const/4 v2, 0x0

    .line 252
    .local v2, bDelay:Z
    iget-object v11, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v11}, Lcom/asus/dm/DMCRegistryManager;->getCurrentTree()I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    .line 253
    const-string v11, "no tree file return @ onStartCommand()"

    invoke-static {p0, v11}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/asus/dm/DMService;->stopSelf()V

    .line 255
    const/4 v11, 0x2

    .line 435
    :goto_0
    return v11

    .line 257
    :cond_0
    const-string v11, "alarm"

    invoke-virtual {p0, v11}, Lcom/asus/dm/DMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 258
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v9, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/asus/dm/DMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-class v12, Lcom/asus/dm/DMService;

    invoke-direct {v9, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    .local v9, postIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/asus/dm/DMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v12, v9, v13}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 262
    .local v7, pendIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 265
    :try_start_0
    iget-object v11, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v11}, Lcom/asus/dm/DMCRegistryManager;->getFotaResult()I

    move-result v11

    if-lez v11, :cond_1

    iget-object v11, p0, Lcom/asus/dm/DMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-virtual {v11}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->getState()Lcom/asus/dmlib/vdm/fumo/FumoState;

    move-result-object v11

    sget-object v12, Lcom/asus/dmlib/vdm/fumo/FumoState;->UPDATE_PROGRESSING:Lcom/asus/dmlib/vdm/fumo/FumoState;

    if-ne v11, v12, :cond_1

    .line 266
    iget-object v11, p0, Lcom/asus/dm/DMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    sget-object v12, Lcom/asus/dmlib/vdm/fumo/FumoState;->IDLE:Lcom/asus/dmlib/vdm/fumo/FumoState;

    invoke-virtual {v11, v12}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->setFumoState(Lcom/asus/dmlib/vdm/fumo/FumoState;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_5

    .line 272
    :cond_1
    :goto_1
    const-string v11, "power"

    invoke-virtual {p0, v11}, Lcom/asus/dm/DMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 274
    .local v8, pm:Landroid/os/PowerManager;
    iget-object v11, p0, Lcom/asus/dm/DMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    if-nez v11, :cond_2

    .line 275
    const/4 v11, 0x1

    const-string v12, "DMService"

    invoke-virtual {v8, v11, v12}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    iput-object v11, p0, Lcom/asus/dm/DMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 277
    iget-object v11, p0, Lcom/asus/dm/DMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 278
    iget-object v11, p0, Lcom/asus/dm/DMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 279
    const-string v11, "===== acquire wake_lock"

    invoke-static {p0, v11}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    :cond_2
    if-eqz p1, :cond_4

    const-string v11, "com.asus.dm.DMService.sendRegID"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 283
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "===== doC2dmIDSession ====="

    invoke-static {v11, v12}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v11, "registration_id"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 285
    .local v10, regID:Ljava/lang/String;
    const-string v11, "registration_app_name"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, appName:Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 288
    iget-object v11, p0, Lcom/asus/dm/DMService;->mBinder:Lcom/asus/dm/DMService$DMSystemService;

    new-instance v12, Lcom/asus/dm/c2dm/RegC2dmIdInitiator;

    invoke-direct {v12}, Lcom/asus/dm/c2dm/RegC2dmIdInitiator;-><init>()V

    invoke-virtual {v11, v10, v1, v12}, Lcom/asus/dm/DMService$DMSystemService;->doC2dmIDSession(Ljava/lang/String;Ljava/lang/String;Lcom/asus/dmlib/vdm/SessionInitiator;)V

    .line 291
    :cond_3
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 294
    .end local v1           #appName:Ljava/lang/String;
    .end local v10           #regID:Ljava/lang/String;
    :cond_4
    iget-object v11, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v11}, Lcom/asus/dm/DMCRegistryManager;->getBatteryNotEnoughFlag()Z

    move-result v11

    iput-boolean v11, p0, Lcom/asus/dm/DMService;->mbBatteryNotEnough:Z

    .line 297
    iget-object v11, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v11}, Lcom/asus/dm/DMCRegistryManager;->getState()Lcom/asus/dm/DMClient$DMClientState;

    move-result-object v11

    sget-object v12, Lcom/asus/dm/DMClient$DMClientState;->CONFIRM_UPDATE_DIALOG:Lcom/asus/dm/DMClient$DMClientState;

    if-ne v11, v12, :cond_5

    .line 298
    invoke-virtual {p0}, Lcom/asus/dm/DMService;->showConfirmUpdateUI()V

    .line 299
    const-string v11, "currently have update file --> show confirm update UI"

    invoke-static {p0, v11}, Lcom/asus/dm/util/DMLog;->logW(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-direct {p0}, Lcom/asus/dm/DMService;->releaseWakelock()V

    .line 301
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 302
    :cond_5
    iget-object v11, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v11}, Lcom/asus/dm/DMCRegistryManager;->getState()Lcom/asus/dm/DMClient$DMClientState;

    move-result-object v11

    sget-object v12, Lcom/asus/dm/DMClient$DMClientState;->CONFIRM_DOWNLOAD_DIALOG:Lcom/asus/dm/DMClient$DMClientState;

    if-ne v11, v12, :cond_7

    .line 303
    const-string v11, "show confirm download @1"

    invoke-static {p0, v11}, Lcom/asus/dm/util/DMLog;->logW(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    if-eqz p1, :cond_6

    const-string v11, "com.asus.dm.DMService.showConfirmDownload"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 307
    const-string v11, "show confirm download @1"

    invoke-static {p0, v11}, Lcom/asus/dm/util/DMLog;->logW(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/asus/dm/DMService;->showConfirmDownloadUI()V

    .line 313
    :goto_2
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 310
    :cond_6
    const-string v11, "create dl notification"

    invoke-static {p0, v11}, Lcom/asus/dm/util/DMLog;->logW(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    const/4 v11, 0x0

    invoke-static {p0, v11}, Lcom/asus/dm/DMDLNotification;->createNotification(Landroid/content/Context;Z)V

    goto :goto_2

    .line 317
    :cond_7
    if-eqz p1, :cond_e

    .line 318
    const-string v11, "com.asus.dm.DMService.showConfirmUpdate"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 320
    invoke-virtual {p0}, Lcom/asus/dm/DMService;->showConfirmUpdateUI()V

    .line 321
    const-string v11, "currently have update file 2 --> show confirm update UI"

    invoke-static {p0, v11}, Lcom/asus/dm/util/DMLog;->logW(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-direct {p0}, Lcom/asus/dm/DMService;->releaseWakelock()V

    .line 323
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 325
    :cond_8
    const-string v11, "com.asus.dm.DMService.showConfirmDownload"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 326
    const-string v11, "show confirm download @2"

    invoke-static {p0, v11}, Lcom/asus/dm/util/DMLog;->logW(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/asus/dm/DMService;->showConfirmDownloadUI()V

    .line 328
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 330
    :cond_9
    const-string v11, "com.asus.dm.DMService.resumeDownload"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 332
    :try_start_1
    iget-object v11, p0, Lcom/asus/dm/DMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-virtual {v11}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->getState()Lcom/asus/dmlib/vdm/fumo/FumoState;

    move-result-object v11

    sget-object v12, Lcom/asus/dmlib/vdm/fumo/FumoState;->DOWNLOAD_PROGRESSING:Lcom/asus/dmlib/vdm/fumo/FumoState;

    if-eq v11, v12, :cond_a

    .line 333
    const-string v11, "DMService"

    const-string v12, "===== ConnectivityStateReceiver call do DMSession() ====="

    invoke-static {v11, v12}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 335
    :try_start_2
    iget-object v11, p0, Lcom/asus/dm/DMService;->mBinder:Lcom/asus/dm/DMService$DMSystemService;

    invoke-virtual {v11}, Lcom/asus/dm/DMService$DMSystemService;->doDMSession()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_2 .. :try_end_2} :catch_1

    .line 345
    :goto_3
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 336
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 337
    .local v4, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 342
    .end local v4           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v11

    move-object v4, v11

    .line 343
    .local v4, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_3

    .line 340
    .end local v4           #e:Lcom/asus/dmlib/vdm/VdmException;
    :cond_a
    :try_start_4
    const-string v11, "DMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "===== mFumo.getState() "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/asus/dm/DMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-virtual {v13}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->getState()Lcom/asus/dmlib/vdm/fumo/FumoState;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ====="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 347
    :cond_b
    const-string v11, "com.asus.dm.DMService.doFotaPolling"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 349
    :try_start_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "=================== FumoState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/asus/dm/DMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-virtual {v12}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->getState()Lcom/asus/dmlib/vdm/fumo/FumoState;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    iget-object v11, p0, Lcom/asus/dm/DMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-virtual {v11}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->getState()Lcom/asus/dmlib/vdm/fumo/FumoState;

    move-result-object v11

    sget-object v12, Lcom/asus/dmlib/vdm/fumo/FumoState;->DOWNLOAD_PROGRESSING:Lcom/asus/dmlib/vdm/fumo/FumoState;

    if-eq v11, v12, :cond_c

    iget-object v11, p0, Lcom/asus/dm/DMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-virtual {v11}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->getState()Lcom/asus/dmlib/vdm/fumo/FumoState;

    move-result-object v11

    sget-object v12, Lcom/asus/dmlib/vdm/fumo/FumoState;->UPDATE_READY_TO_UPDATE:Lcom/asus/dmlib/vdm/fumo/FumoState;

    if-eq v11, v12, :cond_c

    iget-object v11, p0, Lcom/asus/dm/DMService;->mFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-virtual {v11}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->getState()Lcom/asus/dmlib/vdm/fumo/FumoState;

    move-result-object v11

    sget-object v12, Lcom/asus/dmlib/vdm/fumo/FumoState;->UPDATE_PROGRESSING:Lcom/asus/dmlib/vdm/fumo/FumoState;
    :try_end_5
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_5 .. :try_end_5} :catch_2

    if-eq v11, v12, :cond_c

    .line 353
    const/4 v3, 0x1

    .line 362
    :cond_c
    :goto_4
    const-string v11, "NIParams"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    .line 363
    .local v6, msg:[B
    if-eqz v6, :cond_d

    .line 365
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "===== doNIDMSession ====="

    invoke-static {v11, v12}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v11, p0, Lcom/asus/dm/DMService;->mBinder:Lcom/asus/dm/DMService$DMSystemService;

    check-cast v6, [B

    .end local v6           #msg:[B
    invoke-virtual {v11, v6}, Lcom/asus/dm/DMService$DMSystemService;->doNIDMSession([B)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 374
    :goto_5
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 355
    :catch_2
    move-exception v11

    move-object v4, v11

    .line 356
    .restart local v4       #e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_4

    .line 371
    .end local v4           #e:Lcom/asus/dmlib/vdm/VdmException;
    :catch_3
    move-exception v11

    move-object v4, v11

    .line 372
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    .line 377
    .end local v4           #e:Landroid/os/RemoteException;
    .restart local v6       #msg:[B
    :cond_d
    const-string v11, "com.asud.dm.fromBootComplete"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 379
    const-string v11, "com.asus.dm.fota.upgradestatus"

    const/4 v12, -0x1

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 380
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

    invoke-static {v11, v12}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    if-lez v5, :cond_e

    .line 386
    const/4 v3, 0x1

    .line 390
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mRegMgr.getUpgradeErrorHasShown() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v12}, Lcom/asus/dm/DMCRegistryManager;->getUpgradeErrorHasShown()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    const/16 v11, 0xc8

    if-eq v5, v11, :cond_e

    iget-object v11, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v11}, Lcom/asus/dm/DMCRegistryManager;->getUpgradeErrorHasShown()Z

    move-result v11

    if-nez v11, :cond_e

    .line 392
    iget-object v11, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/asus/dm/DMCRegistryManager;->setDMErrorHasShown(Z)V

    .line 393
    const-string v11, "show dialog"

    invoke-static {p0, v11}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/asus/dm/DMService;->showFirmwareUpdateFailAlertDialog()V

    .line 405
    .end local v5           #fotaStatus:I
    .end local v6           #msg:[B
    :cond_e
    iget-object v11, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v11}, Lcom/asus/dm/DMCRegistryManager;->getStartDMDLSession()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 406
    const-string v11, "restart DM session"

    invoke-static {p0, v11}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    const/4 v3, 0x1

    .line 410
    :cond_f
    if-eqz v3, :cond_11

    .line 411
    if-eqz v2, :cond_10

    .line 412
    const-string v11, "***** boot_complete, schedule next wakeup after 30s "

    invoke-static {p0, v11}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    const-string v11, "***** delay start DM session*********"

    invoke-static {p0, v11}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    iget-object v11, p0, Lcom/asus/dm/DMService;->mRetryReceiver:Lcom/asus/dm/DMService$RetryBroadcastReceiver;

    invoke-static {v11}, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->access$400(Lcom/asus/dm/DMService$RetryBroadcastReceiver;)V

    .line 418
    iget-object v11, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/asus/dm/DMCRegistryManager;->setStartDMDLSession(Z)V

    .line 420
    invoke-direct {p0}, Lcom/asus/dm/DMService;->releaseWakelock()V

    .line 422
    iget-object v11, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v11, v2}, Lcom/asus/dm/DMCRegistryManager;->setBootCompletedDelay(Z)V

    .line 434
    :goto_6
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

    invoke-static {p0, v11}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 425
    :cond_10
    :try_start_7
    const-string v11, "***** onStartCommand start DM session*********"

    invoke-static {p0, v11}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    iget-object v11, p0, Lcom/asus/dm/DMService;->mBinder:Lcom/asus/dm/DMService$DMSystemService;

    invoke-virtual {v11}, Lcom/asus/dm/DMService$DMSystemService;->doDMSession()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_6

    .line 427
    :catch_4
    move-exception v11

    move-object v4, v11

    .line 428
    .restart local v4       #e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 432
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_11
    invoke-direct {p0}, Lcom/asus/dm/DMService;->releaseWakelock()V

    goto :goto_6

    .line 269
    .end local v8           #pm:Landroid/os/PowerManager;
    :catch_5
    move-exception v11

    goto/16 :goto_1
.end method

.method public prepareDLNotification(Z)V
    .locals 0
    .parameter "notifyUser"

    .prologue
    .line 1962
    invoke-static {p0, p1}, Lcom/asus/dm/DMDLNotification;->createNotification(Landroid/content/Context;Z)V

    .line 1963
    invoke-direct {p0}, Lcom/asus/dm/DMService;->releaseWakelock()V

    .line 1964
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "pMsg"

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/asus/dm/DMService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1042
    return-void
.end method

.method public sessionCompleteNotify(ILcom/asus/dmlib/vdm/fumo/VdmFumo;)V
    .locals 3
    .parameter "lastError"
    .parameter "fumoInstance"

    .prologue
    .line 1292
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

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    return-void
.end method

.method public setDLDescriptor(Lcom/asus/dm/RBDownloadDescriptor;)V
    .locals 3
    .parameter "dd"

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/asus/dm/DMService;->mDownDescriptor:Lcom/asus/dm/RBDownloadDescriptor;

    .line 1407
    if-eqz p1, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    iget-object v1, p1, Lcom/asus/dm/RBDownloadDescriptor;->field:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/asus/dm/DMCRegistryManager;->setDLName(Ljava/lang/String;)V

    .line 1409
    iget-object v0, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    iget-object v1, p1, Lcom/asus/dm/RBDownloadDescriptor;->field:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/asus/dm/DMCRegistryManager;->setDLDescriotion(Ljava/lang/String;)V

    .line 1410
    iget-object v0, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    iget-wide v1, p1, Lcom/asus/dm/RBDownloadDescriptor;->size:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/asus/dm/DMCRegistryManager;->setDLTotalSize(I)V

    .line 1413
    :cond_0
    return-void
.end method

.method public setDefaultConfirmResult(Lcom/asus/dmlib/vdm/MmiConfirmation$ConfirmCommand;)V
    .locals 0
    .parameter "pDefaultConfirmResult"

    .prologue
    .line 1521
    iput-object p1, p0, Lcom/asus/dm/DMService;->mDefaultConfirmResult:Lcom/asus/dmlib/vdm/MmiConfirmation$ConfirmCommand;

    .line 1522
    return-void
.end method

.method public setIsNeedEnablePost(Z)V
    .locals 0
    .parameter "isNeedEnablePost"

    .prologue
    .line 1496
    iput-boolean p1, p0, Lcom/asus/dm/DMService;->mIsNeedEnablePost:Z

    .line 1497
    return-void
.end method

.method public setMmiObserver(Lcom/asus/dmlib/vdm/MmiObserver;)V
    .locals 0
    .parameter "mmiObserver"

    .prologue
    .line 1517
    iput-object p1, p0, Lcom/asus/dm/DMService;->mMmiObserver:Lcom/asus/dmlib/vdm/MmiObserver;

    .line 1518
    return-void
.end method

.method public setPostponeTime(I)V
    .locals 2
    .parameter "pTime"

    .prologue
    .line 1948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPostponeTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1949
    iget-object v0, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v0, p1}, Lcom/asus/dm/DMCRegistryManager;->setPostponeTime(I)V

    .line 1950
    return-void
.end method

.method public setUIAlertParaDescriptor(Lcom/asus/dm/UIAlertParaDescriptor;)V
    .locals 0
    .parameter "pAlertParaDescriptor"

    .prologue
    .line 1509
    iput-object p1, p0, Lcom/asus/dm/DMService;->mUIAlertParaDescriptor:Lcom/asus/dm/UIAlertParaDescriptor;

    .line 1510
    return-void
.end method

.method public showBatteryNotEnoughUI()V
    .locals 3

    .prologue
    .line 1213
    const-string v1, "showConfirmUpdateUI() battery < 15% wait"

    invoke-static {p0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1214
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/asus/dm/DMService;->mbBatteryNotEnough:Z

    .line 1215
    iget-object v1, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    iget-boolean v2, p0, Lcom/asus/dm/DMService;->mbBatteryNotEnough:Z

    invoke-virtual {v1, v2}, Lcom/asus/dm/DMCRegistryManager;->setBatteryNotEnoughFlag(Z)V

    .line 1217
    iget v1, p0, Lcom/asus/dm/DMService;->mBatteryState:I

    const v2, -0xd0b6

    if-eq v1, v2, :cond_0

    .line 1218
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1219
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1220
    sget-object v1, Lcom/asus/dm/DMService$DialogId;->UI_ALERT_BATTERY_NOT_ENOUGH:Lcom/asus/dm/DMService$DialogId;

    invoke-virtual {v1}, Lcom/asus/dm/DMService$DialogId;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1221
    const/16 v1, 0x920

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1222
    invoke-virtual {p0, v0}, Lcom/asus/dm/DMService;->sendMessage(Landroid/os/Message;)V

    .line 1232
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 1226
    :cond_0
    const-string v1, "error battery status, only set flag."

    invoke-static {p0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1227
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/asus/dm/DMNotification;->createNotification(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public showConfirmDownloadUI()V
    .locals 2

    .prologue
    .line 440
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 441
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 442
    sget-object v1, Lcom/asus/dm/DMService$DialogId;->CONFIRM_DOWNLOAD:Lcom/asus/dm/DMService$DialogId;

    invoke-virtual {v1}, Lcom/asus/dm/DMService$DialogId;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 443
    const/16 v1, 0x920

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 444
    invoke-virtual {p0, v0}, Lcom/asus/dm/DMService;->sendMessage(Landroid/os/Message;)V

    .line 445
    return-void
.end method

.method public showConfirmUpdateUI()V
    .locals 2

    .prologue
    .line 1236
    invoke-direct {p0}, Lcom/asus/dm/DMService;->isBatteryEnough()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1237
    invoke-virtual {p0}, Lcom/asus/dm/DMService;->showBatteryNotEnoughUI()V

    .line 1250
    :goto_0
    return-void

    .line 1241
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1243
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1244
    sget-object v1, Lcom/asus/dm/DMService$DialogId;->CONFIRM_UPDATE:Lcom/asus/dm/DMService$DialogId;

    invoke-virtual {v1}, Lcom/asus/dm/DMService$DialogId;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1246
    invoke-static {}, Lcom/asus/dm/util/DMUtils;->waitforCall()V

    .line 1247
    invoke-virtual {p0, v0}, Lcom/asus/dm/DMService;->sendMessage(Landroid/os/Message;)V

    .line 1248
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/asus/dm/DMService;->mIsShowConfirmUpdate:Z

    goto :goto_0
.end method

.method public showDMDialog(ILcom/asus/dmlib/vdm/MmiObserver;I)V
    .locals 2
    .parameter "pId"
    .parameter "pObserver"
    .parameter "pSaveInstenctMagic"

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/asus/dm/DMService;->mDialFactory:Lcom/asus/dm/mmi/dialog/DialogFactory;

    if-nez v0, :cond_0

    .line 1444
    new-instance v0, Lcom/asus/dm/mmi/dialog/DialogFactory;

    iget-object v1, p0, Lcom/asus/dm/DMService;->mMmiCallBackBinder:Lcom/asus/dm/DMService$MmiCallBackService;

    invoke-direct {v0, v1, p0}, Lcom/asus/dm/mmi/dialog/DialogFactory;-><init>(Lcom/asus/dm/IMmiCallback;Lcom/asus/dm/DMService;)V

    iput-object v0, p0, Lcom/asus/dm/DMService;->mDialFactory:Lcom/asus/dm/mmi/dialog/DialogFactory;

    .line 1447
    :cond_0
    if-eqz p2, :cond_1

    .line 1448
    iput-object p2, p0, Lcom/asus/dm/DMService;->mMmiObserver:Lcom/asus/dmlib/vdm/MmiObserver;

    .line 1451
    :cond_1
    sget-object v0, Lcom/asus/dm/DMService$DialogId;->CONFIRM_UPDATE:Lcom/asus/dm/DMService$DialogId;

    invoke-virtual {v0}, Lcom/asus/dm/DMService$DialogId;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 1452
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v1}, Lcom/asus/dm/DMCRegistryManager;->getPostponeNumber()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/asus/dm/DMService;->mPostQuota:I

    .line 1453
    invoke-direct {p0}, Lcom/asus/dm/DMService;->cancelAlarmService()V

    .line 1456
    :cond_2
    iget-object v0, p0, Lcom/asus/dm/DMService;->mDialFactory:Lcom/asus/dm/mmi/dialog/DialogFactory;

    const/16 v1, 0x920

    if-ne p3, v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/asus/dm/mmi/dialog/DialogFactory;->createDMDialog(IZ)V

    .line 1488
    return-void

    .line 1456
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showFirmwareUpdateFailAlertDialog()V
    .locals 3

    .prologue
    .line 1767
    new-instance v1, Lcom/asus/dm/UIAlertParaDescriptor;

    invoke-direct {v1}, Lcom/asus/dm/UIAlertParaDescriptor;-><init>()V

    .line 1768
    .local v1, paraDescriptor:Lcom/asus/dm/UIAlertParaDescriptor;
    const v2, 0x7f060005

    invoke-virtual {p0, v2}, Lcom/asus/dm/DMService;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/asus/dm/UIAlertParaDescriptor;->mDialogContent:Ljava/lang/String;

    .line 1769
    invoke-virtual {p0, v1}, Lcom/asus/dm/DMService;->setUIAlertParaDescriptor(Lcom/asus/dm/UIAlertParaDescriptor;)V

    .line 1771
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1772
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1773
    sget-object v2, Lcom/asus/dm/DMService$DialogId;->UI_ALERT_FIRMWARE_UPGRADE_FAIL:Lcom/asus/dm/DMService$DialogId;

    invoke-virtual {v2}, Lcom/asus/dm/DMService$DialogId;->ordinal()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1774
    const/16 v2, 0x920

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 1775
    invoke-virtual {p0, v0}, Lcom/asus/dm/DMService;->sendMessage(Landroid/os/Message;)V

    .line 1776
    return-void
.end method

.method public update_Process(Ljava/lang/String;)Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    .locals 4
    .parameter "path"

    .prologue
    .line 1254
    const/4 v1, 0x1

    .line 1268
    .local v1, update:Z
    if-eqz v1, :cond_1

    .line 1270
    invoke-direct {p0}, Lcom/asus/dm/DMService;->isBatteryEnough()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1271
    iget-object v2, p0, Lcom/asus/dm/DMService;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/asus/dm/DMCRegistryManager;->setUpgradeFromDM(Z)V

    .line 1272
    invoke-direct {p0, p1}, Lcom/asus/dm/DMService;->do_update(Ljava/lang/String;)Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    move-result-object v0

    .line 1274
    .local v0, ret:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    invoke-static {p0}, Lcom/asus/dm/DMNotification;->clearNotification(Landroid/content/Context;)V

    .line 1287
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1288
    return-object v0

    .line 1280
    .end local v0           #ret:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    :cond_0
    invoke-virtual {p0}, Lcom/asus/dm/DMService;->showBatteryNotEnoughUI()V

    .line 1281
    sget-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->NOT_ACCEPTABLE:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .restart local v0       #ret:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    goto :goto_0

    .line 1284
    .end local v0           #ret:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    :cond_1
    const v2, 0x7f06001b

    invoke-virtual {p0, v2}, Lcom/asus/dm/DMService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/asus/dm/DMService;->showClientAlertDialog(Ljava/lang/String;)V

    .line 1285
    sget-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->OUT_OF_MEMORY_FOR_UPDATE:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .restart local v0       #ret:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    goto :goto_0
.end method

.method public waitAndStopService()V
    .locals 6

    .prologue
    .line 966
    const/4 v1, 0x0

    .line 969
    .local v1, isEngineNull:Z
    :try_start_0
    iget-object v3, p0, Lcom/asus/dm/DMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/asus/dm/DMService;->mEngine:Lcom/asus/dmlib/vdm/VdmEngine;

    invoke-virtual {v3}, Lcom/asus/dmlib/vdm/VdmEngine;->isIdle()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 970
    const/4 v1, 0x0

    .line 978
    :goto_0
    if-nez v1, :cond_2

    .line 979
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 980
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x7

    iput v3, v2, Landroid/os/Message;->what:I

    .line 982
    iget-object v3, p0, Lcom/asus/dm/DMService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1005
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    :goto_1
    return-void

    .line 972
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 974
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 975
    .local v0, ex:Ljava/lang/NullPointerException;
    const/4 v1, 0x1

    goto :goto_0

    .line 986
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :cond_2
    iget-boolean v3, p0, Lcom/asus/dm/DMService;->mbBatteryNotEnough:Z

    if-nez v3, :cond_0

    .line 987
    const-string v3, "stop me"

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 988
    invoke-direct {p0}, Lcom/asus/dm/DMService;->clearDMHandlerHelper()V

    .line 990
    iget-object v3, p0, Lcom/asus/dm/DMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_3

    .line 991
    iget-object v3, p0, Lcom/asus/dm/DMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 992
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/asus/dm/DMService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 993
    const-string v3, "===== release wake_lock"

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 996
    :cond_3
    iget-object v3, p0, Lcom/asus/dm/DMService;->mStateCbList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 997
    const-string v3, "DM process finish"

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
