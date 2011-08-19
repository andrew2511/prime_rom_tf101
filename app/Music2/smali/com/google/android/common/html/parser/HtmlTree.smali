.class public Lcom/google/android/common/html/parser/HtmlTree;
.super Ljava/lang/Object;
.source "HtmlTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/html/parser/HtmlTree$2;,
        Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;,
        Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;,
        Lcom/google/android/common/html/parser/HtmlTree$Block;,
        Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverter;,
        Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverterFactory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_CONVERTER_FACTORY:Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverterFactory;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final begins:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private converterFactory:Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverterFactory;

.field private final ends:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private html:Ljava/lang/String;

.field private final nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/common/html/parser/HtmlDocument$Node;",
            ">;"
        }
    .end annotation
.end field

.field private parent:I

.field private plainText:Ljava/lang/String;

.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private textPositions:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/google/android/common/html/parser/HtmlTree$1;

    invoke-direct {v0}, Lcom/google/android/common/html/parser/HtmlTree$1;-><init>()V

    sput-object v0, Lcom/google/android/common/html/parser/HtmlTree;->DEFAULT_CONVERTER_FACTORY:Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverterFactory;

    .line 104
    const-class v0, Lcom/google/android/common/html/parser/HtmlTree;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/common/html/parser/HtmlTree;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->begins:Ljava/util/Stack;

    .line 88
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->ends:Ljava/util/Stack;

    .line 99
    sget-object v0, Lcom/google/android/common/html/parser/HtmlTree;->DEFAULT_CONVERTER_FACTORY:Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverterFactory;

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->converterFactory:Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverterFactory;

    .line 110
    return-void
.end method

.method private addNode(Lcom/google/android/common/html/parser/HtmlDocument$Node;II)V
    .locals 2
    .parameter "n"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 942
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->begins:Ljava/util/Stack;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 944
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->ends:Ljava/util/Stack;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 945
    return-void
.end method

