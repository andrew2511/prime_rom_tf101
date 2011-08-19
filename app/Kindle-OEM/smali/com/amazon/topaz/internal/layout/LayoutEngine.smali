.class public Lcom/amazon/topaz/internal/layout/LayoutEngine;
.super Ljava/lang/Object;
.source "LayoutEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/layout/LayoutEngine$1;,
        Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutEngineTraversalHandler;,
        Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;,
        Lcom/amazon/topaz/internal/layout/LayoutEngine$TimingTraversalHandler;,
        Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutListener;
    }
.end annotation


# instance fields
.field private final appendingBehavior_:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;

.field private final callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

.field private final configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

.field private curLayoutBehavior_:Lcom/amazon/topaz/internal/layout/LayoutBehavior;

.field private lastLayoutBehavior_:Lcom/amazon/topaz/internal/layout/LayoutBehavior;

.field private final reflowBehavior_:Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;

.field private final relativeBehavior_:Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;

.field private final rootBlock_:Lcom/amazon/topaz/internal/layout/Block;

.field private final traverser_:Lcom/amazon/topaz/internal/book/BookTraverser;


# direct methods
.method public constructor <init>(Ljava/util/ListIterator;IIILcom/amazon/topaz/styles/StyleSheet;Lcom/amazon/topaz/internal/Session;ZII)V
    .locals 10
    .parameter "items"
    .parameter "startID"
    .parameter "width"
    .parameter "screenHeight"
    .parameter "ss"
    .parameter "sess"
    .parameter "popup"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    new-instance v9, Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutEngineTraversalHandler;

    const/4 v3, 0x0

    invoke-direct {v9, p0, v3}, Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutEngineTraversalHandler;-><init>(Lcom/amazon/topaz/internal/layout/LayoutEngine;Lcom/amazon/topaz/internal/layout/LayoutEngine$1;)V

    .line 316
    .local v9, traversalHandler:Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;
    new-instance v3, Lcom/amazon/topaz/internal/book/BookTraverser;

    invoke-direct {v3, p1, v9}, Lcom/amazon/topaz/internal/book/BookTraverser;-><init>(Ljava/util/ListIterator;Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;)V

    iput-object v3, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->traverser_:Lcom/amazon/topaz/internal/book/BookTraverser;

    .line 318
    new-instance v3, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    move v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v3 .. v8}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;-><init>(IIILcom/amazon/topaz/internal/Session;Z)V

    iput-object v3, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    .line 320
    new-instance v8, Lcom/amazon/topaz/internal/layout/BlockStyleManager;

    invoke-direct {v8, p5}, Lcom/amazon/topaz/internal/layout/BlockStyleManager;-><init>(Lcom/amazon/topaz/styles/StyleSheet;)V

    .line 322
    .local v8, blockStyleManager:Lcom/amazon/topaz/internal/layout/BlockStyleManager;
    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget-object v3, v3, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->session:Lcom/amazon/topaz/internal/Session;

    iget-boolean v3, v3, Lcom/amazon/topaz/internal/Session;->showMarkers:Z

    if-eqz v3, :cond_0

    .line 323
    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget-object v3, v3, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->session:Lcom/amazon/topaz/internal/Session;

    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->ICONNAME_MENU:Ljava/lang/String;

    invoke-static {v4}, Lcom/amazon/topaz/internal/Session;->getIconWidth(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget v5, v5, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->width:I

    invoke-virtual {v3, v4, v5}, Lcom/amazon/topaz/internal/Session;->pixelsToTwips(II)I

    move-result v3

    move/from16 v0, p9

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p9

    .line 332
    :cond_0
    new-instance v3, Lcom/amazon/topaz/internal/layout/CallbackStack;

    invoke-direct {v3}, Lcom/amazon/topaz/internal/layout/CallbackStack;-><init>()V

    iput-object v3, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

    .line 333
    new-instance v3, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    sub-int v4, p3, p9

    move-object v0, v3

    move/from16 v1, p8

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/amazon/topaz/internal/layout/ReflowBlock;-><init>(II)V

    iput-object v3, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->rootBlock_:Lcom/amazon/topaz/internal/layout/Block;

    .line 334
    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

    iget-object v4, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->rootBlock_:Lcom/amazon/topaz/internal/layout/Block;

    invoke-virtual {v3, v4}, Lcom/amazon/topaz/internal/layout/CallbackStack;->startBlock(Lcom/amazon/topaz/internal/layout/Block;)V

    .line 336
    new-instance v3, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;

    iget-object v5, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget-object v6, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->rootBlock_:Lcom/amazon/topaz/internal/layout/Block;

    check-cast v6, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    iget-object v7, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;-><init>(Lcom/amazon/topaz/internal/layout/LayoutEngine;Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;Lcom/amazon/topaz/internal/layout/ReflowBlock;Lcom/amazon/topaz/internal/layout/CallbackStack;Lcom/amazon/topaz/internal/layout/BlockStyleManager;)V

    iput-object v3, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->reflowBehavior_:Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;

    .line 337
    new-instance v3, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;

    iget-object v4, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget-object v5, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

    invoke-direct {v3, p0, v4, v5, v8}, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;-><init>(Lcom/amazon/topaz/internal/layout/LayoutEngine;Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;Lcom/amazon/topaz/internal/layout/CallbackStack;Lcom/amazon/topaz/internal/layout/BlockStyleManager;)V

    iput-object v3, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->relativeBehavior_:Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;

    .line 338
    new-instance v3, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;

    iget-object v4, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget-object v5, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->callbackStack_:Lcom/amazon/topaz/internal/layout/CallbackStack;

    invoke-direct {v3, p0, v4, v5, v8}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;-><init>(Lcom/amazon/topaz/internal/layout/LayoutEngine;Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;Lcom/amazon/topaz/internal/layout/CallbackStack;Lcom/amazon/topaz/internal/layout/BlockStyleManager;)V

    iput-object v3, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->appendingBehavior_:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;

    .line 339
    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->reflowBehavior_:Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;

    iget-object v4, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->relativeBehavior_:Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;

    invoke-virtual {v3, v4}, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->setRelativeBehavior(Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;)V

    .line 340
    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->relativeBehavior_:Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;

    iget-object v4, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->reflowBehavior_:Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;

    invoke-virtual {v3, v4}, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->setReflowBehavior(Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;)V

    .line 341
    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->reflowBehavior_:Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;

    iput-object v3, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->curLayoutBehavior_:Lcom/amazon/topaz/internal/layout/LayoutBehavior;

    .line 342
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/topaz/internal/layout/LayoutEngine;)Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/topaz/internal/layout/LayoutEngine;)Lcom/amazon/topaz/internal/layout/LayoutBehavior;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->curLayoutBehavior_:Lcom/amazon/topaz/internal/layout/LayoutBehavior;

    return-object v0
