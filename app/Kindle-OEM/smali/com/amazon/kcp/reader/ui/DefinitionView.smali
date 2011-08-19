.class public Lcom/amazon/kcp/reader/ui/DefinitionView;
.super Landroid/view/View;
.source "DefinitionView.java"


# instance fields
.field private dictDisplay:Lcom/amazon/kcp/reader/models/IBookDisplay;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getDictionaryDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionView;->dictDisplay:Lcom/amazon/kcp/reader/models/IBookDisplay;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 64
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefinitionView;->dictDisplay:Lcom/amazon/kcp/reader/models/IBookDisplay;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/DefinitionView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefinitionView;->dictDisplay:Lcom/amazon/kcp/reader/models/IBookDisplay;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/DefinitionView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/DefinitionView;->getHeight()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/amazon/kcp/reader/models/IBookDisplay;->setSize(II)V

    .line 69
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefinitionView;->dictDisplay:Lcom/amazon/kcp/reader/models/IBookDisplay;

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDisplay;->getFontSize()I

    move-result v0

    .line 70
    .local v0, currentFontSize:I
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefinitionView;->dictDisplay:Lcom/amazon/kcp/reader/models/IBookDisplay;

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDisplay;->getLineSpacing()I

    move-result v1

    .line 73
    .local v1, currentLineSpacing:I
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefinitionView;->dictDisplay:Lcom/amazon/kcp/reader/models/IBookDisplay;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/DefinitionView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/amazon/kcp/reader/models/IBookDisplay;->setFontSize(I)V

    .line 74
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefinitionView;->dictDisplay:Lcom/amazon/kcp/reader/models/IBookDisplay;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/DefinitionView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/amazon/kcp/reader/models/IBookDisplay;->setLineSpacing(I)V

    .line 77
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefinitionView;->dictDisplay:Lcom/amazon/kcp/reader/models/IBookDisplay;

    new-instance v3, Lcom/amazon/android/system/drawing/AndroidGraphics;

    invoke-direct {v3, p1}, Lcom/amazon/android/system/drawing/AndroidGraphics;-><init>(Landroid/graphics/Canvas;)V

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/amazon/kcp/reader/models/IBookDisplay;->render(Lcom/amazon/system/drawing/GraphicsExtended;I)V

    .line 80
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefinitionView;->dictDisplay:Lcom/amazon/kcp/reader/models/IBookDisplay;

    invoke-interface {v2, v0}, Lcom/amazon/kcp/reader/models/IBookDisplay;->setFontSize(I)V

    .line 81
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefinitionView;->dictDisplay:Lcom/amazon/kcp/reader/models/IBookDisplay;

    invoke-interface {v2, v1}, Lcom/amazon/kcp/reader/models/IBookDisplay;->setLineSpacing(I)V

    .line 83
    .end local v0           #currentFontSize:I
    .end local v1           #currentLineSpacing:I
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionView;->dictDisplay:Lcom/amazon/kcp/reader/models/IBookDisplay;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionView;->dictDisplay:Lcom/amazon/kcp/reader/models/IBookDisplay;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kcp/reader/models/IBookDisplay;->setSize(II)V

    .line 59
    :cond_0
    return-void
.end method

.method public setDictionaryDisplay(Lcom/amazon/kcp/reader/models/IBookDisplay;)V
    .locals 0
    .parameter "dictDisplay"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/DefinitionView;->dictDisplay:Lcom/amazon/kcp/reader/models/IBookDisplay;

    .line 42
    return-void
.end method
