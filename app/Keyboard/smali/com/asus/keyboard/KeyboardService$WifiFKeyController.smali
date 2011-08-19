.class Lcom/asus/keyboard/KeyboardService$WifiFKeyController;
.super Lcom/asus/keyboard/KeyboardService$FKeyController;
.source "KeyboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/keyboard/KeyboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiFKeyController"
.end annotation


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiStateTracker:Lcom/asus/keyboard/WirelessStateTracker$StateTracker;

.field final synthetic this$0:Lcom/asus/keyboard/KeyboardService;


# direct methods
.method public constructor <init>(Lcom/asus/keyboard/KeyboardService;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/asus/keyboard/KeyboardService$WifiFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-direct {p0, p1}, Lcom/asus/keyboard/KeyboardService$FKeyController;-><init>(Lcom/asus/keyboard/KeyboardService;)V

    .line 319
    new-instance v0, Lcom/asus/keyboard/KeyboardService$WifiFKeyController$1;

    invoke-direct {v0, p0}, Lcom/asus/keyboard/KeyboardService$WifiFKeyController$1;-><init>(Lcom/asus/keyboard/KeyboardService$WifiFKeyController;)V

    iput-object v0, p0, Lcom/asus/keyboard/KeyboardService$WifiFKeyController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 302
    iput-object p2, p0, Lcom/asus/keyboard/KeyboardService$WifiFKeyController;->mContext:Landroid/content/Context;

    .line 303
    invoke-static {p2}, Lcom/asus/keyboard/WirelessStateTracker;->getWifiStateTracker(Landroid/content/Context;)Lcom/asus/keyboard/WirelessStateTracker$StateTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/keyboard/KeyboardService$WifiFKeyController;->mWifiStateTracker:Lcom/asus/keyboard/WirelessStateTracker$StateTracker;

    .line 304
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/asus/keyboard/KeyboardService$WifiFKeyController;->mIntentFilter:Landroid/content/IntentFilter;

    .line 305
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$WifiFKeyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/asus/keyboard/KeyboardService$WifiFKeyController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$WifiFKeyController;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 306
    return-void
.end method

.method static synthetic access$1300(Lcom/asus/keyboard/KeyboardService$WifiFKeyController;)Lcom/asus/keyboard/WirelessStateTracker$StateTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$WifiFKeyController;->mWifiStateTracker:Lcom/asus/keyboard/WirelessStateTracker$StateTracker;

    return-object v0
.end method


# virtual methods
.method public process(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$WifiFKeyController;->mWifiStateTracker:Lcom/asus/keyboard/WirelessStateTracker$StateTracker;

    iget-object v1, p0, Lcom/asus/keyboard/KeyboardService$WifiFKeyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->toggleState(Landroid/content/Context;)V

    .line 311
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$WifiFKeyController;->mWifiStateTracker:Lcom/asus/keyboard/WirelessStateTracker$StateTracker;

    invoke-virtual {v0}, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->getIntendedState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$WifiFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    const v1, 0x7f02000b

    invoke-static {v0, v1}, Lcom/asus/keyboard/KeyboardService;->access$902(Lcom/asus/keyboard/KeyboardService;I)I

    .line 316
    :goto_0
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$WifiFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-static {v0}, Lcom/asus/keyboard/KeyboardService;->access$1200(Lcom/asus/keyboard/KeyboardService;)V

    .line 317
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$WifiFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    const v1, 0x7f02000a

    invoke-static {v0, v1}, Lcom/asus/keyboard/KeyboardService;->access$902(Lcom/asus/keyboard/KeyboardService;I)I

    goto :goto_0
.end method
