.class public Lcom/nuance/xt9/input/XT9KeyLayoutMap;
.super Lcom/nuance/xt9/input/XT9KCMNative;
.source "XT9KeyLayoutMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/xt9/input/XT9KeyLayoutMap$UnavailableException;
    }
.end annotation


# static fields
.field private static sInstances:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/xt9/input/XT9KeyLayoutMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mKLFile:Ljava/lang/String;

.field private mPtr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/nuance/xt9/input/XT9KeyLayoutMap;->sInstances:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "klFile"
    .parameter "ptr"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/nuance/xt9/input/XT9KCMNative;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/nuance/xt9/input/XT9KeyLayoutMap;->mKLFile:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/nuance/xt9/input/XT9KeyLayoutMap;->mPtr:I

    .line 19
    return-void
.end method

.method public static load(Ljava/lang/String;)Lcom/nuance/xt9/input/XT9KeyLayoutMap;
    .locals 5
    .parameter "klFile"

    .prologue
    .line 30
    sget-object v3, Lcom/nuance/xt9/input/XT9KeyLayoutMap;->sInstances:Landroid/util/SparseArray;

    monitor-enter v3

    .line 31
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    monitor-exit v3

    move-object v3, v4

    .line 42
    :goto_0
    return-object v3

    .line 33
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 34
    .local v0, deviceId:I
    sget-object v4, Lcom/nuance/xt9/input/XT9KeyLayoutMap;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/XT9KeyLayoutMap;

    .line 35
    .local v1, map:Lcom/nuance/xt9/input/XT9KeyLayoutMap;
    if-nez v1, :cond_2

    .line 36
    invoke-static {p0}, Lcom/nuance/xt9/input/XT9KeyLayoutMap;->nativeLoad(Ljava/lang/String;)I

    move-result v2

    .line 37
    .local v2, ptr:I
    if-eqz v2, :cond_2

    .line 38
    new-instance v1, Lcom/nuance/xt9/input/XT9KeyLayoutMap;

    .end local v1           #map:Lcom/nuance/xt9/input/XT9KeyLayoutMap;
    invoke-direct {v1, p0, v2}, Lcom/nuance/xt9/input/XT9KeyLayoutMap;-><init>(Ljava/lang/String;I)V

    .line 39
    .restart local v1       #map:Lcom/nuance/xt9/input/XT9KeyLayoutMap;
    sget-object v4, Lcom/nuance/xt9/input/XT9KeyLayoutMap;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    .end local v2           #ptr:I
    :cond_2
    monitor-exit v3

    move-object v3, v1

    goto :goto_0

    .line 43
    .end local v0           #deviceId:I
    .end local v1           #map:Lcom/nuance/xt9/input/XT9KeyLayoutMap;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeLoad(Ljava/lang/String;)I
.end method

.method private static native nativeMap(II)I
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 23
    iget v0, p0, Lcom/nuance/xt9/input/XT9KeyLayoutMap;->mPtr:I

    if-eqz v0, :cond_0

    .line 24
    iget v0, p0, Lcom/nuance/xt9/input/XT9KeyLayoutMap;->mPtr:I

    invoke-static {v0}, Lcom/nuance/xt9/input/XT9KeyLayoutMap;->nativeDispose(I)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/XT9KeyLayoutMap;->mPtr:I

    .line 27
    :cond_0
    return-void
.end method

.method public map(I)I
    .locals 1
    .parameter "scanCode"

    .prologue
    .line 47
    iget v0, p0, Lcom/nuance/xt9/input/XT9KeyLayoutMap;->mPtr:I

    invoke-static {v0, p1}, Lcom/nuance/xt9/input/XT9KeyLayoutMap;->nativeMap(II)I

    move-result v0

    return v0
.end method
