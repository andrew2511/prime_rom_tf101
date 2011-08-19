.class public Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;
.super Lcom/google/android/music/sync/common/ClosableBlockingQueue;
.source "AbstractSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/common/AbstractSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownstreamMergeQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/music/sync/common/ClosableBlockingQueue",
        "<",
        "Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueueEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "capacity"

    .prologue
    .line 553
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/common/ClosableBlockingQueue;-><init>(I)V

    .line 554
    return-void
.end method
