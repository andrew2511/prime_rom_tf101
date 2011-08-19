.class public Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;
.super Lcom/amazon/kcp/reader/models/AbstractCMBPTOCItem;
.source "CMBPSectionTOCItem.java"

# interfaces
.implements Lcom/amazon/kcp/reader/models/ISectionTOCItem;


# instance fields
.field private articles:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/TOCItem;Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;)V
    .locals 1
    .parameter "item"
    .parameter "bookNavigator"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/models/AbstractCMBPTOCItem;-><init>(Lcom/mobipocket/common/library/reader/TOCItem;Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;)V

    .line 17
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->articles:Ljava/util/Vector;

    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v4, 0x0

    .line 37
    if-eqz p1, :cond_1

    instance-of v2, p1, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;

    if-eqz v2, :cond_1

    .line 39
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;

    move-object v1, v0

    .line 41
    .local v1, otherSection:Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v2}, Lcom/mobipocket/common/library/reader/TOCItem;->getLength()I

    move-result v2

    iget-object v3, v1, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v3}, Lcom/mobipocket/common/library/reader/TOCItem;->getLength()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v2}, Lcom/mobipocket/common/library/reader/TOCItem;->getLevel()I

    move-result v2

    iget-object v3, v1, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v3}, Lcom/mobipocket/common/library/reader/TOCItem;->getLevel()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v2}, Lcom/mobipocket/common/library/reader/TOCItem;->getStartPosition()I

    move-result v2

    iget-object v3, v1, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v3}, Lcom/mobipocket/common/library/reader/TOCItem;->getStartPosition()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v2}, Lcom/mobipocket/common/library/reader/TOCItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v3}, Lcom/mobipocket/common/library/reader/TOCItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v2}, Lcom/mobipocket/common/library/reader/TOCItem;->getTocClass()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v3}, Lcom/mobipocket/common/library/reader/TOCItem;->getTocClass()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v2}, Lcom/mobipocket/common/library/reader/TOCItem;->isSection()Z

    move-result v2

    iget-object v3, v1, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v3}, Lcom/mobipocket/common/library/reader/TOCItem;->isSection()Z

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v2}, Lcom/mobipocket/common/library/reader/TOCItem;->isTarget()Z

    move-result v2

    iget-object v3, v1, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v3}, Lcom/mobipocket/common/library/reader/TOCItem;->isTarget()Z

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v2}, Lcom/mobipocket/common/library/reader/TOCItem;->isTargetListTitle()Z

    move-result v2

    iget-object v3, v1, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v3}, Lcom/mobipocket/common/library/reader/TOCItem;->isTargetListTitle()Z

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 52
    .end local v1           #otherSection:Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;
    :goto_0
    return v2

    .restart local v1       #otherSection:Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;
    :cond_0
    move v2, v4

    .line 41
    goto :goto_0

    .end local v1           #otherSection:Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;
    :cond_1
    move v2, v4

    .line 52
    goto :goto_0
.end method

.method public getArticles()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->articles:Ljava/util/Vector;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    const/16 v1, 0x11

    .local v1, result:I
    const/16 v0, 0x25

    .line 59
    .local v0, prime:I
    mul-int v2, v0, v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v2}, Lcom/mobipocket/common/library/reader/TOCItem;->getLength()I

    move-result v2

    add-int/lit16 v1, v2, 0x275

    .line 60
    mul-int v2, v0, v1

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v3}, Lcom/mobipocket/common/library/reader/TOCItem;->getLevel()I

    move-result v3

    add-int v1, v2, v3

    .line 61
    mul-int v2, v0, v1

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v3}, Lcom/mobipocket/common/library/reader/TOCItem;->getStartPosition()I

    move-result v3

    add-int v1, v2, v3

    .line 62
    mul-int v2, v0, v1

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v3}, Lcom/mobipocket/common/library/reader/TOCItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 63
    mul-int v2, v0, v1

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v3}, Lcom/mobipocket/common/library/reader/TOCItem;->getTocClass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 64
    mul-int v2, v0, v1

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v3}, Lcom/mobipocket/common/library/reader/TOCItem;->isSection()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    add-int v1, v2, v3

    .line 65
    mul-int v2, v0, v1

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v3}, Lcom/mobipocket/common/library/reader/TOCItem;->isTarget()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    add-int v1, v2, v3

    .line 66
    mul-int v2, v0, v1

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v3}, Lcom/mobipocket/common/library/reader/TOCItem;->isTargetListTitle()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_2
    add-int v1, v2, v3

    .line 67
    return v1

    :cond_0
    move v3, v5

    .line 64
    goto :goto_0

    :cond_1
    move v3, v5

    .line 65
    goto :goto_1

    :cond_2
    move v3, v5

    .line 66
    goto :goto_2
.end method
