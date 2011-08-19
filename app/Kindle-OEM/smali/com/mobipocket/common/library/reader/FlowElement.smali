.class abstract Lcom/mobipocket/common/library/reader/FlowElement;
.super Ljava/lang/Object;
.source "FlowElement.java"


# static fields
.field static lastFont:Lcom/amazon/system/drawing/Font;

.field static lastTextColor:I


# instance fields
.field private baseLineHeight:I

.field private descentHeight:I

.field private endElementBookPosition:I

.field private height:I

.field private styleDescriptor:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/mobipocket/common/library/reader/FlowElement;->lastFont:Lcom/amazon/system/drawing/Font;

    .line 17
    const/4 v0, -0x1

    sput v0, Lcom/mobipocket/common/library/reader/FlowElement;->lastTextColor:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lcom/mobipocket/common/library/reader/FlowElement;->x:I

    .line 20
    iput v0, p0, Lcom/mobipocket/common/library/reader/FlowElement;->y:I

    .line 21
    iput v0, p0, Lcom/mobipocket/common/library/reader/FlowElement;->width:I

    .line 22
    iput v0, p0, Lcom/mobipocket/common/library/reader/FlowElement;->height:I

    .line 24
    iput v0, p0, Lcom/mobipocket/common/library/reader/FlowElement;->descentHeight:I

    .line 25
    iput v0, p0, Lcom/mobipocket/common/library/reader/FlowElement;->baseLineHeight:I

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/FlowElement;->endElementBookPosition:I

    return-void
.end method

.method static drawNewPage()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/mobipocket/common/library/reader/FlowElement;->lastFont:Lcom/amazon/system/drawing/Font;

    .line 32
    const/4 v0, -0x1

    sput v0, Lcom/mobipocket/common/library/reader/FlowElement;->lastTextColor:I

    .line 33
    return-void
.end method

.method static getRealSize(III)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    sget v0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->NEG_MASK:I

    and-int/2addr v0, p0

    if-eqz v0, :cond_2

    sget v0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->DIMUNIT_MASK:I

    or-int/2addr v0, p0

    sget v1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->DEFAULTATTR_MASK:I

    or-int/2addr v0, v1

    .line 154
    :goto_0
    sget v1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->DIMUNIT_MASK:I

    and-int/2addr v1, p0

    if-nez v1, :cond_3

    .line 187
    :cond_0
    :goto_1
    if-le v0, p1, :cond_1

    .line 188
    mul-int/lit8 v0, p1, 0x46

    div-int/lit8 v0, v0, 0x64

    .line 191
    :cond_1
    return v0

    .line 149
    :cond_2
    sget v0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->DIMUNIT_MASK:I

    sget v1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->DEFAULTATTR_MASK:I

    or-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p0

    goto :goto_0

    .line 158
    :cond_3
    sget v1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->FONTHEIGHT_VALUE:I

    and-int/2addr v1, p0

    sget v2, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->FONTHEIGHT_VALUE:I

    if-ne v1, v2, :cond_4

    .line 160
    mul-int/2addr v0, p2

    goto :goto_1

    .line 162
    :cond_4
    sget v1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->PERCENT_VALUE:I

    and-int/2addr v1, p0

    sget v2, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->PERCENT_VALUE:I

    if-ne v1, v2, :cond_0

    .line 164
    const/16 v1, -0x5a

    if-ge v0, v1, :cond_5

    .line 166
    mul-int/lit8 v0, p1, -0x5a

    div-int/lit8 v0, v0, 0x64

    goto :goto_1

    .line 169
    :cond_5
    const/16 v1, 0x5a

    if-le v0, v1, :cond_6

    .line 171
    mul-int/lit8 v0, p1, 0x5a

    div-int/lit8 v0, v0, 0x64

    goto :goto_1

    .line 176
    :cond_6
    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    goto :goto_1
.end method


# virtual methods
.method public draw(Lcom/amazon/system/drawing/Graphics;II)V
    .locals 0
    .parameter "graphics"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 116
    return-void
.end method

.method public getAlignment()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getBaseLineHeight()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/mobipocket/common/library/reader/FlowElement;->baseLineHeight:I

    return v0
.end method

.method public getDescentHeight()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/mobipocket/common/library/reader/FlowElement;->descentHeight:I

    return v0
.end method

.method public getFirstSubElementBookPosition()I
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong bookPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/FlowElement;->endElementBookPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    iget v0, p0, Lcom/mobipocket/common/library/reader/FlowElement;->endElementBookPosition:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/mobipocket/common/library/reader/FlowElement;->height:I

    return v0
.end method

.method public getLastSubElementBookPosition()I
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong bookPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/FlowElement;->endElementBookPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    iget v0, p0, Lcom/mobipocket/common/library/reader/FlowElement;->endElementBookPosition:I

    return v0
