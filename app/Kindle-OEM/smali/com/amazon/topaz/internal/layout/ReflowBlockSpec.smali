.class final Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;
.super Lcom/amazon/topaz/internal/layout/BlockSpec;
.source "ReflowBlockSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/layout/ReflowBlockSpec$Layout;
    }
.end annotation


# instance fields
.field public final alignment:I

.field private final bottomMargin:I

.field private final display:I

.field public final hang:I

.field public final indent:I

.field private final left:I

.field public final reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

.field final relative:Lcom/amazon/topaz/internal/layout/RelativeStyles;

.field private final right:I

.field private final topMargin:I


# direct methods
.method constructor <init>(II)V
    .locals 3
    .parameter "ll"
    .parameter "rr"

    .prologue
    const/4 v2, 0x0

    .line 40
    const/4 v0, 0x0

    new-instance v1, Lcom/amazon/topaz/internal/layout/CommonStyles;

    invoke-direct {v1}, Lcom/amazon/topaz/internal/layout/CommonStyles;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazon/topaz/internal/layout/BlockSpec;-><init>(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/layout/CommonStyles;)V

    .line 42
    new-instance v0, Lcom/amazon/topaz/internal/layout/RelativeStyles;

    invoke-direct {v0}, Lcom/amazon/topaz/internal/layout/RelativeStyles;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->relative:Lcom/amazon/topaz/internal/layout/RelativeStyles;

    .line 43
    new-instance v0, Lcom/amazon/topaz/internal/layout/ReflowStyles;

    invoke-direct {v0}, Lcom/amazon/topaz/internal/layout/ReflowStyles;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    .line 44
    iput v2, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->display:I

    .line 45
    iput v2, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->alignment:I

    .line 46
    iput v2, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->indent:I

    .line 47
    iput v2, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->hang:I

    .line 48
    iput p1, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->left:I

    .line 49
    iput p2, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->right:I

    .line 50
    iput v2, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->topMargin:I

    .line 51
    iput v2, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->bottomMargin:I

    .line 52
    return-void
.end method

