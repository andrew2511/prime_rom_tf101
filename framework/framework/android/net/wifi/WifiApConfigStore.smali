.class Landroid/net/wifi/WifiApConfigStore;
.super Ljava/lang/Object;
.source "WifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiApConfigStore$FileReadWriteHandler;
    }
.end annotation


# static fields
.field private static final AP_CONFIG_FILE:Ljava/lang/String; = null

.field private static final AP_CONFIG_FILE_VERSION:I = 0x1

.field private static final READ_AP_CONFIG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiApConfigStore"

.field private static final WRITE_AP_CONFIG:I = 0x2

.field private static sApConfig:Landroid/net/wifi/WifiConfiguration;

.field private static final sApConfigLock:Ljava/lang/Object;

.field private static sContext:Landroid/content/Context;

.field private static sFileReadWriteHandler:Landroid/net/wifi/WifiApConfigStore$FileReadWriteHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/softap.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    .line 54
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiApConfigStore;->sApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiApConfigStore;->sApConfigLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Landroid/net/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Landroid/net/wifi/WifiApConfigStore;->sApConfigLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    sput-object p0, Landroid/net/wifi/WifiApConfigStore;->sApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Landroid/net/wifi/WifiApConfigStore;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static getApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 3

    .prologue
    .line 81
    sget-object v0, Landroid/net/wifi/WifiApConfigStore;->sApConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_3
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    sget-object v2, Landroid/net/wifi/WifiApConfigStore;->sApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    monitor-exit v0

    return-object v1

    .line 83
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method static initialize(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 62
    sput-object p0, Landroid/net/wifi/WifiApConfigStore;->sContext:Landroid/content/Context;

    .line 65
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiApConfigStore"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, configThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 67
    new-instance v1, Landroid/net/wifi/WifiApConfigStore$FileReadWriteHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiApConfigStore$FileReadWriteHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/net/wifi/WifiApConfigStore;->sFileReadWriteHandler:Landroid/net/wifi/WifiApConfigStore$FileReadWriteHandler;

    .line 68
    sget-object v1, Landroid/net/wifi/WifiApConfigStore;->sFileReadWriteHandler:Landroid/net/wifi/WifiApConfigStore$FileReadWriteHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 69
    return-void
.end method

.method static setApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .registers 4
    .parameter "config"

    .prologue
    .line 73
    sget-object v0, Landroid/net/wifi/WifiApConfigStore;->sApConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_3
    sput-object p0, Landroid/net/wifi/WifiApConfigStore;->sApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 75
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_16

    .line 76
    sget-object v0, Landroid/net/wifi/WifiApConfigStore;->sFileReadWriteHandler:Landroid/net/wifi/WifiApConfigStore$FileReadWriteHandler;

    const/4 v1, 0x2

    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2, p0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 78
    return-void

    .line 75
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method
