.class public Lcom/asus/dm/SystemUpdateActivity;
.super Landroid/app/Activity;
.source "SystemUpdateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dm/SystemUpdateActivity$DMServStateCallBack;
    }
.end annotation


# static fields
.field private static final MSG_HIDE_PROGRESS_BAR:I = 0x2

.field private static final MSG_SHOW_PROGRESS_BAR:I = 0x1

.field private static final MSG_TEXT_UPDATE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SystemUpdateActivity"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mDMStateCb:Lcom/asus/dm/SystemUpdateActivity$DMServStateCallBack;

.field mHandler:Landroid/os/Handler;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRegMgr:Lcom/asus/dm/DMCRegistryManager;

.field private mSNRConnection:Landroid/content/ServiceConnection;

.field private mSNRService:Lcom/asus/dm/IStatusNotifyRegister;

.field private mService:Lcom/asus/dm/IDMService;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mService:Lcom/asus/dm/IDMService;

    .line 30
    iput-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mSNRService:Lcom/asus/dm/IStatusNotifyRegister;

    .line 32
    new-instance v0, Lcom/asus/dm/SystemUpdateActivity$DMServStateCallBack;

    invoke-direct {v0, p0}, Lcom/asus/dm/SystemUpdateActivity$DMServStateCallBack;-><init>(Lcom/asus/dm/SystemUpdateActivity;)V

    iput-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mDMStateCb:Lcom/asus/dm/SystemUpdateActivity$DMServStateCallBack;

    .line 130
    new-instance v0, Lcom/asus/dm/SystemUpdateActivity$1;

    invoke-direct {v0, p0}, Lcom/asus/dm/SystemUpdateActivity$1;-><init>(Lcom/asus/dm/SystemUpdateActivity;)V

    iput-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mHandler:Landroid/os/Handler;

    .line 180
    new-instance v0, Lcom/asus/dm/SystemUpdateActivity$2;

    invoke-direct {v0, p0}, Lcom/asus/dm/SystemUpdateActivity$2;-><init>(Lcom/asus/dm/SystemUpdateActivity;)V

    iput-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 195
    new-instance v0, Lcom/asus/dm/SystemUpdateActivity$3;

    invoke-direct {v0, p0}, Lcom/asus/dm/SystemUpdateActivity$3;-><init>(Lcom/asus/dm/SystemUpdateActivity;)V

    iput-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mSNRConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/asus/dm/SystemUpdateActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/asus/dm/SystemUpdateActivity;->startProgress()V

    return-void
.end method

.method static synthetic access$100(Lcom/asus/dm/SystemUpdateActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/asus/dm/SystemUpdateActivity;->stopProgress()V

    return-void
.end method

.method static synthetic access$200(Lcom/asus/dm/SystemUpdateActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/asus/dm/SystemUpdateActivity;->setFotaStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/asus/dm/SystemUpdateActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/asus/dm/SystemUpdateActivity;->updateSessionStatusMessage(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/asus/dm/SystemUpdateActivity;)Lcom/asus/dm/IDMService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mService:Lcom/asus/dm/IDMService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/asus/dm/SystemUpdateActivity;Lcom/asus/dm/IDMService;)Lcom/asus/dm/IDMService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/asus/dm/SystemUpdateActivity;->mService:Lcom/asus/dm/IDMService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/asus/dm/SystemUpdateActivity;)Lcom/asus/dm/IStatusNotifyRegister;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mSNRService:Lcom/asus/dm/IStatusNotifyRegister;

    return-object v0
.end method

.method static synthetic access$502(Lcom/asus/dm/SystemUpdateActivity;Lcom/asus/dm/IStatusNotifyRegister;)Lcom/asus/dm/IStatusNotifyRegister;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/asus/dm/SystemUpdateActivity;->mSNRService:Lcom/asus/dm/IStatusNotifyRegister;

    return-object p1
.end method

.method static synthetic access$600(Lcom/asus/dm/SystemUpdateActivity;)Lcom/asus/dm/SystemUpdateActivity$DMServStateCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mDMStateCb:Lcom/asus/dm/SystemUpdateActivity$DMServStateCallBack;

    return-object v0
.end method

