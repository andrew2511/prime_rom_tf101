.class final Lcom/amazon/topaz/internal/layout/LineAccumulator;
.super Ljava/lang/Object;
.source "LineAccumulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/layout/LineAccumulator$1;,
        Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;
    }
.end annotation


# instance fields
.field private final callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

.field private final cbTerminal_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/topaz/Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

.field private curBlockOrigBoundsLeft_:I

.field private curBlock_:Lcom/amazon/topaz/internal/layout/ReflowBlock;

.field private final curDrawItems_:Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;

.field private curLeft_:I

.field private curLineBaselineConstrained_:Z

.field private curLineBaseline_:I

.field private curLineHeight_:I

.field private curLineOrigTop_:I

.field private curPad_:I

.field private curRight_:I

.field private curWidth_:I

.field private lastR_:I

.field private final lineSpace_:I

.field private final rootBlock_:Lcom/amazon/topaz/internal/layout/Block;

.field private startPad_:I


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;Lcom/amazon/topaz/internal/layout/ReflowBlock;Lcom/amazon/topaz/internal/layout/CallbackStack;)V
    .locals 3
    .parameter "configuration"
    .parameter "rootBlock"
    .parameter "callbackStack"

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    .line 151
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->session:Lcom/amazon/topaz/internal/Session;

    iget v0, v0, Lcom/amazon/topaz/internal/Session;->lineSpacing:I

    iput v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->lineSpace_:I

    .line 152
    new-instance v0, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;-><init>(Lcom/amazon/topaz/internal/layout/LineAccumulator$1;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curDrawItems_:Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;

    .line 153
    iput v2, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLeft_:I

    .line 154
    iput v2, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curRight_:I

    .line 155
    iput v2, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curWidth_:I

    .line 156
    iput v2, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curPad_:I

    .line 157
    iput v2, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLineBaseline_:I

    .line 158
    iput-boolean v2, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLineBaselineConstrained_:Z

    .line 159
    iput v2, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLineHeight_:I

    .line 160
    const v0, 0x7fffffff

    iput v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLineOrigTop_:I

    .line 161
    iput v2, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->lastR_:I

    .line 162
    iput v2, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->startPad_:I

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->cbTerminal_:Ljava/util/ArrayList;

    .line 165
    iput-object p3, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

    .line 166
    iput-object p2, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->rootBlock_:Lcom/amazon/topaz/internal/layout/Block;

    .line 167
    iput-object p2, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curBlock_:Lcom/amazon/topaz/internal/layout/ReflowBlock;

    .line 168
    return-void
.end method

.method private accumulate(Lcom/amazon/topaz/internal/book/Drawable;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 6
    .parameter "item"
    .parameter "bounds"

    .prologue
    .line 604
    iget v2, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLineOrigTop_:I

    iget v3, p2, Lcom/amazon/system/drawing/Rectangle;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLineOrigTop_:I

    .line 606
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Drawable;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v2

    iget v1, v2, Lcom/amazon/system/drawing/Rectangle;->height:I

    .line 607
    .local v1, height:I
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Drawable;->getBaseline()I

    move-result v0

    .line 609
    .local v0, baseline:I
    iget v2, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLineBaseline_:I

    if-ge v0, v2, :cond_1

    .line 613
    iget v2, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLineBaseline_:I

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 622
    :cond_0
    :goto_0
    iget v2, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLineHeight_:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLineHeight_:I

    .line 625
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curDrawItems_:Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;

    new-instance v3, Lcom/amazon/topaz/internal/layout/DrawItem;

    iget v4, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLeft_:I

    iget v5, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curWidth_:I

    add-int/2addr v4, v5

    invoke-direct {v3, p1, p2, v4}, Lcom/amazon/topaz/internal/layout/DrawItem;-><init>(Lcom/amazon/topaz/internal/book/Drawable;Lcom/amazon/system/drawing/Rectangle;I)V

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->add(Lcom/amazon/topaz/internal/layout/DrawItem;)V

    .line 626
    iget v2, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curWidth_:I

    iget v3, p2, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curWidth_:I

    .line 627
    return-void

    .line 618
    :cond_1
    iget-boolean v2, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLineBaselineConstrained_:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curMinExpansionHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 620
    :cond_2
    iput v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLineBaseline_:I

    goto :goto_0
.end method

.method private clearDrawItems()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curDrawItems_:Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->clear()V

    .line 325
    return-void
.end method

.method private curMinExpansionHeight()I
    .locals 3

    .prologue
    .line 591
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curBlock_:Lcom/amazon/topaz/internal/layout/ReflowBlock;

    .line 593
    .local v0, bb:Lcom/amazon/topaz/internal/layout/ReflowBlock;
    iget-object v1, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    iget v1, v1, Lcom/amazon/topaz/internal/layout/ReflowStyles;->blSpace:I

    iget-object v2, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    iget-object v2, v2, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    iget v2, v2, Lcom/amazon/topaz/internal/layout/ReflowStyles;->blExpand:I

    add-int/lit8 v2, v2, 0x64

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    return v1
.end method

.method private getAvailWidth()I
    .locals 2

    .prologue
    .line 281
    iget v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curRight_:I

    iget v1, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLeft_:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curWidth_:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curPad_:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public add(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 688
    iget v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curWidth_:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curWidth_:I

    .line 689
    return-void
.end method

.method public add(Lcom/amazon/topaz/internal/book/Drawable;ZI)Z
    .locals 7
    .parameter "item"
    .parameter "calculatePad"
    .parameter "pad"

    .prologue
    const/4 v6, 0x0

    .line 191
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curBlock_:Lcom/amazon/topaz/internal/layout/ReflowBlock;

    .line 192
    .local v0, bb:Lcom/amazon/topaz/internal/layout/ReflowBlock;
    new-instance v1, Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Drawable;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    .line 194
    .local v1, bounds:Lcom/amazon/system/drawing/Rectangle;
    if-eqz p2, :cond_0

    .line 196
    iget-object v3, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    iget-object v3, v3, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    iget-boolean v3, v3, Lcom/amazon/topaz/internal/layout/ReflowStyles;->preserveWhitespace:Z

    if-eqz v3, :cond_2

    .line 197
    iget v3, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v4, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->lastR_:I

    sub-int p3, v3, v4

    .line 204
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->x2(Lcom/amazon/system/drawing/Rectangle;)I

    move-result v3

    iput v3, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->lastR_:I

    .line 206
    iget v3, v1, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v4, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curRight_:I

    iget v5, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLeft_:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_1

    .line 207
    iget v3, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curRight_:I

    iget v4, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLeft_:I

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->multiply(Lcom/amazon/system/drawing/Rectangle;I)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v2

    .line 209
    .local v2, rectProduct:Lcom/amazon/system/drawing/Rectangle;
    iget v3, v1, Lcom/amazon/system/drawing/Rectangle;->width:I

    invoke-static {v2, v3}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->divide(Lcom/amazon/system/drawing/Rectangle;I)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v1

    .line 213
    .end local v2           #rectProduct:Lcom/amazon/system/drawing/Rectangle;
    :cond_1
    iget v3, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curWidth_:I

    iget v4, v1, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curRight_:I

    iget v5, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLeft_:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curPad_:I

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_5

    .line 215
    iget-object v3, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    iget-object v3, v3, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    iget-boolean v3, v3, Lcom/amazon/topaz/internal/layout/ReflowStyles;->preserveWhitespace:Z

    if-eqz v3, :cond_4

    .line 216
    iget v3, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curWidth_:I

    add-int/2addr v3, p3

    iput v3, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curWidth_:I

    .line 220
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->accumulate(Lcom/amazon/topaz/internal/book/Drawable;Lcom/amazon/system/drawing/Rectangle;)V

    .line 221
    const/4 v3, 0x1

    .line 223
    :goto_2
    return v3

    .line 199
    :cond_2
    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curDrawItems_:Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->hasVisibleDrawItems()Z

    move-result v3

    if-nez v3, :cond_3

    move p3, v6

    :goto_3
    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    iget-object v3, v3, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/layout/ReflowStyles;->tracking()I

    move-result v3

    move p3, v3

    goto :goto_3

    .line 218
    :cond_4
    iget v3, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curPad_:I

    add-int/2addr v3, p3

    iput v3, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curPad_:I

    goto :goto_1

    :cond_5
    move v3, v6

    .line 223
    goto :goto_2
.end method

.method public addHiddenDrawable(Lcom/amazon/topaz/internal/book/Drawable;)V
    .locals 5
    .parameter "d"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curDrawItems_:Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;

    new-instance v1, Lcom/amazon/topaz/internal/layout/DrawItem;

    const/4 v2, 0x0

    iget v3, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLeft_:I

    iget v4, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curWidth_:I

    add-int/2addr v3, v4

    invoke-direct {v1, p1, v2, v3}, Lcom/amazon/topaz/internal/layout/DrawItem;-><init>(Lcom/amazon/topaz/internal/book/Drawable;Lcom/amazon/system/drawing/Rectangle;I)V

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->add(Lcom/amazon/topaz/internal/layout/DrawItem;)V

    .line 178
    return-void
.end method

.method public addLineBreak(Z)V
    .locals 2
    .parameter "started"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curBlock_:Lcom/amazon/topaz/internal/layout/ReflowBlock;

    .line 234
    .local v0, bb:Lcom/amazon/topaz/internal/layout/ReflowBlock;
    iget-object v1, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    iget-boolean v1, v1, Lcom/amazon/topaz/internal/layout/ReflowStyles;->preserveLineBreaks:Z

    if-eqz v1, :cond_0

    .line 235
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->commitLine(Z)V

    .line 236
    invoke-virtual {p0, p1}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->startLine(Z)V

    .line 239
    :cond_0
    iget-object v1, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    iget-boolean v1, v1, Lcom/amazon/topaz/internal/layout/ReflowStyles;->preserveWhitespace:Z

    if-eqz v1, :cond_1

    .line 240
    iget v1, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curBlockOrigBoundsLeft_:I

    iput v1, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->lastR_:I

    .line 242
    :cond_1
    return-void
.end method

.method public addUnderline()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->session:Lcom/amazon/topaz/internal/Session;

    iget-boolean v0, v0, Lcom/amazon/topaz/internal/Session;->underlineLinks:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curDrawItems_:Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->hasVisibleDrawItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curDrawItems_:Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->getLastVisibleDrawItem()Lcom/amazon/topaz/internal/layout/DrawItem;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amazon/topaz/internal/layout/DrawItem;->underline:Z

    .line 254
    :cond_0
    return-void
.end method

.method public commitLine(Z)V
    .locals 21
    .parameter

    .prologue
    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curBlock_:Lcom/amazon/topaz/internal/layout/ReflowBlock;

    move-object/from16 v17, v0

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curDrawItems_:Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->hasVisibleDrawItems()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->getDisplay()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    move-object v5, v0

    iget v5, v5, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->alignment:I

    .line 393
    if-eqz p1, :cond_2

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 394
    const/4 v5, 0x0

    .line 397
    :cond_2
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    move-object v6, v0

    iget-object v6, v6, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    iget-boolean v6, v6, Lcom/amazon/topaz/internal/layout/ReflowStyles;->preserveWhitespace:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 399
    const/4 v5, 0x0

    .line 402
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLeft_:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curWidth_:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curPad_:I

    move v7, v0

    add-int/2addr v6, v7

    .line 404
    const/4 v7, 0x0

    .line 407
    packed-switch v5, :pswitch_data_0

    :goto_1
    move v5, v7

    .line 429
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curDrawItems_:Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->numVisibleDrawItems()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 430
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->startPad_:I

    move v7, v0

    sub-int/2addr v6, v7

    .line 433
    const/4 v7, 0x1

    if-ge v6, v7, :cond_4

    .line 434
    const/4 v6, 0x1

    .line 437
    :cond_4
    const/4 v7, 0x0

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curDrawItems_:Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 439
    :cond_5
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 441
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/topaz/internal/layout/DrawItem;

    .line 444
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/DrawItem;->sz:Lcom/amazon/system/drawing/Rectangle;

    move-object v9, v0

    if-eqz v9, :cond_5

    .line 446
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/topaz/internal/layout/DrawItem;->xpos:I

    move v9, v0

    add-int/2addr v9, v5

    move v0, v9

    move-object/from16 v1, p1

    iput v0, v1, Lcom/amazon/topaz/internal/layout/DrawItem;->xpos:I

    .line 447
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->startPad_:I

    move v9, v0

    if-lt v7, v9, :cond_6

    .line 449
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/topaz/internal/layout/DrawItem;->xpos:I

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curPad_:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->startPad_:I

    move v11, v0

    sub-int v11, v7, v11

    mul-int/2addr v10, v11

    div-int/2addr v10, v6

    add-int/2addr v9, v10

    move v0, v9

    move-object/from16 v1, p1

    iput v0, v1, Lcom/amazon/topaz/internal/layout/DrawItem;->xpos:I

    .line 451
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :pswitch_0
    move v5, v7

    .line 410
    goto :goto_2

    .line 414
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curRight_:I

    move v5, v0

    sub-int/2addr v5, v6

    .line 415
    goto :goto_2

    .line 419
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curRight_:I

    move v5, v0

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    goto :goto_2

    .line 424
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curRight_:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLeft_:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curWidth_:I

    move v8, v0

    add-int/2addr v6, v8

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curPad_:I

    goto/16 :goto_1

    .line 455
    :cond_7
    invoke-virtual/range {v17 .. v17}, Lcom/amazon/topaz/internal/layout/ReflowBlock;->getEndY()I

    move-result v5

    .line 456
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLineBaseline_:I

    move v6, v0

    add-int/2addr v6, v5

    .line 459
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLineOrigTop_:I

    move v7, v0

    .line 462
    move-object/from16 v0, v17

    iget v0, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->topAdjust:I

    move v8, v0

    if-eqz v8, :cond_8

    move-object/from16 v0, v17

    iget v0, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->topAdjust:I

    move v8, v0

    if-le v7, v8, :cond_8

    .line 463
    move-object/from16 v0, v17

    iget v0, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->topAdjust:I

    move v8, v0

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 465
    :cond_8
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, v17

    iput v0, v1, Lcom/amazon/topaz/internal/layout/ReflowBlock;->topAdjust:I

    .line 469
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->lineSpace_:I

    move v7, v0

    if-lez v7, :cond_12

    .line 470
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->lineSpace_:I

    move v7, v0

    int-to-float v7, v7

    const/high16 v8, 0x42c8

    div-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLineHeight_:I

    move v8, v0

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 474
    add-int v8, v6, v7

    .line 477
    add-int/2addr v5, v8

    sub-int/2addr v5, v6

    if-gez v5, :cond_11

    .line 478
    add-int v5, v8, v7

    :goto_4
    move v8, v5

    .line 487
    :goto_5
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 490
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    move-object v5, v0

    iget-object v5, v5, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    iget-boolean v10, v5, Lcom/amazon/topaz/internal/layout/ReflowStyles;->isMultiLineLink:Z

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curDrawItems_:Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move/from16 v18, v8

    move/from16 v19, v8

    .line 495
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 496
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/topaz/internal/layout/DrawItem;

    .line 499
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/DrawItem;->item:Lcom/amazon/topaz/internal/book/Drawable;

    move-object v6, v0

    .line 500
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    move-object v5, v0

    iget-object v5, v5, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    iget-boolean v5, v5, Lcom/amazon/topaz/internal/layout/ReflowStyles;->isMultiLineLink:Z

    if-nez v5, :cond_9

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/amazon/topaz/internal/layout/DrawItem;->underline:Z

    move v5, v0

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    move v9, v5

    .line 501
    :goto_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/DrawItem;->sz:Lcom/amazon/system/drawing/Rectangle;

    move-object v5, v0

    if-eqz v5, :cond_a

    .line 503
    new-instance v7, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v7}, Lcom/amazon/system/drawing/Rectangle;-><init>()V

    .line 505
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/topaz/internal/layout/DrawItem;->xpos:I

    move v5, v0

    iput v5, v7, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 506
    invoke-virtual {v6}, Lcom/amazon/topaz/internal/book/Drawable;->getBaseline()I

    move-result v5

    sub-int v5, v8, v5

    iput v5, v7, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 507
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/DrawItem;->sz:Lcom/amazon/system/drawing/Rectangle;

    move-object v5, v0

    iget v5, v5, Lcom/amazon/system/drawing/Rectangle;->width:I

    iput v5, v7, Lcom/amazon/system/drawing/Rectangle;->width:I

    .line 508
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/DrawItem;->sz:Lcom/amazon/system/drawing/Rectangle;

    move-object v5, v0

    iget v5, v5, Lcom/amazon/system/drawing/Rectangle;->height:I

    iput v5, v7, Lcom/amazon/system/drawing/Rectangle;->height:I

    .line 509
    new-instance v5, Lcom/amazon/topaz/internal/layout/LayoutItem;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/DrawItem;->callbacks:Ljava/util/ArrayList;

    move-object v11, v0

    invoke-direct/range {v5 .. v11}, Lcom/amazon/topaz/internal/layout/LayoutItem;-><init>(Lcom/amazon/topaz/internal/book/Drawable;Lcom/amazon/system/drawing/Rectangle;IZZLjava/util/List;)V

    .line 510
    iget v6, v7, Lcom/amazon/system/drawing/Rectangle;->y:I

    move/from16 v0, v19

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 511
    invoke-static {v7}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->y2(Lcom/amazon/system/drawing/Rectangle;)I

    move-result v7

    move/from16 v0, v18

    move v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    move/from16 v20, v7

    move v7, v6

    move/from16 v6, v20

    .line 517
    :goto_8
    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v18, v6

    move/from16 v19, v7

    .line 518
    goto :goto_6

    .line 500
    :cond_9
    const/4 v5, 0x0

    move v9, v5

    goto :goto_7

    .line 515
    :cond_a
    new-instance v5, Lcom/amazon/topaz/internal/layout/LayoutItem;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/DrawItem;->callbacks:Ljava/util/ArrayList;

    move-object v11, v0

    invoke-direct/range {v5 .. v11}, Lcom/amazon/topaz/internal/layout/LayoutItem;-><init>(Lcom/amazon/topaz/internal/book/Drawable;Lcom/amazon/system/drawing/Rectangle;IZZLjava/util/List;)V

    move/from16 v6, v18

    move/from16 v7, v19

    goto :goto_8

    .line 537
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->cbTerminal_:Ljava/util/ArrayList;

    move-object v5, v0

    .line 539
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    move-object v6, v0

    iget-object v6, v6, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    iget-boolean v6, v6, Lcom/amazon/topaz/internal/layout/ReflowStyles;->isMultiLineLink:Z

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    .line 540
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 541
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 542
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/topaz/internal/layout/LayoutItem;

    .line 543
    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/layout/LayoutItem;->closeLink(Ljava/util/Collection;)V

    goto :goto_9

    .line 545
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->rootBlock_:Lcom/amazon/topaz/internal/layout/Block;

    move-object v6, v0

    invoke-virtual {v6, v5}, Lcom/amazon/topaz/internal/layout/Block;->closeLink(Ljava/util/List;)V

    .line 549
    :cond_d
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    move-object v6, v0

    iget-object v6, v6, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    iget-boolean v6, v6, Lcom/amazon/topaz/internal/layout/ReflowStyles;->isMultiLineLink:Z

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x1

    move v15, v6

    .line 551
    :goto_a
    const/4 v6, 0x0

    .line 553
    invoke-virtual/range {v17 .. v17}, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lines()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 555
    invoke-virtual/range {v17 .. v17}, Lcom/amazon/topaz/internal/layout/ReflowBlock;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getTopMargin()I

    move-result v6

    move v14, v6

    .line 561
    :goto_b
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/amazon/topaz/internal/layout/CallbackStack;->getAllActiveCallbacks()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 563
    new-instance v9, Lcom/amazon/topaz/internal/layout/LayoutLine;

    new-instance v11, Lcom/amazon/system/drawing/Rectangle;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLeft_:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curRight_:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLeft_:I

    move v7, v0

    sub-int/2addr v6, v7

    sub-int v7, v18, v19

    move-object v0, v11

    move v1, v5

    move/from16 v2, v19

    move v3, v6

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    move-object v5, v0

    iget-object v5, v5, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->session:Lcom/amazon/topaz/internal/Session;

    iget-boolean v5, v5, Lcom/amazon/topaz/internal/Session;->underlineLinks:Z

    if-eqz v5, :cond_f

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    move-object v5, v0

    iget-object v5, v5, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    iget-boolean v5, v5, Lcom/amazon/topaz/internal/layout/ReflowStyles;->isMultiLineLink:Z

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    move v12, v5

    :goto_c
    move-object v10, v13

    move v13, v8

    invoke-direct/range {v9 .. v16}, Lcom/amazon/topaz/internal/layout/LayoutLine;-><init>(Ljava/util/List;Lcom/amazon/system/drawing/Rectangle;ZIIZLjava/util/List;)V

    .line 570
    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/layout/ReflowBlock;->addLine(Lcom/amazon/topaz/internal/layout/LayoutLine;)V

    .line 573
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/amazon/topaz/internal/layout/ReflowBlock;->passedFirstLine:Z

    .line 575
    invoke-direct/range {p0 .. p0}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->clearDrawItems()V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    move-object v5, v0

    invoke-virtual {v5, v9}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->invokeListenerHandleLineAdded(Lcom/amazon/topaz/internal/layout/LayoutLine;)Z

    goto/16 :goto_0

    .line 549
    :cond_e
    const/4 v6, 0x0

    move v15, v6

    goto/16 :goto_a

    .line 563
    :cond_f
    const/4 v5, 0x0

    move v12, v5

    goto :goto_c

    :cond_10
    move v14, v6

    goto :goto_b

    :cond_11
    move v5, v8

    goto/16 :goto_4

    :cond_12
    move v8, v6

    goto/16 :goto_5

    .line 407
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public containsPos(Lcom/amazon/topaz/internal/Anchor;)Z
    .locals 3
    .parameter "pos"

    .prologue
    const/4 v2, 0x0

    .line 310
    iget v0, p1, Lcom/amazon/topaz/internal/Anchor;->id:I

    .line 311
    .local v0, id:I
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    move v1, v2

    .line 316
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->firstID()I

    move-result v1

    if-gt v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->lastID()I

    move-result v1

    if-gt v0, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public endCallback(Lcom/amazon/topaz/Callback;)V
    .locals 1
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->cbTerminal_:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    return-void
.end method

.method public firstID()I
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curDrawItems_:Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->getFirst()Lcom/amazon/topaz/internal/layout/DrawItem;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/DrawItem;->item:Lcom/amazon/topaz/internal/book/Drawable;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Drawable;->getID()I

    move-result v0

    return v0
.end method

.method public firstPageNum()I
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curDrawItems_:Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->getFirst()Lcom/amazon/topaz/internal/layout/DrawItem;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/DrawItem;->item:Lcom/amazon/topaz/internal/book/Drawable;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Drawable;->getPageNum()I

    move-result v0

    return v0
.end method

.method public fits(Lcom/amazon/system/drawing/Rectangle;)Z
    .locals 4
    .parameter "bounds"

    .prologue
    const/4 v3, 0x0

    .line 297
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curDrawItems_:Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->hasVisibleDrawItems()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    .line 298
    .local v0, p:I
    :goto_0
    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v1, v0

    invoke-direct {p0}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->getAvailWidth()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 297
    .end local v0           #p:I
    :cond_0
    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    div-int/lit8 v1, v1, 0x3

    move v0, v1

    goto :goto_0

    .restart local v0       #p:I
    :cond_1
    move v1, v3

    .line 298
    goto :goto_1
.end method

.method public hackIncrementStartPad()V
    .locals 1

    .prologue
    .line 680
    iget v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->startPad_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->startPad_:I

    .line 681
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curDrawItems_:Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->hasAnyDrawItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastID()I
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curDrawItems_:Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->getLast()Lcom/amazon/topaz/internal/layout/DrawItem;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/DrawItem;->item:Lcom/amazon/topaz/internal/book/Drawable;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Drawable;->getID()I

    move-result v0

    return v0
.end method

.method public lastPageNum()I
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curDrawItems_:Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->getLast()Lcom/amazon/topaz/internal/layout/DrawItem;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/DrawItem;->item:Lcom/amazon/topaz/internal/book/Drawable;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Drawable;->getPageNum()I

    move-result v0

    return v0
.end method

.method public setCurBlock(Lcom/amazon/topaz/internal/layout/ReflowBlock;)V
    .locals 0
    .parameter "block"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curBlock_:Lcom/amazon/topaz/internal/layout/ReflowBlock;

    .line 173
    return-void
.end method

.method public setCurBlockOrigBoundsLeft(I)V
    .locals 0
    .parameter "x"

    .prologue
    .line 693
    iput p1, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curBlockOrigBoundsLeft_:I

    .line 694
    return-void
.end method

.method public startCallback(Lcom/amazon/topaz/Callback;)V
    .locals 1
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curDrawItems_:Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->hasVisibleDrawItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curDrawItems_:Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->getLastVisibleDrawItem()Lcom/amazon/topaz/internal/layout/DrawItem;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/DrawItem;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_0
    return-void
.end method

.method public startLine(Z)V
    .locals 6
    .parameter "started"

    .prologue
    const/4 v5, 0x0

    .line 334
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curBlock_:Lcom/amazon/topaz/internal/layout/ReflowBlock;

    .line 336
    .local v0, bb:Lcom/amazon/topaz/internal/layout/ReflowBlock;
    iget-object v3, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->getDisplay()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 374
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v3, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/ReflowBlock;->leftFloatWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 340
    .local v1, leftMargin:I
    iget-object v3, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->getRight()I

    move-result v3

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/ReflowBlock;->rightFloatWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 343
    .local v2, rightMargin:I
    if-eqz p1, :cond_1

    .line 344
    iget-boolean v3, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->passedFirstLine:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    iget v3, v3, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->hang:I

    :goto_1
    add-int/2addr v1, v3

    .line 350
    :cond_1
    iput v1, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLeft_:I

    .line 351
    iput v2, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curRight_:I

    .line 352
    iput v5, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curPad_:I

    .line 353
    iput v5, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curWidth_:I

    .line 354
    iput v5, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->startPad_:I

    .line 355
    iget v3, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curBlockOrigBoundsLeft_:I

    iput v3, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->lastR_:I

    .line 356
    const v3, 0x7fffffff

    iput v3, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLineOrigTop_:I

    .line 357
    iput v5, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLineHeight_:I

    .line 359
    iget v3, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastBaseline:I

    if-eqz v3, :cond_3

    .line 363
    iget v3, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastBaseline:I

    iget-object v4, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    iget-object v4, v4, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    iget v4, v4, Lcom/amazon/topaz/internal/layout/ReflowStyles;->blSpace:I

    add-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/ReflowBlock;->getEndY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLineBaseline_:I

    .line 364
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLineBaselineConstrained_:Z

    .line 372
    :goto_2
    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curDrawItems_:Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->clear()V

    .line 373
    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->cbTerminal_:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 344
    :cond_2
    iget-object v3, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    iget v3, v3, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->indent:I

    goto :goto_1

    .line 368
    :cond_3
    iput v5, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLineBaseline_:I

    .line 369
    iput-boolean v5, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator;->curLineBaselineConstrained_:Z

    goto :goto_2
.end method
