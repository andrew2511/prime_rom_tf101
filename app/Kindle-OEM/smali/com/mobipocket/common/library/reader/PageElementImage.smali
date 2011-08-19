.class public Lcom/mobipocket/common/library/reader/PageElementImage;
.super Lcom/mobipocket/common/library/reader/RenderedPageElement;
.source "PageElementImage.java"


# instance fields
.field private imageId:I


# direct methods
.method constructor <init>(IILjava/util/Vector;I)V
    .locals 0
    .parameter "beginPositionId"
    .parameter "positionId"
    .parameter "positions"
    .parameter "imageRecordIndex"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/mobipocket/common/library/reader/RenderedPageElement;-><init>(IILjava/util/Vector;)V

    .line 21
    iput p4, p0, Lcom/mobipocket/common/library/reader/PageElementImage;->imageId:I

    .line 22
    return-void
.end method


# virtual methods
.method public getImageId()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/mobipocket/common/library/reader/PageElementImage;->imageId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x2

    return v0
.end method
