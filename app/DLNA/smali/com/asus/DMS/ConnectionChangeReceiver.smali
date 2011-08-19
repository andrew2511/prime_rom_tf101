.class public Lcom/asus/DMS/ConnectionChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionChangeReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastWifiStateUp:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "aContext"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/DMS/ConnectionChangeReceiver;->mContext:Landroid/content/Context;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/DMS/ConnectionChangeReceiver;->mLastWifiStateUp:Z

    .line 56
    iput-object p1, p0, Lcom/asus/DMS/ConnectionChangeReceiver;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public static IsNetworkUp(Landroid/content/Context;)Z
    .locals 4
    .parameter "aContext"

    .prologue
    const/4 v3, 0x0

    .line 39
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 40
    .local v0, theNetworkInfo:Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    move v1, v3

    .line 49
    :goto_0
    return v1

    .line 43
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_1

    move v1, v3

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    .line 47
    goto :goto_0

    .line 49
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static RegisterConnectionChangeReceiver(Landroid/content/Context;)Landroid/content/BroadcastReceiver;
    .locals 3
    .parameter "aContext"

    .prologue
    .line 23
    new-instance v0, Lcom/asus/DMS/ConnectionChangeReceiver;

    invoke-direct {v0, p0}, Lcom/asus/DMS/ConnectionChangeReceiver;-><init>(Landroid/content/Context;)V

    .line 24
    .local v0, theBroadcastReceiver:Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 25
    return-object v0
.end method

.method public static UnregisterConnectionChangeReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0
    .parameter "aContext"
    .parameter "aBroadcastReceiver"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 33
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lcom/asus/DMS/ConnectionChangeReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/asus/DMS/ConnectionChangeReceiver;->IsNetworkUp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    iget-boolean v0, p0, Lcom/asus/DMS/ConnectionChangeReceiver;->mLastWifiStateUp:Z

    if-ne v0, v2, :cond_0

    .line 68
    const-string v0, "Wifi is down"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 69
    iput-boolean v1, p0, Lcom/asus/DMS/ConnectionChangeReceiver;->mLastWifiStateUp:Z

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iput-boolean v2, p0, Lcom/asus/DMS/ConnectionChangeReceiver;->mLastWifiStateUp:Z

    goto :goto_0
.end method
