.class public abstract Lcom/amazon/topaz/internal/layout/Block;
.super Ljava/lang/Object;
.source "Block.java"


# instance fields
.field private final children:Lcom/amazon/foundation/util/internal/CircularArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/foundation/util/internal/CircularArrayList",
            "<",
            "Lcom/amazon/topaz/internal/layout/Block;",
            ">;"
        }
    .end annotation
.end field

.field private final lines:Lcom/amazon/foundation/util/internal/CircularArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/foundation/util/internal/CircularArrayList",
            "<",
            "Lcom/amazon/topaz/internal/layout/LayoutLine;",
            ">;"
        }
    .end annotation
.end field

.field public final parent:Lcom/amazon/topaz/internal/layout/Block;

.field private final spec:Lcom/amazon/topaz/internal/layout/BlockSpec;

.field final styleRule:Lcom/amazon/topaz/styles/MatchRule;

.field private final unmodifiableChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/internal/layout/Block;",
            ">;"
        }
    .end annotation
.end field

.field private final unmodifiableLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/internal/layout/LayoutLine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/amazon/topaz/internal/layout/Block;Lcom/amazon/topaz/styles/MatchRule;Lcom/amazon/topaz/internal/layout/Block;)V
    .locals 1
    .parameter "toCopy"
    .parameter "styleRule"
    .parameter "parent"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p3, p0, Lcom/amazon/topaz/internal/layout/Block;->parent:Lcom/amazon/topaz/internal/layout/Block;

    .line 58
    iput-object p2, p0, Lcom/amazon/topaz/internal/layout/Block;->styleRule:Lcom/amazon/topaz/styles/MatchRule;

    .line 59
    iget-object v0, p1, Lcom/amazon/topaz/internal/layout/Block;->spec:Lcom/amazon/topaz/internal/layout/BlockSpec;

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->spec:Lcom/amazon/topaz/internal/layout/BlockSpec;

    .line 60
    new-instance v0, Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-direct {v0}, Lcom/amazon/foundation/util/internal/CircularArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->children:Lcom/amazon/foundation/util/internal/CircularArrayList;

    .line 61
    new-instance v0, Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-direct {v0}, Lcom/amazon/foundation/util/internal/CircularArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->lines:Lcom/amazon/foundation/util/internal/CircularArrayList;

    .line 62
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->lines:Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->unmodifiableLines:Ljava/util/List;

    .line 63
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->children:Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->unmodifiableChildren:Ljava/util/List;

    .line 64
    return-void
.end method

.method protected constructor <init>(Lcom/amazon/topaz/styles/MatchRule;Lcom/amazon/topaz/internal/layout/BlockSpec;)V
    .locals 1
    .parameter "styleRule"
    .parameter "spec"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/topaz/internal/layout/Block;-><init>(Lcom/amazon/topaz/styles/MatchRule;Lcom/amazon/topaz/internal/layout/BlockSpec;Lcom/amazon/topaz/internal/layout/Block;)V

    .line 36
    return-void
.end method

.method protected constructor <init>(Lcom/amazon/topaz/styles/MatchRule;Lcom/amazon/topaz/internal/layout/BlockSpec;Lcom/amazon/topaz/internal/layout/Block;)V
    .locals 1
    .parameter "styleRule"
    .parameter "spec"
    .parameter "parent"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p3, p0, Lcom/amazon/topaz/internal/layout/Block;->parent:Lcom/amazon/topaz/internal/layout/Block;

    .line 47
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/Block;->styleRule:Lcom/amazon/topaz/styles/MatchRule;

    .line 48
    iput-object p2, p0, Lcom/amazon/topaz/internal/layout/Block;->spec:Lcom/amazon/topaz/internal/layout/BlockSpec;

    .line 49
    new-instance v0, Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-direct {v0}, Lcom/amazon/foundation/util/internal/CircularArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->children:Lcom/amazon/foundation/util/internal/CircularArrayList;

    .line 50
    new-instance v0, Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-direct {v0}, Lcom/amazon/foundation/util/internal/CircularArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->lines:Lcom/amazon/foundation/util/internal/CircularArrayList;

    .line 51
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->lines:Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->unmodifiableLines:Ljava/util/List;

    .line 52
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->children:Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->unmodifiableChildren:Ljava/util/List;

    .line 53
    return-void
