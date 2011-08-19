.class Lcom/mobipocket/common/library/reader/MobiImageElement;
.super Lcom/mobipocket/common/library/reader/FlowElement;
.source "MobiImageElement.java"


# static fields
.field public static final TYPE_CIRCLE:S = 0x3s

.field public static final TYPE_DECIMAL:S = 0xas

.field public static final TYPE_DISC:S = 0x2s

.field public static final TYPE_HR:S = 0x1s

.field public static final TYPE_SQUARE:S = 0x4s


# instance fields
.field private final _Number:I

.field private final pColor:I

.field private final pDrawWidth:I

.field private final pType:S


# direct methods
.method constructor <init>(SLcom/mobipocket/common/parser/styles/StyleDescriptor;IIIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/FlowElement;-><init>()V

    .line 43
    iput-short p1, p0, Lcom/mobipocket/common/library/reader/MobiImageElement;->pType:S

    .line 44
    iput p3, p0, Lcom/mobipocket/common/library/reader/MobiImageElement;->_Number:I

    .line 45
    iget-short v0, p0, Lcom/mobipocket/common/library/reader/MobiImageElement;->pType:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 54
    invoke-virtual {p0, p4}, Lcom/mobipocket/common/library/reader/MobiImageElement;->setWidth(I)V

    .line 55
    invoke-virtual {p0, v2}, Lcom/mobipocket/common/library/reader/MobiImageElement;->setDescentHeight(I)V

    .line 56
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/MobiImageElement;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/MobiImageElement;->setBaseLineHeight(I)V

    .line 57
    if-lez p6, :cond_0

    move v0, p6

    :goto_0
    iput v0, p0, Lcom/mobipocket/common/library/reader/MobiImageElement;->pColor:I

    .line 67
    :goto_1
    iget-object v0, p2, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/MobiImageElement;->setHeight(I)V

    .line 68
    invoke-virtual {p0, p2}, Lcom/mobipocket/common/library/reader/MobiImageElement;->setStyleDescriptor(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 69
    const/4 v0, -0x1

    if-eq p5, v0, :cond_3

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/MobiImageElement;->getHeight()I

    move-result v0

    invoke-static {p5, p4, v0}, Lcom/mobipocket/common/library/reader/MobiImageElement;->getRealSize(III)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/mobipocket/common/library/reader/MobiImageElement;->pDrawWidth:I

    .line 71
    invoke-virtual {p0, p7}, Lcom/mobipocket/common/library/reader/MobiImageElement;->setLastSubElementBookPosition(I)V

    .line 72
    return-void

    .line 57
    :cond_0
    const v0, 0x888888

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0, p5}, Lcom/mobipocket/common/library/reader/MobiImageElement;->setWidth(I)V

    .line 62
    iget-object v0, p2, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->getDescent()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/MobiImageElement;->setDescentHeight(I)V

    .line 63
    iget-object v0, p2, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->getBaselinePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/MobiImageElement;->setBaseLineHeight(I)V

    .line 65
    if-lez p6, :cond_2

    move v0, p6

    :goto_3
    iput v0, p0, Lcom/mobipocket/common/library/reader/MobiImageElement;->pColor:I

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_3

    .line 69
    :cond_3
    mul-int/lit8 v0, p4, 0x9

    div-int/lit8 v0, v0, 0xa

    goto :goto_2
.end method

.method static getMiddleColor(II)I
    .locals 7
    .parameter "bgColor"
    .parameter "textColor"

    .prologue
    .line 128
    const/4 v2, 0x0

    .line 129
    .local v2, middleColor:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v5, 0x3

    if-ge v1, v5, :cond_0

    .line 131
    and-int/lit16 v0, p0, 0xff

    .line 132
    .local v0, bgOneColor:I
    and-int/lit16 v4, p1, 0xff

    .line 133
    .local v4, txtOneColor:I
    mul-int/lit8 v5, v0, 0x5

    mul-int/lit8 v6, v4, 0x3

    add-int/2addr v5, v6

    ushr-int/lit8 v3, v5, 0x3

    .line 135
    .local v3, middleOneColor:I
    mul-int/lit8 v5, v1, 0x8

    shl-int v5, v3, v5

    add-int/2addr v2, v5

    .line 136
    ushr-int/lit8 p0, p0, 0x8

    .line 137
    ushr-int/lit8 p1, p1, 0x8

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v0           #bgOneColor:I
    .end local v3           #middleOneColor:I
    .end local v4           #txtOneColor:I
    :cond_0
    return v2
.end method


# virtual methods
.method public draw(Lcom/amazon/system/drawing/Graphics;II)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x168

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 76
    iget-short v0, p0, Lcom/mobipocket/common/library/reader/MobiImageElement;->pType:S

    if-ne v0, v7, :cond_1

    .line 78
    invoke-interface {p1}, Lcom/amazon/system/drawing/Graphics;->getColor()I

    move-result v0

    .line 79
    iget v1, p0, Lcom/mobipocket/common/library/reader/MobiImageElement;->pColor:I

    invoke-interface {p1, v1}, Lcom/amazon/system/drawing/Graphics;->setColor(I)V

    .line 80
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/MobiImageElement;->getY()I

    move-result v1

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/MobiImageElement;->getHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 81
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/MobiImageElement;->getX()I

    move-result v2

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/MobiImageElement;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/mobipocket/common/library/reader/MobiImageElement;->pDrawWidth:I

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 82
    add-int v3, p2, v2

    sub-int/2addr v3, v7

    add-int v4, p3, v1

    add-int v6, p2, v2

    iget v7, p0, Lcom/mobipocket/common/library/reader/MobiImageElement;->pDrawWidth:I

    add-int/2addr v6, v7

    add-int v7, p3, v1

    invoke-interface {p1, v3, v4, v6, v7}, Lcom/amazon/system/drawing/Graphics;->drawLine(IIII)V

    .line 83
    iget v3, p0, Lcom/mobipocket/common/library/reader/MobiImageElement;->pColor:I

    invoke-static {v3, v5}, Lcom/mobipocket/common/library/reader/MobiImageElement;->getMiddleColor(II)I

    move-result v3

    invoke-interface {p1, v3}, Lcom/amazon/system/drawing/Graphics;->setColor(I)V

    .line 84
    add-int v3, p2, v2

    add-int v4, p3, v1

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v2, p2

    iget v5, p0, Lcom/mobipocket/common/library/reader/MobiImageElement;->pDrawWidth:I

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v3, v4, v2, v1}, Lcom/amazon/system/drawing/Graphics;->drawLine(IIII)V

    .line 85
    invoke-interface {p1, v0}, Lcom/amazon/system/drawing/Graphics;->setColor(I)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/library/reader/MobiImageElement;->setTextStyle(Lcom/amazon/system/drawing/Graphics;)V

    .line 90
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/MobiImageElement;->getY()I

    move-result v0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/MobiImageElement;->getBaseLineHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 91
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/MobiImageElement;->getHeight()I

    move-result v1

    shr-int/lit8 v3, v1, 0x2

    .line 93
    iget-short v1, p0, Lcom/mobipocket/common/library/reader/MobiImageElement;->pType:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/MobiImageElement;->getX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/MobiImageElement;->getHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    add-int v2, p3, v0

    move-object v0, p1

    move v4, v3

    invoke-interface/range {v0 .. v6}, Lcom/amazon/system/drawing/Graphics;->fillArc(IIIIII)V

    goto :goto_0

    .line 97
    :cond_2
    iget-short v1, p0, Lcom/mobipocket/common/library/reader/MobiImageElement;->pType:S

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 99
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/MobiImageElement;->getX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/MobiImageElement;->getHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    add-int v2, p3, v0

    move-object v0, p1

    move v4, v3

    invoke-interface/range {v0 .. v6}, Lcom/amazon/system/drawing/Graphics;->drawArc(IIIIII)V

    goto :goto_0

    .line 101
    :cond_3
    iget-short v1, p0, Lcom/mobipocket/common/library/reader/MobiImageElement;->pType:S

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 103
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/MobiImageElement;->getX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/MobiImageElement;->getHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    add-int/2addr v0, p3

    invoke-interface {p1, v1, v0, v3, v3}, Lcom/amazon/system/drawing/Graphics;->fillRect(IIII)V

    goto :goto_0

    .line 105
    :cond_4
    iget-short v0, p0, Lcom/mobipocket/common/library/reader/MobiImageElement;->pType:S

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 107
    iget v0, p0, Lcom/mobipocket/common/library/reader/MobiImageElement;->_Number:I

    if-ltz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/mobipocket/common/library/reader/MobiImageElement;->_Number:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 110
    sget-object v0, Lcom/mobipocket/common/library/reader/FlowElement;->lastFont:Lcom/amazon/system/drawing/Font;

    array-length v1, v4

    invoke-interface {v0, v4, v5, v1}, Lcom/amazon/system/drawing/Font;->charsWidth([CII)I

    move-result v9

    .line 111
    array-length v6, v4

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/MobiImageElement;->getX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/MobiImageElement;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sub-int v7, v0, v9

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/MobiImageElement;->getY()I

    move-result v0

    add-int v8, p3, v0

    move-object v3, p1

    invoke-interface/range {v3 .. v9}, Lcom/amazon/system/drawing/Graphics;->drawText([CIIIII)V

    goto/16 :goto_0
.end method

.method public isSelectable()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 123
    iget-short v0, p0, Lcom/mobipocket/common/library/reader/MobiImageElement;->pType:S

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
