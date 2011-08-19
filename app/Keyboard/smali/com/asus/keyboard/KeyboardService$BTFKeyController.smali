.class Lcom/asus/keyboard/KeyboardService$BTFKeyController;
.super Lcom/asus/keyboard/KeyboardService$FKeyController;
.source "KeyboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/keyboard/KeyboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BTFKeyController"
.end annotation


# instance fields
.field private mBluetoothStateTracker:Lcom/asus/keyboard/WirelessStateTracker$StateTracker;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/asus/keyboard/KeyboardService;


# direct methods
.method public constructor <init>(Lcom/asus/keyboard/KeyboardService;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 334
    iput-object p1, p0, Lcom/asus/keyboard/KeyboardService$BTFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-direct {p0, p1}, Lcom/asus/keyboard/KeyboardService$FKeyController;-><init>(Lcom/asus/keyboard/KeyboardService;)V

    .line 352
    new-instance v0, Lcom/asus/keyboard/KeyboardService$BTFKeyController$1;

    invoke-direct {v0, p0}, Lcom/asus/keyboard/KeyboardService$BTFKeyController$1;-><init>(Lcom/asus/keyboard/KeyboardService$BTFKeyController;)V

    iput-object v0, p0, Lcom/asus/keyboard/KeyboardService$BTFKeyController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 335
    iput-object p2, p0, Lcom/asus/keyboard/KeyboardService$BTFKeyController;->mContext:Landroid/content/Context;

    .line 336
    invoke-static {p2}, Lcom/asus/keyboard/WirelessStateTracker;->getBluetoothStateTracker(Landroid/content/Context;)Lcom/asus/keyboard/WirelessStateTracker$StateTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/keyboard/KeyboardService$BTFKeyController;->mBluetoothStateTracker:Lcom/asus/keyboard/WirelessStateTracker$StateTracker;

    .line 337
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/asus/keyboard/KeyboardService$BTFKeyController;->mIntentFilter:Landroid/content/IntentFilter;

    .line 338
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$BTFKeyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/asus/keyboard/KeyboardService$BTFKeyController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$BTFKeyController;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 339
    return-void
.end method

.method static synthetic access$1400(Lcom/asus/keyboard/KeyboardService$BTFKeyController;)Lcom/asus/keyboard/WirelessStateTracker$StateTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$BTFKeyController;->mBluetoothStateTracker:Lcom/asus/keyboard/WirelessStateTracker$StateTracker;

    return-object v0
.end method


# virtual methods
.method public process(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$BTFKeyController;->mBluetoothStateTracker:Lcom/asus/keyboard/WirelessStateTracker$StateTracker;

    iget-object v1, p0, Lcom/asus/keyboard/KeyboardService$BTFKeyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->toggleState(Landroid/content/Context;)V

    .line 344
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$BTFKeyController;->mBluetoothStateTracker:Lcom/asus/keyboard/WirelessStateTracker$StateTracker;

    invoke-virtual {v0}, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->getIntendedState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$BTFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    const v1, 0x7f020005

    invoke-static {v0, v1}, Lcom/asus/keyboard/KeyboardService;->access$902(Lcom/asus/keyboard/KeyboardService;I)I

    .line 349
    :goto_0
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$BTFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-static {v0}, Lcom/asus/keyboard/KeyboardService;->access$1200(Lcom/asus/keyboard/KeyboardService;)V

    .line 350
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$BTFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    const v1, 0x7f020004

    invoke-static {v0, v1}, Lcom/asus/keyboard/KeyboardService;->access$902(Lcom/asus/keyboard/KeyboardService;I)I

    goto :goto_0
.end method
