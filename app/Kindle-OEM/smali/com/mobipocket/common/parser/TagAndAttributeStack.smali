.class public Lcom/mobipocket/common/parser/TagAndAttributeStack;
.super Ljava/lang/Object;
.source "TagAndAttributeStack.java"


# instance fields
.field closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

.field private closedTagPositions:[I

.field private endPosition:I

.field lastPositionChange:I

.field private saveClosedTags:Z

.field private startPosition:I

.field tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;-><init>(I)V

    iput-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->lastPositionChange:I

    .line 54
    invoke-direct {p0}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->initEmptyClosedTagAndAttributeStack()V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/mobipocket/common/parser/TagAndAttributeStack;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v1, p1, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;-><init>(Lcom/mobipocket/common/parser/TagAndAttributeStackData;)V

    iput-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    .line 66
    iget v0, p1, Lcom/mobipocket/common/parser/TagAndAttributeStack;->lastPositionChange:I

    iput v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->lastPositionChange:I

    .line 68
    if-eqz p2, :cond_1

    .line 70
    iget-object v0, p1, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagPositions:[I

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v1, p1, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;-><init>(Lcom/mobipocket/common/parser/TagAndAttributeStackData;)V

    iput-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    .line 73
    iget-object v0, p1, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagPositions:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagPositions:[I

    .line 74
    iget-object v0, p1, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagPositions:[I

    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagPositions:[I

    iget-object v2, p1, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagPositions:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    :cond_0
    iget v0, p1, Lcom/mobipocket/common/parser/TagAndAttributeStack;->startPosition:I

    iput v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->startPosition:I

    .line 77
    iget v0, p1, Lcom/mobipocket/common/parser/TagAndAttributeStack;->endPosition:I

    iput v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->endPosition:I

    .line 84
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-direct {p0}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->initEmptyClosedTagAndAttributeStack()V

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "srcToLoad"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    invoke-direct {v0, p1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;-><init>([B)V

    iput-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    .line 95
    invoke-direct {p0}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->initEmptyClosedTagAndAttributeStack()V

    .line 98
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->setLastPositionToLastSeenTagPosition()V

    .line 99
    return-void
.end method

.method private allocateClosedTagPositions(I)V
    .locals 4
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 114
    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v1, v1, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagPositions:[I

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 116
    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v1, v1, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    new-array v0, v1, [I

    .line 117
    .local v0, newClosedTagPositions:[I
    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagPositions:[I

    iget-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v2, v2, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iput-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagPositions:[I

    .line 120
    .end local v0           #newClosedTagPositions:[I
    :cond_0
    return-void
.end method

.method private initEmptyClosedTagAndAttributeStack()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 38
    new-instance v0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;-><init>(I)V

    iput-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    .line 39
    const/16 v0, 0x19

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagPositions:[I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->saveClosedTags:Z

    .line 42
    iput v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->startPosition:I

    .line 43
    iput v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->endPosition:I

    .line 44
    return-void
.end method

.method private pop(ZI)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 405
    iget-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->getTopElement()I

    move-result v0

    .line 406
    invoke-static {v0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToTagSize(I)I

    move-result v1

    .line 407
    invoke-static {v0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToStrAttrSize(I)I

    move-result v0

    .line 410
    if-eqz p1, :cond_1

    .line 413
    iget-boolean v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->saveClosedTags:Z

    if-eqz v2, :cond_0

    .line 416
    iget-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    invoke-virtual {v2, v1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->allocateTagAndAttribute(I)V

    .line 417
    iget-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v2, v2, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    iget-object v3, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v3, v3, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    sub-int/2addr v3, v1

    iget-object v4, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v4, v4, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    iget-object v5, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v5, v5, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    iget-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v3, v2, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    .line 420
    invoke-direct {p0, v6}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->allocateClosedTagPositions(I)V

    .line 421
    iget-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagPositions:[I

    iget-object v3, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v3, v3, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    aput p2, v2, v3

    .line 423
    iget-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v3, v2, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    .line 427
    iget-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v2, v2, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_0
    iget-object v3, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v3, v3, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 429
    iget-object v3, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v3, v3, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    iget-object v4, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v4, v4, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    invoke-virtual {v4, v2}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 435
    :cond_0
    invoke-direct {p0}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->popClosedTagsAndAttributes()V

    .line 439
    :cond_1
    iget-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v3, v2, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    sub-int v1, v3, v1

    iput v1, v2, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    .line 440
    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v2, v1, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    sub-int/2addr v2, v6

    iput v2, v1, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    .line 443
    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v1, v1, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->pop(I)V

    .line 444
    return-void
.end method

.method private popClosedTagsAndAttributes()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 459
    iget-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->popAll()V

    .line 460
    iput v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->startPosition:I

    .line 461
    iput v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->endPosition:I

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->saveClosedTags:Z

    .line 464
    return-void
.end method


# virtual methods
.method public addTag(SLcom/mobipocket/common/parser/AttributeStack;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 354
    iget v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->lastPositionChange:I

    if-lt p3, v0, :cond_0

    iget v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->lastPositionChange:I

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->getTopElement()I

    move-result v0

    invoke-static {v0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToTagName(I)S

    move-result v0

    if-ne p1, v0, :cond_1

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add Tag ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_1
    iput p3, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->lastPositionChange:I

    .line 361
    iget-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->addTag(SLcom/mobipocket/common/parser/AttributeStack;I)V

    goto :goto_0
.end method

.method public attributeStackAt(I)Lcom/mobipocket/common/parser/AttributeStack;
    .locals 1
    .parameter "tagIndex"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->attributeStackAt(I)Lcom/mobipocket/common/parser/AttributeStack;

    move-result-object v0

    return-object v0
.end method

.method public closeTag(SI)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 371
    iget-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->getTopElement()I

    move-result v0

    invoke-static {v0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToTagName(I)S

    move-result v0

    .line 372
    iget v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->lastPositionChange:I

    if-lt p2, v1, :cond_0

    iget v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->lastPositionChange:I

    if-ne p2, v1, :cond_1

    if-eq v0, p1, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    sub-int v1, p2, v2

    iput v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->lastPositionChange:I

    .line 377
    if-ne p1, v2, :cond_2

    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v1, v1, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    if-eqz v1, :cond_0

    .line 379
    :cond_2
    if-eq v0, p1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v0, v0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    if-eq v0, v2, :cond_0

    .line 383
    :cond_3
    invoke-direct {p0, v2, p2}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->pop(ZI)V

    goto :goto_0
.end method

.method public completeStacks(Lcom/mobipocket/common/parser/TagStack;Lcom/mobipocket/common/parser/styles/StyleStack;Lcom/mobipocket/common/parser/styles/StyleDescriptor;[Lcom/mobipocket/common/library/reader/ActiveArea;)V
    .locals 1
    .parameter "tagStack"
    .parameter "styleStack"
    .parameter "defaultStyle"
    .parameter "currentActiveArea"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->completeStacks(Lcom/mobipocket/common/parser/TagStack;Lcom/mobipocket/common/parser/styles/StyleStack;Lcom/mobipocket/common/parser/styles/StyleDescriptor;[Lcom/mobipocket/common/library/reader/ActiveArea;)V

    .line 514
    return-void
.end method

.method public continueSavingClosedTags(II)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 146
    .line 147
    if-gt p1, p2, :cond_b

    iget v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->startPosition:I

    if-lt p1, v0, :cond_b

    iget v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->endPosition:I

    if-gt p2, v0, :cond_b

    move v0, v5

    .line 152
    :goto_0
    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v1, v1, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagPositions:[I

    aget v1, v1, v0

    if-gt v1, p1, :cond_0

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    if-lez v0, :cond_5

    .line 160
    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v1, v1, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    if-ge v0, v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagPositions:[I

    iget-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagPositions:[I

    iget-object v3, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v3, v3, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    move v1, v5

    move v2, v5

    .line 168
    :goto_1
    if-ge v1, v0, :cond_2

    .line 170
    iget-object v3, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    invoke-virtual {v3, v1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->getAttributeStackSizeAt(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 173
    :cond_2
    sub-int v1, v2, v6

    :goto_2
    if-ltz v1, :cond_3

    .line 175
    iget-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v2, v2, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    invoke-virtual {v2, v1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->removeElementAt(I)V

    .line 173
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 179
    :cond_3
    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v1, v1, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    if-ge v0, v1, :cond_6

    .line 181
    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->getArrayIndexOfTag(I)I

    move-result v1

    .line 187
    :goto_3
    iget-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v2, v2, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    if-ge v1, v2, :cond_4

    .line 190
    iget-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v2, v2, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    iget-object v3, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v3, v3, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    iget-object v4, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v4, v4, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    sub-int/2addr v4, v1

    invoke-static {v2, v1, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    :cond_4
    iget-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v3, v2, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    sub-int v1, v3, v1

    iput v1, v2, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    .line 193
    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v2, v1, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    sub-int v0, v2, v0

    iput v0, v1, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    .line 198
    :cond_5
    iget v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->endPosition:I

    if-ge p2, v0, :cond_a

    .line 201
    invoke-virtual {p0, p2}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->getTagAndAttributeStackAt(I)Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v0

    iget-object v0, v0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iput-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    .line 203
    iget-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v0, v0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    sub-int/2addr v0, v6

    .line 204
    :goto_4
    if-ltz v0, :cond_7

    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagPositions:[I

    aget v1, v1, v0

    if-le v1, p2, :cond_7

    .line 206
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 185
    :cond_6
    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v1, v1, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    goto :goto_3

    .line 208
    :cond_7
    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v1, v1, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    sub-int/2addr v1, v6

    if-ge v0, v1, :cond_a

    .line 215
    add-int/lit8 v1, v0, 0x1

    move v2, v5

    :goto_5
    iget-object v3, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v3, v3, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    if-ge v1, v3, :cond_8

    .line 217
    iget-object v3, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    invoke-virtual {v3, v1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->getAttributeStackSizeAt(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 219
    :cond_8
    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v1, v1, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->size()I

    move-result v1

    .line 220
    sub-int v3, v1, v6

    :goto_6
    sub-int v4, v1, v2

    if-lt v3, v4, :cond_9

    .line 222
    iget-object v4, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v4, v4, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    invoke-virtual {v4, v3}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->removeElementAt(I)V

    .line 220
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 225
    :cond_9
    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->getArrayIndexOfTag(I)I

    move-result v1

    .line 226
    iget-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iput v1, v2, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    .line 227
    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    .line 232
    :cond_a
    iput p1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->startPosition:I

    .line 233
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->endPosition:I

    .line 238
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->setLastPositionToLastSeenTagPosition()V

    .line 239
    iput-boolean v6, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->saveClosedTags:Z

    move v0, v6

    .line 242
    :goto_7
    return v0

    :cond_b
    move v0, v5

    goto :goto_7
.end method

.method public getLastTagPosition()I
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->lastPositionChange:I

    return v0
.end method

.method public getSaveStateSize()I
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->getSaveStateSize()I

    move-result v0

    return v0
.end method

.method public getTagAndAttributeStackAt(I)Lcom/mobipocket/common/parser/TagAndAttributeStack;
    .locals 13
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 274
    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->knowsTagAndAttributeStackAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 277
    new-instance v0, Lcom/mobipocket/common/parser/TagAndAttributeStack;

    invoke-direct {v0}, Lcom/mobipocket/common/parser/TagAndAttributeStack;-><init>()V

    move v1, v10

    move v2, v10

    move v3, v10

    .line 283
    :goto_0
    iget-object v4, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    invoke-virtual {v4}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v4, v4, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    add-int/lit8 v5, v3, 0x1

    aget v4, v4, v5

    if-gt v4, p1, :cond_0

    .line 285
    iget-object v4, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v4, v4, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    aget v4, v4, v3

    .line 286
    invoke-static {v4}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToTagSize(I)I

    move-result v5

    .line 287
    invoke-static {v4}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToStrAttrSize(I)I

    move-result v4

    .line 288
    add-int/2addr v3, v5

    .line 289
    add-int/2addr v2, v4

    .line 290
    add-int/lit8 v1, v1, 0x1

    .line 291
    goto :goto_0

    .line 292
    :cond_0
    iget-object v4, v0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    invoke-virtual {v4, v3}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->allocateTagAndAttribute(I)V

    .line 293
    iget-object v4, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v4, v4, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    iget-object v5, v0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v5, v5, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    invoke-static {v4, v10, v5, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    iget-object v4, v0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iput v1, v4, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    .line 295
    iget-object v1, v0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iput v3, v1, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    move v1, v10

    .line 296
    :goto_1
    if-ge v1, v2, :cond_1

    .line 298
    iget-object v3, v0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v3, v3, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    iget-object v4, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v4, v4, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    invoke-virtual {v4, v1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v1, v1, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    .line 306
    iget-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v2, v2, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->size()I

    move-result v2

    .line 307
    iget-object v3, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v3, v3, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    sub-int/2addr v3, v11

    move v12, v3

    move v3, v1

    move v1, v12

    .line 308
    :goto_2
    if-ltz v1, :cond_3

    iget-object v4, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagPositions:[I

    aget v4, v4, v1

    if-le v4, p1, :cond_3

    .line 310
    iget-object v4, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v4, v4, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    sub-int v5, v3, v11

    aget v4, v4, v5

    .line 311
    invoke-static {v4}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToTagSize(I)I

    move-result v5

    .line 312
    invoke-static {v4}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToStrAttrSize(I)I

    move-result v4

    .line 313
    iget-object v6, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v6, v6, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    sub-int v7, v3, v5

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    .line 314
    if-gt v6, p1, :cond_2

    .line 316
    iget-object v6, v0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    invoke-virtual {v6, v5}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->allocateTagAndAttribute(I)V

    .line 317
    iget-object v6, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v6, v6, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    sub-int v7, v3, v5

    iget-object v8, v0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v8, v8, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    iget-object v9, v0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v9, v9, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    invoke-static {v6, v7, v8, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    iget-object v6, v0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v7, v6, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    .line 319
    iget-object v6, v0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v7, v6, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    add-int/2addr v7, v5

    iput v7, v6, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    move v6, v10

    .line 321
    :goto_3
    if-ge v6, v4, :cond_2

    .line 323
    iget-object v7, v0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v7, v7, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    iget-object v8, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closedTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v8, v8, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->strAttrStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;

    sub-int v9, v2, v4

    add-int/2addr v9, v6

    invoke-virtual {v8, v9}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 326
    :cond_2
    sub-int/2addr v3, v5

    .line 327
    sub-int/2addr v2, v4

    .line 328
    add-int/lit8 v1, v1, -0x1

    .line 329
    goto :goto_2

    .line 334
    :cond_3
    return-object v0
.end method

.method public knowsTagAndAttributeStackAt(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 568
    iget v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->startPosition:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->startPosition:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->endPosition:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public popAll()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->popAll()V

    .line 453
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->lastPositionChange:I

    .line 454
    invoke-direct {p0}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->popClosedTagsAndAttributes()V

    .line 455
    return-void
.end method

.method public returnToTagElementAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagElementPositionAt(I)I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->lastPositionChange:I

    .line 397
    :goto_0
    iget-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v0, v0, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->nbTags:I

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_0

    .line 399
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->pop(ZI)V

    goto :goto_0

    .line 401
    :cond_0
    return-void
.end method

.method public saveState(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    iget-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->saveState(Ljava/io/OutputStream;)V

    .line 543
    return-void
.end method

.method public setLastPositionToLastSeenTagPosition()V
    .locals 4

    .prologue
    .line 104
    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v1, v1, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    if-lez v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v1, v1, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    iget-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v2, v2, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2

    invoke-static {v1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->codeToTagSize(I)I

    move-result v0

    .line 107
    .local v0, tagSize:I
    iget-object v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget-object v1, v1, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagAndAttributeStack:[I

    iget-object v2, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    iget v2, v2, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->topTagIndex:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    iput v1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->lastPositionChange:I

    .line 109
    .end local v0           #tagSize:I
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->size()I

    move-result v0

    return v0
.end method

.method public startSavingClosedTags(I)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->saveClosedTags:Z

    if-nez v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->popClosedTagsAndAttributes()V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->saveClosedTags:Z

    .line 133
    iput p1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->startPosition:I

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->endPosition:I

    .line 136
    :cond_0
    return-void
.end method

.method public stopSavingClosedTags(I)V
    .locals 1
    .parameter

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->saveClosedTags:Z

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->saveClosedTags:Z

    .line 255
    iput p1, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->endPosition:I

    .line 256
    :cond_0
    return-void
.end method

.method public tagElementAt(I)I
    .locals 1
    .parameter "tagIndex"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagElementAt(I)I

    move-result v0

    return v0
.end method

.method public tagElementPositionAt(I)I
    .locals 1
    .parameter "tagIndex"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->tagElementPositionAt(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStackData;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
