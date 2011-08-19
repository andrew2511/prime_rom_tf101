.class final Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;
.super Ljava/lang/Object;
.source "ReflowLayoutBehavior.java"

# interfaces
.implements Lcom/amazon/topaz/internal/layout/CreatingLayoutBehavior;


# instance fields
.field private final accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

.field private final blockStyleManager_:Lcom/amazon/topaz/internal/layout/BlockStyleManager;

.field private final callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

.field private final configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

.field private curBlock_:Lcom/amazon/topaz/internal/layout/ReflowBlock;

.field private final engine:Lcom/amazon/topaz/internal/layout/LayoutEngine;

.field private lastWord:Lcom/amazon/topaz/internal/book/Word;

.field private relativeBehavior:Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/internal/layout/LayoutEngine;Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;Lcom/amazon/topaz/internal/layout/ReflowBlock;Lcom/amazon/topaz/internal/layout/CallbackStack;Lcom/amazon/topaz/internal/layout/BlockStyleManager;)V
    .locals 1
    .parameter "engine"
    .parameter "configuration"
    .parameter "rootBlock"
    .parameter "callbackStack"
    .parameter "blockStyleManager"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->engine:Lcom/amazon/topaz/internal/layout/LayoutEngine;

    .line 35
    iput-object p2, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    .line 36
    iput-object p5, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->blockStyleManager_:Lcom/amazon/topaz/internal/layout/BlockStyleManager;

    .line 37
    iput-object p4, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

    .line 38
    iput-object p3, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->curBlock_:Lcom/amazon/topaz/internal/layout/ReflowBlock;

    .line 39
    new-instance v0, Lcom/amazon/topaz/internal/layout/LineAccumulator;

    invoke-direct {v0, p2, p3, p4}, Lcom/amazon/topaz/internal/layout/LineAccumulator;-><init>(Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;Lcom/amazon/topaz/internal/layout/ReflowBlock;Lcom/amazon/topaz/internal/layout/CallbackStack;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    .line 40
    return-void
.end method

.method private add(Lcom/amazon/topaz/internal/book/Drawable;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 364
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->add(Lcom/amazon/topaz/internal/book/Drawable;ZI)Z

    move-result v0

    return v0
.end method

.method private add(Lcom/amazon/topaz/internal/book/Drawable;ZI)Z
    .locals 7
    .parameter "item"
    .parameter "calculatePad"
    .parameter "pad"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 377
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Drawable;->getID()I

    move-result v2

    .line 379
    .local v2, id:I
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->curBlock_:Lcom/amazon/topaz/internal/layout/ReflowBlock;

    .line 382
    .local v1, bb:Lcom/amazon/topaz/internal/layout/Block;
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/ReflowBlock;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getDisplay()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    move v3, v5

    .line 412
    .end local v1           #bb:Lcom/amazon/topaz/internal/layout/Block;
    :goto_0
    return v3

    .line 386
    .restart local v1       #bb:Lcom/amazon/topaz/internal/layout/Block;
    :cond_0
    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget v3, v3, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->startID:I

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->isStarted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 388
    instance-of v3, v1, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    if-eqz v3, :cond_1

    .line 390
    check-cast v1, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    .end local v1           #bb:Lcom/amazon/topaz/internal/layout/Block;
    iput-boolean v5, v1, Lcom/amazon/topaz/internal/layout/ReflowBlock;->passedFirstLine:Z

    :cond_1
    move v3, v5

    .line 392
    goto :goto_0

    .line 396
    .restart local v1       #bb:Lcom/amazon/topaz/internal/layout/Block;
    :cond_2
    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->isStarted()Z

    move-result v3

    if-nez v3, :cond_3

    instance-of v3, v1, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    if-eqz v3, :cond_3

    .line 398
    iget-object v4, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    move-object v0, v1

    check-cast v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    move-object v3, v0

    iget-boolean v3, v3, Lcom/amazon/topaz/internal/layout/ReflowBlock;->passedFirstLine:Z

    if-eqz v3, :cond_4

    check-cast v1, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    .end local v1           #bb:Lcom/amazon/topaz/internal/layout/Block;
    iget-object v3, v1, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    iget v3, v3, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->hang:I

    :goto_1
    invoke-virtual {v4, v3}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->add(I)V

    .line 399
    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    invoke-virtual {v3, v5}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->startLine(Z)V

    .line 403
    :cond_3
    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v3, v5}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->setStarted(Z)V

    .line 405
    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    invoke-virtual {v3, p1, p2, p3}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->add(Lcom/amazon/topaz/internal/book/Drawable;ZI)Z

    move-result v3

    if-nez v3, :cond_5

    .line 408
    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    invoke-virtual {v3, v6}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->commitLine(Z)V

    .line 409
    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    iget-object v4, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v4}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->isStarted()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->startLine(Z)V

    move v3, v6

    .line 410
    goto :goto_0

    .line 398
    .restart local v1       #bb:Lcom/amazon/topaz/internal/layout/Block;
    :cond_4
    check-cast v1, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    .end local v1           #bb:Lcom/amazon/topaz/internal/layout/Block;
    iget-object v3, v1, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    iget v3, v3, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->indent:I

    goto :goto_1

    :cond_5
    move v3, v5

    .line 412
    goto :goto_0
