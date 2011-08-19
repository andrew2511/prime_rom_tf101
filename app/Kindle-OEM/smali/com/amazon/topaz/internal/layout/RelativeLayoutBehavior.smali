.class final Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;
.super Ljava/lang/Object;
.source "RelativeLayoutBehavior.java"

# interfaces
.implements Lcom/amazon/topaz/internal/layout/CreatingLayoutBehavior;


# instance fields
.field private final blockStyleManager_:Lcom/amazon/topaz/internal/layout/BlockStyleManager;

.field private final callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

.field private final configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

.field private curBlock_:Lcom/amazon/topaz/internal/layout/RelativeBlock;

.field private final engine:Lcom/amazon/topaz/internal/layout/LayoutEngine;

.field private final layoutItems_:Ljava/util/ArrayList;

.field private reflowBehavior:Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/internal/layout/LayoutEngine;Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;Lcom/amazon/topaz/internal/layout/CallbackStack;Lcom/amazon/topaz/internal/layout/BlockStyleManager;)V
    .locals 1
    .parameter "engine"
    .parameter "configuration"
    .parameter "callbackStack"
    .parameter "blockStyleManager"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->engine:Lcom/amazon/topaz/internal/layout/LayoutEngine;

    .line 36
    iput-object p2, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    .line 37
    iput-object p4, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->blockStyleManager_:Lcom/amazon/topaz/internal/layout/BlockStyleManager;

    .line 38
    iput-object p3, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->layoutItems_:Ljava/util/ArrayList;

    .line 40
    return-void
.end method

.method private add(Lcom/amazon/topaz/internal/book/Drawable;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 207
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->curBlock_:Lcom/amazon/topaz/internal/layout/RelativeBlock;

    .line 210
    .local v0, bb:Lcom/amazon/topaz/internal/layout/Block;
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/RelativeBlock;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getDisplay()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    move v1, v3

    .line 222
    :goto_0
    return v1

    .line 214
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Drawable;->getID()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget v2, v2, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->startID:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->isStarted()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    .line 215
    goto :goto_0

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v1, v4}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->setStarted(Z)V

    .line 221
    invoke-direct {p0, p1}, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->addLayoutItem(Lcom/amazon/topaz/internal/book/Drawable;)V

    move v1, v4

    .line 222
    goto :goto_0
.end method

.method private addIcon(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->session:Lcom/amazon/topaz/internal/Session;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget v1, v1, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->width:I

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/amazon/topaz/internal/Session;->getIcon(Ljava/lang/String;III)Lcom/amazon/topaz/internal/book/Drawable;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0, v0}, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->add(Lcom/amazon/topaz/internal/book/Drawable;)Z

    .line 198
    :cond_0
    return-void
.end method

