.class public Lcom/mobipocket/common/library/reader/FoundItem;
.super Ljava/lang/Object;
.source "FoundItem.java"


# instance fields
.field private final pBeginExtractPosition:I

.field private final pBeginPosition:I

.field private final pBookIdentifier:Ljava/lang/String;

.field private final pEndPosition:I

.field private final pMaxPageNumber:I

.field private final pPage:I

.field private final pText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 8
    .parameter "bookIdentifier"
    .parameter "pageBeginPos"
    .parameter "beginPos"

    .prologue
    const/4 v2, 0x0

    .line 95
    add-int/lit8 v6, p3, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/mobipocket/common/library/reader/FoundItem;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    .line 96
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIIIILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/FoundItem;->pBookIdentifier:Ljava/lang/String;

    .line 79
    iput p2, p0, Lcom/mobipocket/common/library/reader/FoundItem;->pPage:I

    .line 80
    iput p3, p0, Lcom/mobipocket/common/library/reader/FoundItem;->pMaxPageNumber:I

    .line 81
    iput p4, p0, Lcom/mobipocket/common/library/reader/FoundItem;->pBeginExtractPosition:I

    .line 82
    iput p5, p0, Lcom/mobipocket/common/library/reader/FoundItem;->pBeginPosition:I

    .line 83
    iput p6, p0, Lcom/mobipocket/common/library/reader/FoundItem;->pEndPosition:I

    .line 84
    iput-object p7, p0, Lcom/mobipocket/common/library/reader/FoundItem;->pText:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public getBeginPosition()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/mobipocket/common/library/reader/FoundItem;->pBeginPosition:I

    return v0
.end method

.method public getBookMaxPages()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/mobipocket/common/library/reader/FoundItem;->pMaxPageNumber:I

    return v0
.end method

.method public getEndPosition()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/mobipocket/common/library/reader/FoundItem;->pEndPosition:I

    return v0
.end method

.method getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FoundItem;->pBookIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/mobipocket/common/library/reader/FoundItem;->pPage:I

    return v0
.end method

.method public getPageBeginPos()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/mobipocket/common/library/reader/FoundItem;->pBeginExtractPosition:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FoundItem;->pText:Ljava/lang/String;

    return-object v0
.end method