.end method

.method private addIcon(Ljava/lang/String;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 351
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->session:Lcom/amazon/topaz/internal/Session;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget v1, v1, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->width:I

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/amazon/topaz/internal/Session;->getIcon(Ljava/lang/String;III)Lcom/amazon/topaz/internal/book/Drawable;

    move-result-object v0

    .line 352
    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0, v0, v2, v2}, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->add(Lcom/amazon/topaz/internal/book/Drawable;ZI)Z

    .line 355
    :cond_0
    return-void
.end method

.method private reflow(Lcom/amazon/topaz/internal/book/LineBreak;)V
    .locals 3
    .parameter "lb"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->curBlock_:Lcom/amazon/topaz/internal/layout/ReflowBlock;

    .line 306
    .local v0, bb:Lcom/amazon/topaz/internal/layout/Block;
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/ReflowBlock;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getDisplay()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/LineBreak;->getID()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget v2, v2, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->startID:I

    if-lt v1, v2, :cond_1

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    invoke-virtual {v1, p1}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->addHiddenDrawable(Lcom/amazon/topaz/internal/book/Drawable;)V

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->isStarted()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->addLineBreak(Z)V

    .line 312
    return-void
.end method

.method private reflow(Lcom/amazon/topaz/internal/book/Link;)V
    .locals 4
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->curBlock_:Lcom/amazon/topaz/internal/layout/ReflowBlock;

    .line 324
    .local v0, bb:Lcom/amazon/topaz/internal/layout/Block;
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Link;->close()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 326
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/CallbackStack;->endCallback()Lcom/amazon/topaz/Callback;

    move-result-object v1

    .line 327
    .local v1, callback:Lcom/amazon/topaz/Callback;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    invoke-virtual {v2, v1}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->endCallback(Lcom/amazon/topaz/Callback;)V

    .line 338
    .end local v1           #callback:Lcom/amazon/topaz/Callback;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/ReflowBlock;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getDisplay()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->isStarted()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Link;->getID()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget v3, v3, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->startID:I

    if-lt v2, v3, :cond_2

    .line 341
    :cond_1
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    invoke-virtual {v2, p1}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->addHiddenDrawable(Lcom/amazon/topaz/internal/book/Drawable;)V

    .line 343
    :cond_2
    return-void

    .line 334
    :cond_3
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Link;->getCallback()Lcom/amazon/topaz/Callback;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/internal/layout/CallbackStack;->startCallback(Lcom/amazon/topaz/Callback;)V

    .line 335
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->addUnderline()V

    goto :goto_0
.end method

