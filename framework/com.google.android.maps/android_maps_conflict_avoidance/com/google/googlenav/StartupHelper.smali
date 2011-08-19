.class public Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;
.super Ljava/lang/Object;
.source "StartupHelper.java"


# static fields
.field private static startupCallbacksForBgThread:Ljava/util/Vector;

.field private static startupCallbacksForUiThread:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;->startupCallbacksForUiThread:Ljava/util/Vector;

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;->startupCallbacksForBgThread:Ljava/util/Vector;

    return-void
.end method

.method public static addPostStartupBgCallback(Ljava/lang/Runnable;)V
    .registers 2
    .parameter "runnable"

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;->addPostStartupCallback(Ljava/lang/Runnable;Z)V

    .line 169
    return-void
.end method

.method private static addPostStartupCallback(Ljava/lang/Runnable;Z)V
    .registers 4
    .parameter "runnable"
    .parameter "needsUiThread"

    .prologue
    .line 199
    const-class v0, Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;

    monitor-enter v0

    .line 205
    :try_start_3
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;->startupCallbacksForUiThread:Ljava/util/Vector;

    if-nez v1, :cond_c

    .line 209
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 210
    monitor-exit v0

    .line 219
    :goto_b
    return-void

    .line 213
    :cond_c
    if-eqz p1, :cond_18

    .line 214
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;->startupCallbacksForUiThread:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 218
    :goto_13
    monitor-exit v0

    goto :goto_b

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1

    .line 216
    :cond_18
    :try_start_18
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;->startupCallbacksForBgThread:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_15

    goto :goto_13
.end method
