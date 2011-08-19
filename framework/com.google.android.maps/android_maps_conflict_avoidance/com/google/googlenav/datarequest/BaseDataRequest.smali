.class public abstract Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;
.super Ljava/lang/Object;
.source "BaseDataRequest.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;


# instance fields
.field private volatile isCancelled:Z

.field private serverFailureCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;->isCancelled:Z

    .line 18
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;->serverFailureCount:I

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;->isCancelled:Z

    return v0
.end method

.method public isForeground()Z
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public isImmediate()Z
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public isSubmission()Z
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public onServerFailure()V
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;->serverFailureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;->serverFailureCount:I

    .line 83
    return-void
.end method

.method public retryOnFailure()Z
    .registers 3

    .prologue
    .line 78
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;->serverFailureCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
