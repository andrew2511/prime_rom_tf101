.class public Landroid_maps_conflict_avoidance/com/google/common/util/ArrayUtil;
.super Ljava/lang/Object;
.source "ArrayUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static copyIntoVector(Ljava/util/Vector;ILjava/util/Vector;)V
    .registers 6
    .parameter "src"
    .parameter "srcIndex"
    .parameter "dest"

    .prologue
    .line 384
    monitor-enter p2

    .line 385
    move v0, p1

    .local v0, i:I
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_14

    .line 386
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 388
    .local v1, request:Ljava/lang/Object;
    sub-int v2, v0, p1

    invoke-virtual {p2, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 390
    .end local v1           #request:Ljava/lang/Object;
    :cond_14
    monitor-exit p2

    .line 391
    return-void

    .line 390
    :catchall_16
    move-exception v2

    monitor-exit p2
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_16

    throw v2
.end method
