.class Lcom/mobipocket/common/library/reader/TextElement;
.super Lcom/mobipocket/common/library/reader/FlowElement;
.source "TextElement.java"


# instance fields
.field public final _text:Lcom/mobipocket/common/parser/StrDescriptor;


# direct methods
.method public constructor <init>(ILcom/mobipocket/common/parser/styles/StyleDescriptor;)V
    .locals 4
    .parameter "nbBlank"
    .parameter "styleDescriptor"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/FlowElement;-><init>()V

    .line 45
    new-array v1, p1, [C

    .line 46
    .local v1, str:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 47
    const/16 v3, 0x20

    aput-char v3, v1, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    new-instance v3, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-direct {v3, v1}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>([C)V

    iput-object v3, p0, Lcom/mobipocket/common/library/reader/TextElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    .line 49
    invoke-virtual {p0, p2}, Lcom/mobipocket/common/library/reader/TextElement;->setStyleDescriptor(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 50
    iget-object v2, p2, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    .line 52
    .local v2, textProperties:Lcom/mobipocket/common/parser/TextProperties;
    invoke-virtual {v2}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/system/drawing/Font;->getWhitespaceWidth()I

    move-result v3

    mul-int/2addr v3, p1

    invoke-virtual {p0, v3}, Lcom/mobipocket/common/library/reader/TextElement;->setWidth(I)V

    .line 53
    invoke-virtual {v2}, Lcom/mobipocket/common/parser/TextProperties;->getHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/mobipocket/common/library/reader/TextElement;->setHeight(I)V

    .line 54
    invoke-virtual {v2}, Lcom/mobipocket/common/parser/TextProperties;->getBaselinePosition()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/mobipocket/common/library/reader/TextElement;->setBaseLineHeight(I)V

    .line 55
    invoke-virtual {v2}, Lcom/mobipocket/common/parser/TextProperties;->getDescent()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/mobipocket/common/library/reader/TextElement;->setDescentHeight(I)V

    .line 56
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/mobipocket/common/library/reader/TextElement;->setLastSubElementBookPosition(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/mobipocket/common/library/reader/TextElement;I)V
    .locals 2
    .parameter "toCut"
    .parameter "maxSize"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/FlowElement;-><init>()V

    .line 68
    iget-object v0, p1, Lcom/mobipocket/common/library/reader/TextElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/TextElement;->getTextProperties()Lcom/mobipocket/common/parser/TextProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Lcom/mobipocket/common/library/reader/TextElement;->cutText(Lcom/mobipocket/common/parser/StrDescriptor;ILcom/amazon/system/drawing/Font;)Lcom/mobipocket/common/parser/StrDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/TextElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    .line 69
    iget-object v0, p1, Lcom/mobipocket/common/library/reader/TextElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/TextElement;->getTextProperties()Lcom/mobipocket/common/parser/TextProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/TextElement;->textWidth(Lcom/mobipocket/common/parser/StrDescriptor;Lcom/amazon/system/drawing/Font;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mobipocket/common/library/reader/TextElement;->setWidth(I)V

    .line 70
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/TextElement;->getStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/TextElement;->setStyleDescriptor(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 71
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TextElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TextElement;->getTextProperties()Lcom/mobipocket/common/parser/TextProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/TextElement;->textWidth(Lcom/mobipocket/common/parser/StrDescriptor;Lcom/amazon/system/drawing/Font;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/TextElement;->setWidth(I)V

    .line 72
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/TextElement;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/TextElement;->setHeight(I)V

    .line 73
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/TextElement;->getBaseLineHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/TextElement;->setBaseLineHeight(I)V

    .line 74
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/TextElement;->getDescentHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/TextElement;->setDescentHeight(I)V

    .line 75
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/TextElement;->getLastSubElementBookPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/TextElement;->setLastSubElementBookPosition(I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/mobipocket/common/parser/StrDescriptor;Lcom/mobipocket/common/parser/styles/StyleDescriptor;I)V
    .locals 3
    .parameter "text"
    .parameter "styleDescriptor"
    .parameter "bookPosition"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/FlowElement;-><init>()V

    .line 28
    new-instance v1, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-direct {v1, p1}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>(Lcom/mobipocket/common/parser/StrDescriptor;)V

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/TextElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    .line 29
    invoke-virtual {p0, p2}, Lcom/mobipocket/common/library/reader/TextElement;->setStyleDescriptor(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 30
    iget-object v0, p2, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    .line 31
    .local v0, textProperties:Lcom/mobipocket/common/parser/TextProperties;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TextElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mobipocket/common/library/reader/TextElement;->textWidth(Lcom/mobipocket/common/parser/StrDescriptor;Lcom/amazon/system/drawing/Font;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/TextElement;->setWidth(I)V

    .line 32
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/TextElement;->setHeight(I)V

    .line 33
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getBaselinePosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/TextElement;->setBaseLineHeight(I)V

    .line 34
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getDescent()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/TextElement;->setDescentHeight(I)V

    .line 35
    invoke-virtual {p0, p3}, Lcom/mobipocket/common/library/reader/TextElement;->setLastSubElementBookPosition(I)V

    .line 36
    return-void
.end method

.method public static textWidth(Lcom/mobipocket/common/parser/StrDescriptor;Lcom/amazon/system/drawing/Font;)I
    .locals 3
    .parameter "text"
    .parameter "font"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    iget v1, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    invoke-virtual {p0}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/system/drawing/Font;->charsWidth([CII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public cutText(Lcom/mobipocket/common/parser/StrDescriptor;ILcom/amazon/system/drawing/Font;)Lcom/mobipocket/common/parser/StrDescriptor;
    .locals 5
    .parameter "toCut"
    .parameter "maxSize"
    .parameter "font"

    .prologue
    const/4 v4, 0x1

    .line 127
    iget v0, p1, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    .line 128
    .local v0, totalLength:I
    :goto_0
    iget v1, p1, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    if-lez v1, :cond_0

    iget-object v1, p1, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    iget v2, p1, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    iget v3, p1, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    invoke-interface {p3, v1, v2, v3}, Lcom/amazon/system/drawing/Font;->charsWidth([CII)I

    move-result v1

    if-le v1, p2, :cond_0

    .line 129
    iget v1, p1, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    sub-int/2addr v1, v4

    iput v1, p1, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    goto :goto_0

    .line 130
    :cond_0
    iget v1, p1, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    if-ge v1, v4, :cond_1

    iput v4, p1, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    .line 131
    :cond_1
    new-instance v1, Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v2, p1, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    iget v3, p1, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    iget v4, p1, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    add-int/2addr v3, v4

    iget v4, p1, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    sub-int v4, v0, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>([CII)V

    return-object v1
.end method

.method public draw(Lcom/amazon/system/drawing/Graphics;II)V
    .locals 7
    .parameter "graphics"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/library/reader/TextElement;->setTextStyle(Lcom/amazon/system/drawing/Graphics;)V

    .line 94
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TextElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v1, v0, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TextElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    iget v2, v0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TextElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    iget v3, v0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TextElement;->getX()I

    move-result v0

    add-int v4, p2, v0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TextElement;->getY()I

    move-result v0

    add-int v5, p3, v0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TextElement;->getWidth()I

    move-result v6

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/amazon/system/drawing/Graphics;->drawText([CIIIII)V

    .line 96
    return-void
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public isTextElement()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TextElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/StrDescriptor;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