.method private addLayoutItem(Lcom/amazon/topaz/internal/book/Drawable;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 227
    const/4 v0, 0x0

    .line 228
    instance-of v1, p1, Lcom/amazon/topaz/internal/book/Word;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/amazon/topaz/internal/book/Image;

    if-eqz v1, :cond_1

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->curBlock_:Lcom/amazon/topaz/internal/layout/RelativeBlock;

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Drawable;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/layout/RelativeBlock;->remap(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    move-object v2, v0

    .line 233
    :goto_0
    iget-object v7, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->layoutItems_:Ljava/util/ArrayList;

    new-instance v0, Lcom/amazon/topaz/internal/layout/LayoutItem;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/CallbackStack;->getAllActiveCallbacks()Ljava/util/List;

    move-result-object v6

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/amazon/topaz/internal/layout/LayoutItem;-><init>(Lcom/amazon/topaz/internal/book/Drawable;Lcom/amazon/system/drawing/Rectangle;IZZLjava/util/List;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    return-void

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method

.method private hasVisibleLayoutItems()Z
    .locals 3

    .prologue
    .line 238
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->layoutItems_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 240
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->layoutItems_:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/topaz/internal/layout/LayoutItem;

    .line 241
    .local v1, item:Lcom/amazon/topaz/internal/layout/LayoutItem;
    iget-object v2, v1, Lcom/amazon/topaz/internal/layout/LayoutItem;->pos:Lcom/amazon/system/drawing/Rectangle;

    if-eqz v2, :cond_0

    .line 243
    const/4 v2, 0x1

    .line 247
    .end local v1           #item:Lcom/amazon/topaz/internal/layout/LayoutItem;
    :goto_1
    return v2

    .line 238
    .restart local v1       #item:Lcom/amazon/topaz/internal/layout/LayoutItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    .end local v1           #item:Lcom/amazon/topaz/internal/layout/LayoutItem;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public canReflowPos(Lcom/amazon/topaz/internal/Anchor;)Z
    .locals 1
    .parameter "pos"

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public cascadeToContainer(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Container;)I
    .locals 1
    .parameter "root"
    .parameter "stem"

    .prologue
    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public endChildBlock(Lcom/amazon/topaz/internal/layout/Block;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 301
    iget-object v0, p1, Lcom/amazon/topaz/internal/layout/Block;->parent:Lcom/amazon/topaz/internal/layout/Block;

    check-cast v0, Lcom/amazon/topaz/internal/layout/RelativeBlock;

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->curBlock_:Lcom/amazon/topaz/internal/layout/RelativeBlock;

    .line 302
    return-void
.end method

.method public endContainer(Lcom/amazon/topaz/internal/book/Container;)I
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 252
    iget-object v8, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->curBlock_:Lcom/amazon/topaz/internal/layout/RelativeBlock;

    .line 254
    iget-object v0, v8, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->what:Lcom/amazon/topaz/internal/book/Container;

    if-ne v0, p1, :cond_2

    .line 256
    iget-object v0, v8, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->getDisplay()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 258
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v8}, Lcom/amazon/topaz/internal/layout/RelativeBlock;->getEndY()I

    move-result v0

    iget-object v1, v8, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->getBottomMargin()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v8, v0}, Lcom/amazon/topaz/internal/layout/RelativeBlock;->setEndY(I)V

    .line 264
    :cond_0
    iget-object v0, v8, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->shouldAddLine()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->hasVisibleLayoutItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v8}, Lcom/amazon/topaz/internal/layout/RelativeBlock;->getBoundingBox()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v2

    .line 267
    new-instance v0, Lcom/amazon/topaz/internal/layout/LayoutLine;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->layoutItems_:Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->y2(Lcom/amazon/system/drawing/Rectangle;)I

    move-result v4

    iget-object v5, v8, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    invoke-virtual {v5}, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->getTopMargin()I

    move-result v5

    iget-object v6, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

    invoke-virtual {v6}, Lcom/amazon/topaz/internal/layout/CallbackStack;->getAllActiveCallbacks()Ljava/util/List;

    move-result-object v7

    move v6, v3

    invoke-direct/range {v0 .. v7}, Lcom/amazon/topaz/internal/layout/LayoutLine;-><init>(Ljava/util/List;Lcom/amazon/system/drawing/Rectangle;ZIIZLjava/util/List;)V

    .line 276
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->layoutItems_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 277
    invoke-virtual {v8, v0}, Lcom/amazon/topaz/internal/layout/RelativeBlock;->addLine(Lcom/amazon/topaz/internal/layout/LayoutLine;)V

    .line 278
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v1, v0}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->invokeListenerHandleLineAdded(Lcom/amazon/topaz/internal/layout/LayoutLine;)Z

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

    invoke-virtual {v0, v8}, Lcom/amazon/topaz/internal/layout/CallbackStack;->endBlock(Lcom/amazon/topaz/internal/layout/Block;)V

    .line 284
    iget-object v0, v8, Lcom/amazon/topaz/internal/layout/RelativeBlock;->parent:Lcom/amazon/topaz/internal/layout/Block;

    .line 287
    instance-of v0, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    if-eqz v0, :cond_3

    .line 289
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->reflowBehavior:Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;

    .line 292
    :goto_0
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->engine:Lcom/amazon/topaz/internal/layout/LayoutEngine;

    invoke-virtual {v1, v0}, Lcom/amazon/topaz/internal/layout/LayoutEngine;->setLayoutBehavior(Lcom/amazon/topaz/internal/layout/LayoutBehavior;)V

    .line 293
    invoke-interface {v0, v8}, Lcom/amazon/topaz/internal/layout/CreatingLayoutBehavior;->endChildBlock(Lcom/amazon/topaz/internal/layout/Block;)V

    .line 296
    :cond_2
    return v3

    :cond_3
    move-object v0, p0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->layoutItems_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public layoutDrawable(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Drawable;)I
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 150
    instance-of v1, p2, Lcom/amazon/topaz/internal/book/Word;

    if-nez v1, :cond_0

    instance-of v1, p2, Lcom/amazon/topaz/internal/book/Image;

    if-eqz v1, :cond_2

    .line 152
    :cond_0
    invoke-direct {p0, p2}, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->add(Lcom/amazon/topaz/internal/book/Drawable;)Z

    .line 185
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 154
    :cond_2
    instance-of v1, p2, Lcom/amazon/topaz/internal/book/Link;

    if-eqz v1, :cond_4

    .line 156
    move-object v0, p2

    check-cast v0, Lcom/amazon/topaz/internal/book/Link;

    move-object v1, v0

    .line 157
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->curBlock_:Lcom/amazon/topaz/internal/layout/RelativeBlock;

    .line 159
    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/RelativeBlock;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getDisplay()I

    move-result v2

    if-eq v2, v3, :cond_3

    .line 162
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/book/Link;->close()Z

    move-result v2

    if-nez v2, :cond_3

    .line 164
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/book/Link;->getCallback()Lcom/amazon/topaz/Callback;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazon/topaz/internal/layout/CallbackStack;->startCallback(Lcom/amazon/topaz/Callback;)V

    .line 167
    :cond_3
    invoke-direct {p0, p2}, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->add(Lcom/amazon/topaz/internal/book/Drawable;)Z

    goto :goto_0

    .line 169
    :cond_4
    instance-of v1, p2, Lcom/amazon/topaz/internal/book/LineBreak;

    if-eqz v1, :cond_5

    .line 171
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->curBlock_:Lcom/amazon/topaz/internal/layout/RelativeBlock;

    .line 172
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/RelativeBlock;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getDisplay()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 176
    invoke-direct {p0, p2}, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->add(Lcom/amazon/topaz/internal/book/Drawable;)Z

    goto :goto_0

    .line 182
    :cond_5
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public setCurBlock(Lcom/amazon/topaz/internal/layout/RelativeBlock;)V
    .locals 0
    .parameter "block"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->curBlock_:Lcom/amazon/topaz/internal/layout/RelativeBlock;

    .line 66
    return-void
