.class Lcom/android/vending/DownloadManagerBroadcastReceiver$InstallingStatusTracker;
.super Ljava/lang/Object;
.source "DownloadManagerBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/DownloadManagerBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstallingStatusTracker"
.end annotation


# static fields
.field private static mInstalling:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$InstallingStatusTracker;->mInstalling:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/DownloadManagerBroadcastReceiver$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/vending/DownloadManagerBroadcastReceiver$InstallingStatusTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public canBeginInstall(Ljava/lang/String;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 60
    const-class v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$InstallingStatusTracker;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcom/android/vending/DownloadManagerBroadcastReceiver$InstallingStatusTracker;->mInstalling:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    .line 65
    :goto_0
    return v0

    .line 64
    :cond_0
    sget-object v1, Lcom/android/vending/DownloadManagerBroadcastReceiver$InstallingStatusTracker;->mInstalling:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finishedInstall(Ljava/lang/String;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 71
    const-class v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$InstallingStatusTracker;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/android/vending/DownloadManagerBroadcastReceiver$InstallingStatusTracker;->mInstalling:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 73
    monitor-exit v0

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
