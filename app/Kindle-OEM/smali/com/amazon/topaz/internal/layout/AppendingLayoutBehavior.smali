.class final Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;
.super Ljava/lang/Object;
.source "AppendingLayoutBehavior.java"

# interfaces
.implements Lcom/amazon/topaz/internal/layout/LayoutBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;
    }
.end annotation


# instance fields
.field private abortOnNextLine:Z

.field private final callbackStack:Lcom/amazon/topaz/internal/layout/CallbackStack;

.field private final configuration:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

.field private final engine:Lcom/amazon/topaz/internal/layout/LayoutEngine;

.field private lastLine:Lcom/amazon/topaz/internal/layout/LayoutLine;

.field private leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

.field private rightTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

.field private rightTreeReader:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

.field private rightTreeRootBlock:Lcom/amazon/topaz/internal/layout/Block;

.field private rightTreeTraverser:Lcom/amazon/topaz/internal/layout/LayoutTraverser;

.field private final styleManager:Lcom/amazon/topaz/internal/layout/BlockStyleManager;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/internal/layout/LayoutEngine;Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;Lcom/amazon/topaz/internal/layout/CallbackStack;Lcom/amazon/topaz/internal/layout/BlockStyleManager;)V
    .locals 0
    .parameter "engine"
    .parameter "configuration"
    .parameter "callbackStack"
    .parameter "styleManager"

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->engine:Lcom/amazon/topaz/internal/layout/LayoutEngine;

    .line 271
    iput-object p2, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->configuration:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    .line 272
    iput-object p3, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->callbackStack:Lcom/amazon/topaz/internal/layout/CallbackStack;

    .line 273
    iput-object p4, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->styleManager:Lcom/amazon/topaz/internal/layout/BlockStyleManager;

    .line 274
    return-void
.end method

.method static synthetic access$400(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;)Lcom/amazon/topaz/internal/layout/LayoutTraverser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->rightTreeTraverser:Lcom/amazon/topaz/internal/layout/LayoutTraverser;

    return-object v0
.end method

.method static synthetic access$402(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;Lcom/amazon/topaz/internal/layout/LayoutTraverser;)Lcom/amazon/topaz/internal/layout/LayoutTraverser;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->rightTreeTraverser:Lcom/amazon/topaz/internal/layout/LayoutTraverser;

    return-object p1
.end method

.method static synthetic access$502(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;)Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->rightTreeReader:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    return-object p1
.end method

.method static synthetic access$600(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;)Lcom/amazon/topaz/internal/layout/LayoutLine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->lastLine:Lcom/amazon/topaz/internal/layout/LayoutLine;

    return-object v0
.end method

.method static synthetic access$602(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;Lcom/amazon/topaz/internal/layout/LayoutLine;)Lcom/amazon/topaz/internal/layout/LayoutLine;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->lastLine:Lcom/amazon/topaz/internal/layout/LayoutLine;

    return-object p1
.end method

.method static synthetic access$700(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;)Lcom/amazon/topaz/internal/layout/Block;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    return-object v0
.end method

.method static synthetic access$702(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;Lcom/amazon/topaz/internal/layout/Block;)Lcom/amazon/topaz/internal/layout/Block;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    return-object p1
.end method

.method static synthetic access$800(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;)Lcom/amazon/topaz/internal/layout/Block;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->rightTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    return-object v0
.end method

.method static synthetic access$802(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;Lcom/amazon/topaz/internal/layout/Block;)Lcom/amazon/topaz/internal/layout/Block;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->rightTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    return-object p1
.end method

.method private switchToCreatingBehavior()I
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->engine:Lcom/amazon/topaz/internal/layout/LayoutEngine;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/layout/LayoutEngine;->switchToCreatingBehavior(Lcom/amazon/topaz/internal/layout/Block;)V

    .line 627
    const/4 v0, 0x2

    return v0
.end method

.method private unwindRightTree()I
    .locals 3

    .prologue
    .line 608
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->rightTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->rightTreeReader:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 611
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->rightTreeReader:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->readEndBlock(Lcom/amazon/topaz/internal/layout/Block;Z)Lcom/amazon/topaz/internal/layout/Block;

    move-result-object v0

    .line 612
    if-nez v0, :cond_0

    .line 614
    invoke-direct {p0}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->switchToCreatingBehavior()I

    move-result v0

    .line 620
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->switchToCreatingBehavior()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public canReflowPos(Lcom/amazon/topaz/internal/Anchor;)Z
    .locals 1
    .parameter "pos"

    .prologue
    .line 603
    const/4 v0, 0x0

    return v0
.end method

