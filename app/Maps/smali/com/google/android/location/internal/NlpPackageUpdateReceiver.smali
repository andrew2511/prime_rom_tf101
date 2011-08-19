.class public Lcom/google/android/location/internal/NlpPackageUpdateReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()V
    .locals 3

    const-class v1, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/c;

    invoke-interface {v0}, Lcom/google/android/location/internal/c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(Lcom/google/android/location/internal/c;)V
    .locals 2

    const-class v0, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;->a:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b(Lcom/google/android/location/internal/c;)V
    .locals 2

    const-class v0, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;->a:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {}, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;->a()V

    return-void
.end method
