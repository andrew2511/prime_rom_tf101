.class public Lcom/nuance/xt9/input/WriteThreadQueue$RecognizeQueueItem;
.super Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;
.source "WriteThreadQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/WriteThreadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognizeQueueItem"
.end annotation


# instance fields
.field public mStartWord:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "startWord"

    .prologue
    .line 176
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;-><init>(ILjava/lang/Object;)V

    .line 177
    iput-object p1, p0, Lcom/nuance/xt9/input/WriteThreadQueue$RecognizeQueueItem;->mStartWord:Ljava/lang/CharSequence;

    .line 178
    return-void
.end method