.method private reflow(Lcom/amazon/topaz/internal/book/Word;)Z
    .locals 4
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->curBlock_:Lcom/amazon/topaz/internal/layout/ReflowBlock;

    .line 236
    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    iget-boolean v0, v0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->preserveLineBreaks:Z

    if-eqz v0, :cond_1

    .line 241
    invoke-direct {p0, p1}, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->add(Lcom/amazon/topaz/internal/book/Drawable;)Z

    move-result v0

    .line 242
    if-eqz v0, :cond_0

    .line 244
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->lastWord:Lcom/amazon/topaz/internal/book/Word;

    .line 294
    :cond_0
    :goto_0
    return v0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Word;->isForeign()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Word;->comesFrom()Lcom/amazon/topaz/internal/book/Word;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Word;->comesFrom()Lcom/amazon/topaz/internal/book/Word;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->lastWord:Lcom/amazon/topaz/internal/book/Word;

    if-eq v0, v1, :cond_3

    .line 249
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->addHiddenDrawable(Lcom/amazon/topaz/internal/book/Drawable;)V

    .line 250
    const/4 v0, 0x1

    goto :goto_0

    .line 254
    :cond_3
    const/4 v0, 0x0

    .line 257
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Word;->glommed()Lcom/amazon/topaz/internal/book/Word;
    :try_end_0
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 270
    :goto_1
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Word;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->fits(Lcom/amazon/system/drawing/Rectangle;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Word;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->fits(Lcom/amazon/system/drawing/Rectangle;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move-object v0, p1

    .line 285
    :cond_5
    invoke-direct {p0, v0}, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->add(Lcom/amazon/topaz/internal/book/Drawable;)Z

    move-result v1

    .line 286
    if-eqz v1, :cond_6

    .line 288
    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->lastWord:Lcom/amazon/topaz/internal/book/Word;

    :cond_6
    move v0, v1

    goto :goto_0

    .line 259
    :catch_0
    move-exception v1

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TOPAZ REFLOW LAYOUT: Failed to read glommed word...falling back to hyphenated version. Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/topaz/exception/TopazException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 263
    :catch_1
    move-exception v1

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TOPAZ REFLOW LAYOUT: Failed to read glommed word...falling back to hyphenated version. Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public canReflowPos(Lcom/amazon/topaz/internal/Anchor;)Z
    .locals 2
    .parameter "pos"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->containsPos(Lcom/amazon/topaz/internal/Anchor;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->lastPageNum()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->lastID()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/topaz/internal/Anchor;->compareTo(II)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cascadeToContainer(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Container;)I
    .locals 3
    .parameter "root"
    .parameter "stem"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->curBlock_:Lcom/amazon/topaz/internal/layout/ReflowBlock;

    .line 165
    .local v0, bb:Lcom/amazon/topaz/internal/layout/ReflowBlock;
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    iget-boolean v1, v1, Lcom/amazon/topaz/internal/layout/ReflowStyles;->cascade:Z

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    invoke-virtual {p2}, Lcom/amazon/topaz/internal/book/Container;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v2

    iget v2, v2, Lcom/amazon/system/drawing/Rectangle;->x:I

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->setCurBlockOrigBoundsLeft(I)V

    .line 169
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->isStarted()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->addLineBreak(Z)V

    .line 170
    const/4 v1, 0x0

    .line 174
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public endChildBlock(Lcom/amazon/topaz/internal/layout/Block;)V
    .locals 3
    .parameter "childBlock"

    .prologue
    .line 446
    iget-object v1, p1, Lcom/amazon/topaz/internal/layout/Block;->parent:Lcom/amazon/topaz/internal/layout/Block;

    check-cast v1, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    invoke-virtual {p0, v1}, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->setCurBlock(Lcom/amazon/topaz/internal/layout/ReflowBlock;)V

    .line 447
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->curBlock_:Lcom/amazon/topaz/internal/layout/ReflowBlock;

    .line 448
    .local v0, curBlock:Lcom/amazon/topaz/internal/layout/ReflowBlock;
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/layout/Block;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getDisplay()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 450
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    instance-of v1, p1, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    if-eqz v1, :cond_0

    .line 454
    check-cast p1, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    .end local p1
    iget v1, p1, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastBaseline:I

    iput v1, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastBaseline:I

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->isStarted()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->startLine(Z)V

    .line 460
    :cond_1
    return-void
.end method

.method public endContainer(Lcom/amazon/topaz/internal/book/Container;)I
    .locals 3
    .parameter "c"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->curBlock_:Lcom/amazon/topaz/internal/layout/ReflowBlock;

    .line 419
    .local v0, rb:Lcom/amazon/topaz/internal/layout/ReflowBlock;
    iget-object v1, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->what:Lcom/amazon/topaz/internal/book/Container;

    if-ne v1, p1, :cond_1

    .line 422
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->commitLine(Z)V

    .line 424
    iget-object v1, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->getDisplay()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 426
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/ReflowBlock;->getEndY()I

    move-result v1

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/ReflowBlock;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getBottomMargin()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/layout/ReflowBlock;->setEndY(I)V

    .line 434
    :cond_0
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

    invoke-virtual {v1, v0}, Lcom/amazon/topaz/internal/layout/CallbackStack;->endBlock(Lcom/amazon/topaz/internal/layout/Block;)V

    .line 438
    invoke-virtual {p0, v0}, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->endChildBlock(Lcom/amazon/topaz/internal/layout/Block;)V

    .line 441
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public layoutDrawable(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Drawable;)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 180
    instance-of v1, p2, Lcom/amazon/topaz/internal/book/Word;

    if-eqz v1, :cond_2

    .line 183
    move-object v0, p2

    check-cast v0, Lcom/amazon/topaz/internal/book/Word;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->reflow(Lcom/amazon/topaz/internal/book/Word;)Z

    move-result v1

    .line 184
    if-nez v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->cancelRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 226
    :goto_0
    return v1

    .line 192
    :cond_0
    check-cast p2, Lcom/amazon/topaz/internal/book/Word;

    invoke-direct {p0, p2}, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->reflow(Lcom/amazon/topaz/internal/book/Word;)Z

    .line 226
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 197
    :cond_2
    instance-of v1, p2, Lcom/amazon/topaz/internal/book/Image;

    if-eqz v1, :cond_4

    .line 199
    invoke-direct {p0, p2}, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->add(Lcom/amazon/topaz/internal/book/Drawable;)Z

    move-result v1

    .line 200
    if-nez v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->cancelRequested()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 204
    goto :goto_0

    .line 208
    :cond_3
    invoke-direct {p0, p2}, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->add(Lcom/amazon/topaz/internal/book/Drawable;)Z

    goto :goto_1

    .line 213
    :cond_4
    instance-of v1, p2, Lcom/amazon/topaz/internal/book/Link;

    if-eqz v1, :cond_5

    .line 215
    check-cast p2, Lcom/amazon/topaz/internal/book/Link;

    invoke-direct {p0, p2}, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->reflow(Lcom/amazon/topaz/internal/book/Link;)V

    goto :goto_1

    .line 217
    :cond_5
    instance-of v1, p2, Lcom/amazon/topaz/internal/book/LineBreak;

    if-eqz v1, :cond_6

    .line 219
    check-cast p2, Lcom/amazon/topaz/internal/book/LineBreak;

    invoke-direct {p0, p2}, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->reflow(Lcom/amazon/topaz/internal/book/LineBreak;)V

    goto :goto_1

    .line 223
    :cond_6
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public setCurBlock(Lcom/amazon/topaz/internal/layout/ReflowBlock;)V
    .locals 1
    .parameter "block"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->curBlock_:Lcom/amazon/topaz/internal/layout/ReflowBlock;

    .line 65
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->setCurBlock(Lcom/amazon/topaz/internal/layout/ReflowBlock;)V

    .line 66
    return-void
.end method

.method public setRelativeBehavior(Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;)V
    .locals 1
    .parameter "relativeBehavior"

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->relativeBehavior:Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 59
    :cond_1
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->relativeBehavior:Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;

    .line 60
    return-void
.end method

.method public startBlock(Lcom/amazon/topaz/internal/layout/Block;)V
    .locals 4
    .parameter "b"

    .prologue
    .line 146
    move-object v0, p1

    check-cast v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    move-object v1, v0

    .line 148
    .local v1, rb:Lcom/amazon/topaz/internal/layout/ReflowBlock;
    invoke-virtual {p0, v1}, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->setCurBlock(Lcom/amazon/topaz/internal/layout/ReflowBlock;)V

    .line 151
    iget-object v2, v1, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    iget-object v2, v2, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    iget-boolean v2, v2, Lcom/amazon/topaz/internal/layout/CommonStyles;->newPage:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget v2, v2, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->screenHeight:I

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/internal/layout/ReflowBlock;->shiftCoordinates(I)V

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    iget-object v3, v1, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    iget-object v3, v3, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->what:Lcom/amazon/topaz/internal/book/Container;

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/book/Container;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v3

    iget v3, v3, Lcom/amazon/system/drawing/Rectangle;->x:I

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->setCurBlockOrigBoundsLeft(I)V

    .line 158
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->isStarted()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->startLine(Z)V

    .line 159
    return-void
.end method

.method public startContainer(Lcom/amazon/topaz/internal/book/Container;)I
    .locals 14
    .parameter "what"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 75
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->curBlock_:Lcom/amazon/topaz/internal/layout/ReflowBlock;

    .line 77
    .local v0, parent:Lcom/amazon/topaz/internal/layout/ReflowBlock;
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    iget-boolean v1, v1, Lcom/amazon/topaz/internal/layout/ReflowStyles;->cascade:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Container;->isContinuation()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v12

    .line 141
    :goto_0
    return v1

    .line 83
    :cond_0
    if-nez p1, :cond_1

    .line 85
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 88
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Container;->firstID()I

    move-result v8

    .line 89
    .local v8, drawID:I
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->isStarted()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget v1, v1, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->startID:I

    if-lt v8, v1, :cond_4

    :cond_2
    move v5, v12

    .line 91
    .local v5, block_started:Z
    :goto_1
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->blockStyleManager_:Lcom/amazon/topaz/internal/layout/BlockStyleManager;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget-boolean v3, v1, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->popupMode:Z

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->session:Lcom/amazon/topaz/internal/Session;

    iget-boolean v4, v1, Lcom/amazon/topaz/internal/Session;->allowJustify:Z

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget v6, v1, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->screenHeight:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/topaz/internal/layout/ReflowBlock;->createChild(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/layout/BlockStyleManager;ZZZI)Lcom/amazon/topaz/internal/layout/Block;

    move-result-object v9

    .line 94
    .local v9, nb:Lcom/amazon/topaz/internal/layout/Block;
    invoke-virtual {v9}, Lcom/amazon/topaz/internal/layout/Block;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getDisplay()I

    move-result v1

    if-ne v1, v12, :cond_5

    .line 96
    instance-of v1, v9, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    if-eqz v1, :cond_3

    check-cast v9, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    .end local v9           #nb:Lcom/amazon/topaz/internal/layout/Block;
    iget-object v1, v9, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    iget v1, v1, Lcom/amazon/topaz/internal/layout/ReflowStyles;->spaceAfter:I

    if-nez v1, :cond_3

    .line 97
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->hackIncrementStartPad()V

    :cond_3
    move v1, v11

    .line 99
    goto :goto_0

    .end local v5           #block_started:Z
    :cond_4
    move v5, v11

    .line 89
    goto :goto_1

    .line 103
    .restart local v5       #block_started:Z
    .restart local v9       #nb:Lcom/amazon/topaz/internal/layout/Block;
    :cond_5
    invoke-virtual {v9}, Lcom/amazon/topaz/internal/layout/Block;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v1

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/BlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    iget-boolean v1, v1, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconified:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/ReflowBlock;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v1

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/BlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    iget-boolean v1, v1, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconified:Z

    if-nez v1, :cond_6

    .line 104
    new-instance v10, Lcom/amazon/topaz/internal/layout/ShowPopupCallback;

    const-string v1, "Show item"

    invoke-direct {v10, v1}, Lcom/amazon/topaz/internal/layout/ShowPopupCallback;-><init>(Ljava/lang/String;)V

    .line 105
    .local v10, spc:Lcom/amazon/topaz/internal/layout/ShowPopupCallback;
    invoke-virtual {v10, p1}, Lcom/amazon/topaz/internal/layout/ShowPopupCallback;->addItem(Lcom/amazon/topaz/internal/book/Container;)V

    .line 106
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

    invoke-virtual {v1, v10}, Lcom/amazon/topaz/internal/layout/CallbackStack;->startCallback(Lcom/amazon/topaz/Callback;)V

    .line 113
    .end local v10           #spc:Lcom/amazon/topaz/internal/layout/ShowPopupCallback;
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Container;->hasDrawables()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1, v11}, Lcom/amazon/topaz/internal/book/Container;->getDrawable(I)Lcom/amazon/topaz/internal/book/Drawable;

    move-result-object v1

    instance-of v1, v1, Lcom/amazon/topaz/internal/book/Image;

    if-eqz v1, :cond_7

    .line 115
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

    new-instance v3, Lcom/amazon/topaz/internal/layout/ImageCallback;

    invoke-virtual {p1, v11}, Lcom/amazon/topaz/internal/book/Container;->getDrawable(I)Lcom/amazon/topaz/internal/book/Drawable;

    move-result-object v1

    check-cast v1, Lcom/amazon/topaz/internal/book/Image;

    invoke-direct {v3, v1}, Lcom/amazon/topaz/internal/layout/ImageCallback;-><init>(Lcom/amazon/topaz/internal/book/Image;)V

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/internal/layout/CallbackStack;->startCallback(Lcom/amazon/topaz/Callback;)V

    .line 119
    :cond_7
    invoke-virtual {v9}, Lcom/amazon/topaz/internal/layout/Block;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v1

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/BlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    iget-boolean v1, v1, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconified:Z

    if-eqz v1, :cond_8

    invoke-virtual {v9}, Lcom/amazon/topaz/internal/layout/Block;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getDisplay()I

    move-result v1

    if-ne v1, v13, :cond_8

    .line 120
    const-string v1, ""

    invoke-virtual {v9}, Lcom/amazon/topaz/internal/layout/Block;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v2

    iget-object v2, v2, Lcom/amazon/topaz/internal/layout/BlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    iget-object v2, v2, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconImage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 122
    invoke-virtual {v9}, Lcom/amazon/topaz/internal/layout/Block;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v1

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/BlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconImage:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Container;->pageNum()I

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Container;->firstID()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->addIcon(Ljava/lang/String;II)V

    .line 127
    :cond_8
    instance-of v1, v9, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    if-eqz v1, :cond_9

    invoke-virtual {v9}, Lcom/amazon/topaz/internal/layout/Block;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getDisplay()I

    move-result v1

    if-eq v1, v13, :cond_9

    .line 129
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    invoke-virtual {v1, v12}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->commitLine(Z)V

    .line 132
    :cond_9
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

    invoke-virtual {v1, v9}, Lcom/amazon/topaz/internal/layout/CallbackStack;->startBlock(Lcom/amazon/topaz/internal/layout/Block;)V

    .line 134
    move-object v7, p0

    .line 135
    .local v7, childBehavior:Lcom/amazon/topaz/internal/layout/CreatingLayoutBehavior;
    instance-of v1, v9, Lcom/amazon/topaz/internal/layout/RelativeBlock;

    if-eqz v1, :cond_a

    .line 137
    iget-object v7, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->relativeBehavior:Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;

    .line 139
    :cond_a
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->engine:Lcom/amazon/topaz/internal/layout/LayoutEngine;

    invoke-virtual {v1, v7}, Lcom/amazon/topaz/internal/layout/LayoutEngine;->setLayoutBehavior(Lcom/amazon/topaz/internal/layout/LayoutBehavior;)V

    .line 140
    invoke-interface {v7, v9}, Lcom/amazon/topaz/internal/layout/CreatingLayoutBehavior;->startBlock(Lcom/amazon/topaz/internal/layout/Block;)V

    move v1, v11

    .line 141
    goto/16 :goto_0
.end method

.method public startLine(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->accumulator_:Lcom/amazon/topaz/internal/layout/LineAccumulator;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/layout/LineAccumulator;->startLine(Z)V

    .line 71
    return-void
.end method