.method private canBeginBlockAt(I)Z
    .locals 5
    .parameter "nodePos"

    .prologue
    const/4 v4, 0x1

    .line 410
    iget-object v3, p0, Lcom/google/android/common/html/parser/HtmlTree;->textPositions:[I

    aget v2, v3, p1

    .line 414
    .local v2, textPos:I
    iget-object v3, p0, Lcom/google/android/common/html/parser/HtmlTree;->plainText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 415
    add-int/lit8 v2, v2, -0x1

    .line 420
    :cond_0
    move v1, v2

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_3

    .line 421
    iget-object v3, p0, Lcom/google/android/common/html/parser/HtmlTree;->plainText:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 422
    .local v0, ch:C
    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    move v3, v4

    .line 429
    .end local v0           #ch:C
    :goto_1
    return v3

    .line 425
    .restart local v0       #ch:C
    :cond_1
    if-ge v1, v2, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 426
    const/4 v3, 0x0

    goto :goto_1

    .line 420
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0           #ch:C
    :cond_3
    move v3, v4

    .line 429
    goto :goto_1
.end method

.method private convertToPlainText()V
    .locals 5

    .prologue
    .line 511
    iget-object v3, p0, Lcom/google/android/common/html/parser/HtmlTree;->plainText:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/common/html/parser/HtmlTree;->textPositions:[I

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/android/common/base/X;->assertTrue(Z)V

    .line 513
    iget-object v3, p0, Lcom/google/android/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 517
    .local v2, numNodes:I
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/google/android/common/html/parser/HtmlTree;->textPositions:[I

    .line 519
    iget-object v3, p0, Lcom/google/android/common/html/parser/HtmlTree;->converterFactory:Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverterFactory;

    invoke-interface {v3}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverterFactory;->createInstance()Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverter;

    move-result-object v0

    .line 521
    .local v0, converter:Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverter;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 522
    iget-object v3, p0, Lcom/google/android/common/html/parser/HtmlTree;->textPositions:[I

    invoke-interface {v0}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverter;->getPlainTextLength()I

    move-result v4

    aput v4, v3, v1

    .line 523
    iget-object v3, p0, Lcom/google/android/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/common/html/parser/HtmlDocument$Node;

    iget-object v4, p0, Lcom/google/android/common/html/parser/HtmlTree;->ends:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0, v3, v1, v4}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverter;->addNode(Lcom/google/android/common/html/parser/HtmlDocument$Node;II)V

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 511
    .end local v0           #converter:Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverter;
    .end local v1           #i:I
    .end local v2           #numNodes:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 527
    .restart local v0       #converter:Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverter;
    .restart local v1       #i:I
    .restart local v2       #numNodes:I
    :cond_1
    iget-object v3, p0, Lcom/google/android/common/html/parser/HtmlTree;->textPositions:[I

    invoke-interface {v0}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverter;->getPlainTextLength()I

    move-result v4

    aput v4, v3, v2

    .line 529
    invoke-interface {v0}, Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverter;->getPlainText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/common/html/parser/HtmlTree;->plainText:Ljava/lang/String;

    .line 540
    return-void
.end method

.method private static final debug(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 949
    sget-object v0, Lcom/google/android/common/html/parser/HtmlTree;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 950
    return-void
.end method

.method private getBlockEnd(I)I
    .locals 3
    .parameter "textPos"

    .prologue
    .line 456
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->textPositions:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 457
    .local v0, nodenum:I
    if-ltz v0, :cond_0

    .line 459
    :goto_0
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/google/android/common/html/parser/HtmlTree;->textPositions:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->textPositions:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    if-ne v1, p1, :cond_1

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    :cond_0
    neg-int v1, v0

    const/4 v2, 0x2

    sub-int v0, v1, v2

    .line 466
    :cond_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/common/base/X;->assertTrue(Z)V

    .line 467
    return v0

    .line 466
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getBlockStart(I)I
    .locals 4
    .parameter "textPos"

    .prologue
    const/4 v3, 0x1

    .line 436
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->textPositions:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 437
    .local v0, nodenum:I
    if-ltz v0, :cond_0

    .line 440
    :goto_0
    sub-int v1, v0, v3

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->textPositions:[I

    sub-int v2, v0, v3

    aget v1, v1, v2

    if-ne v1, p1, :cond_1

    .line 441
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 445
    :cond_0
    neg-int v1, v0

    sub-int v0, v1, v3

    .line 448
    :cond_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_2

    move v1, v3

    :goto_1
    invoke-static {v1}, Lcom/google/android/common/base/X;->assertTrue(Z)V

    .line 449
    return v0

    .line 448
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method addEndTag(Lcom/google/android/common/html/parser/HtmlDocument$EndTag;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 913
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 914
    .local v0, nodenum:I
    iget v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->parent:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/common/html/parser/HtmlTree;->addNode(Lcom/google/android/common/html/parser/HtmlDocument$Node;II)V

    .line 916
    iget v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->parent:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 917
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->ends:Ljava/util/Stack;

    iget v2, p0, Lcom/google/android/common/html/parser/HtmlTree;->parent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Stack;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 921
    :cond_0
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->parent:I

    .line 922
    return-void
.end method

.method addSingularTag(Lcom/google/android/common/html/parser/HtmlDocument$Tag;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 926
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 927
    .local v0, nodenum:I
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/common/html/parser/HtmlTree;->addNode(Lcom/google/android/common/html/parser/HtmlDocument$Node;II)V

    .line 928
    return-void
.end method

.method addStartTag(Lcom/google/android/common/html/parser/HtmlDocument$Tag;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 902
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 903
    .local v0, nodenum:I
    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/common/html/parser/HtmlTree;->addNode(Lcom/google/android/common/html/parser/HtmlDocument$Node;II)V

    .line 905
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->stack:Ljava/util/Stack;

    iget v2, p0, Lcom/google/android/common/html/parser/HtmlTree;->parent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 906
    iput v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->parent:I

    .line 907
    return-void
.end method

.method addText(Lcom/google/android/common/html/parser/HtmlDocument$Text;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 935
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 936
    .local v0, nodenum:I
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/common/html/parser/HtmlTree;->addNode(Lcom/google/android/common/html/parser/HtmlDocument$Node;II)V

    .line 937
    return-void
.end method

.method public createBlocks(IIII)Ljava/util/ArrayList;
    .locals 10
    .parameter "textStart"
    .parameter "textEnd"
    .parameter "minNode"
    .parameter "maxNode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/common/html/parser/HtmlTree$Block;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 331
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v2, blocks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/common/html/parser/HtmlTree$Block;>;"
    invoke-direct {p0, p1}, Lcom/google/android/common/html/parser/HtmlTree;->getBlockStart(I)I

    move-result v8

    invoke-static {v8, p3}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 333
    .local v7, startNode:I
    invoke-direct {p0, p2}, Lcom/google/android/common/html/parser/HtmlTree;->getBlockEnd(I)I

    move-result v8

    invoke-static {v8, p4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 344
    .local v3, endNode:I
    const/4 v1, -0x1

    .line 345
    .local v1, blockStart:I
    move v4, v7

    .local v4, n:I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 348
    iget-object v8, p0, Lcom/google/android/common/html/parser/HtmlTree;->begins:Ljava/util/Stack;

    invoke-virtual {v8, v4}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 349
    .local v5, nBegin:I
    iget-object v8, p0, Lcom/google/android/common/html/parser/HtmlTree;->ends:Ljava/util/Stack;

    invoke-virtual {v8, v4}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 351
    .local v6, nEnd:I
    if-ne v1, v9, :cond_1

    .line 353
    if-lt v5, v4, :cond_0

    if-gt v6, v3, :cond_0

    invoke-direct {p0, v4}, Lcom/google/android/common/html/parser/HtmlTree;->canBeginBlockAt(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 355
    move v1, v4

    .line 356
    add-int/lit8 v4, v6, 0x1

    goto :goto_0

    .line 358
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 360
    goto :goto_0

    .line 365
    :cond_1
    if-lt v5, v1, :cond_2

    if-ge v6, v3, :cond_2

    .line 366
    add-int/lit8 v4, v6, 0x1

    .line 367
    goto :goto_0

    .line 377
    :cond_2
    new-instance v0, Lcom/google/android/common/html/parser/HtmlTree$Block;

    invoke-direct {v0}, Lcom/google/android/common/html/parser/HtmlTree$Block;-><init>()V

    .line 378
    .local v0, b:Lcom/google/android/common/html/parser/HtmlTree$Block;
    iput v1, v0, Lcom/google/android/common/html/parser/HtmlTree$Block;->start_node:I

    .line 379
    iput v4, v0, Lcom/google/android/common/html/parser/HtmlTree$Block;->end_node:I

    .line 380
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    const/4 v1, -0x1

    .line 383
    add-int/lit8 v4, v4, 0x1

    .line 384
    goto :goto_0

    .line 387
    .end local v0           #b:Lcom/google/android/common/html/parser/HtmlTree$Block;
    .end local v5           #nBegin:I
    .end local v6           #nEnd:I
    :cond_3
    if-eq v1, v9, :cond_4

    .line 388
    new-instance v0, Lcom/google/android/common/html/parser/HtmlTree$Block;

    invoke-direct {v0}, Lcom/google/android/common/html/parser/HtmlTree$Block;-><init>()V

    .line 389
    .restart local v0       #b:Lcom/google/android/common/html/parser/HtmlTree$Block;
    iput v1, v0, Lcom/google/android/common/html/parser/HtmlTree$Block;->start_node:I

    .line 390
    iput v3, v0, Lcom/google/android/common/html/parser/HtmlTree$Block;->end_node:I

    .line 391
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    .end local v0           #b:Lcom/google/android/common/html/parser/HtmlTree$Block;
    :cond_4
    return-object v2
.end method

.method finish()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 894
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/google/android/common/base/X;->assertTrue(Z)V

    .line 895
    iget v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->parent:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    move v0, v3

    :goto_1
    invoke-static {v0}, Lcom/google/android/common/base/X;->assertTrue(Z)V

    .line 896
    return-void

    :cond_0
    move v0, v2

    .line 894
    goto :goto_0

    :cond_1
    move v0, v2

    .line 895
    goto :goto_1
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/common/html/parser/HtmlTree;->getHtml(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtml(I)Ljava/lang/String;
    .locals 2
    .parameter "wrapSize"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->html:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/common/html/parser/HtmlTree;->getHtml(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->html:Ljava/lang/String;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->html:Ljava/lang/String;

    return-object v0
.end method

.method public getHtml(II)Ljava/lang/String;
    .locals 1
    .parameter "fromNode"
    .parameter "toNode"

    .prologue
    .line 159
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/common/html/parser/HtmlTree;->getHtml(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtml(III)Ljava/lang/String;
    .locals 10
    .parameter "fromNode"
    .parameter "toNode"
    .parameter "wrapSize"

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x1

    .line 167
    if-ltz p1, :cond_4

    iget-object v7, p0, Lcom/google/android/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gt p2, v7, :cond_4

    move v7, v8

    :goto_0
    invoke-static {v7}, Lcom/google/android/common/base/X;->assertTrue(Z)V

    .line 169
    sub-int v7, p2, p1

    mul-int/lit8 v1, v7, 0xa

    .line 170
    .local v1, estSize:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 171
    .local v6, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 172
    .local v2, lastWrapIndex:I
    move v3, p1

    .local v3, n:I
    :goto_1
    if-ge v3, p2, :cond_5

    .line 173
    iget-object v7, p0, Lcom/google/android/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/common/html/parser/HtmlDocument$Node;

    .line 174
    .local v4, node:Lcom/google/android/common/html/parser/HtmlDocument$Node;
    invoke-virtual {v4, v6}, Lcom/google/android/common/html/parser/HtmlDocument$Node;->toHTML(Ljava/lang/StringBuilder;)V

    .line 178
    if-lez p3, :cond_3

    .line 182
    instance-of v7, v4, Lcom/google/android/common/html/parser/HtmlDocument$Tag;

    if-eqz v7, :cond_0

    move-object v0, v4

    check-cast v0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->getElement()Lcom/google/android/common/html/parser/HTML$Element;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/common/html/parser/HTML$Element;->breaksFlow()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    instance-of v7, v4, Lcom/google/android/common/html/parser/HtmlDocument$EndTag;

    if-eqz v7, :cond_3

    check-cast v4, Lcom/google/android/common/html/parser/HtmlDocument$EndTag;

    .end local v4           #node:Lcom/google/android/common/html/parser/HtmlDocument$Node;
    invoke-virtual {v4}, Lcom/google/android/common/html/parser/HtmlDocument$EndTag;->getElement()Lcom/google/android/common/html/parser/HTML$Element;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/common/html/parser/HTML$Element;->breaksFlow()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 187
    :cond_1
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 188
    .local v5, recentNewLine:I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    .line 189
    add-int/2addr v2, v5

    .line 193
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v8

    sub-int/2addr v7, v2

    if-le v7, p3, :cond_3

    .line 194
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int v2, v7, v8

    .line 172
    .end local v5           #recentNewLine:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 167
    .end local v1           #estSize:I
    .end local v2           #lastWrapIndex:I
    .end local v3           #n:I
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 201
    .restart local v1       #estSize:I
    .restart local v2       #lastWrapIndex:I
    .restart local v3       #n:I
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getHtmlChunks(III)Ljava/util/ArrayList;
    .locals 14
    .parameter "fromNode"
    .parameter "toNode"
    .parameter "chunkSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 209
    if-ltz p1, :cond_3

    iget-object v11, p0, Lcom/google/android/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    move/from16 v0, p2

    move v1, v11

    if-gt v0, v1, :cond_3

    const/4 v11, 0x1

    :goto_0
    invoke-static {v11}, Lcom/google/android/common/base/X;->assertTrue(Z)V

    .line 211
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v4, chunks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 219
    .local v10, stack:I
    const/4 v2, 0x1

    .line 221
    .local v2, balanced:Z
    new-instance v9, Ljava/lang/StringBuilder;

    move/from16 v0, p3

    add-int/lit16 v0, v0, 0x100

    move v11, v0

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 222
    .local v9, sb:Ljava/lang/StringBuilder;
    move v7, p1

    .local v7, n:I
    :goto_1
    move v0, v7

    move/from16 v1, p2

    if-ge v0, v1, :cond_5

    .line 223
    iget-object v11, p0, Lcom/google/android/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/common/html/parser/HtmlDocument$Node;

    .line 224
    .local v8, node:Lcom/google/android/common/html/parser/HtmlDocument$Node;
    invoke-virtual {v8, v9}, Lcom/google/android/common/html/parser/HtmlDocument$Node;->toHTML(Ljava/lang/StringBuilder;)V

    .line 226
    instance-of v11, v8, Lcom/google/android/common/html/parser/HtmlDocument$Tag;

    if-eqz v11, :cond_0

    .line 227
    sget-object v12, Lcom/google/android/common/html/parser/HTML4;->TEXTAREA_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    move-object v0, v8

    check-cast v0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->getElement()Lcom/google/android/common/html/parser/HTML$Element;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/google/android/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 229
    add-int/lit8 v10, v10, 0x1

    .line 232
    :cond_0
    instance-of v11, v8, Lcom/google/android/common/html/parser/HtmlDocument$EndTag;

    if-eqz v11, :cond_1

    .line 233
    sget-object v11, Lcom/google/android/common/html/parser/HTML4;->TEXTAREA_ELEMENT:Lcom/google/android/common/html/parser/HTML$Element;

    check-cast v8, Lcom/google/android/common/html/parser/HtmlDocument$EndTag;

    .end local v8           #node:Lcom/google/android/common/html/parser/HtmlDocument$Node;
    invoke-virtual {v8}, Lcom/google/android/common/html/parser/HtmlDocument$EndTag;->getElement()Lcom/google/android/common/html/parser/HTML$Element;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 235
    if-nez v10, :cond_4

    .line 236
    const/4 v2, 0x0

    .line 243
    :cond_1
    :goto_2
    if-nez v10, :cond_2

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    move v0, v11

    move/from16 v1, p3

    if-lt v0, v1, :cond_2

    .line 244
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 222
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v2           #balanced:Z
    .end local v4           #chunks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #n:I
    .end local v9           #sb:Ljava/lang/StringBuilder;
    .end local v10           #stack:I
    :cond_3
    move v11, v13

    .line 209
    goto :goto_0

    .line 238
    .restart local v2       #balanced:Z
    .restart local v4       #chunks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #n:I
    .restart local v9       #sb:Ljava/lang/StringBuilder;
    .restart local v10       #stack:I
    :cond_4
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 250
    :cond_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_6

    .line 251
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v10, :cond_9

    .line 258
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "Returning unbalanced HTML:\n"

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .local v5, debug:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/android/common/html/parser/HtmlTree;->getHtml()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v11, "\nfromNode: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    const-string v11, "\ntoNode: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    const-string v11, "\nNum nodes_: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/google/android/common/html/parser/HtmlTree;->getNumNodes()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 264
    .local v3, chunk:Ljava/lang/String;
    const-string v11, "\nChunk:\n"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 266
    .end local v3           #chunk:Ljava/lang/String;
    :cond_8
    sget-object v11, Lcom/google/android/common/html/parser/HtmlTree;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 269
    .end local v5           #debug:Ljava/lang/StringBuilder;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_9
    return-object v4
.end method

.method public getNodesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/common/html/parser/HtmlDocument$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNumNodes()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPlainText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->plainText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 485
    invoke-direct {p0}, Lcom/google/android/common/html/parser/HtmlTree;->convertToPlainText()V

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->plainText:Ljava/lang/String;

    return-object v0
.end method

.method public getPlainText(II)Ljava/lang/String;
    .locals 3
    .parameter "fromNode"
    .parameter "toNode"

    .prologue
    .line 494
    iget-object v2, p0, Lcom/google/android/common/html/parser/HtmlTree;->plainText:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 495
    invoke-direct {p0}, Lcom/google/android/common/html/parser/HtmlTree;->convertToPlainText()V

    .line 497
    :cond_0
    iget-object v2, p0, Lcom/google/android/common/html/parser/HtmlTree;->textPositions:[I

    aget v1, v2, p1

    .line 498
    .local v1, textstart:I
    iget-object v2, p0, Lcom/google/android/common/html/parser/HtmlTree;->textPositions:[I

    aget v0, v2, p2

    .line 499
    .local v0, textend:I
    iget-object v2, p0, Lcom/google/android/common/html/parser/HtmlTree;->plainText:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getTextPosition(I)I
    .locals 1
    .parameter "node"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->textPositions:[I

    aget v0, v0, p1

    return v0
.end method

.method public getTreeHeight()I
    .locals 5

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, currentHeight:I
    const/4 v2, 0x0

    .line 280
    .local v2, maxHeight:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/android/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 281
    iget-object v4, p0, Lcom/google/android/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/common/html/parser/HtmlDocument$Node;

    .line 282
    .local v3, node:Lcom/google/android/common/html/parser/HtmlDocument$Node;
    instance-of v4, v3, Lcom/google/android/common/html/parser/HtmlDocument$Tag;

    if-eqz v4, :cond_2

    .line 283
    add-int/lit8 v0, v0, 0x1

    .line 284
    if-le v0, v2, :cond_0

    .line 285
    move v2, v0

    .line 287
    :cond_0
    check-cast v3, Lcom/google/android/common/html/parser/HtmlDocument$Tag;

    .end local v3           #node:Lcom/google/android/common/html/parser/HtmlDocument$Node;
    invoke-virtual {v3}, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->getElement()Lcom/google/android/common/html/parser/HTML$Element;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/common/html/parser/HTML$Element;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    add-int/lit8 v0, v0, -0x1

    .line 280
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    .restart local v3       #node:Lcom/google/android/common/html/parser/HtmlDocument$Node;
    :cond_2
    instance-of v4, v3, Lcom/google/android/common/html/parser/HtmlDocument$EndTag;

    if-eqz v4, :cond_1

    .line 292
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 297
    .end local v3           #node:Lcom/google/android/common/html/parser/HtmlDocument$Node;
    :cond_3
    return v2
.end method

.method public setPlainTextConverterFactory(Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverterFactory;)V
    .locals 2
    .parameter "factory"

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "factory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iput-object p1, p0, Lcom/google/android/common/html/parser/HtmlTree;->converterFactory:Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverterFactory;

    .line 121
    return-void
.end method

.method start()V
    .locals 1

    .prologue
    .line 888
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->stack:Ljava/util/Stack;

    .line 889
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->parent:I

    .line 890
    return-void
.end method