.end method

.method public getStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FlowElement;->styleDescriptor:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    return-object v0
.end method

.method public getTextProperties()Lcom/mobipocket/common/parser/TextProperties;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FlowElement;->styleDescriptor:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    iget-object v0, v0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/mobipocket/common/library/reader/FlowElement;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/mobipocket/common/library/reader/FlowElement;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/mobipocket/common/library/reader/FlowElement;->y:I

    return v0
.end method

.method public isActiveAreaElement()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public isBreakElement()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public isHyphenElement()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public isImageElement()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public isTableElement()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public isTextElement()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public isWordElement()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public reposition(III)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    iget v0, p0, Lcom/mobipocket/common/library/reader/FlowElement;->height:I

    if-ge v0, p3, :cond_0

    .line 92
    iget v0, p0, Lcom/mobipocket/common/library/reader/FlowElement;->y:I

    iget v1, p0, Lcom/mobipocket/common/library/reader/FlowElement;->baseLineHeight:I

    sub-int v1, p1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mobipocket/common/library/reader/FlowElement;->y:I

    .line 96
    :cond_0
    return-void
.end method

.method protected setBaseLineHeight(I)V
    .locals 0
    .parameter "baseLineHeight"

    .prologue
    .line 264
    iput p1, p0, Lcom/mobipocket/common/library/reader/FlowElement;->baseLineHeight:I

    .line 265
    return-void
.end method

.method public setDescentHeight(I)V
    .locals 0
    .parameter "descentHeight"

    .prologue
    .line 256
    iput p1, p0, Lcom/mobipocket/common/library/reader/FlowElement;->descentHeight:I

    .line 257
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 223
    iput p1, p0, Lcom/mobipocket/common/library/reader/FlowElement;->height:I

    .line 224
    return-void
.end method

.method protected setLastSubElementBookPosition(I)V
    .locals 0
    .parameter "bookPosition"

    .prologue
    .line 273
    iput p1, p0, Lcom/mobipocket/common/library/reader/FlowElement;->endElementBookPosition:I

    .line 274
    return-void
.end method

.method public setStyleDescriptor(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V
    .locals 0
    .parameter "styleDescriptor"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/FlowElement;->styleDescriptor:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    .line 249
    return-void
.end method

.method public setTextStyle(Lcom/amazon/system/drawing/Graphics;)V
    .locals 2
    .parameter "graphics"

    .prologue
    .line 101
    sget v0, Lcom/mobipocket/common/library/reader/FlowElement;->lastTextColor:I

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FlowElement;->styleDescriptor:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    iget-object v1, v1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/TextProperties;->getTextColor()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/mobipocket/common/library/reader/FlowElement;->lastFont:Lcom/amazon/system/drawing/Font;

    if-nez v0, :cond_1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FlowElement;->styleDescriptor:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    iget-object v0, v0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getTextColor()I

    move-result v0

    sput v0, Lcom/mobipocket/common/library/reader/FlowElement;->lastTextColor:I

    .line 104
    sget v0, Lcom/mobipocket/common/library/reader/FlowElement;->lastTextColor:I

    invoke-interface {p1, v0}, Lcom/amazon/system/drawing/Graphics;->setColor(I)V

    .line 106
    :cond_1
    sget-object v0, Lcom/mobipocket/common/library/reader/FlowElement;->lastFont:Lcom/amazon/system/drawing/Font;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FlowElement;->styleDescriptor:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    iget-object v1, v1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 108
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FlowElement;->styleDescriptor:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    iget-object v0, v0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v0

    sput-object v0, Lcom/mobipocket/common/library/reader/FlowElement;->lastFont:Lcom/amazon/system/drawing/Font;

    .line 109
    sget-object v0, Lcom/mobipocket/common/library/reader/FlowElement;->lastFont:Lcom/amazon/system/drawing/Font;

    invoke-interface {p1, v0}, Lcom/amazon/system/drawing/Graphics;->setFont(Lcom/amazon/system/drawing/Font;)V

    .line 112
    :cond_2
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 215
    iput p1, p0, Lcom/mobipocket/common/library/reader/FlowElement;->width:I

    .line 216
    return-void
.end method

.method public setX(I)V
    .locals 0
    .parameter "x"

    .prologue
    .line 199
    iput p1, p0, Lcom/mobipocket/common/library/reader/FlowElement;->x:I

    .line 200
    return-void
.end method

.method public setY(I)V
    .locals 0
    .parameter "yc"

    .prologue
    .line 207
    iput p1, p0, Lcom/mobipocket/common/library/reader/FlowElement;->y:I

    .line 208
    return-void
.end method
