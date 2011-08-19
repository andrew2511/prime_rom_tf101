.class final Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;
.super Lcom/asus/keyboard/WirelessStateTracker$StateTracker;
.source "WirelessStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/keyboard/WirelessStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BluetoothStateTracker"
.end annotation


# instance fields
.field private mBTAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/keyboard/WirelessStateTracker$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method private static bluetoothStateToFiveState(I)I
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 324
    packed-switch p0, :pswitch_data_0

    .line 334
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 326
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 328
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 330
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 332
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 279
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 280
    iget-object v0, p0, Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x4

    .line 284
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v0

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 312
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 316
    .local v0, bluetoothState:I
    invoke-static {v0}, Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 290
    const-string v0, "WirelessStateTracker"

    const-string v1, "No BluetoothAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_0
    return-void

    .line 297
    :cond_0
    new-instance v0, Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker$1;

    invoke-direct {v0, p0, p2}, Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker$1;-><init>(Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
