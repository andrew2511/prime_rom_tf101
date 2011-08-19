.class Lcom/mobipocket/common/library/reader/ImageElement;
.super Lcom/mobipocket/common/library/reader/FlowElement;
.source "ImageElement.java"


# instance fields
.field private final belongingTo:Lcom/mobipocket/common/library/reader/bookreader/EBook;

.field private hasLoadingError:Z

.field private final imagerecordNumber:I

.field private pImage:Lcom/amazon/system/drawing/Image;

.field private final pImageFactory:Lcom/amazon/system/drawing/ImageFactory;

.field private final srcType:I

.field private final style:I


# direct methods
.method public constructor <init>(Lcom/amazon/system/drawing/ImageFactory;Lcom/mobipocket/common/parser/styles/StyleDescriptor;Lcom/mobipocket/common/library/reader/bookreader/EBook;IIILcom/amazon/system/drawing/Dimension;I)V
    .locals 2
    .parameter "imageFactory"
    .parameter "styleDescriptor"
    .parameter "currentEBook"
    .parameter "imagerecordNumber"
    .parameter "style"
    .parameter "srcType"
    .parameter "maxDimension"
    .parameter "bookPosition"

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/FlowElement;-><init>()V

    .line 29
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/ImageElement;->hasLoadingError:Z

    .line 33
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/ImageElement;->pImageFactory:Lcom/amazon/system/drawing/ImageFactory;

    .line 34
    invoke-virtual {p0, p2}, Lcom/mobipocket/common/library/reader/ImageElement;->setStyleDescriptor(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 35
    iput-object p3, p0, Lcom/mobipocket/common/library/reader/ImageElement;->belongingTo:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    .line 36
    iput p4, p0, Lcom/mobipocket/common/library/reader/ImageElement;->imagerecordNumber:I

    .line 37
    iput p5, p0, Lcom/mobipocket/common/library/reader/ImageElement;->style:I

    .line 38
    iput p6, p0, Lcom/mobipocket/common/library/reader/ImageElement;->srcType:I

    .line 39
    invoke-virtual {p0, p8}, Lcom/mobipocket/common/library/reader/ImageElement;->setLastSubElementBookPosition(I)V

    .line 41
    invoke-direct {p0, p7}, Lcom/mobipocket/common/library/reader/ImageElement;->generateImage(Lcom/amazon/system/drawing/Dimension;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/ImageElement;->hasLoadingError:Z

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->updateHeight()V

    .line 47
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/ImageElement;->hasLoadingError:Z

    goto :goto_0
.end method

.method private generateImage(Lcom/amazon/system/drawing/Dimension;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 57
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/ImageElement;->belongingTo:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget v1, p0, Lcom/mobipocket/common/library/reader/ImageElement;->imagerecordNumber:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getImageBytes(I)[B

    move-result-object v0

    .line 58
    if-nez v0, :cond_0

    .line 60
    iput-object v4, p0, Lcom/mobipocket/common/library/reader/ImageElement;->pImage:Lcom/amazon/system/drawing/Image;

    move v0, v3

    .line 82
    :goto_0
    return v0

    .line 64
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/ImageElement;->pImageFactory:Lcom/amazon/system/drawing/ImageFactory;

    iget v2, p0, Lcom/mobipocket/common/library/reader/ImageElement;->srcType:I

    invoke-interface {v1, v0, p1, v2}, Lcom/amazon/system/drawing/ImageFactory;->getNotCachedImage([BLcom/amazon/system/drawing/Dimension;I)Lcom/amazon/system/drawing/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/ImageElement;->pImage:Lcom/amazon/system/drawing/Image;

    .line 65
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/ImageElement;->pImage:Lcom/amazon/system/drawing/Image;

    if-nez v0, :cond_1

    move v0, v3

    .line 66
    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/ImageElement;->pImage:Lcom/amazon/system/drawing/Image;

    invoke-interface {v0}, Lcom/amazon/system/drawing/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/ImageElement;->setWidth(I)V

    .line 70
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/ImageElement;->pImage:Lcom/amazon/system/drawing/Image;

    invoke-interface {v0}, Lcom/amazon/system/drawing/Image;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/ImageElement;->setHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    const/4 v0, 0x1

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    iput-object v4, p0, Lcom/mobipocket/common/library/reader/ImageElement;->pImage:Lcom/amazon/system/drawing/Image;

    move v0, v3

    .line 75
    goto :goto_0

    .line 78
    :catch_1
    move-exception v0

    iput-object v4, p0, Lcom/mobipocket/common/library/reader/ImageElement;->pImage:Lcom/amazon/system/drawing/Image;

    move v0, v3

    .line 80
    goto :goto_0
.end method

.method private updateHeight()V
    .locals 3

    .prologue
    .line 97
    iget v0, p0, Lcom/mobipocket/common/library/reader/ImageElement;->style:I

    packed-switch v0, :pswitch_data_0

    .line 117
    :pswitch_0
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/ImageElement;->setBaseLineHeight(I)V

    .line 118
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getBaseLineHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/ImageElement;->setDescentHeight(I)V

    .line 120
    :goto_0
    :pswitch_1
    return-void

    .line 104
    :pswitch_2
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getTextProperties()Lcom/mobipocket/common/parser/TextProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->getBaselinePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/ImageElement;->setBaseLineHeight(I)V

    .line 105
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getBaseLineHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/ImageElement;->setDescentHeight(I)V

    goto :goto_0

    .line 111
    :pswitch_3
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getTextProperties()Lcom/mobipocket/common/parser/TextProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/system/drawing/Font;->getBaselinePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getTextProperties()Lcom/mobipocket/common/parser/TextProperties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/system/drawing/Font;->getHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/ImageElement;->setBaseLineHeight(I)V

    .line 112
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getBaseLineHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/ImageElement;->setDescentHeight(I)V

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public draw(Lcom/amazon/system/drawing/Graphics;II)V
    .locals 3
    .parameter "graphics"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->loadImage()V

    .line 204
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/ImageElement;->hasLoadingError:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/ImageElement;->pImage:Lcom/amazon/system/drawing/Image;

    invoke-interface {v0}, Lcom/amazon/system/drawing/Image;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/ImageElement;->pImage:Lcom/amazon/system/drawing/Image;

    invoke-interface {v0}, Lcom/amazon/system/drawing/Image;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/ImageElement;->pImage:Lcom/amazon/system/drawing/Image;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/system/drawing/Graphics;->drawImage(Lcom/amazon/system/drawing/Image;II)V

    .line 208
    :cond_0
    return-void
.end method

.method public getAlignment()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/mobipocket/common/library/reader/ImageElement;->style:I

    return v0
.end method

.method public getImageRecordIndex()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/mobipocket/common/library/reader/ImageElement;->imagerecordNumber:I

    return v0
.end method

.method public isImageElement()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method isImageGenerated()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/ImageElement;->pImage:Lcom/amazon/system/drawing/Image;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImageSelectable()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/ImageElement;->pImage:Lcom/amazon/system/drawing/Image;

    invoke-interface {v0}, Lcom/amazon/system/drawing/Image;->isSelectable()Z

    move-result v0

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public loadImage()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 190
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/ImageElement;->hasLoadingError:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/ImageElement;->pImage:Lcom/amazon/system/drawing/Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/ImageElement;->pImage:Lcom/amazon/system/drawing/Image;

    invoke-interface {v0}, Lcom/amazon/system/drawing/Image;->isFetched()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/ImageElement;->pImage:Lcom/amazon/system/drawing/Image;

    invoke-interface {v0}, Lcom/amazon/system/drawing/Image;->fetch()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/ImageElement;->hasLoadingError:Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    :goto_1
    return-void

    .line 192
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/ImageElement;->hasLoadingError:Z

    goto :goto_1
.end method

.method public redimension(III)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    iget v0, p0, Lcom/mobipocket/common/library/reader/ImageElement;->style:I

    packed-switch v0, :pswitch_data_0

    .line 152
    :pswitch_0
    new-instance v0, Lcom/amazon/system/drawing/Dimension;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getWidth()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/amazon/system/drawing/Dimension;-><init>(II)V

    .line 154
    :goto_0
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/ImageElement;->generateImage(Lcom/amazon/system/drawing/Dimension;)Z

    .line 155
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->updateHeight()V

    .line 156
    return-void

    .line 135
    :pswitch_1
    new-instance v0, Lcom/amazon/system/drawing/Dimension;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getWidth()I

    move-result v1

    invoke-direct {v0, v1, p3}, Lcom/amazon/system/drawing/Dimension;-><init>(II)V

    goto :goto_0

    .line 138
    :pswitch_2
    new-instance v0, Lcom/amazon/system/drawing/Dimension;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getTextProperties()Lcom/mobipocket/common/parser/TextProperties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/system/drawing/Font;->getBaselinePosition()I

    move-result v2

    add-int/2addr v2, p2

    invoke-direct {v0, v1, v2}, Lcom/amazon/system/drawing/Dimension;-><init>(II)V

    goto :goto_0

    .line 144
    :pswitch_3
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getTextProperties()Lcom/mobipocket/common/parser/TextProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->getBaselinePosition()I

    move-result v0

    sub-int v0, p1, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getTextProperties()Lcom/mobipocket/common/parser/TextProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/system/drawing/Font;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getTextProperties()Lcom/mobipocket/common/parser/TextProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/system/drawing/Font;->getBaselinePosition()I

    move-result v1

    add-int/2addr v1, p2

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getTextProperties()Lcom/mobipocket/common/parser/TextProperties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/system/drawing/Font;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 146
    if-le v0, v1, :cond_0

    move v0, v1

    .line 147
    :cond_0
    new-instance v1, Lcom/amazon/system/drawing/Dimension;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getWidth()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/amazon/system/drawing/Dimension;-><init>(II)V

    move-object v0, v1

    .line 148
    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reposition(III)V
    .locals 3
    .parameter "currentBaselineHeight"
    .parameter "currentDescentHeight"
    .parameter "currentLineHeight"

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getY()I

    move-result v0

    .line 166
    .local v0, ytemp:I
    iget v1, p0, Lcom/mobipocket/common/library/reader/ImageElement;->style:I

    packed-switch v1, :pswitch_data_0

    .line 182
    :pswitch_0
    add-int v1, v0, p1

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getBaseLineHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/ImageElement;->setY(I)V

    .line 184
    :goto_0
    :pswitch_1
    return-void

    .line 171
    :pswitch_2
    add-int v1, v0, p3

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/ImageElement;->setY(I)V

    goto :goto_0

    .line 174
    :pswitch_3
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getHeight()I

    move-result v1

    sub-int v1, p3, v1

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/ImageElement;->setY(I)V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
