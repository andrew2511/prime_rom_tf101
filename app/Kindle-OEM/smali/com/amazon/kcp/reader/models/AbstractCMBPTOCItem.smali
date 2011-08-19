.class public abstract Lcom/amazon/kcp/reader/models/AbstractCMBPTOCItem;
.super Ljava/lang/Object;
.source "AbstractCMBPTOCItem.java"

# interfaces
.implements Lcom/amazon/kcp/reader/models/ITOCItem;


# instance fields
.field protected bookNavigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

.field protected item:Lcom/mobipocket/common/library/reader/TOCItem;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/TOCItem;Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;)V
    .locals 0
    .parameter "item"
    .parameter "bookNavigator"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/AbstractCMBPTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    .line 26
    iput-object p2, p0, Lcom/amazon/kcp/reader/models/AbstractCMBPTOCItem;->bookNavigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    .line 27
    return-void
.end method


# virtual methods
.method public getAuthors()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/AbstractCMBPTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    const-string v1, "author"

    invoke-interface {v0, v1}, Lcom/mobipocket/common/library/reader/TOCItem;->getNamedTagString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptions()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/AbstractCMBPTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    const-string v1, "description"

    invoke-interface {v0, v1}, Lcom/mobipocket/common/library/reader/TOCItem;->getNamedTagString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstLocation()I
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/AbstractCMBPTOCItem;->getFirstPosition()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/CMBPUserLocation;->getAmznUserLocationFromPosition(I)I

    move-result v0

    return v0
.end method

.method public getFirstPosition()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/AbstractCMBPTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v0}, Lcom/mobipocket/common/library/reader/TOCItem;->getStartPosition()I

    move-result v0

    return v0
.end method

.method public getImages()[[B
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/AbstractCMBPTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    const-string v1, "image"

    invoke-interface {v0, v1}, Lcom/mobipocket/common/library/reader/TOCItem;->getNamedTagBinary(Ljava/lang/String;)[[B

    move-result-object v0

    return-object v0
.end method

.method public getLastLocation()I
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/AbstractCMBPTOCItem;->getLastPosition()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/CMBPUserLocation;->getAmznUserLocationFromPosition(I)I

    move-result v0

    return v0
.end method

.method public getLastPosition()I
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/AbstractCMBPTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v0}, Lcom/mobipocket/common/library/reader/TOCItem;->getStartPosition()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/AbstractCMBPTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v1}, Lcom/mobipocket/common/library/reader/TOCItem;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/AbstractCMBPTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v0}, Lcom/mobipocket/common/library/reader/TOCItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gotoLocation()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/AbstractCMBPTOCItem;->bookNavigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/AbstractCMBPTOCItem;->item:Lcom/mobipocket/common/library/reader/TOCItem;

    invoke-interface {v1}, Lcom/mobipocket/common/library/reader/TOCItem;->getStartPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->gotoPosition(I)V

    .line 37
    return-void
.end method
