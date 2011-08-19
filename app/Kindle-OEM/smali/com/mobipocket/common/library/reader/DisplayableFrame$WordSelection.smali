.class public Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;
.super Ljava/lang/Object;
.source "DisplayableFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/DisplayableFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WordSelection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;,
        Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    }
.end annotation


# static fields
.field static final MAX_NB_OF_COPIABLE_WORDS:I = 0x32


# instance fields
.field private pGlobalWordSelectionBegin:I

.field private pGlobalWordSelectionEnd:I

.field private pHasTextObject:Z

.field private pLineLayout:[Lcom/amazon/system/drawing/LineMetrics;

.field private pLineList:Ljava/util/Vector;

.field private pLocalWordSelectionBegin:I

.field private pLocalWordSelectionEnd:I

.field private pObjectPlacementDirty:Z

.field private pSelectableObjectList:Ljava/util/Vector;

.field private pSelectionEnabled:Z

.field private pSelectionFrameList:Ljava/util/Vector;

.field private pSelectionX:I

.field private pWordSelectionColor:I

.field private final renderedPageMetadata:Lcom/mobipocket/common/library/reader/RenderedPageMetadata;

.field final synthetic this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/DisplayableFrame;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 508
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    iput-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    .line 514
    iput-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineLayout:[Lcom/amazon/system/drawing/LineMetrics;

    .line 518
    iput-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pObjectPlacementDirty:Z

    .line 522
    iput-boolean v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pHasTextObject:Z

    .line 524
    iput-boolean v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectionEnabled:Z

    .line 525
    iput v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pWordSelectionColor:I

    .line 527
    iput v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLocalWordSelectionBegin:I

    .line 528
    iput v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLocalWordSelectionEnd:I

    .line 530
    iput-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectionFrameList:Ljava/util/Vector;

    .line 531
    iput v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    .line 532
    iput v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    .line 534
    iput v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectionX:I

    .line 536
    new-instance v0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->renderedPageMetadata:Lcom/mobipocket/common/library/reader/RenderedPageMetadata;

    .line 879
    return-void
.end method

.method private computeLineLayout()V
    .locals 10

    .prologue
    .line 963
    iget-object v9, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    .line 964
    .local v0, count:I
    new-array v8, v0, [Lcom/amazon/system/drawing/LineMetrics;

    .line 965
    .local v8, result:[Lcom/amazon/system/drawing/LineMetrics;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 972
    iget-object v9, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    invoke-virtual {v9, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;

    .line 974
    .local v2, info:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;
    const v5, 0x7fffffff

    .line 975
    .local v5, lineYMin:I
    const/4 v4, 0x0

    .line 977
    .local v4, lineYMax:I
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;->getObjectIndex()I

    move-result v3

    .local v3, k:I
    :goto_1
    iget-object v9, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 980
    iget-object v9, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 981
    .local v7, obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    invoke-virtual {v7}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLineIndex()I

    move-result v9

    if-eq v9, v1, :cond_1

    .line 991
    .end local v7           #obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    :cond_0
    new-instance v6, Lcom/amazon/system/drawing/LineMetrics;

    sub-int v9, v4, v5

    invoke-direct {v6, v5, v9}, Lcom/amazon/system/drawing/LineMetrics;-><init>(II)V

    .line 993
    .local v6, metricInfo:Lcom/amazon/system/drawing/LineMetrics;
    aput-object v6, v8, v1

    .line 965
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 985
    .end local v6           #metricInfo:Lcom/amazon/system/drawing/LineMetrics;
    .restart local v7       #obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    :cond_1
    invoke-virtual {v7}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getTop()I

    move-result v9

    if-ge v9, v5, :cond_2

    .line 986
    invoke-virtual {v7}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getTop()I

    move-result v5

    .line 987
    :cond_2
    invoke-virtual {v7}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getBottom()I

    move-result v9

    if-le v9, v4, :cond_3

    .line 988
    invoke-virtual {v7}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getBottom()I

    move-result v4

    .line 977
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 996
    .end local v2           #info:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;
    .end local v3           #k:I
    .end local v4           #lineYMax:I
    .end local v5           #lineYMin:I
    .end local v7           #obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    :cond_4
    iput-object v8, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineLayout:[Lcom/amazon/system/drawing/LineMetrics;

    .line 997
    return-void
.end method

.method private expandToBeginOfLine()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2133
    iget v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    :cond_0
    move v4, v6

    .line 2153
    :goto_0
    return v4

    .line 2138
    :cond_1
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    .line 2139
    .local v0, index:I
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 2140
    .local v3, obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLineIndex()I

    move-result v2

    .line 2141
    .local v2, lineIndex:I
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;

    .line 2142
    .local v1, info:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;->getObjectIndex()I

    move-result v0

    .line 2143
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    check-cast v3, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 2145
    .restart local v3       #obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->isWord()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2146
    invoke-direct {p0, v0, v6}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->moveCursorRight(IZ)I

    move-result v0

    .line 2149
    :cond_2
    iget v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    if-ne v0, v4, :cond_3

    move v4, v6

    .line 2150
    goto :goto_0

    .line 2152
    :cond_3
    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    .line 2153
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private expandToEndOfLine()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2162
    iget v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    :cond_0
    move v4, v7

    .line 2189
    :goto_0
    return v4

    .line 2167
    :cond_1
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    .line 2168
    .local v0, index:I
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 2169
    .local v3, obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLineIndex()I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 2170
    .local v2, lineIndex:I
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    sub-int/2addr v4, v6

    if-le v2, v4, :cond_3

    .line 2171
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    sub-int v0, v4, v6

    .line 2179
    :goto_1
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    check-cast v3, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 2181
    .restart local v3       #obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->isWord()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2182
    invoke-direct {p0, v0, v7}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->moveCursorLeft(IZ)I

    move-result v0

    .line 2185
    :cond_2
    iget v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    if-ne v0, v4, :cond_4

    move v4, v7

    .line 2186
    goto :goto_0

    .line 2176
    :cond_3
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;

    .line 2177
    .local v1, info:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;->getObjectIndex()I

    move-result v4

    sub-int v0, v4, v6

    goto :goto_1

    .line 2188
    .end local v1           #info:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;
    :cond_4
    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    move v4, v6

    .line 2189
    goto :goto_0
.end method

.method private expandWordSelectionDown()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2248
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 2249
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLineIndex()I

    move-result v1

    .line 2250
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    iget v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 2251
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLineIndex()I

    move-result v0

    .line 2253
    if-ne v1, v0, :cond_1

    .line 2254
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->isLastSelectableObjectOnLine(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 2273
    :goto_0
    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    invoke-direct {p0, v1, v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->moveCursorDown(IZ)I

    move-result v1

    .line 2274
    iget v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    if-ne v1, v2, :cond_4

    .line 2275
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->expandToEndOfLine()Z

    move-result v0

    .line 2284
    :goto_1
    return v0

    .line 2258
    :cond_0
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->expandToEndOfLine()Z

    move-result v0

    goto :goto_1

    .line 2261
    :cond_1
    if-ge v1, v0, :cond_3

    .line 2262
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->isLastSelectableObjectOnLine(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    .line 2263
    goto :goto_0

    .line 2266
    :cond_2
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->expandToEndOfLine()Z

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v4

    .line 2270
    goto :goto_0

    .line 2278
    :cond_4
    iput v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    .line 2279
    if-eqz v0, :cond_5

    .line 2280
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->expandToEndOfLine()Z

    :goto_2
    move v0, v3

    .line 2284
    goto :goto_1

    .line 2282
    :cond_5
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->expandToBeginOfLine()Z

    goto :goto_2
.end method

.method private expandWordSelectionLeft()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2291
    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    invoke-direct {p0, v1, v2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->moveCursorLeft(IZ)I

    move-result v0

    .line 2292
    .local v0, nextPosition:I
    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    if-ne v0, v1, :cond_0

    move v1, v2

    .line 2298
    :goto_0
    return v1

    .line 2295
    :cond_0
    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    .line 2296
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->validateSelectionX(I)V

    .line 2298
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private expandWordSelectionRight()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2305
    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    invoke-direct {p0, v1, v2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->moveCursorRight(IZ)I

    move-result v0

    .line 2306
    .local v0, nextPosition:I
    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    if-ne v0, v1, :cond_0

    move v1, v2

    .line 2312
    :goto_0
    return v1

    .line 2309
    :cond_0
    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    .line 2310
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->validateSelectionX(I)V

    .line 2312
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private expandWordSelectionUp()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2200
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    move v0, v3

    .line 2237
    :goto_0
    return v0

    .line 2206
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 2207
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLineIndex()I

    move-result v1

    .line 2208
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    iget v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 2209
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLineIndex()I

    move-result v0

    .line 2211
    if-ne v1, v0, :cond_3

    .line 2212
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->isFirstSelectableObjectOnLine(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    .line 2226
    :goto_1
    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    invoke-direct {p0, v1, v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->moveCursorUp(IZ)I

    move-result v1

    .line 2227
    iget v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    if-ne v1, v2, :cond_5

    .line 2228
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->expandToBeginOfLine()Z

    move-result v0

    goto :goto_0

    .line 2216
    :cond_2
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->expandToBeginOfLine()Z

    move-result v0

    goto :goto_0

    .line 2219
    :cond_3
    if-ge v1, v0, :cond_4

    move v0, v4

    .line 2220
    goto :goto_1

    :cond_4
    move v0, v3

    .line 2223
    goto :goto_1

    .line 2231
    :cond_5
    iput v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    .line 2232
    if-eqz v0, :cond_6

    .line 2233
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->expandToEndOfLine()Z

    :goto_2
    move v0, v4

    .line 2237
    goto :goto_0

    .line 2235
    :cond_6
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->expandToBeginOfLine()Z

    goto :goto_2
.end method

.method private findSelectionBegin(IILcom/mobipocket/common/library/reader/DisplayableFrame;)I
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "frame"

    .prologue
    .line 2478
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 2483
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 2484
    .local v3, obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->isWord()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2478
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2488
    :cond_1
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getOwner()Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v4

    if-ne v4, p3, :cond_0

    .line 2492
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLineIndex()I

    move-result v1

    .line 2493
    .local v1, lineIndex:I
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineLayout:[Lcom/amazon/system/drawing/LineMetrics;

    aget-object v2, v4, v1

    .line 2495
    .local v2, metricsInfo:Lcom/amazon/system/drawing/LineMetrics;
    iget v4, v2, Lcom/amazon/system/drawing/LineMetrics;->y:I

    if-gt p2, v4, :cond_2

    move v4, v0

    .line 2508
    .end local v1           #lineIndex:I
    .end local v2           #metricsInfo:Lcom/amazon/system/drawing/LineMetrics;
    .end local v3           #obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    :goto_1
    return v4

    .line 2499
    .restart local v1       #lineIndex:I
    .restart local v2       #metricsInfo:Lcom/amazon/system/drawing/LineMetrics;
    .restart local v3       #obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    :cond_2
    iget v4, v2, Lcom/amazon/system/drawing/LineMetrics;->y:I

    if-lt p2, v4, :cond_0

    iget v4, v2, Lcom/amazon/system/drawing/LineMetrics;->y:I

    iget v5, v2, Lcom/amazon/system/drawing/LineMetrics;->height:I

    add-int/2addr v4, v5

    if-ge p2, v4, :cond_0

    .line 2501
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getRight()I

    move-result v4

    if-gt p1, v4, :cond_0

    move v4, v0

    .line 2503
    goto :goto_1

    .line 2508
    .end local v1           #lineIndex:I
    .end local v2           #metricsInfo:Lcom/amazon/system/drawing/LineMetrics;
    .end local v3           #obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    :cond_3
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private findSelectionEnd(IILcom/mobipocket/common/library/reader/DisplayableFrame;)I
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "frame"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2516
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    sub-int v1, v5, v7

    .line 2517
    .local v1, lastObject:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 2522
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 2523
    .local v4, obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->isWord()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2517
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2527
    :cond_1
    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getOwner()Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v5

    if-ne v5, p3, :cond_0

    .line 2531
    move v1, v0

    .line 2532
    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLineIndex()I

    move-result v2

    .line 2533
    .local v2, lineIndex:I
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineLayout:[Lcom/amazon/system/drawing/LineMetrics;

    aget-object v3, v5, v2

    .line 2536
    .local v3, metricsInfo:Lcom/amazon/system/drawing/LineMetrics;
    iget v5, v3, Lcom/amazon/system/drawing/LineMetrics;->y:I

    iget v6, v3, Lcom/amazon/system/drawing/LineMetrics;->height:I

    add-int/2addr v5, v6

    if-le v5, p2, :cond_0

    .line 2539
    iget v5, v3, Lcom/amazon/system/drawing/LineMetrics;->y:I

    if-lt p2, v5, :cond_3

    iget v5, v3, Lcom/amazon/system/drawing/LineMetrics;->y:I

    iget v6, v3, Lcom/amazon/system/drawing/LineMetrics;->height:I

    add-int/2addr v5, v6

    if-ge p2, v5, :cond_3

    .line 2541
    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLeft()I

    move-result v5

    if-le v5, p1, :cond_0

    .line 2544
    if-nez v0, :cond_2

    move v5, v8

    .line 2558
    .end local v2           #lineIndex:I
    .end local v3           #metricsInfo:Lcom/amazon/system/drawing/LineMetrics;
    .end local v4           #obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    :goto_1
    return v5

    .line 2547
    .restart local v2       #lineIndex:I
    .restart local v3       #metricsInfo:Lcom/amazon/system/drawing/LineMetrics;
    .restart local v4       #obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    :cond_2
    sub-int v5, v0, v7

    goto :goto_1

    .line 2551
    :cond_3
    if-nez v0, :cond_4

    move v5, v8

    .line 2552
    goto :goto_1

    .line 2554
    :cond_4
    sub-int v5, v0, v7

    goto :goto_1

    .end local v2           #lineIndex:I
    .end local v3           #metricsInfo:Lcom/amazon/system/drawing/LineMetrics;
    .end local v4           #obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    :cond_5
    move v5, v1

    .line 2558
    goto :goto_1
.end method

.method private getBeginWordForPosition(I)I
    .locals 2
    .parameter "cursorPosition"

    .prologue
    .line 1341
    move v0, p1

    .line 1343
    .local v0, beginWord:I
    :goto_0
    if-gez p1, :cond_1

    .line 1356
    :cond_0
    return v0

    .line 1346
    :cond_1
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->isWord(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1347
    move v0, p1

    .line 1353
    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method private getEndWordForPosition(I)I
    .locals 2
    .parameter "cursorPosition"

    .prologue
    .line 1368
    if-gez p1, :cond_0

    .line 1369
    const/4 v1, -0x1

    .line 1387
    :goto_0
    return v1

    .line 1371
    :cond_0
    move v0, p1

    .line 1373
    .local v0, endWord:I
    :goto_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    :cond_1
    move v1, v0

    .line 1387
    goto :goto_0

    .line 1377
    :cond_2
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->isWord(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1378
    move v0, p1

    .line 1384
    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method private getLineFromPosition(IZII)I
    .locals 3
    .parameter "position"
    .parameter "getBegin"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 2643
    add-int v2, p3, p4

    div-int/lit8 v1, v2, 0x2

    .line 2645
    .local v1, middle:I
    if-eqz p2, :cond_3

    .line 2647
    if-ne v1, p3, :cond_1

    .line 2649
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    invoke-virtual {v2, p4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;

    .line 2650
    .local v0, info:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;->getLineBeginFilePosition()I

    move-result v2

    if-lt p1, v2, :cond_0

    move v2, p4

    .line 2695
    :goto_0
    return v2

    :cond_0
    move v2, p3

    .line 2656
    goto :goto_0

    .line 2661
    .end local v0           #info:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;
    :cond_1
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;

    .line 2662
    .restart local v0       #info:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;->getLineBeginFilePosition()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 2664
    invoke-direct {p0, p1, p2, v1, p4}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getLineFromPosition(IZII)I

    move-result v2

    goto :goto_0

    .line 2668
    :cond_2
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getLineFromPosition(IZII)I

    move-result v2

    goto :goto_0

    .line 2674
    .end local v0           #info:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;
    :cond_3
    if-ne v1, p3, :cond_5

    .line 2676
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;

    .line 2677
    .restart local v0       #info:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;->getLineEndFilePosition()I

    move-result v2

    if-le p1, v2, :cond_4

    move v2, p4

    .line 2679
    goto :goto_0

    :cond_4
    move v2, p3

    .line 2683
    goto :goto_0

    .line 2688
    .end local v0           #info:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;
    :cond_5
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;

    .line 2689
    .restart local v0       #info:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;->getLineEndFilePosition()I

    move-result v2

    if-le p1, v2, :cond_6

    .line 2691
    invoke-direct {p0, p1, p2, v1, p4}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getLineFromPosition(IZII)I

    move-result v2

    goto :goto_0

    .line 2695
    :cond_6
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getLineFromPosition(IZII)I

    move-result v2

    goto :goto_0
.end method

.method private getNearestFrame(II)Lcom/mobipocket/common/library/reader/DisplayableFrame;
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2394
    const/4 v4, 0x0

    .line 2395
    .local v4, minFrame:Lcom/mobipocket/common/library/reader/DisplayableFrame;
    const v3, 0x7fffffff

    .line 2396
    .local v3, minDistance:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 2401
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 2402
    .local v5, obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getOwner()Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v1

    .line 2403
    .local v1, frame:Lcom/mobipocket/common/library/reader/DisplayableFrame;
    invoke-virtual {v5, p1, p2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->distance(II)I

    move-result v0

    .line 2404
    .local v0, distance:I
    if-ge v0, v3, :cond_0

    .line 2405
    move v3, v0

    .line 2406
    move-object v4, v1

    .line 2396
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2410
    .end local v0           #distance:I
    .end local v1           #frame:Lcom/mobipocket/common/library/reader/DisplayableFrame;
    .end local v5           #obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    :cond_1
    return-object v4
.end method

.method private getObjectOnLine(II)I
    .locals 5
    .parameter "lineIndex"
    .parameter "selectionX"

    .prologue
    .line 1781
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;

    .line 1782
    .local v1, info:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;->getObjectIndex()I

    move-result v0

    .line 1783
    .local v0, index:I
    move v3, v0

    .line 1785
    .local v3, validIndex:I
    :goto_0
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 1802
    :cond_0
    return v3

    .line 1788
    :cond_1
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 1789
    .local v2, obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLineIndex()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 1792
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLeft()I

    move-result v4

    if-gt v4, p2, :cond_0

    .line 1795
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->isWord()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1796
    move v3, v0

    .line 1799
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSelectionBeginIndex()I
    .locals 2

    .prologue
    .line 1586
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    if-ge v0, v1, :cond_0

    .line 1587
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    .line 1589
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    goto :goto_0
.end method

.method private getSelectionEndIndex()I
    .locals 2

    .prologue
    .line 1594
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    if-ge v0, v1, :cond_0

    .line 1595
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    .line 1597
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    goto :goto_0
.end method

.method private final initGlobalObjectList()V
    .locals 1

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-nez v0, :cond_1

    .line 1444
    :cond_0
    :goto_0
    return-void

    .line 1437
    :cond_1
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pObjectPlacementDirty:Z

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->renderedPageMetadata:Lcom/mobipocket/common/library/reader/RenderedPageMetadata;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->clearElements()V

    .line 1440
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->computeSelectableVisibleObjects()V

    .line 1441
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->computeLineLayout()V

    .line 1442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pObjectPlacementDirty:Z

    goto :goto_0
.end method

.method private isFirstSelectableObjectOnLine(I)Z
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2094
    invoke-direct {p0, p1, v5}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->moveCursorLeft(IZ)I

    move-result v1

    .line 2095
    .local v1, previousIndex:I
    if-ne v1, p1, :cond_0

    move v3, v6

    .line 2104
    :goto_0
    return v3

    .line 2098
    :cond_0
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 2099
    .local v0, obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 2101
    .local v2, previousObj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLineIndex()I

    move-result v3

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLineIndex()I

    move-result v4

    if-eq v3, v4, :cond_1

    move v3, v6

    .line 2102
    goto :goto_0

    :cond_1
    move v3, v5

    .line 2104
    goto :goto_0
.end method

.method private final isImage(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 943
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 945
    .local v0, element:Lcom/mobipocket/common/library/reader/FlowElement;
    instance-of v1, v0, Lcom/mobipocket/common/library/reader/ImageElement;

    return v1
.end method

.method private isLastSelectableObjectOnLine(I)Z
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2113
    invoke-direct {p0, p1, v5}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->moveCursorRight(IZ)I

    move-result v0

    .line 2114
    .local v0, nextIndex:I
    if-ne v0, p1, :cond_0

    move v3, v6

    .line 2123
    :goto_0
    return v3

    .line 2117
    :cond_0
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 2118
    .local v2, obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 2120
    .local v1, nextObj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLineIndex()I

    move-result v3

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLineIndex()I

    move-result v4

    if-eq v3, v4, :cond_1

    move v3, v6

    .line 2121
    goto :goto_0

    :cond_1
    move v3, v5

    .line 2123
    goto :goto_0
.end method

.method private final isTable(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 952
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 954
    .local v0, element:Lcom/mobipocket/common/library/reader/FlowElement;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isTableElement()Z

    move-result v1

    return v1
.end method

.method private final isWord(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 933
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 935
    .local v0, element:Lcom/mobipocket/common/library/reader/FlowElement;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isWordElement()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isTextElement()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    move v1, v2

    .line 936
    .local v1, ret:Z
    :goto_0
    return v1

    .line 935
    .end local v1           #ret:Z
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method private moveCursorDown(IZ)I
    .locals 6
    .parameter "cursorPosition"
    .parameter "canWrap"

    .prologue
    .line 1852
    move v0, p1

    .line 1854
    .local v0, begin:I
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    if-gez v0, :cond_1

    :cond_0
    move v4, p1

    .line 1884
    :goto_0
    return v4

    .line 1857
    :cond_1
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 1858
    .local v3, obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLineIndex()I

    move-result v1

    .line 1859
    .local v1, lineIndex:I
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-lt v1, v4, :cond_3

    .line 1860
    if-eqz p2, :cond_2

    .line 1861
    const/4 v1, 0x0

    .line 1871
    :goto_1
    iget v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectionX:I

    invoke-direct {p0, v1, v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getObjectOnLine(II)I

    move-result v0

    .line 1873
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    check-cast v3, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 1874
    .restart local v3       #obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->isWord()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1877
    invoke-direct {p0, v0, p2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->moveCursorRight(IZ)I

    move-result v2

    .line 1878
    .local v2, newBegin:I
    if-ne v2, v0, :cond_4

    move v4, p1

    .line 1879
    goto :goto_0

    .end local v2           #newBegin:I
    :cond_2
    move v4, p1

    .line 1864
    goto :goto_0

    .line 1868
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1881
    .restart local v2       #newBegin:I
    :cond_4
    move v0, v2

    .end local v2           #newBegin:I
    :cond_5
    move v4, v0

    .line 1884
    goto :goto_0
.end method

.method private moveCursorLeft(IZ)I
    .locals 4
    .parameter "cursorPosition"
    .parameter "canWrap"

    .prologue
    .line 1891
    move v0, p1

    .line 1895
    .local v0, begin:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 1896
    if-gez v0, :cond_1

    .line 1897
    if-eqz p2, :cond_2

    .line 1900
    const/4 p2, 0x0

    .line 1901
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .line 1908
    :cond_1
    if-gez v0, :cond_3

    move v2, p1

    .line 1915
    :goto_0
    return v2

    :cond_2
    move v2, p1

    .line 1904
    goto :goto_0

    .line 1913
    :cond_3
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 1914
    .local v1, obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->isWord()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 1915
    goto :goto_0
.end method

.method private moveCursorRight(IZ)I
    .locals 4
    .parameter "cursorPosition"
    .parameter "canWrap"

    .prologue
    .line 1924
    move v0, p1

    .line 1928
    .local v0, begin:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1929
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_1

    .line 1930
    if-eqz p2, :cond_2

    .line 1933
    const/4 p2, 0x0

    .line 1934
    const/4 v0, 0x0

    .line 1942
    :cond_1
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    move v2, p1

    .line 1949
    :goto_0
    return v2

    :cond_2
    move v2, p1

    .line 1937
    goto :goto_0

    .line 1947
    :cond_3
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 1948
    .local v1, obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->isWord()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 1949
    goto :goto_0
.end method

.method private moveCursorUp(IZ)I
    .locals 6
    .parameter "cursorPosition"
    .parameter "canWrap"

    .prologue
    .line 1811
    move v0, p1

    .line 1813
    .local v0, begin:I
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    if-gez v0, :cond_1

    :cond_0
    move v4, p1

    .line 1843
    :goto_0
    return v4

    .line 1816
    :cond_1
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 1817
    .local v3, obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLineIndex()I

    move-result v1

    .line 1818
    .local v1, lineIndex:I
    if-nez v1, :cond_3

    .line 1819
    if-eqz p2, :cond_2

    .line 1820
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .line 1830
    :goto_1
    iget v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectionX:I

    invoke-direct {p0, v1, v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getObjectOnLine(II)I

    move-result v0

    .line 1832
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    check-cast v3, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 1833
    .restart local v3       #obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->isWord()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1836
    invoke-direct {p0, v0, p2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->moveCursorLeft(IZ)I

    move-result v2

    .line 1837
    .local v2, newBegin:I
    if-ne v2, v0, :cond_4

    move v4, p1

    .line 1838
    goto :goto_0

    .end local v2           #newBegin:I
    :cond_2
    move v4, p1

    .line 1823
    goto :goto_0

    .line 1827
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1840
    .restart local v2       #newBegin:I
    :cond_4
    move v0, v2

    .end local v2           #newBegin:I
    :cond_5
    move v4, v0

    .line 1843
    goto :goto_0
.end method

.method private nextValidObject(IZ)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1401
    .line 1402
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getEndWordForPosition(I)I

    move-result v0

    move v1, v0

    move v0, p2

    .line 1406
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1407
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1408
    if-eqz v0, :cond_3

    move v0, v3

    move v1, v3

    .line 1417
    :cond_1
    invoke-direct {p0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->isWord(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->isTable(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->isImage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1418
    :cond_2
    invoke-direct {p0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getBeginWordForPosition(I)I

    move-result v0

    .line 1423
    :goto_0
    return v0

    :cond_3
    move v0, p1

    .line 1413
    goto :goto_0
.end method

.method private selectDown()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1972
    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    invoke-direct {p0, v1, v2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->moveCursorDown(IZ)I

    move-result v0

    .line 1973
    .local v0, nextPosition:I
    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    if-ne v0, v1, :cond_0

    .line 1974
    const/4 v1, 0x0

    .line 1979
    :goto_0
    return v1

    .line 1976
    :cond_0
    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    .line 1977
    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    move v1, v2

    .line 1979
    goto :goto_0
.end method

.method private selectLeft()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1986
    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    invoke-direct {p0, v1, v2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->moveCursorLeft(IZ)I

    move-result v0

    .line 1987
    .local v0, nextPosition:I
    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    if-ne v0, v1, :cond_0

    .line 1988
    const/4 v1, 0x0

    .line 1994
    :goto_0
    return v1

    .line 1990
    :cond_0
    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    .line 1991
    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    .line 1992
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->validateSelectionX(I)V

    move v1, v2

    .line 1994
    goto :goto_0
.end method

.method private selectRight()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2001
    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    invoke-direct {p0, v1, v2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->moveCursorRight(IZ)I

    move-result v0

    .line 2002
    .local v0, nextPosition:I
    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    if-ne v0, v1, :cond_0

    .line 2003
    const/4 v1, 0x0

    .line 2009
    :goto_0
    return v1

    .line 2005
    :cond_0
    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    .line 2006
    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    .line 2007
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->validateSelectionX(I)V

    move v1, v2

    .line 2009
    goto :goto_0
.end method

.method private selectTextBetweenFrame(IIIILcom/mobipocket/common/library/reader/DisplayableFrame;Lcom/mobipocket/common/library/reader/DisplayableFrame;)Z
    .locals 6
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "frame1"
    .parameter "frame2"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 2435
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v5

    .line 2471
    :goto_0
    return v2

    .line 2439
    :cond_0
    invoke-direct {p0, p1, p2, p5}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->findSelectionBegin(IILcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v0

    .line 2440
    .local v0, begin:I
    invoke-direct {p0, p3, p4, p6}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->findSelectionEnd(IILcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v1

    .line 2442
    .local v1, end:I
    if-ne v0, v4, :cond_1

    .line 2443
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int v0, v2, v3

    .line 2446
    :cond_1
    if-ne v1, v4, :cond_2

    .line 2447
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int v1, v2, v3

    .line 2450
    :cond_2
    if-le v0, v1, :cond_4

    .line 2451
    invoke-direct {p0, p3, p4, p6}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->findSelectionBegin(IILcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v0

    .line 2452
    invoke-direct {p0, p1, p2, p5}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->findSelectionEnd(IILcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v1

    .line 2454
    if-ne v0, v4, :cond_3

    .line 2455
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int v0, v2, v3

    .line 2458
    :cond_3
    if-ne v1, v4, :cond_4

    .line 2459
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int v1, v2, v3

    .line 2463
    :cond_4
    if-ne v0, v4, :cond_5

    move v2, v5

    .line 2464
    goto :goto_0

    .line 2466
    :cond_5
    invoke-virtual {p0, v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->setSelectionEnabled(Z)V

    .line 2467
    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    .line 2468
    iput v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    .line 2469
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->updatePageObjectIndexSelection()V

    move v2, v3

    .line 2471
    goto :goto_0
.end method

.method private selectUp()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1958
    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    invoke-direct {p0, v1, v2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->moveCursorUp(IZ)I

    move-result v0

    .line 1959
    .local v0, nextPosition:I
    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    if-ne v0, v1, :cond_0

    .line 1960
    const/4 v1, 0x0

    .line 1965
    :goto_0
    return v1

    .line 1962
    :cond_0
    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    .line 1963
    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    move v1, v2

    .line 1965
    goto :goto_0
.end method

.method private setPageObjectIndexSelectionBegin(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1612
    iput p1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLocalWordSelectionBegin:I

    .line 1613
    return-void
.end method

.method private setPageObjectIndexSelectionEnd(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1617
    iput p1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLocalWordSelectionEnd:I

    .line 1618
    return-void
.end method

.method private validateSelectionX(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 1770
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 1771
    .local v0, obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectionX:I

    .line 1772
    return-void
.end method


# virtual methods
.method public declared-synchronized addDecoration(Lcom/mobipocket/common/library/reader/Range;)V
    .locals 5
    .parameter "deco"

    .prologue
    .line 2624
    monitor-enter p0

    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 2627
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 2629
    .local v1, element:Lcom/mobipocket/common/library/reader/FlowElement;
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->isTableElement()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2632
    move-object v0, v1

    check-cast v0, Lcom/mobipocket/common/library/reader/TableElement;

    move-object v3, v0

    .line 2633
    .local v3, tableElt:Lcom/mobipocket/common/library/reader/TableElement;
    invoke-virtual {v3, p1}, Lcom/mobipocket/common/library/reader/TableElement;->setTemporaryDecoration(Lcom/mobipocket/common/library/reader/Range;)V

    .line 2624
    .end local v3           #tableElt:Lcom/mobipocket/common/library/reader/TableElement;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2636
    .end local v1           #element:Lcom/mobipocket/common/library/reader/FlowElement;
    :cond_1
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/DisplayableFrame;->temporaryDecorations:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2637
    monitor-exit p0

    return-void

    .line 2624
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public computeSelectableObjects(IIII)V
    .locals 19
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1153
    const/4 v6, 0x0

    .line 1156
    const/4 v7, 0x0

    .line 1158
    const/4 v8, 0x1

    .line 1160
    const/4 v9, 0x0

    .line 1164
    const/4 v10, 0x0

    .line 1174
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    .line 1175
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object v5, v0

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 1180
    const v5, 0x7fffffff

    move v11, v5

    .line 1188
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object v5, v0

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lez v5, :cond_10

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object v5, v0

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/FlowElement;->getFirstSubElementBookPosition()I

    move-result v5

    move v13, v5

    move v9, v7

    move v5, v11

    move v7, v8

    move v8, v6

    move v6, v10

    .line 1194
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object v10, v0

    iget-object v10, v10, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v10, v10, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v8, v10, :cond_6

    .line 1199
    if-lt v8, v5, :cond_f

    .line 1202
    if-nez v7, :cond_0

    .line 1204
    const/4 v7, 0x1

    .line 1205
    add-int/lit8 v9, v9, 0x1

    .line 1209
    :cond_0
    :goto_2
    if-lt v8, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object v10, v0

    iget-object v10, v10, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v10, v10, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ge v6, v10, :cond_2

    .line 1211
    add-int/lit8 v6, v6, 0x1

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object v5, v0

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mobipocket/common/library/reader/LineInformation;

    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/LineInformation;->getNextLineFirstElementIndex()I

    move-result v5

    goto :goto_2

    .line 1184
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object v5, v0

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mobipocket/common/library/reader/LineInformation;

    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/LineInformation;->getNextLineFirstElementIndex()I

    move-result v5

    move v11, v5

    goto :goto_0

    .line 1214
    :cond_2
    if-lt v8, v5, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object v10, v0

    iget-object v10, v10, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v10, v10, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ne v6, v10, :cond_f

    .line 1216
    const v5, 0x7fffffff

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v9

    .line 1221
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object v5, v0

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v5, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/FlowElement;->isSelectable()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1229
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->isWord(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1230
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getEndWordForPosition(I)I

    move-result v5

    move v9, v5

    .line 1237
    :goto_4
    if-lez v8, :cond_4

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object v5, v0

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    const/4 v6, 0x1

    sub-int v6, v8, v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 1239
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/FlowElement;->getFirstSubElementBookPosition()I

    move-result v5

    move v11, v5

    .line 1244
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object v5, v0

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v5, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 1245
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/FlowElement;->getLastSubElementBookPosition()I

    move-result v12

    .line 1248
    new-instance v5, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object v7, v0

    add-int v10, v17, p2

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v12}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;-><init>(Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;Lcom/mobipocket/common/library/reader/DisplayableFrame;IIIII)V

    .line 1249
    move-object v0, v5

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->computePlacement(II)V

    .line 1250
    if-eqz v16, :cond_e

    .line 1253
    const/4 v6, 0x1

    sub-int v6, v14, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object v7, v0

    iget-object v7, v7, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v7, v7, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v6, v7, :cond_d

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object v6, v0

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    move v7, v6

    .line 1257
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object v6, v0

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    const/4 v9, 0x1

    sub-int v9, v7, v9

    invoke-virtual {v6, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/FlowElement;->getLastSubElementBookPosition()I

    move-result v6

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    move-object v9, v0

    new-instance v10, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    move-object v11, v0

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    add-int v11, v11, p1

    move-object v0, v10

    move-object/from16 v1, p0

    move v2, v11

    move v3, v13

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;-><init>(Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;III)V

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1261
    const/4 v9, 0x1

    sub-int v9, v7, v9

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object v10, v0

    iget-object v10, v10, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v10, v10, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v9, v10, :cond_9

    .line 1264
    :goto_7
    if-ltz v9, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object v6, v0

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v6, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/FlowElement;->isSelectable()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1266
    add-int/lit8 v6, v9, -0x1

    move v9, v6

    goto :goto_7

    :cond_3
    move v9, v8

    .line 1233
    goto/16 :goto_4

    .line 1242
    :cond_4
    const/4 v5, 0x0

    move v11, v5

    goto/16 :goto_5

    .line 1268
    :cond_5
    if-gez v9, :cond_8

    .line 1270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object v6, v0

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object v6, v0

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/FlowElement;->getFirstSubElementBookPosition()I

    move-result v6

    move/from16 v18, v7

    move v7, v6

    move/from16 v6, v18

    .line 1290
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    move-object v9, v0

    invoke-virtual {v9, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1291
    const/4 v5, 0x0

    move/from16 v9, v17

    move/from16 v18, v7

    move v7, v5

    move v5, v6

    move/from16 v6, v18

    .line 1313
    :goto_9
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v10

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->nextValidObject(IZ)I

    move-result v10

    .line 1314
    if-ne v10, v8, :cond_b

    .line 1320
    :cond_6
    return-void

    .line 1276
    :cond_7
    const/4 v6, 0x0

    move/from16 v18, v7

    move v7, v6

    move/from16 v6, v18

    goto :goto_8

    .line 1281
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object v6, v0

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v6, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/FlowElement;->getFirstSubElementBookPosition()I

    move-result v6

    move/from16 v18, v7

    move v7, v6

    move/from16 v6, v18

    goto :goto_8

    .line 1287
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object v9, v0

    iget-object v9, v9, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v9, v9, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move/from16 v18, v7

    move v7, v6

    move/from16 v6, v18

    goto :goto_8

    .line 1293
    :cond_a
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->isTable(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object v5, v0

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v5, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mobipocket/common/library/reader/TableElement;

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    move-object v0, v5

    move v1, v6

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/mobipocket/common/library/reader/TableElement;->computeSelectableObjects(II)V

    .line 1303
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/TableElement;->getSelectableObjects()Ljava/util/Vector;

    move-result-object v6

    .line 1304
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/TableElement;->getLineOffsetList()Ljava/util/Vector;

    move-result-object v7

    .line 1305
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/TableElement;->getActiveAreaList()Ljava/util/Vector;

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    move-object v5, v0

    invoke-static {v5, v6}, Lcom/mobipocket/common/util/VectorUtils;->addAll(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    move-object v5, v0

    invoke-static {v5, v7}, Lcom/mobipocket/common/util/VectorUtils;->addAll(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 1309
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v5

    add-int v5, v5, v17

    move v6, v13

    move/from16 v7, v16

    move v9, v5

    move v5, v14

    goto/16 :goto_9

    :cond_b
    move v13, v6

    move v8, v10

    move v6, v15

    .line 1319
    goto/16 :goto_1

    :cond_c
    move v5, v14

    move v6, v13

    move/from16 v7, v16

    move/from16 v9, v17

    goto/16 :goto_9

    :cond_d
    move v7, v14

    goto/16 :goto_6

    :cond_e
    move v6, v14

    move v7, v13

    goto/16 :goto_8

    :cond_f
    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v9

    goto/16 :goto_3

    :cond_10
    move v5, v11

    move v13, v9

    move v9, v7

    move v7, v8

    move v8, v6

    move v6, v10

    goto/16 :goto_1
.end method

.method public computeSelectableVisibleObjects()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1016
    invoke-virtual {p0, v9, v9, v9, v9}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->computeSelectableObjects(IIII)V

    .line 1023
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1024
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    move v1, v9

    move v4, v9

    .line 1029
    :goto_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    .line 1032
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 1034
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget v6, v6, Lcom/mobipocket/common/library/reader/DisplayableFrame;->marginY:I

    if-lt v5, v6, :cond_0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget v6, v6, Lcom/mobipocket/common/library/reader/LayoutedFrame;->height:I

    iget-object v7, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget v7, v7, Lcom/mobipocket/common/library/reader/DisplayableFrame;->marginY:I

    sub-int/2addr v6, v7

    if-lt v5, v6, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getBottom()I

    move-result v5

    iget-object v6, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget v6, v6, Lcom/mobipocket/common/library/reader/DisplayableFrame;->marginY:I

    if-lt v5, v6, :cond_4

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getBottom()I

    move-result v5

    iget-object v6, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget v6, v6, Lcom/mobipocket/common/library/reader/LayoutedFrame;->height:I

    iget-object v7, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget v7, v7, Lcom/mobipocket/common/library/reader/DisplayableFrame;->marginY:I

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_4

    :cond_1
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget v6, v6, Lcom/mobipocket/common/library/reader/DisplayableFrame;->marginX:I

    if-lt v5, v6, :cond_2

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget v6, v6, Lcom/mobipocket/common/library/reader/LayoutedFrame;->width:I

    iget-object v7, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget v7, v7, Lcom/mobipocket/common/library/reader/DisplayableFrame;->marginX:I

    sub-int/2addr v6, v7

    if-lt v5, v6, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget v6, v6, Lcom/mobipocket/common/library/reader/DisplayableFrame;->marginX:I

    if-lt v5, v6, :cond_4

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget v6, v6, Lcom/mobipocket/common/library/reader/LayoutedFrame;->width:I

    iget-object v7, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget v7, v7, Lcom/mobipocket/common/library/reader/DisplayableFrame;->marginX:I

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_4

    .line 1039
    :cond_3
    invoke-static {v0, v10}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->access$502(Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;Z)Z

    move v0, v1

    .line 1045
    :goto_1
    new-instance v1, Ljava/lang/Integer;

    add-int v5, v4, v0

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1029
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto/16 :goto_0

    .line 1042
    :cond_4
    invoke-static {v0, v9}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->access$502(Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;Z)Z

    .line 1043
    add-int/lit8 v0, v1, -0x1

    goto :goto_1

    :cond_5
    move v4, v9

    move v5, v9

    move v6, v9

    .line 1053
    :goto_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v6, v0, :cond_9

    .line 1060
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;

    .line 1062
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;->getObjectIndex()I

    move-result v7

    .line 1063
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v10

    if-ge v6, v1, :cond_6

    .line 1067
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;

    .line 1068
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;->getObjectIndex()I

    move-result v1

    sub-int/2addr v1, v10

    move v8, v1

    .line 1077
    :goto_3
    if-gt v7, v8, :cond_e

    .line 1080
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 1081
    invoke-static {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->access$500(Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v7

    .line 1087
    :goto_4
    if-ne v1, v11, :cond_8

    .line 1089
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1090
    add-int/lit8 v0, v5, -0x1

    move v1, v6

    .line 1103
    :goto_5
    new-instance v5, Ljava/lang/Integer;

    add-int v6, v4, v0

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1104
    add-int/lit8 v4, v4, 0x1

    move v5, v0

    move v6, v1

    .line 1105
    goto :goto_2

    .line 1072
    :cond_6
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v10

    move v8, v1

    goto :goto_3

    .line 1077
    :cond_7
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_3

    .line 1096
    :cond_8
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1097
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;->access$602(Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;I)I

    .line 1098
    add-int/lit8 v0, v6, 0x1

    move v1, v0

    move v0, v5

    goto :goto_5

    :cond_9
    move v2, v9

    .line 1109
    :goto_6
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_b

    .line 1112
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 1113
    invoke-static {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->access$500(Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1114
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->removeElementAt(I)V

    move v0, v2

    :goto_7
    move v2, v0

    .line 1124
    goto :goto_6

    .line 1120
    :cond_a
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLineIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1121
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->access$702(Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;I)I

    .line 1122
    add-int/lit8 v0, v2, 0x1

    goto :goto_7

    .line 1129
    :cond_b
    iput-boolean v9, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pHasTextObject:Z

    move v1, v9

    .line 1131
    :goto_8
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    .line 1134
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 1135
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->isWord()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1136
    iput-boolean v10, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pHasTextObject:Z

    .line 1131
    :cond_c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 1141
    :cond_d
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->renderedPageMetadata:Lcom/mobipocket/common/library/reader/RenderedPageMetadata;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->setSelectableObjectList(Ljava/util/Vector;)V

    .line 1142
    return-void

    :cond_e
    move v1, v11

    goto/16 :goto_4
.end method

.method public enterWordSelectionMode()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1455
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->initGlobalObjectList()V

    .line 1457
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pHasTextObject:Z

    if-nez v0, :cond_0

    move v0, v2

    .line 1480
    :goto_0
    return v0

    .line 1461
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v0, v2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->setSelectionEnabled(Z)V

    .line 1463
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1466
    iput v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    .line 1468
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 1469
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->isWord()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1470
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->selectRight()Z

    .line 1476
    :cond_1
    :goto_1
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    .line 1477
    invoke-virtual {p0, v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->setSelectionEnabled(Z)V

    .line 1478
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->updatePageObjectIndexSelection()V

    move v0, v3

    .line 1480
    goto :goto_0

    .line 1473
    :cond_2
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->validateSelectionX(I)V

    goto :goto_1
.end method

.method public expandWordSelection(I)Z
    .locals 2
    .parameter "dir"

    .prologue
    .line 2319
    packed-switch p1, :pswitch_data_0

    .line 2331
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->expandWordSelectionRight()Z

    move-result v0

    .line 2335
    .local v0, result:Z
    :goto_0
    if-nez v0, :cond_0

    .line 2336
    const/4 v1, 0x0

    .line 2340
    :goto_1
    return v1

    .line 2321
    .end local v0           #result:Z
    :pswitch_0
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->expandWordSelectionUp()Z

    move-result v0

    .line 2322
    .restart local v0       #result:Z
    goto :goto_0

    .line 2324
    .end local v0           #result:Z
    :pswitch_1
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->expandWordSelectionLeft()Z

    move-result v0

    .line 2325
    .restart local v0       #result:Z
    goto :goto_0

    .line 2327
    .end local v0           #result:Z
    :pswitch_2
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->expandWordSelectionDown()Z

    move-result v0

    .line 2328
    .restart local v0       #result:Z
    goto :goto_0

    .line 2338
    :cond_0
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->updatePageObjectIndexSelection()V

    .line 2340
    const/4 v1, 0x1

    goto :goto_1

    .line 2319
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCurrentObjectX()I
    .locals 3

    .prologue
    .line 2719
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    iget v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 2720
    .local v0, obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLeft()I

    move-result v1

    return v1
.end method

.method public getCurrentObjectY()I
    .locals 3

    .prologue
    .line 2727
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    iget v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 2728
    .local v0, obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLeft()I

    move-result v1

    return v1
.end method

.method public getLineFromPosition(IZ)I
    .locals 3
    .parameter "position"
    .parameter "getBegin"

    .prologue
    .line 2712
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getLineFromPosition(IZII)I

    move-result v0

    return v0
.end method

.method public getLineOffsetList()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    return-object v0
.end method

.method public getLinePositions()[Lcom/amazon/system/drawing/LineMetrics;
    .locals 1

    .prologue
    .line 2384
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->initGlobalObjectList()V

    .line 2385
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineLayout:[Lcom/amazon/system/drawing/LineMetrics;

    return-object v0
.end method

.method public getPageFirstWords()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2733
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->initGlobalObjectList()V

    .line 2734
    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/16 v2, 0x28

    invoke-virtual {p0, v0, v1, v2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectableWordsBetween(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageObjectIndexSelectionBegin()I
    .locals 1

    .prologue
    .line 1602
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLocalWordSelectionBegin:I

    return v0
.end method

.method public getPageObjectIndexSelectionEnd()I
    .locals 1

    .prologue
    .line 1607
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLocalWordSelectionEnd:I

    return v0
.end method

.method public getRenderedPageMetadata()Lcom/mobipocket/common/library/reader/IRenderedPageMetadata;
    .locals 1

    .prologue
    .line 1530
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->initGlobalObjectList()V

    .line 1531
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->renderedPageMetadata:Lcom/mobipocket/common/library/reader/RenderedPageMetadata;

    return-object v0
.end method

.method public getSelectableObjects()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    return-object v0
.end method

.method public getSelectableWordsBetween(III)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1686
    const/16 v0, 0x20

    .line 1689
    const/16 v1, 0x32

    if-le p3, v1, :cond_c

    .line 1691
    const/16 v1, 0x32

    .line 1694
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1696
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    if-nez v3, :cond_0

    .line 1698
    const-string v0, ""

    .line 1749
    :goto_1
    return-object v0

    .line 1702
    :cond_0
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    if-gez p2, :cond_2

    .line 1705
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSelectedWords : invalid callBegin,end/max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1707
    const-string v0, ""

    goto :goto_1

    .line 1710
    :cond_2
    if-gez p1, :cond_b

    .line 1711
    const/4 v3, 0x0

    .line 1713
    :goto_2
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt p2, v4, :cond_a

    .line 1714
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 1716
    :goto_3
    const/4 v5, 0x0

    .line 1717
    const/4 v6, 0x0

    move v9, v6

    move v6, v5

    move v5, v9

    .line 1718
    :goto_4
    if-gt v3, v4, :cond_7

    if-ge v6, v1, :cond_7

    .line 1720
    iget-object v7, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 1721
    invoke-static {p1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->access$800(Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;)I

    move-result v7

    move v9, v7

    move v7, v6

    move v6, v5

    move v5, v9

    :goto_5
    invoke-static {p1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->access$900(Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;)I

    move-result v8

    if-gt v5, v8, :cond_6

    if-ge v7, v1, :cond_6

    .line 1723
    invoke-static {p1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->access$1000(Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;)Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v8

    .line 1724
    iget-object v8, v8, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v8, v8, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 1726
    invoke-virtual {p2}, Lcom/mobipocket/common/library/reader/FlowElement;->isWordElement()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p2}, Lcom/mobipocket/common/library/reader/FlowElement;->isTextElement()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1728
    :cond_3
    const/4 v6, 0x0

    .line 1729
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1721
    :cond_4
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1731
    :cond_5
    invoke-virtual {p2}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1733
    const/4 v6, 0x1

    .line 1734
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1735
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 1738
    :cond_6
    if-nez v6, :cond_9

    .line 1740
    const/4 v5, 0x1

    .line 1741
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1743
    :goto_7
    add-int/lit8 v6, v7, 0x1

    .line 1718
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1745
    :cond_7
    const/16 v0, 0x32

    if-lt v6, v0, :cond_8

    .line 1747
    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1749
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    move v5, v6

    goto :goto_7

    :cond_a
    move v4, p2

    goto :goto_3

    :cond_b
    move v3, p1

    goto/16 :goto_2

    :cond_c
    move v1, p3

    goto/16 :goto_0
.end method

.method public getSelectedWords()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1758
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectionBeginIndex()I

    move-result v0

    .line 1759
    .local v0, begin:I
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectionEndIndex()I

    move-result v1

    .line 1761
    .local v1, end:I
    const/16 v3, 0x32

    invoke-virtual {p0, v0, v1, v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectableWordsBetween(III)Ljava/lang/String;

    move-result-object v2

    .line 1763
    .local v2, value:Ljava/lang/String;
    return-object v2
.end method

.method public getSelectionBeginPosition()I
    .locals 3

    .prologue
    .line 2353
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectionBeginIndex()I

    move-result v0

    .line 2355
    .local v0, index:I
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    if-eqz v2, :cond_0

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 2356
    :cond_0
    const/4 v2, -0x1

    .line 2359
    :goto_0
    return v2

    .line 2358
    :cond_1
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 2359
    .local v1, obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getBeginOffset()I

    move-result v2

    goto :goto_0
.end method

.method public getSelectionColor()I
    .locals 1

    .prologue
    .line 1525
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pWordSelectionColor:I

    return v0
.end method

.method public getSelectionEndPosition()I
    .locals 3

    .prologue
    .line 2367
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectionEndIndex()I

    move-result v0

    .line 2369
    .local v0, index:I
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    if-eqz v2, :cond_0

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 2370
    :cond_0
    const/4 v2, -0x1

    .line 2373
    :goto_0
    return v2

    .line 2372
    :cond_1
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 2373
    .local v1, obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getEndOffset()I

    move-result v2

    goto :goto_0
.end method

.method public getSelectionFrameList()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 2345
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectionFrameList:Ljava/util/Vector;

    return-object v0
.end method

.method public getWordsBetween(Ljava/util/Vector;III)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x32

    .line 1635
    const/16 v0, 0x20

    .line 1638
    if-le p4, v6, :cond_7

    move v1, v6

    .line 1643
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1644
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge p2, v3, :cond_0

    if-ltz p3, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt p3, v3, :cond_1

    .line 1647
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSelectedWords : invalid callBegin,end/max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1649
    const-string v0, ""

    .line 1672
    :goto_1
    return-object v0

    .line 1652
    :cond_1
    const/4 v3, 0x0

    move v4, v3

    move v3, p2

    .line 1653
    :goto_2
    if-gt v3, p3, :cond_5

    if-ge v4, v1, :cond_5

    .line 1657
    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 1658
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/FlowElement;->isWordElement()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/FlowElement;->isTextElement()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1660
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1653
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1662
    :cond_4
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1664
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1665
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1668
    :cond_5
    if-lt v4, v6, :cond_6

    .line 1670
    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1672
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    move v1, p4

    goto :goto_0
.end method

.method public isFullLine(III)Z
    .locals 9
    .parameter "first"
    .parameter "last"
    .parameter "lineNumber"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2058
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    invoke-virtual {v5, p3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;

    .line 2059
    .local v4, info:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;
    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;->getObjectIndex()I

    move-result v1

    .line 2060
    .local v1, beginLine:I
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    sub-int v3, v5, v7

    .line 2061
    .local v3, endLine:I
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    sub-int/2addr v5, v7

    if-ge p3, v5, :cond_0

    .line 2062
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    add-int/lit8 v6, p3, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #info:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;
    check-cast v4, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;

    .line 2063
    .restart local v4       #info:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;
    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;->getObjectIndex()I

    move-result v5

    sub-int v3, v5, v7

    .line 2066
    :cond_0
    if-le p1, v1, :cond_1

    .line 2067
    move v0, p1

    .line 2073
    .local v0, begin:I
    :goto_0
    if-le p2, v3, :cond_2

    .line 2074
    move v2, v3

    .line 2080
    .local v2, end:I
    :goto_1
    if-le v0, v2, :cond_3

    move v5, v8

    .line 2085
    :goto_2
    return v5

    .line 2070
    .end local v0           #begin:I
    .end local v2           #end:I
    :cond_1
    move v0, v1

    .restart local v0       #begin:I
    goto :goto_0

    .line 2077
    :cond_2
    move v2, p2

    .restart local v2       #end:I
    goto :goto_1

    .line 2085
    :cond_3
    if-ne v0, v1, :cond_4

    if-ne v2, v3, :cond_4

    move v5, v7

    goto :goto_2

    :cond_4
    move v5, v8

    goto :goto_2
.end method

.method public isSelectionEnabled()Z
    .locals 1

    .prologue
    .line 1428
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectionEnabled:Z

    return v0
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1497
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v2, :cond_1

    .line 1498
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1499
    invoke-direct {p0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->isTable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1502
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/TableElement;

    .line 1503
    .local v0, elt:Lcom/mobipocket/common/library/reader/TableElement;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableElement;->reset()V

    .line 1498
    .end local v0           #elt:Lcom/mobipocket/common/library/reader/TableElement;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1507
    .end local v1           #i:I
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pObjectPlacementDirty:Z

    .line 1508
    iput-object v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    .line 1509
    iput-object v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    .line 1510
    iput-object v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineLayout:[Lcom/amazon/system/drawing/LineMetrics;

    .line 1511
    iput-object v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectionFrameList:Ljava/util/Vector;

    .line 1512
    iput v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    .line 1513
    iput v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    .line 1514
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->setSelectionEnabled(Z)V

    .line 1515
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->renderedPageMetadata:Lcom/mobipocket/common/library/reader/RenderedPageMetadata;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->clearElements()V

    .line 1516
    return-void
.end method

.method public selectLine(I)Z
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 2575
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 2580
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pLineList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;

    .line 2581
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;->getObjectIndex()I

    move-result v0

    move v1, v4

    move v2, v4

    move v3, v0

    .line 2585
    :goto_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v3, v0, :cond_2

    .line 2602
    :cond_1
    if-ne v2, v4, :cond_3

    .line 2603
    invoke-virtual {p0, v5}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->setSelectionEnabled(Z)V

    move v0, v5

    .line 2612
    :goto_1
    return v0

    .line 2589
    :cond_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 2591
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLineIndex()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 2595
    if-ne v2, v4, :cond_4

    move v0, v3

    .line 2599
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v2, v0

    move v7, v3

    move v3, v1

    move v1, v7

    .line 2600
    goto :goto_0

    .line 2607
    :cond_3
    invoke-virtual {p0, v6}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->setSelectionEnabled(Z)V

    .line 2608
    iput v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionBegin:I

    .line 2609
    iput v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pGlobalWordSelectionEnd:I

    .line 2611
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->updatePageObjectIndexSelection()V

    move v0, v6

    .line 2612
    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public selectTextBetween(IIII)Z
    .locals 7
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    const/4 v1, 0x0

    .line 2418
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->setSelectionEnabled(Z)V

    .line 2419
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->initGlobalObjectList()V

    .line 2421
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 2427
    :goto_0
    return v0

    .line 2424
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getNearestFrame(II)Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v5

    .line 2425
    .local v5, frame1:Lcom/mobipocket/common/library/reader/DisplayableFrame;
    invoke-direct {p0, p3, p4}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getNearestFrame(II)Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v6

    .local v6, frame2:Lcom/mobipocket/common/library/reader/DisplayableFrame;
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 2427
    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->selectTextBetweenFrame(IIIILcom/mobipocket/common/library/reader/DisplayableFrame;Lcom/mobipocket/common/library/reader/DisplayableFrame;)Z

    move-result v0

    goto :goto_0
.end method

.method public selectWord(I)Z
    .locals 2
    .parameter "dir"

    .prologue
    .line 2026
    packed-switch p1, :pswitch_data_0

    .line 2038
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->selectRight()Z

    move-result v0

    .line 2042
    .local v0, result:Z
    :goto_0
    if-nez v0, :cond_0

    .line 2043
    const/4 v1, 0x0

    .line 2047
    :goto_1
    return v1

    .line 2028
    .end local v0           #result:Z
    :pswitch_0
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->selectUp()Z

    move-result v0

    .line 2029
    .restart local v0       #result:Z
    goto :goto_0

    .line 2031
    .end local v0           #result:Z
    :pswitch_1
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->selectLeft()Z

    move-result v0

    .line 2032
    .restart local v0       #result:Z
    goto :goto_0

    .line 2034
    .end local v0           #result:Z
    :pswitch_2
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->selectDown()Z

    move-result v0

    .line 2035
    .restart local v0       #result:Z
    goto :goto_0

    .line 2045
    :cond_0
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->updatePageObjectIndexSelection()V

    .line 2047
    const/4 v1, 0x1

    goto :goto_1

    .line 2026
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setObjectPlacementAsDirty()V
    .locals 1

    .prologue
    .line 1334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pObjectPlacementDirty:Z

    .line 1335
    return-void
.end method

.method public setSelectionColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 1520
    iput p1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pWordSelectionColor:I

    .line 1521
    return-void
.end method

.method public setSelectionEnabled(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1485
    iput-boolean p1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectionEnabled:Z

    .line 1487
    if-nez p1, :cond_0

    .line 1489
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->updatePageObjectIndexSelection()V

    .line 1491
    :cond_0
    return-void
.end method

.method public updatePageObjectIndexSelection()V
    .locals 12

    .prologue
    .line 1543
    iget-object v7, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    if-nez v7, :cond_1

    .line 1582
    :cond_0
    :goto_0
    return-void

    .line 1546
    :cond_1
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    iput-object v7, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectionFrameList:Ljava/util/Vector;

    .line 1548
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->isSelectionEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1553
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectionBeginIndex()I

    move-result v3

    .line 1554
    .local v3, globalBegin:I
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectionEndIndex()I

    move-result v4

    .line 1556
    .local v4, globalEnd:I
    const/4 v1, 0x0

    .line 1557
    .local v1, currentOwner:Lcom/mobipocket/common/library/reader/DisplayableFrame;
    const/4 v0, -0x1

    .line 1558
    .local v0, begin:I
    const/4 v2, -0x1

    .line 1559
    .local v2, end:I
    move v5, v3

    .local v5, i:I
    :goto_1
    if-gt v5, v4, :cond_4

    .line 1562
    iget-object v7, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectableObjectList:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    .line 1563
    .local v6, obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getOwner()Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v7

    if-eq v7, v1, :cond_3

    .line 1564
    if-eqz v1, :cond_2

    .line 1565
    iget-object v7, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-direct {v7, v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->setPageObjectIndexSelectionBegin(I)V

    .line 1566
    iget-object v7, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-direct {v7, v2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->setPageObjectIndexSelectionEnd(I)V

    .line 1570
    :cond_2
    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getOwner()Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v1

    .line 1571
    iget-object v7, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->pSelectionFrameList:Ljava/util/Vector;

    new-instance v8, Lcom/mobipocket/common/library/reader/DisplayableFrame$PositionnedFrame;

    iget-object v9, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getOwnerDrawOffsetX()I

    move-result v10

    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getOwnerDrawOffsetY()I

    move-result v11

    invoke-direct {v8, v9, v1, v10, v11}, Lcom/mobipocket/common/library/reader/DisplayableFrame$PositionnedFrame;-><init>(Lcom/mobipocket/common/library/reader/DisplayableFrame;Lcom/mobipocket/common/library/reader/DisplayableFrame;II)V

    invoke-virtual {v7, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1572
    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getWordBeginIndex()I

    move-result v0

    .line 1574
    :cond_3
    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getWordEndIndex()I

    move-result v2

    .line 1559
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1577
    .end local v6           #obj:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
    :cond_4
    if-eqz v1, :cond_0

    .line 1578
    iget-object v7, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-direct {v7, v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->setPageObjectIndexSelectionBegin(I)V

    .line 1579
    iget-object v7, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-direct {v7, v2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->setPageObjectIndexSelectionEnd(I)V

    goto :goto_0
.end method
