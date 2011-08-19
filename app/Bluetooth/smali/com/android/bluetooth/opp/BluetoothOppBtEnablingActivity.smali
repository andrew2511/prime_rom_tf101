.class public Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothOppBtEnablingActivity.java"


# instance fields
.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private final mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 109
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    .line 123
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$2;-><init>(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->cancelSendingProgress()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelSendingProgress()V
    .locals 2

    .prologue
    .line 142
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v0

    .line 143
    .local v0, mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;
    iget-boolean v1, v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    if-eqz v1, :cond_0

    .line 144
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->finish()V

    .line 147
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030004

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 87
    .local v1, view:Landroid/view/View;
    const v2, 0x7f06000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    .local v0, contentView:Landroid/widget/TextView;
    const v2, 0x7f040039

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 75
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x108009b

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 76
    const v2, 0x7f040038

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 77
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 78
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->setupAlert()V

    .line 81
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 83
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 106
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 107
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 95
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->cancelSendingProgress()V

    .line 100
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