.end method


# virtual methods
.method public append(Lcom/amazon/topaz/internal/layout/Block;Lcom/amazon/foundation/internal/ICancelRequester;Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->reflowBehavior_:Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->relativeBehavior_:Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->appendingBehavior_:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->setLayoutToAppend(Lcom/amazon/topaz/internal/layout/Block;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->curLayoutBehavior_:Lcom/amazon/topaz/internal/layout/LayoutBehavior;

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->lastLayoutBehavior_:Lcom/amazon/topaz/internal/layout/LayoutBehavior;

    .line 406
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->appendingBehavior_:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->curLayoutBehavior_:Lcom/amazon/topaz/internal/layout/LayoutBehavior;

    .line 407
    invoke-virtual {p0, p2, p3}, Lcom/amazon/topaz/internal/layout/LayoutEngine;->reflow(Lcom/amazon/foundation/internal/ICancelRequester;Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutListener;)V

    goto :goto_0
.end method

.method public canReflowPos(Lcom/amazon/topaz/internal/Anchor;)Z
    .locals 1
    .parameter "pos"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->rootBlock_:Lcom/amazon/topaz/internal/layout/Block;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/layout/Block;->containsPos(Lcom/amazon/topaz/internal/Anchor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    const/4 v0, 0x1

    .line 457
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->curLayoutBehavior_:Lcom/amazon/topaz/internal/layout/LayoutBehavior;

    invoke-interface {v0, p1}, Lcom/amazon/topaz/internal/layout/LayoutBehavior;->canReflowPos(Lcom/amazon/topaz/internal/Anchor;)Z

    move-result v0

    goto :goto_0
.end method

.method public getRootBlock()Lcom/amazon/topaz/internal/layout/Block;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->rootBlock_:Lcom/amazon/topaz/internal/layout/Block;

    return-object v0
.end method

.method public getStartID()I
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget v0, v0, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->startID:I

    return v0
.end method

.method public nuke()V
    .locals 1

    .prologue
    .line 473
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reflow(Lcom/amazon/foundation/internal/ICancelRequester;Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutListener;)V
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
    const/4 v2, 0x0

    .line 361
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->setCancelRequester(Lcom/amazon/foundation/internal/ICancelRequester;)V

    .line 367
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v0, p2}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->setLayoutListener(Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutListener;)V

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->traverser_:Lcom/amazon/topaz/internal/book/BookTraverser;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/BookTraverser;->traverse()V

    .line 373
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->traverser_:Lcom/amazon/topaz/internal/book/BookTraverser;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/BookTraverser;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    invoke-interface {p2}, Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutListener;->handleLayoutComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v0, v2}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->setCancelRequester(Lcom/amazon/foundation/internal/ICancelRequester;)V

    .line 386
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v0, v2}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->setLayoutListener(Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutListener;)V

    .line 388
    return-void

    .line 380
    :catchall_0
    move-exception v0

    .line 382
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->setCancelRequester(Lcom/amazon/foundation/internal/ICancelRequester;)V

    .line 386
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->setLayoutListener(Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutListener;)V

    throw v0