.method constructor <init>(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/styles/Style;Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;ZZ)V
    .locals 10
    .parameter "what"
    .parameter "rawStyle"
    .parameter "parent"
    .parameter "popupMode"
    .parameter "allowJustify"

    .prologue
    .line 65
    new-instance v6, Lcom/amazon/topaz/internal/layout/CommonStyles;

    iget-object v7, p3, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    invoke-direct {v6, p2, v7}, Lcom/amazon/topaz/internal/layout/CommonStyles;-><init>(Lcom/amazon/topaz/styles/Style;Lcom/amazon/topaz/internal/layout/CommonStyles;)V

    invoke-direct {p0, p1, v6}, Lcom/amazon/topaz/internal/layout/BlockSpec;-><init>(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/layout/CommonStyles;)V

    .line 67
    new-instance v6, Lcom/amazon/topaz/internal/layout/RelativeStyles;

    iget-object v7, p3, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->relative:Lcom/amazon/topaz/internal/layout/RelativeStyles;

    const/4 v8, 0x0

    invoke-direct {v6, p2, v7, v8}, Lcom/amazon/topaz/internal/layout/RelativeStyles;-><init>(Lcom/amazon/topaz/styles/Style;Lcom/amazon/topaz/internal/layout/RelativeStyles;Z)V

    iput-object v6, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->relative:Lcom/amazon/topaz/internal/layout/RelativeStyles;

    .line 68
    new-instance v6, Lcom/amazon/topaz/internal/layout/ReflowStyles;

    iget-object v7, p3, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    iget-object v8, p3, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    invoke-direct {v6, p1, p2, v7, v8}, Lcom/amazon/topaz/internal/layout/ReflowStyles;-><init>(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/styles/Style;Lcom/amazon/topaz/internal/layout/CommonStyles;Lcom/amazon/topaz/internal/layout/ReflowStyles;)V

    iput-object v6, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    .line 70
    iget-object v6, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    invoke-virtual {p3}, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amazon/topaz/internal/layout/CommonStyles;->getMargin(I)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v1

    .line 72
    .local v1, margin:Lcom/amazon/system/drawing/Rectangle;
    invoke-virtual {p3}, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->getLeft()I

    move-result v6

    iget v7, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    add-int v0, v6, v7

    .line 73
    .local v0, left:I
    invoke-virtual {p3}, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->getRight()I

    move-result v6

    invoke-static {v1}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->x2(Lcom/amazon/system/drawing/Rectangle;)I

    move-result v7

    sub-int v4, v6, v7

    .line 75
    .local v4, right:I
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Container;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v5

    .line 77
    .local v5, src:Lcom/amazon/system/drawing/Rectangle;
    iget-object v6, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    iget-boolean v6, v6, Lcom/amazon/topaz/internal/layout/ReflowStyles;->preserveLineBreaks:Z

    if-eqz v6, :cond_0

    iget v6, v5, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v7, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->right:I

    iget v8, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->left:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_0

    iget-object v6, p3, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    iget-boolean v6, v6, Lcom/amazon/topaz/internal/layout/ReflowStyles;->preserveLineBreaks:Z

    if-nez v6, :cond_0

    .line 79
    iget-object v6, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    iget v7, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v8, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->right:I

    iget v9, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->left:I

    sub-int/2addr v8, v9

    iget v9, v5, Lcom/amazon/system/drawing/Rectangle;->width:I

    sub-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/amazon/topaz/internal/layout/CommonStyles;->computeHorizontalPosition(II)I

    move-result v3

    .line 80
    .local v3, new_left:I
    invoke-static {v1, v3}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->setLeft(Lcom/amazon/system/drawing/Rectangle;I)V

    .line 83
    .end local v3           #new_left:I
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Container;->getMinWidth()I

    move-result v2

    .line 86
    .local v2, minWidth:I
    sub-int v6, v4, v0

    if-ge v6, v2, :cond_1

    .line 87
    invoke-virtual {p3}, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->getRight()I

    move-result v6

    add-int v7, v0, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 90
    :cond_1
    sub-int v6, v4, v0

    if-ge v6, v2, :cond_2

    .line 91
    invoke-virtual {p3}, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->getLeft()I

    move-result v6

    sub-int v7, v4, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 95
    :cond_2
    iget-object v6, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    sub-int v7, v4, v0

    sub-int/2addr v7, v2

    invoke-virtual {v6, v7}, Lcom/amazon/topaz/internal/layout/ReflowStyles;->getIndent(I)I

    move-result v6

    iput v6, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->indent:I

    .line 96
    iget-object v6, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    sub-int v7, v4, v0

    sub-int/2addr v7, v2

    invoke-virtual {v6, v7}, Lcom/amazon/topaz/internal/layout/ReflowStyles;->getHang(I)I

    move-result v6

    iput v6, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->hang:I

    .line 97
    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->left:I

    .line 98
    iput v4, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->right:I

    .line 99
    iget v6, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iput v6, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->topMargin:I

    .line 100
    invoke-static {v1}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->y2(Lcom/amazon/system/drawing/Rectangle;)I

    move-result v6

    iput v6, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->bottomMargin:I

    .line 102
    iget-object v6, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    const/4 v7, 0x0

    invoke-virtual {v6, p4, v7}, Lcom/amazon/topaz/internal/layout/CommonStyles;->getDisplay(ZZ)I

    move-result v6

    iput v6, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->display:I

    .line 104
    iget-object v6, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    invoke-virtual {v6, p5}, Lcom/amazon/topaz/internal/layout/ReflowStyles;->getAlignment(Z)I

    move-result v6

    iput v6, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->alignment:I

    .line 105
    return-void
.end method


