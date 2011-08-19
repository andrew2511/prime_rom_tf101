.class Lcom/mobipocket/common/library/reader/BreakElement;
.super Lcom/mobipocket/common/library/reader/FlowElement;
.source "BreakElement.java"


# static fields
.field public static final FORCED_LINE:I = 0x5

.field public static final INDENTED_PARAGRAPH:I = 0x3

.field public static final LINE:I = 0x1

.field public static final NON_INDENTED_PARAGRAPH:I = 0x2

.field public static final PAGE:I = 0x4

.field public static final PAGE_BEGIN:I = 0x6

.field public static final SPACE:I


# instance fields
.field private containDefaultParagraphSpacing:Z

.field pParagraphIndentation:I

.field public type:I


# direct methods
.method public constructor <init>(ILcom/mobipocket/common/parser/styles/StyleDescriptor;I)V
    .locals 1
    .parameter "type"
    .parameter "styleDescriptor"
    .parameter "bookPosition"

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mobipocket/common/library/reader/BreakElement;-><init>(ILcom/mobipocket/common/parser/styles/StyleDescriptor;II)V

    .line 50
    if-nez p1, :cond_0

    .line 52
    iget-object v0, p2, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->getWhitespaceWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/BreakElement;->setWidth(I)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/BreakElement;->setWidth(I)V

    goto :goto_0
.end method

.method public constructor <init>(ILcom/mobipocket/common/parser/styles/StyleDescriptor;II)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/FlowElement;-><init>()V

    .line 45
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/BreakElement;->containDefaultParagraphSpacing:Z

    .line 62
    iput p1, p0, Lcom/mobipocket/common/library/reader/BreakElement;->type:I

    .line 63
    invoke-virtual {p0, p3}, Lcom/mobipocket/common/library/reader/BreakElement;->setLastSubElementBookPosition(I)V

    .line 64
    invoke-virtual {p0, p2}, Lcom/mobipocket/common/library/reader/BreakElement;->setStyleDescriptor(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 66
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    .line 68
    :cond_0
    iget-object v0, p2, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/BreakElement;->setHeight(I)V

    .line 69
    iget-object v0, p2, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getBaselinePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/BreakElement;->setBaseLineHeight(I)V

    .line 70
    iget-object v0, p2, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getDescent()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/BreakElement;->setDescentHeight(I)V

    .line 78
    :goto_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 80
    iput p4, p0, Lcom/mobipocket/common/library/reader/BreakElement;->pParagraphIndentation:I

    .line 81
    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/BreakElement;->setWidth(I)V

    .line 88
    :goto_1
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/BreakElement;->setHeight(I)V

    goto :goto_0

    .line 85
    :cond_2
    iput v1, p0, Lcom/mobipocket/common/library/reader/BreakElement;->pParagraphIndentation:I

    .line 86
    invoke-virtual {p0, p4}, Lcom/mobipocket/common/library/reader/BreakElement;->setWidth(I)V

    goto :goto_1
.end method


# virtual methods
.method public containsDefaultParagraphSpacing()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/BreakElement;->containDefaultParagraphSpacing:Z

    return v0
.end method

.method public isBreakElement()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public isLineBreakContextDependant()Z
    .locals 3

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, ret:Z
    iget v1, p0, Lcom/mobipocket/common/library/reader/BreakElement;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/mobipocket/common/library/reader/BreakElement;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/mobipocket/common/library/reader/BreakElement;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/mobipocket/common/library/reader/BreakElement;->type:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BreakElement;->getWidth()I

    move-result v1

    if-nez v1, :cond_1

    .line 103
    :cond_0
    const/4 v0, 0x1

    .line 105
    :cond_1
    return v0
.end method

.method public setHeight(IIZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    iput-boolean p3, p0, Lcom/mobipocket/common/library/reader/BreakElement;->containDefaultParagraphSpacing:Z

    .line 117
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BreakElement;->getTextProperties()Lcom/mobipocket/common/parser/TextProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getHeight()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/mobipocket/common/library/reader/BreakElement;->getRealSize(III)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/BreakElement;->setHeight(I)V

    .line 120
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BreakElement;->getHeight()I

    move-result v0

    if-gez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/BreakElement;->setHeight(I)V

    .line 124
    :cond_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BreakElement;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public setWidth(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 133
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BreakElement;->getTextProperties()Lcom/mobipocket/common/parser/TextProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getHeight()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/mobipocket/common/library/reader/BreakElement;->getRealSize(III)I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/BreakElement;->pParagraphIndentation:I

    .line 138
    :cond_0
    return-void
.end method