.end method

.method private internalCloseLink(Ljava/util/List;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/Callback;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, terminalCallbacks:Ljava/util/List;,"Ljava/util/List<Lcom/amazon/topaz/Callback;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 329
    iget-object v4, p0, Lcom/amazon/topaz/internal/layout/Block;->children:Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-virtual {v4}, Lcom/amazon/foundation/util/internal/CircularArrayList;->size()I

    move-result v4

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 331
    iget-object v4, p0, Lcom/amazon/topaz/internal/layout/Block;->children:Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-virtual {v4, v1}, Lcom/amazon/foundation/util/internal/CircularArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/layout/Block;

    .line 333
    .local v0, child:Lcom/amazon/topaz/internal/layout/Block;
    invoke-direct {v0, p1}, Lcom/amazon/topaz/internal/layout/Block;->internalCloseLink(Ljava/util/List;)Z

    move-result v2

    .line 334
    .local v2, keepGoing:Z
    if-nez v2, :cond_0

    move v4, v6

    .line 353
    .end local v0           #child:Lcom/amazon/topaz/internal/layout/Block;
    .end local v2           #keepGoing:Z
    :goto_1
    return v4

    .line 329
    .restart local v0       #child:Lcom/amazon/topaz/internal/layout/Block;
    .restart local v2       #keepGoing:Z
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 340
    .end local v0           #child:Lcom/amazon/topaz/internal/layout/Block;
    .end local v2           #keepGoing:Z
    :cond_1
    iget-object v4, p0, Lcom/amazon/topaz/internal/layout/Block;->lines:Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-virtual {v4}, Lcom/amazon/foundation/util/internal/CircularArrayList;->size()I

    move-result v4

    sub-int v1, v4, v5

    :goto_2
    if-ltz v1, :cond_3

    .line 342
    iget-object v4, p0, Lcom/amazon/topaz/internal/layout/Block;->lines:Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-virtual {v4, v1}, Lcom/amazon/foundation/util/internal/CircularArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/topaz/internal/layout/LayoutLine;

    .line 343
    .local v3, line:Lcom/amazon/topaz/internal/layout/LayoutLine;
    invoke-virtual {v3}, Lcom/amazon/topaz/internal/layout/LayoutLine;->isOpenMultilineLink()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 345
    invoke-virtual {v3, p1}, Lcom/amazon/topaz/internal/layout/LayoutLine;->closeLink(Ljava/util/Collection;)V

    .line 340
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    move v4, v6

    .line 349
    goto :goto_1

    .end local v3           #line:Lcom/amazon/topaz/internal/layout/LayoutLine;
    :cond_3
    move v4, v5

    .line 353
    goto :goto_1
.end method


# virtual methods
.method protected addChild(Lcom/amazon/topaz/internal/layout/Block;)V
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->children:Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-virtual {v0, p1}, Lcom/amazon/foundation/util/internal/CircularArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public addLine(Lcom/amazon/topaz/internal/layout/LayoutLine;)V
    .locals 1
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->lines:Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-virtual {v0, p1}, Lcom/amazon/foundation/util/internal/CircularArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    return-void
.end method

.method public children()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/internal/layout/Block;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->unmodifiableChildren:Ljava/util/List;

    return-object v0
.end method

.method public closeLink(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/Callback;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/amazon/topaz/internal/layout/Block;->internalCloseLink(Ljava/util/List;)Z

    .line 325
    return-void
.end method

.method public containsPos(Lcom/amazon/topaz/internal/Anchor;)Z
    .locals 14
    .parameter "pos"

    .prologue
    const/4 v13, 0x0

    const/4 v12, -0x1

    const/4 v11, 0x1

    .line 199
    const/4 v4, -0x1

    .line 200
    .local v4, firstPage:I
    const/4 v2, -0x1

    .line 201
    .local v2, firstID:I
    const/4 v7, -0x1

    .line 202
    .local v7, lastPage:I
    const/4 v5, -0x1

    .line 205
    .local v5, lastID:I
    iget-object v9, p0, Lcom/amazon/topaz/internal/layout/Block;->spec:Lcom/amazon/topaz/internal/layout/BlockSpec;

    invoke-virtual {v9}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getDisplay()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_3

    .line 207
    iget-object v9, p0, Lcom/amazon/topaz/internal/layout/Block;->spec:Lcom/amazon/topaz/internal/layout/BlockSpec;

    iget-object v8, v9, Lcom/amazon/topaz/internal/layout/BlockSpec;->what:Lcom/amazon/topaz/internal/book/Container;

    .line 208
    .local v8, what:Lcom/amazon/topaz/internal/book/Container;
    invoke-virtual {v8}, Lcom/amazon/topaz/internal/book/Container;->firstID()I

    move-result v2

    .line 209
    invoke-virtual {v8}, Lcom/amazon/topaz/internal/book/Container;->pageNum()I

    move-result v4

    .line 210
    invoke-virtual {v8}, Lcom/amazon/topaz/internal/book/Container;->lastID()I

    move-result v5

    .line 211
    invoke-virtual {v8}, Lcom/amazon/topaz/internal/book/Container;->pageNum()I

    move-result v7

    .line 225
    .end local v8           #what:Lcom/amazon/topaz/internal/book/Container;
    :cond_0
    :goto_0
    if-eq v4, v12, :cond_4

    iget v9, p1, Lcom/amazon/topaz/internal/Anchor;->id:I

    if-nez v9, :cond_4

    .line 232
    iget-object v9, p0, Lcom/amazon/topaz/internal/layout/Block;->spec:Lcom/amazon/topaz/internal/layout/BlockSpec;

    iget-object v8, v9, Lcom/amazon/topaz/internal/layout/BlockSpec;->what:Lcom/amazon/topaz/internal/book/Container;

    .line 233
    .restart local v8       #what:Lcom/amazon/topaz/internal/book/Container;
    iget v9, p1, Lcom/amazon/topaz/internal/Anchor;->page:I

    if-ge v4, v9, :cond_1

    iget v9, p1, Lcom/amazon/topaz/internal/Anchor;->page:I

    if-ge v7, v9, :cond_2

    :cond_1
    instance-of v9, v8, Lcom/amazon/topaz/internal/book/Page;

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lcom/amazon/topaz/internal/book/Container;->pageNum()I

    move-result v9

    iget v10, p1, Lcom/amazon/topaz/internal/Anchor;->page:I

    if-ne v9, v10, :cond_4

    :cond_2
    move v9, v11

    .line 257
    .end local v8           #what:Lcom/amazon/topaz/internal/book/Container;
    :goto_1
    return v9

    .line 213
    :cond_3
    iget-object v9, p0, Lcom/amazon/topaz/internal/layout/Block;->lines:Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-virtual {v9}, Lcom/amazon/foundation/util/internal/CircularArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 216
    iget-object v9, p0, Lcom/amazon/topaz/internal/layout/Block;->lines:Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-virtual {v9, v13}, Lcom/amazon/foundation/util/internal/CircularArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/topaz/internal/layout/LayoutLine;

    .line 217
    .local v3, firstLine:Lcom/amazon/topaz/internal/layout/LayoutLine;
    iget-object v9, p0, Lcom/amazon/topaz/internal/layout/Block;->lines:Lcom/amazon/foundation/util/internal/CircularArrayList;

    iget-object v10, p0, Lcom/amazon/topaz/internal/layout/Block;->lines:Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-virtual {v10}, Lcom/amazon/foundation/util/internal/CircularArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/amazon/foundation/util/internal/CircularArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/topaz/internal/layout/LayoutLine;

    .line 219
    .local v6, lastLine:Lcom/amazon/topaz/internal/layout/LayoutLine;
    invoke-virtual {v3}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartPageNum()I

    move-result v4

    .line 220
    invoke-virtual {v3}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartID()I

    move-result v2

    .line 221
    invoke-virtual {v6}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getEndPageNum()I

    move-result v7

    .line 222
    invoke-virtual {v6}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getEndID()I

    move-result v5

    goto :goto_0

    .line 240
    .end local v3           #firstLine:Lcom/amazon/topaz/internal/layout/LayoutLine;
    .end local v6           #lastLine:Lcom/amazon/topaz/internal/layout/LayoutLine;
    :cond_4
    if-eq v2, v12, :cond_5

    iget v9, p1, Lcom/amazon/topaz/internal/Anchor;->id:I

    if-gt v2, v9, :cond_5

    iget v9, p1, Lcom/amazon/topaz/internal/Anchor;->id:I

    if-gt v9, v5, :cond_5

    move v9, v11

    .line 242
    goto :goto_1

    .line 246
    :cond_5
    iget-object v9, p0, Lcom/amazon/topaz/internal/layout/Block;->children:Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-virtual {v9}, Lcom/amazon/foundation/util/internal/CircularArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 247
    .local v1, childIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/topaz/internal/layout/Block;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 249
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/layout/Block;

    .line 250
    .local v0, child:Lcom/amazon/topaz/internal/layout/Block;
    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/layout/Block;->containsPos(Lcom/amazon/topaz/internal/Anchor;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v9, v11

    .line 252
    goto :goto_1

    .end local v0           #child:Lcom/amazon/topaz/internal/layout/Block;
    :cond_7
    move v9, v13

    .line 257
    goto :goto_1
.end method

.method abstract copyToNewTree(Lcom/amazon/topaz/internal/layout/Block;Lcom/amazon/topaz/styles/MatchRule;)Lcom/amazon/topaz/internal/layout/Block;
.end method

.method public createChild(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/layout/BlockStyleManager;ZZZI)Lcom/amazon/topaz/internal/layout/Block;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->styleRule:Lcom/amazon/topaz/styles/MatchRule;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->buildMatchRule(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/styles/MatchRule;)Lcom/amazon/topaz/styles/MatchRule;

    move-result-object v6

    .line 90
    invoke-virtual {p2, v6}, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->getBaseStyle(Lcom/amazon/topaz/styles/MatchRule;)Lcom/amazon/topaz/styles/Style;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/amazon/topaz/styles/Style$Builder;

    invoke-direct {v1, v0}, Lcom/amazon/topaz/styles/Style$Builder;-><init>(Lcom/amazon/topaz/styles/AbstractStyle;)V

    .line 93
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Container;->getStyle()Lcom/amazon/topaz/styles/Style;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/topaz/styles/Style$Builder;->apply(Lcom/amazon/topaz/styles/AbstractStyle;)V

    .line 94
    invoke-virtual {v1}, Lcom/amazon/topaz/styles/Style$Builder;->build()Lcom/amazon/topaz/styles/Style;

    move-result-object v2

    .line 95
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->spec:Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/topaz/internal/layout/BlockSpec;->createChild(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/styles/Style;ZZI)Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v0

    .line 99
    invoke-virtual {p0, v6, v0, p5}, Lcom/amazon/topaz/internal/layout/Block;->internalCreateChild(Lcom/amazon/topaz/styles/MatchRule;Lcom/amazon/topaz/internal/layout/BlockSpec;Z)Lcom/amazon/topaz/internal/layout/Block;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/Block;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getDisplay()I

    move-result v1

    .line 103
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-object v0

    .line 108
    :cond_1
    invoke-virtual {p0, v0}, Lcom/amazon/topaz/internal/layout/Block;->addChild(Lcom/amazon/topaz/internal/layout/Block;)V

    .line 111
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 113
    invoke-virtual {p2, v6}, Lcom/amazon/topaz/internal/layout/BlockStyleManager;->recordMatchRule(Lcom/amazon/topaz/styles/MatchRule;)V

    goto :goto_0
.end method

.method createChild(Lcom/amazon/topaz/styles/MatchRule;Lcom/amazon/topaz/internal/layout/Block;)Lcom/amazon/topaz/internal/layout/Block;
    .locals 1
    .parameter "styleRule"
    .parameter "appendedLayoutCurBlock"

    .prologue
    .line 68
    invoke-virtual {p2, p0, p1}, Lcom/amazon/topaz/internal/layout/Block;->copyToNewTree(Lcom/amazon/topaz/internal/layout/Block;Lcom/amazon/topaz/styles/MatchRule;)Lcom/amazon/topaz/internal/layout/Block;

    move-result-object v0

    .line 69
    .local v0, newChild:Lcom/amazon/topaz/internal/layout/Block;
    invoke-virtual {p0, v0}, Lcom/amazon/topaz/internal/layout/Block;->addChild(Lcom/amazon/topaz/internal/layout/Block;)V

    .line 70
    return-object v0
.end method

.method public discardOutside(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 281
    const/4 v0, 0x0

    move v1, v0

    .line 282
    :goto_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->children:Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-virtual {v0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->children:Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/util/internal/CircularArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/layout/Block;

    .line 285
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/Block;->getEndY()I

    move-result v2

    if-lt v2, p1, :cond_0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/Block;->getStartY()I

    move-result v2

    add-int v3, p1, p2

    if-le v2, v3, :cond_1

    .line 288
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discarding child "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/Block;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->children:Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/util/internal/CircularArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_1
    move v1, v0

    .line 297
    goto :goto_0

    .line 295
    :cond_1
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->children:Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-virtual {v0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 300
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 302
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/layout/Block;

    .line 303
    invoke-virtual {v0, p1, p2}, Lcom/amazon/topaz/internal/layout/Block;->discardOutside(II)V

    goto :goto_2

    .line 306
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->lines:Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-virtual {v0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 308
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->lines:Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/util/internal/CircularArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/layout/LayoutLine;

    .line 309
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getBottomY()I

    move-result v2

    if-lt v2, p1, :cond_4

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getTopY()I

    move-result v2

    add-int v3, p1, p2

    if-le v2, v3, :cond_5

    .line 312
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discarding line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->lines:Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/util/internal/CircularArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_4
    move v1, v0

    .line 319
    goto :goto_3

    .line 317
    :cond_5
    add-int/lit8 v0, v1, 0x1

    goto :goto_4

    .line 320
    :cond_6
    return-void
.end method

.method public draw(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/topaz/internal/drawing/Canvas;Lcom/amazon/topaz/internal/book/Drawable;Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->children:Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-virtual {v0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 135
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/layout/Block;

    .line 138
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/topaz/internal/layout/Block;->draw(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/topaz/internal/drawing/Canvas;Lcom/amazon/topaz/internal/book/Drawable;Lcom/amazon/foundation/internal/ICancelRequester;)Z

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->lines:Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-virtual {v0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 142
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/layout/LayoutLine;

    .line 145
    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getCallbacks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 147
    new-instance v2, Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {p3}, Lcom/amazon/topaz/internal/book/Drawable;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    .line 148
    invoke-virtual {p2}, Lcom/amazon/topaz/internal/drawing/Canvas;->getBookWidth()I

    move-result v3

    iget v4, v2, Lcom/amazon/system/drawing/Rectangle;->width:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 149
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getBaseline()I

    move-result v3

    iget v4, v2, Lcom/amazon/system/drawing/Rectangle;->height:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 151
    invoke-static {p1, v2}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->rectanglesIntersect(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    invoke-virtual {p3, p2, v2}, Lcom/amazon/topaz/internal/book/Drawable;->draw(Lcom/amazon/topaz/internal/drawing/Canvas;Lcom/amazon/system/drawing/Rectangle;)V

    .line 156
    :cond_1
    invoke-virtual {v0, p1, p2, p4}, Lcom/amazon/topaz/internal/layout/LayoutLine;->draw(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/topaz/internal/drawing/Canvas;Lcom/amazon/foundation/internal/ICancelRequester;)Z

    goto :goto_1

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->parent:Lcom/amazon/topaz/internal/layout/Block;

    if-eqz v0, :cond_5

    invoke-interface {p4}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-nez v0, :cond_5

    .line 166
    const/4 v0, -0x2

    invoke-virtual {p2, v0}, Lcom/amazon/topaz/internal/drawing/Canvas;->screenToBook(I)I

    move-result v0

    .line 167
    new-instance v1, Lcom/amazon/system/drawing/Rectangle;

    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/Block;->spec:Lcom/amazon/topaz/internal/layout/BlockSpec;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/layout/Block;->getStartY()I

    move-result v3

    iget-object v4, p0, Lcom/amazon/topaz/internal/layout/Block;->spec:Lcom/amazon/topaz/internal/layout/BlockSpec;

    invoke-virtual {v4}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/layout/Block;->getEndY()I

    move-result v5

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/layout/Block;->getStartY()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    .line 172
    invoke-static {p1, v1}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->rectanglesIntersect(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 174
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/Block;->spec:Lcom/amazon/topaz/internal/layout/BlockSpec;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getDisplay()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 175
    new-instance v2, Lcom/amazon/system/drawing/Rectangle;

    mul-int/lit8 v3, v0, -0x2

    mul-int/lit8 v4, v0, -0x2

    invoke-direct {v2, v0, v0, v3, v4}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    .line 178
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->CANVAS_TYPE_BLOCK:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->sum(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v2

    invoke-virtual {p2, v0, v3, v2}, Lcom/amazon/topaz/internal/drawing/Canvas;->drawMeta(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/system/drawing/Rectangle;)V

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->spec:Lcom/amazon/topaz/internal/layout/BlockSpec;

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/BlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/CommonStyles;->bgColor:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v0}, Lcom/amazon/system/drawing/Color;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->spec:Lcom/amazon/topaz/internal/layout/BlockSpec;

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/BlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/CommonStyles;->bgColor:Lcom/amazon/system/drawing/Color;

    invoke-virtual {p2, v0, v1}, Lcom/amazon/topaz/internal/drawing/Canvas;->shade(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Rectangle;)V

    .line 187
    :cond_4
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->spec:Lcom/amazon/topaz/internal/layout/BlockSpec;

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/BlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/CommonStyles;->invertColor:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v0}, Lcom/amazon/system/drawing/Color;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_5

    .line 189
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->spec:Lcom/amazon/topaz/internal/layout/BlockSpec;

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/BlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/CommonStyles;->invertColor:Lcom/amazon/system/drawing/Color;

    invoke-virtual {p2, v0, v1}, Lcom/amazon/topaz/internal/drawing/Canvas;->invert(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Rectangle;)V

    .line 194
    :cond_5
    invoke-interface {p4}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public abstract getBoundingBox()Lcom/amazon/system/drawing/Rectangle;
.end method

.method public abstract getEndY()I
.end method

.method public getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->spec:Lcom/amazon/topaz/internal/layout/BlockSpec;

    return-object v0
.end method

.method public abstract getStartY()I
.end method

.method protected abstract internalCreateChild(Lcom/amazon/topaz/styles/MatchRule;Lcom/amazon/topaz/internal/layout/BlockSpec;Z)Lcom/amazon/topaz/internal/layout/Block;
.end method

.method public lines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/internal/layout/LayoutLine;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/Block;->unmodifiableLines:Ljava/util/List;

    return-object v0
.end method

.method public abstract setEndY(I)V
.end method

.method public shiftCoordinates(I)V
    .locals 5
    .parameter "deltaY"

    .prologue
    .line 401
    iget-object v4, p0, Lcom/amazon/topaz/internal/layout/Block;->children:Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-virtual {v4}, Lcom/amazon/foundation/util/internal/CircularArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 402
    .local v1, childIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/topaz/internal/layout/Block;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 404
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/layout/Block;

    .line 405
    .local v0, child:Lcom/amazon/topaz/internal/layout/Block;
    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/layout/Block;->shiftCoordinates(I)V

    goto :goto_0

    .line 408
    .end local v0           #child:Lcom/amazon/topaz/internal/layout/Block;
    :cond_0
    iget-object v4, p0, Lcom/amazon/topaz/internal/layout/Block;->lines:Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-virtual {v4}, Lcom/amazon/foundation/util/internal/CircularArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 409
    .local v3, linesIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/topaz/internal/layout/LayoutLine;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 411
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/topaz/internal/layout/LayoutLine;

    .line 412
    .local v2, line:Lcom/amazon/topaz/internal/layout/LayoutLine;
    invoke-virtual {v2, p1}, Lcom/amazon/topaz/internal/layout/LayoutLine;->shiftCoordinates(I)V

    goto :goto_1

    .line 414
    .end local v2           #line:Lcom/amazon/topaz/internal/layout/LayoutLine;
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Block IDs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/Block;->spec:Lcom/amazon/topaz/internal/layout/BlockSpec;

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/BlockSpec;->what:Lcom/amazon/topaz/internal/book/Container;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/book/Container;->firstID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/Block;->spec:Lcom/amazon/topaz/internal/layout/BlockSpec;

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/BlockSpec;->what:Lcom/amazon/topaz/internal/book/Container;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/book/Container;->lastID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " coordinates "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/layout/Block;->getStartY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/layout/Block;->getEndY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
