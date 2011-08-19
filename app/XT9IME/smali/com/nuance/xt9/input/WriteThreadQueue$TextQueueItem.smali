.class public Lcom/nuance/xt9/input/WriteThreadQueue$TextQueueItem;
.super Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;
.source "WriteThreadQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/WriteThreadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextQueueItem"
.end annotation


# instance fields
.field public mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 192
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;-><init>(ILjava/lang/Object;)V

    .line 193
    iput-object p1, p0, Lcom/nuance/xt9/input/WriteThreadQueue$TextQueueItem;->mText:Ljava/lang/CharSequence;

    .line 194
    return-void
.end method
