.class Landroid_maps_conflict_avoidance/com/google/googlenav/android/TaskRunnerManager$TaskRunnerHolder;
.super Ljava/lang/Object;
.source "TaskRunnerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/googlenav/android/TaskRunnerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskRunnerHolder"
.end annotation


# static fields
.field private static final instance:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 28
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    new-instance v1, Landroid_maps_conflict_avoidance/com/google/common/lang/BackgroundThreadFactory;

    new-instance v2, Landroid_maps_conflict_avoidance/com/google/common/lang/BaseThreadFactory;

    invoke-direct {v2}, Landroid_maps_conflict_avoidance/com/google/common/lang/BaseThreadFactory;-><init>()V

    invoke-direct {v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/lang/BackgroundThreadFactory;-><init>(Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;)V

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;-><init>(Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/android/TaskRunnerManager$TaskRunnerHolder;->instance:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/android/TaskRunnerManager$TaskRunnerHolder;->instance:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    return-object v0
.end method