.end method

.method public setReflowBehavior(Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;)V
    .locals 1
    .parameter "reflowBehavior"

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->reflowBehavior:Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;

    if-eqz v0, :cond_1

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 60
    :cond_1
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->reflowBehavior:Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;

    .line 61
    return-void
.end method

.method public startBlock(Lcom/amazon/topaz/internal/layout/Block;)V
    .locals 5
    .parameter "b"

    .prologue
    .line 121
    move-object v0, p1

    check-cast v0, Lcom/amazon/topaz/internal/layout/RelativeBlock;

    move-object v1, v0

    .line 123
    .local v1, rb:Lcom/amazon/topaz/internal/layout/RelativeBlock;
    iput-object v1, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->curBlock_:Lcom/amazon/topaz/internal/layout/RelativeBlock;

    .line 126
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->isStarted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    iget-object v2, v2, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->what:Lcom/amazon/topaz/internal/book/Container;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/book/Container;->firstID()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget v3, v3, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->startID:I

    if-ge v2, v3, :cond_0

    iget-object v2, v1, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    iget-object v2, v2, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->what:Lcom/amazon/topaz/internal/book/Container;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/book/Container;->lastID()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget v3, v3, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->startID:I

    if-lt v2, v3, :cond_0

    .line 128
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget-object v3, v1, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    iget-object v3, v3, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->what:Lcom/amazon/topaz/internal/book/Container;

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/book/Container;->firstID()I

    move-result v3

    iput v3, v2, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->startID:I

    .line 132
    :cond_0
    iget-object v2, v1, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    iget-object v2, v2, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    iget-boolean v2, v2, Lcom/amazon/topaz/internal/layout/CommonStyles;->newPage:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget v2, v2, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->screenHeight:I

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/internal/layout/RelativeBlock;->shiftCoordinates(I)V

    .line 138
    :cond_1
    iget-object v2, v1, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->shouldAddLine()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    iget-object v2, v2, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->relative:Lcom/amazon/topaz/internal/layout/RelativeStyles;

    iget-boolean v2, v2, Lcom/amazon/topaz/internal/layout/RelativeStyles;->zoomable:Z

    if-eqz v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

    new-instance v3, Lcom/amazon/topaz/internal/layout/FullScreenCallback;

    iget-object v4, v1, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    iget-object v4, v4, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->what:Lcom/amazon/topaz/internal/book/Container;

    invoke-direct {v3, v4}, Lcom/amazon/topaz/internal/layout/FullScreenCallback;-><init>(Lcom/amazon/topaz/internal/book/Container;)V

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/internal/layout/CallbackStack;->startCallback(Lcom/amazon/topaz/Callback;)V

    .line 141
    :cond_2
    return-void
.end method