.end method

.method setLayoutBehavior(Lcom/amazon/topaz/internal/layout/LayoutBehavior;)V
    .locals 0
    .parameter "newLayoutBehavior"

    .prologue
    .line 431
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->curLayoutBehavior_:Lcom/amazon/topaz/internal/layout/LayoutBehavior;

    .line 432
    return-void
.end method

.method public started()Z
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->configuration_:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->isStarted()Z

    move-result v0

    return v0
.end method

.method public switchToCreatingBehavior(Lcom/amazon/topaz/internal/layout/Block;)V
    .locals 2
    .parameter "leftTreeCurBlock"

    .prologue
    .line 478
    if-nez p1, :cond_1

    .line 480
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->lastLayoutBehavior_:Lcom/amazon/topaz/internal/layout/LayoutBehavior;

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->curLayoutBehavior_:Lcom/amazon/topaz/internal/layout/LayoutBehavior;

    .line 495
    .end local p1
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->lastLayoutBehavior_:Lcom/amazon/topaz/internal/layout/LayoutBehavior;

    .line 496
    return-void

    .line 482
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    if-eqz v0, :cond_2

    .line 484
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->reflowBehavior_:Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;

    check-cast p1, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->setCurBlock(Lcom/amazon/topaz/internal/layout/ReflowBlock;)V

    .line 485
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->reflowBehavior_:Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;->startLine(Z)V

    .line 486
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->reflowBehavior_:Lcom/amazon/topaz/internal/layout/ReflowLayoutBehavior;

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->curLayoutBehavior_:Lcom/amazon/topaz/internal/layout/LayoutBehavior;

    goto :goto_0

    .line 488
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/amazon/topaz/internal/layout/RelativeBlock;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->relativeBehavior_:Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;

    check-cast p1, Lcom/amazon/topaz/internal/layout/RelativeBlock;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;->setCurBlock(Lcom/amazon/topaz/internal/layout/RelativeBlock;)V

    .line 491
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->relativeBehavior_:Lcom/amazon/topaz/internal/layout/RelativeLayoutBehavior;

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine;->curLayoutBehavior_:Lcom/amazon/topaz/internal/layout/LayoutBehavior;

    goto :goto_0
.end method
