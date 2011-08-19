.class public Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueueEntry;
.super Landroid/util/Pair;
.source "AbstractSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/common/AbstractSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownstreamMergeQueueEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pair",
        "<",
        "Lcom/google/android/music/sync/common/QueueableSyncEntity;",
        "Lcom/google/android/music/sync/common/QueueableSyncEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/music/sync/common/QueueableSyncEntity;Lcom/google/android/music/sync/common/QueueableSyncEntity;)V
    .locals 0
    .parameter "e1"
    .parameter "e2"

    .prologue
    .line 547
    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 548
    return-void
.end method
