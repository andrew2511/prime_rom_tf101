.class public Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;
.super Ljava/lang/Object;
.source "CMBPAnnotation.java"

# interfaces
.implements Lcom/amazon/kcp/reader/models/IAnnotation;


# instance fields
.field private pAnnotation:Lcom/mobipocket/common/library/reader/AnnotationItem;

.field private pNavigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;Lcom/mobipocket/common/library/reader/AnnotationItem;)V
    .locals 0
    .parameter "navigator"
    .parameter "annotation"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;->pNavigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    .line 24
    iput-object p2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;->pAnnotation:Lcom/mobipocket/common/library/reader/AnnotationItem;

    .line 25
    return-void
.end method


# virtual methods
.method protected getAnnotationItem()Lcom/mobipocket/common/library/reader/AnnotationItem;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;->pAnnotation:Lcom/mobipocket/common/library/reader/AnnotationItem;

    return-object v0
.end method

.method public getBookText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;->pAnnotation:Lcom/mobipocket/common/library/reader/AnnotationItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;->pAnnotation:Lcom/mobipocket/common/library/reader/AnnotationItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 42
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 37
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 39
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getUserLocation()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;->pAnnotation:Lcom/mobipocket/common/library/reader/AnnotationItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/CMBPUserLocation;->getAmznUserLocationFromPosition(I)I

    move-result v0

    return v0
.end method

.method public getUserText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;->pAnnotation:Lcom/mobipocket/common/library/reader/AnnotationItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gotoLocation()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;->pNavigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;->pAnnotation:Lcom/mobipocket/common/library/reader/AnnotationItem;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->openAnnotation(Lcom/mobipocket/common/library/reader/AnnotationItem;)V

    .line 59
    return-void
.end method

.method public isEqual(Lcom/amazon/kcp/reader/models/IAnnotation;)Z
    .locals 4
    .parameter "other"

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, equal:Z
    instance-of v2, p1, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;

    if-eqz v2, :cond_0

    .line 77
    check-cast p1, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;

    .end local p1
    iget-object v1, p1, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;->pAnnotation:Lcom/mobipocket/common/library/reader/AnnotationItem;

    .line 78
    .local v1, otherAnnotation:Lcom/mobipocket/common/library/reader/AnnotationItem;
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;->pAnnotation:Lcom/mobipocket/common/library/reader/AnnotationItem;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v2

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;->pAnnotation:Lcom/mobipocket/common/library/reader/AnnotationItem;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEndPosition()I

    move-result v2

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEndPosition()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;->pAnnotation:Lcom/mobipocket/common/library/reader/AnnotationItem;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getPageNumber()I

    move-result v2

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getPageNumber()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;->pAnnotation:Lcom/mobipocket/common/library/reader/AnnotationItem;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getPosition()I

    move-result v2

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getPosition()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;->pAnnotation:Lcom/mobipocket/common/library/reader/AnnotationItem;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getType()I

    move-result v2

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getType()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPAnnotation;->pAnnotation:Lcom/mobipocket/common/library/reader/AnnotationItem;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    .line 85
    .end local v1           #otherAnnotation:Lcom/mobipocket/common/library/reader/AnnotationItem;
    :cond_0
    :goto_0
    return v0

    .line 78
    .restart local v1       #otherAnnotation:Lcom/mobipocket/common/library/reader/AnnotationItem;
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method
