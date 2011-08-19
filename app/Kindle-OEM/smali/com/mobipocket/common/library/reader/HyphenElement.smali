.class public Lcom/mobipocket/common/library/reader/HyphenElement;
.super Lcom/mobipocket/common/library/reader/TextElement;
.source "HyphenElement.java"


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/parser/StrDescriptor;Lcom/mobipocket/common/parser/styles/StyleDescriptor;I)V
    .locals 0
    .parameter "text"
    .parameter "styleDescriptor"
    .parameter "bookPosition"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/mobipocket/common/library/reader/TextElement;-><init>(Lcom/mobipocket/common/parser/StrDescriptor;Lcom/mobipocket/common/parser/styles/StyleDescriptor;I)V

    .line 20
    return-void
.end method


# virtual methods
.method public bridge synthetic cutText(Lcom/mobipocket/common/parser/StrDescriptor;ILcom/amazon/system/drawing/Font;)Lcom/mobipocket/common/parser/StrDescriptor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 10
    invoke-super {p0, p1, p2, p3}, Lcom/mobipocket/common/library/reader/TextElement;->cutText(Lcom/mobipocket/common/parser/StrDescriptor;ILcom/amazon/system/drawing/Font;)Lcom/mobipocket/common/parser/StrDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic draw(Lcom/amazon/system/drawing/Graphics;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 10
    invoke-super {p0, p1, p2, p3}, Lcom/mobipocket/common/library/reader/TextElement;->draw(Lcom/amazon/system/drawing/Graphics;II)V

    return-void
.end method

.method public bridge synthetic getAlignment()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/TextElement;->getAlignment()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBaseLineHeight()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/TextElement;->getBaseLineHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDescentHeight()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/TextElement;->getDescentHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFirstSubElementBookPosition()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/TextElement;->getFirstSubElementBookPosition()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getHeight()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/TextElement;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLastSubElementBookPosition()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/TextElement;->getLastSubElementBookPosition()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/TextElement;->getStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTextProperties()Lcom/mobipocket/common/parser/TextProperties;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/TextElement;->getTextProperties()Lcom/mobipocket/common/parser/TextProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWidth()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/TextElement;->getWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getX()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/TextElement;->getX()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getY()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/TextElement;->getY()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isActiveAreaElement()Z
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/TextElement;->isActiveAreaElement()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isBreakElement()Z
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/TextElement;->isBreakElement()Z

    move-result v0

    return v0
.end method

.method public isHyphenElement()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic isImageElement()Z
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/TextElement;->isImageElement()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isSelectable()Z
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/TextElement;->isSelectable()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isTableElement()Z
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/TextElement;->isTableElement()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isTextElement()Z
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/TextElement;->isTextElement()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isWordElement()Z
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/TextElement;->isWordElement()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic reposition(III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 10
    invoke-super {p0, p1, p2, p3}, Lcom/mobipocket/common/library/reader/TextElement;->reposition(III)V

    return-void
.end method

.method public bridge synthetic setDescentHeight(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/mobipocket/common/library/reader/TextElement;->setDescentHeight(I)V

    return-void
.end method

.method public bridge synthetic setHeight(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/mobipocket/common/library/reader/TextElement;->setHeight(I)V

    return-void
.end method

.method public bridge synthetic setStyleDescriptor(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/mobipocket/common/library/reader/TextElement;->setStyleDescriptor(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    return-void
.end method

.method public bridge synthetic setTextStyle(Lcom/amazon/system/drawing/Graphics;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/mobipocket/common/library/reader/TextElement;->setTextStyle(Lcom/amazon/system/drawing/Graphics;)V

    return-void
.end method

.method public bridge synthetic setWidth(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/mobipocket/common/library/reader/TextElement;->setWidth(I)V

    return-void
.end method

.method public bridge synthetic setX(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/mobipocket/common/library/reader/TextElement;->setX(I)V

    return-void
.end method

.method public bridge synthetic setY(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/mobipocket/common/library/reader/TextElement;->setY(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, ""

    return-object v0
.end method