# virtual methods
.method createChild(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/styles/Style;ZZI)Lcom/amazon/topaz/internal/layout/BlockSpec;
    .locals 7
    .parameter "what"
    .parameter "rawStyle"
    .parameter "popupMode"
    .parameter "allowJustify"
    .parameter "screenHeight"

    .prologue
    .line 111
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_LAYOUT:Ljava/lang/String;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->STYLE_LAYOUT_REFLOW:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    const/4 v6, 0x0

    .line 124
    .local v6, layout:I
    :goto_0
    const/4 v0, 0x2

    if-ne v6, v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Container;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 127
    const/4 v6, 0x0

    .line 133
    :cond_0
    :goto_1
    if-nez v6, :cond_5

    .line 135
    new-instance v0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;-><init>(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/styles/Style;Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;ZZ)V

    .line 139
    :goto_2
    return-object v0

    .line 114
    .end local v6           #layout:I
    :cond_1
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_LAYOUT:Ljava/lang/String;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->STYLE_LAYOUT_RELATIVE:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    const/4 v6, 0x1

    .restart local v6       #layout:I
    goto :goto_0

    .line 117
    .end local v6           #layout:I
    :cond_2
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_LAYOUT:Ljava/lang/String;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->STYLE_LAYOUT_SPILL:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    const/4 v6, 0x2

    .restart local v6       #layout:I
    goto :goto_0

    .line 121
    .end local v6           #layout:I
    :cond_3
    const/4 v6, 0x0

    .restart local v6       #layout:I
    goto :goto_0

    .line 129
    :cond_4
    const/4 v6, 0x1

    goto :goto_1

    .line 137
    :cond_5
    const/4 v0, 0x1

    if-ne v6, v0, :cond_6

    .line 139
    new-instance v0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;-><init>(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/styles/Style;Lcom/amazon/topaz/internal/layout/BlockSpec;ZI)V

    goto :goto_2

    .line 143
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getBottomMargin()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->bottomMargin:I

    return v0
.end method

.method public getDisplay()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->display:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->left:I

    return v0
.end method

.method public getRight()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->right:I

    return v0
.end method

.method public getTopMargin()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->topMargin:I

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 174
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->right:I

    iget v1, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method isCompatible(Lcom/amazon/topaz/internal/layout/BlockSpec;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 179
    instance-of v0, p1, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    if-nez v0, :cond_0

    move v0, v2

    .line 246
    :goto_0
    return v0

    .line 185
    :cond_0
    check-cast p1, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    .line 186
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    iget-object v1, p1, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/layout/ReflowStyles;->isCompatible(Lcom/amazon/topaz/internal/layout/ReflowStyles;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 188
    goto :goto_0

    .line 192
    :cond_1
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->alignment:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->alignment:I

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 194
    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->relative:Lcom/amazon/topaz/internal/layout/RelativeStyles;

    iget-object v1, p1, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->relative:Lcom/amazon/topaz/internal/layout/RelativeStyles;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/layout/RelativeStyles;->isCompatible(Lcom/amazon/topaz/internal/layout/RelativeStyles;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 200
    goto :goto_0

    .line 204
    :cond_3
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->display:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->display:I

    if-eq v0, v1, :cond_4

    move v0, v2

    .line 206
    goto :goto_0

    .line 210
    :cond_4
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->indent:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->indent:I

    if-eq v0, v1, :cond_5

    move v0, v2

    .line 212
    goto :goto_0

    .line 216
    :cond_5
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->hang:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->hang:I

    if-eq v0, v1, :cond_6

    move v0, v2

    .line 218
    goto :goto_0

    .line 222
    :cond_6
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->topMargin:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->topMargin:I

    if-eq v0, v1, :cond_7

    move v0, v2

    .line 224
    goto :goto_0

    .line 228
    :cond_7
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->bottomMargin:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->bottomMargin:I

    if-eq v0, v1, :cond_8

    move v0, v2

    .line 230
    goto :goto_0

    .line 234
    :cond_8
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->left:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->left:I

    if-eq v0, v1, :cond_9

    move v0, v2

    .line 236
    goto :goto_0

    .line 240
    :cond_9
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->right:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->right:I

    if-eq v0, v1, :cond_a

    move v0, v2

    .line 242
    goto :goto_0

    .line 246
    :cond_a
    invoke-super {p0, p1}, Lcom/amazon/topaz/internal/layout/BlockSpec;->isCompatible(Lcom/amazon/topaz/internal/layout/BlockSpec;)Z

    move-result v0

    goto :goto_0
.end method