.method public startContainer(Lcom/amazon/topaz/internal/book/Container;)I
    .locals 12
    .parameter "what"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 70
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->curBlock_:Lcom/amazon/topaz/internal/layout/RelativeBlock;

    .line 72
    .local v0, parent:Lcom/amazon/topaz/internal/layout/Block;
    if-nez p1, :cond_0

    .line 74
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Container;->firstID()I

    move-result v7

    .line 78
    .local v7, drawID:I
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->isStarted()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget v1, v1, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->startID:I

    if-lt v7, v1, :cond_2

    :cond_1
    move v5, v11

    .line 81
    .local v5, block_started:Z
    :goto_0
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->blockStyleManager_:Lcom/amazon/topaz/internal/layout/BlockStyleManager;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget-boolean v3, v1, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->popupMode:Z

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->session:Lcom/amazon/topaz/internal/Session;

    iget-boolean v4, v1, Lcom/amazon/topaz/internal/Session;->allowJustify:Z

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget v6, v1, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->screenHeight:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/topaz/internal/layout/Block;->createChild(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/layout/BlockStyleManager;ZZZI)Lcom/amazon/topaz/internal/layout/Block;

    move-result-object v8

    check-cast v8, Lcom/amazon/topaz/internal/layout/RelativeBlock;

    .line 84
    .local v8, nb:Lcom/amazon/topaz/internal/layout/RelativeBlock;
    invoke-virtual {v8}, Lcom/amazon/topaz/internal/layout/RelativeBlock;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getDisplay()I

    move-result v1

    if-ne v1, v11, :cond_3

    move v1, v10

    .line 116
    :goto_1
    return v1

    .end local v5           #block_started:Z
    .end local v8           #nb:Lcom/amazon/topaz/internal/layout/RelativeBlock;
    :cond_2
    move v5, v10

    .line 78
    goto :goto_0

    .line 89
    .restart local v5       #block_started:Z
    .restart local v8       #nb:Lcom/amazon/topaz/internal/layout/RelativeBlock;
    :cond_3
    invoke-virtual {v8}, Lcom/amazon/topaz/internal/layout/RelativeBlock;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v1

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/BlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    iget-boolean v1, v1, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconified:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/RelativeBlock;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v1

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/BlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    iget-boolean v1, v1, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconified:Z

    if-nez v1, :cond_4

    .line 90
    new-instance v9, Lcom/amazon/topaz/internal/layout/ShowPopupCallback;

    const-string v1, "Show item"

    invoke-direct {v9, v1}, Lcom/amazon/topaz/internal/layout/ShowPopupCallback;-><init>(Ljava/lang/String;)V

    .line 91
    .local v9, spc:Lcom/amazon/topaz/internal/layout/ShowPopupCallback;
    invoke-virtual {v9, p1}, Lcom/amazon/topaz/internal/layout/ShowPopupCallback;->addItem(Lcom/amazon/topaz/internal/book/Container;)V

    .line 92
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

    invoke-virtual {v1, v9}, Lcom/amazon/topaz/internal/layout/CallbackStack;->startCallback(Lcom/amazon/topaz/Callback;)V

    .line 99
    .end local v9           #spc:Lcom/amazon/topaz/internal/layout/ShowPopupCallback;
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Container;->hasDrawables()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v10}, Lcom/amazon/topaz/internal/book/Container;->getDrawable(I)Lcom/amazon/topaz/internal/book/Drawable;

    move-result-object v1

    instance-of v1, v1, Lcom/amazon/topaz/internal/book/Image;

    if-eqz v1, :cond_5

    .line 101
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

    new-instance v3, Lcom/amazon/topaz/internal/layout/ImageCallback;

    invoke-virtual {p1, v10}, Lcom/amazon/topaz/internal/book/Container;->getDrawable(I)Lcom/amazon/topaz/internal/book/Drawable;

    move-result-object v1

    check-cast v1, Lcom/amazon/topaz/internal/book/Image;

    invoke-direct {v3, v1}, Lcom/amazon/topaz/internal/layout/ImageCallback;-><init>(Lcom/amazon/topaz/internal/book/Image;)V

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/internal/layout/CallbackStack;->startCallback(Lcom/amazon/topaz/Callback;)V

    .line 105
    :cond_5
    invoke-virtual {v8}, Lcom/amazon/topaz/internal/layout/RelativeBlock;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v1

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/BlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    iget-boolean v1, v1, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconified:Z

    if-eqz v1, :cond_6

    invoke-virtual {v8}, Lcom/amazon/topaz/internal/layout/RelativeBlock;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getDisplay()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 106
    const-string v1, ""

    invoke-virtual {v8}, Lcom/amazon/topaz/internal/layout/RelativeBlock;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v2

    iget-object v2, v2, Lcom/amazon/topaz/internal/layout/BlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    iget-object v2, v2, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconImage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 108
    invoke-virtual {v8}, Lcom/amazon/topaz/internal/layout/RelativeBlock;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v1

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/BlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconImage:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Container;->pageNum()I

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Container;->firstID()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->addIcon(Ljava/lang/String;II)V

    .line 112
    :cond_6
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

    invoke-virtual {v1, v8}, Lcom/amazon/topaz/internal/layout/CallbackStack;->startBlock(Lcom/amazon/topaz/internal/layout/Block;)V

    .line 114
    invoke-virtual {p0, v8}, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->startBlock(Lcom/amazon/topaz/internal/layout/Block;)V

    move v1, v10

    .line 116
    goto/16 :goto_1
.end method
