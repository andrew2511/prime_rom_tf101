.class public Lcom/nuance/xt9/input/WriteThreadQueue$ArcQueueItem;
.super Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;
.source "WriteThreadQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/WriteThreadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArcQueueItem"
.end annotation


# instance fields
.field public mArc1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field public mArc2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field public mStartWord:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter
    .parameter "startWord"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, arc1:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    .local p2, arc2:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;-><init>(ILjava/lang/Object;)V

    .line 167
    iput-object p1, p0, Lcom/nuance/xt9/input/WriteThreadQueue$ArcQueueItem;->mArc1:Ljava/util/List;

    .line 168
    iput-object p2, p0, Lcom/nuance/xt9/input/WriteThreadQueue$ArcQueueItem;->mArc2:Ljava/util/List;

    .line 169
    iput-object p3, p0, Lcom/nuance/xt9/input/WriteThreadQueue$ArcQueueItem;->mStartWord:Ljava/lang/CharSequence;

    .line 170
    return-void
.end method