.method public cascadeToContainer(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/book/Container;)I
    .locals 1
    .parameter "root"
    .parameter "stem"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    instance-of v0, v0, Lcom/amazon/topaz/internal/layout/RelativeBlock;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    .end local p0
    check-cast p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    iget-boolean v0, v0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->cascade:Z

    if-nez v0, :cond_1

    .line 508
    :cond_0
    const/4 v0, 0x1

    .line 512
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public endContainer(Lcom/amazon/topaz/internal/book/Container;)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 565
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/Block;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/BlockSpec;->what:Lcom/amazon/topaz/internal/book/Container;

    if-ne p1, v0, :cond_3

    .line 567
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    instance-of v0, v0, Lcom/amazon/topaz/internal/layout/RelativeBlock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    check-cast v0, Lcom/amazon/topaz/internal/layout/RelativeBlock;

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->shouldAddLine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->rightTreeReader:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->rightTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/Block;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v2

    iget-object v2, v2, Lcom/amazon/topaz/internal/layout/BlockSpec;->what:Lcom/amazon/topaz/internal/book/Container;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/book/Container;->firstID()I

    move-result v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->readLine(Lcom/amazon/topaz/internal/layout/Block;IZ)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v0

    .line 570
    if-eqz v0, :cond_0

    .line 572
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    invoke-virtual {v1, v0}, Lcom/amazon/topaz/internal/layout/Block;->addLine(Lcom/amazon/topaz/internal/layout/LayoutLine;)V

    .line 573
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->configuration:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    invoke-virtual {v1, v0}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->invokeListenerHandleLineAdded(Lcom/amazon/topaz/internal/layout/LayoutLine;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->abortOnNextLine:Z

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->rightTreeReader:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->rightTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    invoke-virtual {v0, v1, v4}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->readEndBlock(Lcom/amazon/topaz/internal/layout/Block;Z)Lcom/amazon/topaz/internal/layout/Block;

    move-result-object v0

    .line 582
    if-nez v0, :cond_1

    .line 584
    invoke-direct {p0}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->switchToCreatingBehavior()I

    move-result v0

    .line 597
    :goto_0
    return v0

    .line 588
    :cond_1
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/Block;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getDisplay()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 590
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/Block;->getEndY()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/layout/Block;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getBottomMargin()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/internal/layout/Block;->setEndY(I)V

    .line 593
    :cond_2
    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->rightTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    .line 594
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->callbackStack:Lcom/amazon/topaz/internal/layout/CallbackStack;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/layout/CallbackStack;->endBlock(Lcom/amazon/topaz/internal/layout/Block;)V

    .line 595
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/Block;->parent:Lcom/amazon/topaz/internal/layout/Block;

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    :cond_3
    move v0, v4

    .line 597
    goto :goto_0
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
    const/4 v3, 0x0

    .line 517
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/Block;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getDisplay()I

    move-result v0

    .line 518
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    move v0, v3

    .line 558
    :goto_0
    return v0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    instance-of v0, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->lastLine:Lcom/amazon/topaz/internal/layout/LayoutLine;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getEndID()I

    move-result v0

    invoke-virtual {p2}, Lcom/amazon/topaz/internal/book/Drawable;->getID()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 526
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->abortOnNextLine:Z

    if-eqz v0, :cond_1

    .line 528
    invoke-direct {p0}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->switchToCreatingBehavior()I

    move-result v0

    goto :goto_0

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->rightTreeReader:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->rightTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    invoke-virtual {p2}, Lcom/amazon/topaz/internal/book/Drawable;->getID()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->readLine(Lcom/amazon/topaz/internal/layout/Block;IZ)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->lastLine:Lcom/amazon/topaz/internal/layout/LayoutLine;

    .line 533
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->lastLine:Lcom/amazon/topaz/internal/layout/LayoutLine;

    if-nez v0, :cond_2

    .line 535
    invoke-direct {p0}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->unwindRightTree()I

    move-result v0

    goto :goto_0

    .line 538
    :cond_2
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->lastLine:Lcom/amazon/topaz/internal/layout/LayoutLine;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/layout/Block;->addLine(Lcom/amazon/topaz/internal/layout/LayoutLine;)V

    .line 539
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->configuration:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->lastLine:Lcom/amazon/topaz/internal/layout/LayoutLine;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->invokeListenerHandleLineAdded(Lcom/amazon/topaz/internal/layout/LayoutLine;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->abortOnNextLine:Z

    .line 545
    :cond_3
    instance-of v0, p2, Lcom/amazon/topaz/internal/book/Link;

    if-eqz v0, :cond_4

    .line 547
    check-cast p2, Lcom/amazon/topaz/internal/book/Link;

    .line 548
    invoke-virtual {p2}, Lcom/amazon/topaz/internal/book/Link;->close()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 550
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->callbackStack:Lcom/amazon/topaz/internal/layout/CallbackStack;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/CallbackStack;->endCallback()Lcom/amazon/topaz/Callback;

    :cond_4
    :goto_1
    move v0, v3

    .line 558
    goto :goto_0

    .line 554
    :cond_5
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->callbackStack:Lcom/amazon/topaz/internal/layout/CallbackStack;

    invoke-virtual {p2}, Lcom/amazon/topaz/internal/book/Link;->getCallback()Lcom/amazon/topaz/Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/layout/CallbackStack;->startCallback(Lcom/amazon/topaz/Callback;)V

    goto :goto_1
.end method

.method public setLayoutToAppend(Lcom/amazon/topaz/internal/layout/Block;)Z
    .locals 3
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->rightTreeRootBlock:Lcom/amazon/topaz/internal/layout/Block;

    .line 296
    new-instance v0, Lcom/amazon/topaz/internal/layout/LayoutIterator;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->engine:Lcom/amazon/topaz/internal/layout/LayoutEngine;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutEngine;->getRootBlock()Lcom/amazon/topaz/internal/layout/Block;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/amazon/topaz/internal/layout/LayoutIterator;-><init>(Lcom/amazon/topaz/internal/layout/Block;I)V

    .line 299
    new-instance v1, Lcom/amazon/topaz/internal/layout/LayoutTraverser;

    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->rightTreeRootBlock:Lcom/amazon/topaz/internal/layout/Block;

    invoke-direct {v1, v2}, Lcom/amazon/topaz/internal/layout/LayoutTraverser;-><init>(Lcom/amazon/topaz/internal/layout/Block;)V

    iput-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->rightTreeTraverser:Lcom/amazon/topaz/internal/layout/LayoutTraverser;

    .line 300
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->rightTreeTraverser:Lcom/amazon/topaz/internal/layout/LayoutTraverser;

    new-instance v2, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$1;-><init>(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;Lcom/amazon/topaz/internal/layout/LayoutIterator;)V

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->traverse(Lcom/amazon/topaz/internal/layout/LayoutTraverser$TraversalHandler;)V

    .line 429
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->rightTreeReader:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    if-nez v0, :cond_0

    .line 431
    const/4 v0, 0x0

    .line 435
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startContainer(Lcom/amazon/topaz/internal/book/Container;)I
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 443
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    instance-of v0, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    check-cast v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->reflow:Lcom/amazon/topaz/internal/layout/ReflowStyles;

    iget-boolean v0, v0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->cascade:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Container;->isContinuation()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    .line 498
    :goto_0
    return v0

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->styleManager:Lcom/amazon/topaz/internal/layout/BlockStyleManager;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/Block;->styleRule:Lcom/amazon/topaz/styles/MatchRule;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->buildMatchRule(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/styles/MatchRule;)Lcom/amazon/topaz/styles/MatchRule;

    move-result-object v6

    .line 451
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->styleManager:Lcom/amazon/topaz/internal/layout/BlockStyleManager;

    invoke-virtual {v0, v6}, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->getBaseStyle(Lcom/amazon/topaz/styles/MatchRule;)Lcom/amazon/topaz/styles/Style;

    move-result-object v2

    .line 452
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/Block;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->configuration:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget-boolean v3, v1, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->popupMode:Z

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->configuration:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->session:Lcom/amazon/topaz/internal/Session;

    iget-boolean v4, v1, Lcom/amazon/topaz/internal/Session;->allowJustify:Z

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->configuration:Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;

    iget v5, v1, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->screenHeight:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/topaz/internal/layout/BlockSpec;->createChild(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/styles/Style;ZZI)Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v0

    .line 454
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getDisplay()I

    move-result v1

    if-ne v1, v8, :cond_1

    move v0, v7

    .line 456
    goto :goto_0

    .line 459
    :cond_1
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->rightTreeReader:Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;

    invoke-virtual {v1, v7}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->readBlock(Z)Lcom/amazon/topaz/internal/layout/Block;

    move-result-object v1

    .line 461
    if-nez v1, :cond_2

    .line 463
    invoke-direct {p0}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->unwindRightTree()I

    move-result v0

    goto :goto_0

    .line 467
    :cond_2
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/Block;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v2

    iget-object v2, v2, Lcom/amazon/topaz/internal/layout/BlockSpec;->what:Lcom/amazon/topaz/internal/book/Container;

    if-eq v2, p1, :cond_3

    .line 471
    invoke-direct {p0}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->switchToCreatingBehavior()I

    move-result v0

    goto :goto_0

    .line 476
    :cond_3
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/Block;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/topaz/internal/layout/BlockSpec;->isCompatible(Lcom/amazon/topaz/internal/layout/BlockSpec;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 479
    invoke-direct {p0}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->switchToCreatingBehavior()I

    move-result v0

    goto :goto_0

    .line 484
    :cond_4
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    invoke-virtual {v0, v6, v1}, Lcom/amazon/topaz/internal/layout/Block;->createChild(Lcom/amazon/topaz/styles/MatchRule;Lcom/amazon/topaz/internal/layout/Block;)Lcom/amazon/topaz/internal/layout/Block;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/Block;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getDisplay()I

    move-result v2

    .line 488
    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    .line 491
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->styleManager:Lcom/amazon/topaz/internal/layout/BlockStyleManager;

    invoke-virtual {v2, v6}, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->recordMatchRule(Lcom/amazon/topaz/styles/MatchRule;)V

    .line 494
    :cond_5
    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    .line 495
    iput-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->rightTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    .line 496
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->callbackStack:Lcom/amazon/topaz/internal/layout/CallbackStack;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;->leftTreeCurBlock:Lcom/amazon/topaz/internal/layout/Block;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/layout/CallbackStack;->startBlock(Lcom/amazon/topaz/internal/layout/Block;)V

    move v0, v7

    .line 498
    goto :goto_0
.end method
