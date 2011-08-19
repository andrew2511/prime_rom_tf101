.class Lcom/mobipocket/common/library/reader/WordElement;
.super Lcom/mobipocket/common/library/reader/FlowElement;
.source "WordElement.java"


# instance fields
.field _text:Lcom/mobipocket/common/parser/StrDescriptor;

.field private textElementsVector:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/TextElement;)V
    .locals 1
    .parameter "textElement"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/FlowElement;-><init>()V

    .line 17
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    .line 88
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/library/reader/WordElement;->addTextElements(Lcom/mobipocket/common/library/reader/TextElement;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/mobipocket/common/library/reader/WordElement;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/FlowElement;-><init>()V

    .line 17
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    .line 34
    invoke-virtual {p1, v1}, Lcom/mobipocket/common/library/reader/WordElement;->getTextElements(I)Lcom/mobipocket/common/library/reader/TextElement;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_4

    move v0, v1

    move v2, v1

    .line 36
    :goto_0
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/WordElement;->getNBTextElements()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 38
    invoke-virtual {p1, v0}, Lcom/mobipocket/common/library/reader/WordElement;->getTextElements(I)Lcom/mobipocket/common/library/reader/TextElement;

    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/TextElement;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 40
    if-nez v1, :cond_3

    if-lt v2, p2, :cond_3

    .line 42
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/TextElement;->getWidth()I

    move-result v1

    sub-int v4, v2, p2

    sub-int/2addr v1, v4

    .line 43
    new-instance v4, Lcom/mobipocket/common/library/reader/TextElement;

    invoke-direct {v4, v3, v1}, Lcom/mobipocket/common/library/reader/TextElement;-><init>(Lcom/mobipocket/common/library/reader/TextElement;I)V

    .line 47
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/TextElement;->getWidth()I

    move-result v5

    if-le v5, v1, :cond_5

    if-eqz v0, :cond_5

    .line 52
    new-instance v1, Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v5, v3, Lcom/mobipocket/common/library/reader/TextElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-direct {v1, v5}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>(Lcom/mobipocket/common/parser/StrDescriptor;)V

    .line 55
    iget-object v5, v4, Lcom/mobipocket/common/library/reader/TextElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    iget v5, v5, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    if-lez v5, :cond_0

    .line 56
    iget-object v4, v4, Lcom/mobipocket/common/library/reader/TextElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v1, v4}, Lcom/mobipocket/common/parser/StrDescriptor;->concat(Lcom/mobipocket/common/parser/StrDescriptor;)V

    .line 58
    :cond_0
    new-instance v4, Lcom/mobipocket/common/library/reader/TextElement;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/TextElement;->getStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v5

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/TextElement;->getLastSubElementBookPosition()I

    move-result v3

    invoke-direct {v4, v1, v5, v3}, Lcom/mobipocket/common/library/reader/TextElement;-><init>(Lcom/mobipocket/common/parser/StrDescriptor;Lcom/mobipocket/common/parser/styles/StyleDescriptor;I)V

    .line 59
    invoke-direct {p1, v0}, Lcom/mobipocket/common/library/reader/WordElement;->removeElementFromIndex(I)V

    .line 60
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    move-object v0, v4

    .line 64
    :goto_1
    iget-object v3, v0, Lcom/mobipocket/common/library/reader/TextElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    iget v3, v3, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    if-lez v3, :cond_1

    .line 65
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/WordElement;->addTextElements(Lcom/mobipocket/common/library/reader/TextElement;)V

    .line 66
    :cond_1
    const/4 v0, 0x1

    move v6, v1

    move v1, v0

    move v0, v6

    .line 74
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_3
    if-eqz v1, :cond_2

    .line 70
    invoke-virtual {p0, v3}, Lcom/mobipocket/common/library/reader/WordElement;->addTextElements(Lcom/mobipocket/common/library/reader/TextElement;)V

    .line 71
    invoke-direct {p1, v0}, Lcom/mobipocket/common/library/reader/WordElement;->removeElementFromIndex(I)V

    .line 72
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 77
    :cond_4
    invoke-direct {p1}, Lcom/mobipocket/common/library/reader/WordElement;->updateInfos()V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Word cutted: 1st:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/WordElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 2nd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/WordElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    return-void

    :cond_5
    move v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/FlowElement;-><init>()V

    .line 17
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    .line 98
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 100
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/TextElement;

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/WordElement;->addTextElements(Lcom/mobipocket/common/library/reader/TextElement;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 103
    :cond_0
    return-void
.end method

.method private removeElementFromIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 126
    :cond_0
    return-void
.end method

.method private updateInfo(I)V
    .locals 7
    .parameter "index"

    .prologue
    .line 134
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 135
    const/4 v3, 0x0

    .line 136
    .local v3, updateY:Z
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/TextElement;

    .line 137
    .local v1, localTextElement:Lcom/mobipocket/common/library/reader/TextElement;
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TextElement;->getLastSubElementBookPosition()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mobipocket/common/library/reader/WordElement;->setLastSubElementBookPosition(I)V

    .line 139
    if-nez p1, :cond_1

    .line 141
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TextElement;->getStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mobipocket/common/library/reader/WordElement;->setStyleDescriptor(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 142
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TextElement;->getX()I

    move-result v4

    invoke-super {p0, v4}, Lcom/mobipocket/common/library/reader/FlowElement;->setX(I)V

    .line 143
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TextElement;->getY()I

    move-result v4

    invoke-super {p0, v4}, Lcom/mobipocket/common/library/reader/FlowElement;->setY(I)V

    .line 144
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TextElement;->getHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mobipocket/common/library/reader/WordElement;->setHeight(I)V

    .line 145
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TextElement;->getBaseLineHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mobipocket/common/library/reader/WordElement;->setBaseLineHeight(I)V

    .line 146
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TextElement;->getDescentHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mobipocket/common/library/reader/WordElement;->setDescentHeight(I)V

    .line 147
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TextElement;->getWidth()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mobipocket/common/library/reader/WordElement;->setWidth(I)V

    .line 148
    new-instance v4, Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v5, v1, Lcom/mobipocket/common/library/reader/TextElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-direct {v4, v5}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>(Lcom/mobipocket/common/parser/StrDescriptor;)V

    iput-object v4, p0, Lcom/mobipocket/common/library/reader/WordElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    .line 194
    .end local v1           #localTextElement:Lcom/mobipocket/common/library/reader/TextElement;
    .end local v3           #updateY:Z
    :cond_0
    return-void

    .line 152
    .restart local v1       #localTextElement:Lcom/mobipocket/common/library/reader/TextElement;
    .restart local v3       #updateY:Z
    :cond_1
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/WordElement;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TextElement;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/mobipocket/common/library/reader/WordElement;->setWidth(I)V

    .line 154
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/WordElement;->getHeight()I

    move-result v4

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TextElement;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 156
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TextElement;->getHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mobipocket/common/library/reader/WordElement;->setHeight(I)V

    .line 157
    const/4 v3, 0x1

    .line 160
    :cond_2
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/WordElement;->getBaseLineHeight()I

    move-result v4

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TextElement;->getBaseLineHeight()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 162
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TextElement;->getBaseLineHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mobipocket/common/library/reader/WordElement;->setBaseLineHeight(I)V

    .line 163
    const/4 v3, 0x1

    .line 166
    :cond_3
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/WordElement;->getDescentHeight()I

    move-result v4

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TextElement;->getDescentHeight()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 168
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TextElement;->getDescentHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mobipocket/common/library/reader/WordElement;->setDescentHeight(I)V

    .line 169
    const/4 v3, 0x1

    .line 172
    :cond_4
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/WordElement;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/WordElement;->getBaseLineHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/WordElement;->getDescentHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_5

    .line 173
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/WordElement;->getBaseLineHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/WordElement;->getDescentHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/mobipocket/common/library/reader/WordElement;->setHeight(I)V

    .line 175
    :cond_5
    if-eqz v3, :cond_6

    .line 177
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mobipocket/common/library/reader/TextElement;

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/TextElement;->getY()I

    move-result v4

    invoke-super {p0, v4}, Lcom/mobipocket/common/library/reader/FlowElement;->setY(I)V

    .line 180
    :cond_6
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/WordElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v5, v1, Lcom/mobipocket/common/library/reader/TextElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v4, v5}, Lcom/mobipocket/common/parser/StrDescriptor;->concat(Lcom/mobipocket/common/parser/StrDescriptor;)V

    .line 183
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 185
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobipocket/common/library/reader/TextElement;

    .line 186
    .local v2, localTextElementToReposition:Lcom/mobipocket/common/library/reader/TextElement;
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/TextElement;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/WordElement;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 189
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/WordElement;->getY()I

    move-result v4

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/WordElement;->getBaseLineHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/TextElement;->getBaseLineHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/mobipocket/common/library/reader/TextElement;->setY(I)V

    .line 183
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateInfos()V
    .locals 2

    .prologue
    .line 200
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 202
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/WordElement;->updateInfo(I)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    return-void
.end method


# virtual methods
.method public addTextElements(Lcom/mobipocket/common/library/reader/TextElement;)V
    .locals 2
    .parameter "textElement"

    .prologue
    .line 223
    if-eqz p1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/WordElement;->updateInfo(I)V

    .line 228
    :cond_0
    return-void
.end method

.method public draw(Lcom/amazon/system/drawing/Graphics;II)V
    .locals 2
    .parameter "graphics"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 254
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/TextElement;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mobipocket/common/library/reader/TextElement;->draw(Lcom/amazon/system/drawing/Graphics;II)V

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_0
    return-void
.end method

.method public getFirstSubElementBookPosition()I
    .locals 2

    .prologue
    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, ret:I
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/mobipocket/common/library/reader/TextElement;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TextElement;->getFirstSubElementBookPosition()I

    move-result v0

    .line 382
    :cond_0
    return v0
.end method

.method public getLastElementStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;
    .locals 2

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, styleDescriptor:Lcom/mobipocket/common/parser/styles/StyleDescriptor;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/WordElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    iget v1, v1, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    if-lez v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/WordElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    iget v1, v1, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/WordElement;->getNthElementStyleDescriptor(I)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v0

    .line 358
    :cond_0
    return-object v0
.end method

.method public getLastElementY()I
    .locals 2

    .prologue
    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, y:I
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/mobipocket/common/library/reader/TextElement;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TextElement;->getY()I

    move-result v0

    .line 370
    :cond_0
    return v0
.end method

.method public getNBTextElements()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getNthElementStyleDescriptor(I)Lcom/mobipocket/common/parser/styles/StyleDescriptor;
    .locals 5
    .parameter "nthPosition"

    .prologue
    .line 328
    const/4 v1, 0x0

    .line 330
    .local v1, styleDescriptor:Lcom/mobipocket/common/parser/styles/StyleDescriptor;
    if-lez p1, :cond_2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/WordElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    iget v3, v3, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    if-gt p1, v3, :cond_2

    .line 332
    const/4 v2, 0x0

    .line 333
    .local v2, totalLength:I
    const/4 v0, 0x0

    .line 336
    .local v0, i:I
    :cond_0
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mobipocket/common/library/reader/TextElement;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/TextElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    iget v3, v3, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    add-int/2addr v2, v3

    .line 337
    add-int/lit8 v0, v0, 0x1

    .line 339
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    if-lt v2, p1, :cond_0

    .line 341
    :cond_1
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    const/4 v4, 0x1

    sub-int v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/mobipocket/common/library/reader/TextElement;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TextElement;->getStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v1

    .line 344
    .end local v0           #i:I
    .end local v2           #totalLength:I
    :cond_2
    return-object v1
.end method

.method public getTextElements(I)Lcom/mobipocket/common/library/reader/TextElement;
    .locals 2
    .parameter "index"

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, retElement:Lcom/mobipocket/common/library/reader/TextElement;
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #retElement:Lcom/mobipocket/common/library/reader/TextElement;
    check-cast v0, Lcom/mobipocket/common/library/reader/TextElement;

    .line 215
    .restart local v0       #retElement:Lcom/mobipocket/common/library/reader/TextElement;
    :cond_0
    return-object v0
.end method

.method public getTextWidth(II)I
    .locals 9
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    const/4 v8, 0x0

    .line 394
    const/4 v5, 0x0

    .line 396
    .local v5, width:I
    const/4 v4, 0x0

    .line 397
    .local v4, totalLength:I
    const/4 v2, 0x0

    .line 399
    .local v2, previousTotalLength:I
    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    iget-object v6, p0, Lcom/mobipocket/common/library/reader/WordElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    iget v6, v6, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    if-le p1, v6, :cond_1

    .line 400
    :cond_0
    const/4 p1, 0x0

    .line 402
    :cond_1
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/WordElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    iget v6, v6, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    if-le p2, v6, :cond_2

    .line 403
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/WordElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    iget p2, v6, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    .line 405
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v0, v6, :cond_7

    add-int/lit8 v6, p2, 0x1

    if-ge v4, v6, :cond_7

    .line 407
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/TextElement;

    .line 408
    .local v1, localTextElement:Lcom/mobipocket/common/library/reader/TextElement;
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TextElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    .line 410
    if-le v4, p1, :cond_4

    if-lt p1, v2, :cond_4

    .line 412
    if-le v4, p2, :cond_3

    .line 414
    new-instance v3, Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v6, v1, Lcom/mobipocket/common/library/reader/TextElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-direct {v3, v6}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>(Lcom/mobipocket/common/parser/StrDescriptor;)V

    .line 415
    .local v3, subString:Lcom/mobipocket/common/parser/StrDescriptor;
    sub-int v6, p1, v2

    sub-int v7, p2, v2

    invoke-virtual {v3, v6, v7}, Lcom/mobipocket/common/parser/StrDescriptor;->substring(II)V

    .line 436
    :goto_1
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TextElement;->getTextProperties()Lcom/mobipocket/common/parser/TextProperties;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mobipocket/common/library/reader/TextElement;->textWidth(Lcom/mobipocket/common/parser/StrDescriptor;Lcom/amazon/system/drawing/Font;)I

    move-result v6

    add-int/2addr v5, v6

    .line 437
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TextElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    .end local v3           #subString:Lcom/mobipocket/common/parser/StrDescriptor;
    :cond_3
    new-instance v3, Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v6, v1, Lcom/mobipocket/common/library/reader/TextElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-direct {v3, v6}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>(Lcom/mobipocket/common/parser/StrDescriptor;)V

    .line 420
    .restart local v3       #subString:Lcom/mobipocket/common/parser/StrDescriptor;
    sub-int v6, p1, v2

    invoke-virtual {v3, v6}, Lcom/mobipocket/common/parser/StrDescriptor;->substring(I)V

    goto :goto_1

    .line 423
    .end local v3           #subString:Lcom/mobipocket/common/parser/StrDescriptor;
    :cond_4
    if-le v4, p2, :cond_5

    .line 425
    new-instance v3, Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v6, v1, Lcom/mobipocket/common/library/reader/TextElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-direct {v3, v6}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>(Lcom/mobipocket/common/parser/StrDescriptor;)V

    .line 426
    .restart local v3       #subString:Lcom/mobipocket/common/parser/StrDescriptor;
    sub-int v6, p2, v2

    invoke-virtual {v3, v8, v6}, Lcom/mobipocket/common/parser/StrDescriptor;->substring(II)V

    goto :goto_1

    .line 428
    .end local v3           #subString:Lcom/mobipocket/common/parser/StrDescriptor;
    :cond_5
    if-gt v4, p2, :cond_6

    if-le v4, p1, :cond_6

    .line 430
    iget-object v3, v1, Lcom/mobipocket/common/library/reader/TextElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    .restart local v3       #subString:Lcom/mobipocket/common/parser/StrDescriptor;
    goto :goto_1

    .line 434
    .end local v3           #subString:Lcom/mobipocket/common/parser/StrDescriptor;
    :cond_6
    new-instance v3, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-direct {v3, v8}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>(I)V

    .restart local v3       #subString:Lcom/mobipocket/common/parser/StrDescriptor;
    goto :goto_1

    .line 440
    .end local v1           #localTextElement:Lcom/mobipocket/common/library/reader/TextElement;
    .end local v3           #subString:Lcom/mobipocket/common/parser/StrDescriptor;
    :cond_7
    return v5
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public isWordElement()Z
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method public reposition(III)V
    .locals 2
    .parameter "currentBaselineHeight"
    .parameter "currentDescentHeight"
    .parameter "currentLineHeight"

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/WordElement;->getHeight()I

    move-result v0

    if-ge v0, p3, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/WordElement;->getY()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/WordElement;->getBaseLineHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/WordElement;->setY(I)V

    .line 318
    :cond_0
    return-void
.end method

.method public setX(I)V
    .locals 4
    .parameter "newX"

    .prologue
    .line 274
    invoke-super {p0, p1}, Lcom/mobipocket/common/library/reader/FlowElement;->setX(I)V

    .line 276
    const/4 v1, 0x0

    .line 277
    .local v1, previousWidth:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 279
    if-lez v0, :cond_0

    .line 281
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    const/4 v3, 0x1

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobipocket/common/library/reader/TextElement;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/TextElement;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobipocket/common/library/reader/TextElement;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/library/reader/TextElement;->setX(I)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_1
    return-void
.end method

.method public setY(I)V
    .locals 4
    .parameter

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/WordElement;->getY()I

    move-result v0

    sub-int v1, p1, v0

    .line 294
    invoke-super {p0, p1}, Lcom/mobipocket/common/library/reader/FlowElement;->setY(I)V

    .line 298
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/TextElement;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TextElement;->getY()I

    move-result v3

    .line 301
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/WordElement;->textElementsVector:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/TextElement;

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lcom/mobipocket/common/library/reader/TextElement;->setY(I)V

    .line 298
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 303
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/WordElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/WordElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/StrDescriptor;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
