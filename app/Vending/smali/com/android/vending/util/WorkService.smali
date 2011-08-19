.class public Lcom/android/vending/util/WorkService;
.super Landroid/app/Service;
.source "WorkService.java"


# static fields
.field private static sInstance:Lcom/android/vending/util/WorkService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/android/vending/util/WorkService;->sInstance:Lcom/android/vending/util/WorkService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/android/vending/util/WorkService;
    .locals 2

    .prologue
    .line 19
    const-class v0, Lcom/android/vending/util/WorkService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/vending/util/WorkService;->sInstance:Lcom/android/vending/util/WorkService;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/android/vending/util/WorkService;

    invoke-direct {v1}, Lcom/android/vending/util/WorkService;-><init>()V

    sput-object v1, Lcom/android/vending/util/WorkService;->sInstance:Lcom/android/vending/util/WorkService;

    .line 22
    :cond_0
    sget-object v1, Lcom/android/vending/util/WorkService;->sInstance:Lcom/android/vending/util/WorkService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public runThreadAsService(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/vending/util/WorkService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 34
    new-instance v1, Lcom/android/vending/util/WorkService$1;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/android/vending/util/WorkService$1;-><init>(Lcom/android/vending/util/WorkService;Ljava/lang/Runnable;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v1}, Lcom/android/vending/util/WorkService$1;->start()V

    .line 41
    return-void
.end method