.method private initService()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 106
    const-string v0, "SystemUpdateActivity"

    const-string v1, "bind IDMService"

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/dm/IDMService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/asus/dm/SystemUpdateActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/asus/dm/SystemUpdateActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    const-string v0, "SystemUpdateActivity"

    const-string v1, "onCreate(), bind service fail!"

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const-string v0, "SystemUpdateActivity"

    const-string v1, "bind IStatusNotifyRegister"

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/dm/IStatusNotifyRegister;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/asus/dm/SystemUpdateActivity;->mSNRConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/asus/dm/SystemUpdateActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const-string v0, "SystemUpdateActivity"

    const-string v1, "onCreate(), bind service fail!"

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initUi()V
    .locals 2

    .prologue
    .line 59
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/asus/dm/SystemUpdateActivity;->setContentView(I)V

    .line 61
    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/asus/dm/SystemUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 62
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 64
    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lcom/asus/dm/SystemUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mButton:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mButton:Landroid/widget/Button;

    const v1, 0x7f06001f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 66
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 67
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Lcom/asus/dm/SystemUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mTextView:Landroid/widget/TextView;

    .line 72
    invoke-direct {p0}, Lcom/asus/dm/SystemUpdateActivity;->setFotaStatus()V

    .line 74
    return-void
.end method

.method private setFotaStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v0}, Lcom/asus/dm/DMCRegistryManager;->getDLResume()Z

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v0}, Lcom/asus/dm/DMCRegistryManager;->getState()Lcom/asus/dm/DMClient$DMClientState;

    move-result-object v0

    sget-object v1, Lcom/asus/dm/DMClient$DMClientState;->CONFIRM_UPDATE_DIALOG:Lcom/asus/dm/DMClient$DMClientState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v0}, Lcom/asus/dm/DMCRegistryManager;->getState()Lcom/asus/dm/DMClient$DMClientState;

    move-result-object v0

    sget-object v1, Lcom/asus/dm/DMClient$DMClientState;->CONFIRM_DOWNLOAD_DIALOG:Lcom/asus/dm/DMClient$DMClientState;

    if-ne v0, v1, :cond_1

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f060031

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 99
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f060020

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 102
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private startProgress()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    return-void
.end method

.method private stopProgress()V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 128
    return-void
.end method

.method private updateSessionStatusMessage(II)V
    .locals 4
    .parameter "type"
    .parameter "state"

    .prologue
    const/4 v1, 0x2

    .line 152
    sget-object v0, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DM:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 153
    sget-object v0, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    sget-object v0, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->COMPLETE:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 157
    :cond_2
    sget-object v0, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 160
    :cond_3
    sget-object v0, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 161
    sget-object v0, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 162
    const-string v0, "DL STARTED"

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logHighlightD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "pView"

    .prologue
    .line 228
    iget-object v1, p0, Lcom/asus/dm/SystemUpdateActivity;->mService:Lcom/asus/dm/IDMService;

    if-nez v1, :cond_0

    .line 231
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 242
    :goto_0
    return-void

    .line 234
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/asus/dm/SystemUpdateActivity;->mService:Lcom/asus/dm/IDMService;

    invoke-interface {v1}, Lcom/asus/dm/IDMService;->doDMSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 236
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x7f080029
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {p0}, Lcom/asus/dm/DMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/SystemUpdateActivity;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    .line 51
    invoke-direct {p0}, Lcom/asus/dm/SystemUpdateActivity;->initUi()V

    .line 53
    invoke-direct {p0}, Lcom/asus/dm/SystemUpdateActivity;->initService()V

    .line 55
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 78
    const-string v1, "========================onDestroy()========================="

    invoke-static {p0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/asus/dm/SystemUpdateActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/asus/dm/SystemUpdateActivity;->mSNRService:Lcom/asus/dm/IStatusNotifyRegister;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/asus/dm/SystemUpdateActivity;->mSNRService:Lcom/asus/dm/IStatusNotifyRegister;

    iget-object v2, p0, Lcom/asus/dm/SystemUpdateActivity;->mDMStateCb:Lcom/asus/dm/SystemUpdateActivity$DMServStateCallBack;

    invoke-interface {v1, v2}, Lcom/asus/dm/IStatusNotifyRegister;->unregisterStateCallback(Lcom/asus/dm/IDMServiceStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/asus/dm/SystemUpdateActivity;->mSNRConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/asus/dm/SystemUpdateActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 88
    iget-object v1, p0, Lcom/asus/dm/SystemUpdateActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/asus/dm/SystemUpdateActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 91
    :cond_1
    return-void

    .line 84
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 85
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
