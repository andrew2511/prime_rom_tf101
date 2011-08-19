.class Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;
.super Ljava/lang/Object;
.source "MobiBookSearchEvents.java"

# interfaces
.implements Lcom/mobipocket/common/library/reader/SearchEvents;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents$ResultOpener;
    }
.end annotation


# instance fields
.field private lowercaseQuery:Ljava/lang/String;

.field private onFinishedCallback:Lcom/amazon/foundation/ICallback;

.field private onResultCallback:Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;

.field private resultOpener:Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents$ResultOpener;

.field private statusTracker:Lcom/amazon/foundation/IStatusTracker;

.field private stopRequested:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/IStatusTracker;Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents$ResultOpener;)V
    .locals 1
    .parameter "query"
    .parameter "onResultCallback"
    .parameter "onFinishedCallback"
    .parameter "statusTracker"
    .parameter "resultOpener"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;->lowercaseQuery:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;->onResultCallback:Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;

    .line 35
    iput-object p3, p0, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;->onFinishedCallback:Lcom/amazon/foundation/ICallback;

    .line 36
    iput-object p4, p0, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    .line 37
    iput-object p5, p0, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;->resultOpener:Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents$ResultOpener;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;->stopRequested:Z

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;)Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents$ResultOpener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;->resultOpener:Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents$ResultOpener;

    return-object v0
.end method


# virtual methods
.method public close(Z)V
    .locals 1
    .parameter "found"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;->onFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0}, Lcom/amazon/foundation/ICallback;->execute()V

    .line 94
    return-void
.end method

.method public found(Lcom/mobipocket/common/library/reader/FoundItem;)V
    .locals 8
    .parameter "founditem"

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FoundItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;->lowercaseQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 64
    .local v3, matchStartIndex:I
    const/4 v4, 0x0

    .line 65
    .local v4, matchLength:I
    if-ltz v3, :cond_1

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;->lowercaseQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 77
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;->onResultCallback:Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;

    new-instance v0, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents$1;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FoundItem;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FoundItem;->getBeginPosition()I

    move-result v5

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents$1;-><init>(Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;Ljava/lang/String;IIILcom/mobipocket/common/library/reader/FoundItem;)V

    invoke-interface {v7, v0}, Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;->onResultFound(Lcom/amazon/kcp/reader/models/BookSearchResult;)V

    .line 89
    return-void

    .line 69
    :cond_1
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FoundItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;->lowercaseQuery:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 73
    const/4 v3, 0x0

    .line 74
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FoundItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_0
.end method

.method public init(II)V
    .locals 3
    .parameter "currentProgression"
    .parameter "maxProgression"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lcom/amazon/foundation/IStatusTracker;->setMaxProgress(J)V

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/amazon/foundation/IStatusTracker;->reportCurrentProgress(J)V

    .line 55
    return-void
.end method

.method public mustStop()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;->stopRequested:Z

    return v0
.end method

.method public requestStop()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;->stopRequested:Z

    .line 103
    return-void
.end method

.method public setPogression(I)V
    .locals 3
    .parameter "currentProgression"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/amazon/foundation/IStatusTracker;->reportCurrentProgress(J)V

    .line 44
    return-void
.end method
