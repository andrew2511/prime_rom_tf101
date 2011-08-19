.class public Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;
.super Ljava/lang/Object;
.source "CompositeStatusTrackerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter$SubTracker;
    }
.end annotation


# instance fields
.field private delegate:Lcom/amazon/foundation/IStatusTracker;

.field private subTrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter$SubTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/IStatusTracker;)V
    .locals 1
    .parameter "delegate"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;->subTrackers:Ljava/util/List;

    .line 91
    iput-object p1, p0, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;->delegate:Lcom/amazon/foundation/IStatusTracker;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;->onProgressUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;->onMaxUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;)Lcom/amazon/foundation/IStatusTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;->delegate:Lcom/amazon/foundation/IStatusTracker;

    return-object v0
.end method

.method private onMaxUpdate()V
    .locals 8

    .prologue
    .line 147
    const-wide/16 v1, 0x0

    .line 148
    .local v1, overallMax:J
    iget-object v4, p0, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;->subTrackers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 149
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter$SubTracker;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter$SubTracker;

    .line 152
    .local v3, subTracker:Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter$SubTracker;
    iget v4, v3, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter$SubTracker;->progressWeight:I

    int-to-long v4, v4

    invoke-virtual {v3}, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter$SubTracker;->getMax()J

    move-result-wide v6

    mul-long/2addr v4, v6

    add-long/2addr v1, v4

    .line 153
    goto :goto_0

    .line 155
    .end local v3           #subTracker:Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter$SubTracker;
    :cond_0
    iget-object v4, p0, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;->delegate:Lcom/amazon/foundation/IStatusTracker;

    invoke-interface {v4, v1, v2}, Lcom/amazon/foundation/IStatusTracker;->setMaxProgress(J)V

    .line 156
    return-void
.end method

.method private onProgressUpdate()V
    .locals 8

    .prologue
    .line 131
    const-wide/16 v1, 0x0

    .line 132
    .local v1, overallProgress:J
    iget-object v4, p0, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;->subTrackers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 133
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter$SubTracker;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter$SubTracker;

    .line 136
    .local v3, subTracker:Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter$SubTracker;
    iget v4, v3, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter$SubTracker;->progressWeight:I

    int-to-long v4, v4

    invoke-virtual {v3}, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter$SubTracker;->getProgress()J

    move-result-wide v6

    mul-long/2addr v4, v6

    add-long/2addr v1, v4

    .line 137
    goto :goto_0

    .line 139
    .end local v3           #subTracker:Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter$SubTracker;
    :cond_0
    iget-object v4, p0, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;->delegate:Lcom/amazon/foundation/IStatusTracker;

    invoke-interface {v4, v1, v2}, Lcom/amazon/foundation/IStatusTracker;->reportCurrentProgress(J)V

    .line 140
    return-void
.end method


# virtual methods
.method public getSubTracker(I)Lcom/amazon/foundation/IStatusTracker;
    .locals 2
    .parameter

    .prologue
    .line 105
    new-instance v0, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter$SubTracker;

    invoke-direct {v0, p0, p1}, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter$SubTracker;-><init>(Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;I)V

    .line 106
    iget-object v1, p0, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;->subTrackers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    return-object v0
.end method

.method public getSubTracker(IJ)Lcom/amazon/foundation/IStatusTracker;
    .locals 1
    .parameter "weight"
    .parameter "max"

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;->getSubTracker(I)Lcom/amazon/foundation/IStatusTracker;

    move-result-object v0

    .line 121
    .local v0, subTracker:Lcom/amazon/foundation/IStatusTracker;
    invoke-interface {v0, p2, p3}, Lcom/amazon/foundation/IStatusTracker;->setMaxProgress(J)V

    .line 122
    return-object v0
.end method
