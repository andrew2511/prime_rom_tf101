.class Landroid/hardware/SensorManager$SensorEventPool;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorEventPool"
.end annotation


# instance fields
.field private mNumItemsInPool:I

.field private final mPool:[Landroid/hardware/SensorEvent;

.field private final mPoolSize:I

.field final synthetic this$0:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager;I)V
    .registers 4
    .parameter
    .parameter "poolSize"

    .prologue
    .line 393
    iput-object p1, p0, Landroid/hardware/SensorManager$SensorEventPool;->this$0:Landroid/hardware/SensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput p2, p0, Landroid/hardware/SensorManager$SensorEventPool;->mPoolSize:I

    .line 395
    iput p2, p0, Landroid/hardware/SensorManager$SensorEventPool;->mNumItemsInPool:I

    .line 396
    new-array v0, p2, [Landroid/hardware/SensorEvent;

    iput-object v0, p0, Landroid/hardware/SensorManager$SensorEventPool;->mPool:[Landroid/hardware/SensorEvent;

    .line 397
    return-void
.end method

.method private createSensorEvent()Landroid/hardware/SensorEvent;
    .registers 3

    .prologue
    .line 390
    new-instance v0, Landroid/hardware/SensorEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/SensorEvent;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method getFromPool()Landroid/hardware/SensorEvent;
    .registers 5

    .prologue
    .line 400
    const/4 v1, 0x0

    .line 401
    .local v1, t:Landroid/hardware/SensorEvent;
    monitor-enter p0

    .line 402
    :try_start_2
    iget v2, p0, Landroid/hardware/SensorManager$SensorEventPool;->mNumItemsInPool:I

    if-lez v2, :cond_1b

    .line 404
    iget v2, p0, Landroid/hardware/SensorManager$SensorEventPool;->mPoolSize:I

    iget v3, p0, Landroid/hardware/SensorManager$SensorEventPool;->mNumItemsInPool:I

    sub-int v0, v2, v3

    .line 405
    .local v0, index:I
    iget-object v2, p0, Landroid/hardware/SensorManager$SensorEventPool;->mPool:[Landroid/hardware/SensorEvent;

    aget-object v1, v2, v0

    .line 406
    iget-object v2, p0, Landroid/hardware/SensorManager$SensorEventPool;->mPool:[Landroid/hardware/SensorEvent;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 407
    iget v2, p0, Landroid/hardware/SensorManager$SensorEventPool;->mNumItemsInPool:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/hardware/SensorManager$SensorEventPool;->mNumItemsInPool:I

    .line 409
    .end local v0           #index:I
    :cond_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_23

    .line 410
    if-nez v1, :cond_22

    .line 413
    invoke-direct {p0}, Landroid/hardware/SensorManager$SensorEventPool;->createSensorEvent()Landroid/hardware/SensorEvent;

    move-result-object v1

    .line 415
    :cond_22
    return-object v1

    .line 409
    :catchall_23
    move-exception v2

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v2
.end method

.method returnToPool(Landroid/hardware/SensorEvent;)V
    .registers 5
    .parameter "t"

    .prologue
    .line 419
    monitor-enter p0

    .line 421
    :try_start_1
    iget v1, p0, Landroid/hardware/SensorManager$SensorEventPool;->mNumItemsInPool:I

    iget v2, p0, Landroid/hardware/SensorManager$SensorEventPool;->mPoolSize:I

    if-ge v1, v2, :cond_17

    .line 423
    iget v1, p0, Landroid/hardware/SensorManager$SensorEventPool;->mNumItemsInPool:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/hardware/SensorManager$SensorEventPool;->mNumItemsInPool:I

    .line 424
    iget v1, p0, Landroid/hardware/SensorManager$SensorEventPool;->mPoolSize:I

    iget v2, p0, Landroid/hardware/SensorManager$SensorEventPool;->mNumItemsInPool:I

    sub-int v0, v1, v2

    .line 425
    .local v0, index:I
    iget-object v1, p0, Landroid/hardware/SensorManager$SensorEventPool;->mPool:[Landroid/hardware/SensorEvent;

    aput-object p1, v1, v0

    .line 427
    .end local v0           #index:I
    :cond_17
    monitor-exit p0

    .line 428
    return-void

    .line 427
    :catchall_19
    move-exception v1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v1
.end method
