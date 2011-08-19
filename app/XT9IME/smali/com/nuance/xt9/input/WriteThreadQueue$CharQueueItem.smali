.class public Lcom/nuance/xt9/input/WriteThreadQueue$CharQueueItem;
.super Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;
.source "WriteThreadQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/WriteThreadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharQueueItem"
.end annotation


# instance fields
.field public mChar:C


# direct methods
.method public constructor <init>(C)V
    .locals 2
    .parameter "ch"

    .prologue
    .line 184
    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;-><init>(ILjava/lang/Object;)V

    .line 185
    iput-char p1, p0, Lcom/nuance/xt9/input/WriteThreadQueue$CharQueueItem;->mChar:C

    .line 186
    return-void
.end method
