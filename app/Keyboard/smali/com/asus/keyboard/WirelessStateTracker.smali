.class public final Lcom/asus/keyboard/WirelessStateTracker;
.super Ljava/lang/Object;
.source "WirelessStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/keyboard/WirelessStateTracker$1;,
        Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;,
        Lcom/asus/keyboard/WirelessStateTracker$WifiStateTracker;,
        Lcom/asus/keyboard/WirelessStateTracker$StateTracker;
    }
.end annotation


# static fields
.field private static sBluetoothState:Lcom/asus/keyboard/WirelessStateTracker$StateTracker;

.field private static sWifiState:Lcom/asus/keyboard/WirelessStateTracker$StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/asus/keyboard/WirelessStateTracker;->sWifiState:Lcom/asus/keyboard/WirelessStateTracker$StateTracker;

    .line 21
    sput-object v0, Lcom/asus/keyboard/WirelessStateTracker;->sBluetoothState:Lcom/asus/keyboard/WirelessStateTracker$StateTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    return-void
.end method

.method public static getBluetoothStateTracker(Landroid/content/Context;)Lcom/asus/keyboard/WirelessStateTracker$StateTracker;
    .locals 3
    .parameter

    .prologue
    .line 33
    const-class v0, Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/asus/keyboard/WirelessStateTracker;->sBluetoothState:Lcom/asus/keyboard/WirelessStateTracker$StateTracker;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/asus/keyboard/WirelessStateTracker$BluetoothStateTracker;-><init>(Lcom/asus/keyboard/WirelessStateTracker$1;)V

    sput-object v1, Lcom/asus/keyboard/WirelessStateTracker;->sBluetoothState:Lcom/asus/keyboard/WirelessStateTracker$StateTracker;

    .line 37
    :cond_0
    sget-object v1, Lcom/asus/keyboard/WirelessStateTracker;->sBluetoothState:Lcom/asus/keyboard/WirelessStateTracker$StateTracker;

    monitor-exit v0

    return-object v1

    .line 38
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getWifiStateTracker(Landroid/content/Context;)Lcom/asus/keyboard/WirelessStateTracker$StateTracker;
    .locals 3
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/asus/keyboard/WirelessStateTracker$WifiStateTracker;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/asus/keyboard/WirelessStateTracker;->sWifiState:Lcom/asus/keyboard/WirelessStateTracker$StateTracker;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/asus/keyboard/WirelessStateTracker$WifiStateTracker;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/asus/keyboard/WirelessStateTracker$WifiStateTracker;-><init>(Lcom/asus/keyboard/WirelessStateTracker$1;)V

    sput-object v1, Lcom/asus/keyboard/WirelessStateTracker;->sWifiState:Lcom/asus/keyboard/WirelessStateTracker$StateTracker;

    .line 28
    :cond_0
    sget-object v1, Lcom/asus/keyboard/WirelessStateTracker;->sWifiState:Lcom/asus/keyboard/WirelessStateTracker$StateTracker;

    monitor-exit v0

    return-object v1

    .line 29
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
