.class Lcom/amazon/topaz/View$PageTracker;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageTracker"
.end annotation


# static fields
.field public static final CUR_PAGE:I = 0x1

.field public static final NEXT_PAGE:I = 0x2

.field public static final NUM_PAGES:I = 0x4

.field public static final PAGE_AFTER_NEXT_PAGE:I = 0x3

.field public static final PREV_PAGE:I


# instance fields
.field private lineScanStartIndex:I

.field private nextPageIndex:I

.field private nextPageYCoordinate:I

.field private final pageStartIndices:[I

.field final synthetic this$0:Lcom/amazon/topaz/View;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/View;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/amazon/topaz/View$PageTracker;->this$0:Lcom/amazon/topaz/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amazon/topaz/View$PageTracker;->pageStartIndices:[I

    .line 59
    invoke-direct {p0}, Lcom/amazon/topaz/View$PageTracker;->clearInternal()V

    .line 60
    return-void
.end method

.method private addLine(ILcom/amazon/topaz/internal/layout/LayoutLine;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 103
    iget v0, p0, Lcom/amazon/topaz/View$PageTracker;->nextPageIndex:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    const/4 v0, 0x0

    .line 109
    iget v1, p0, Lcom/amazon/topaz/View$PageTracker;->nextPageYCoordinate:I

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_3

    .line 111
    invoke-virtual {p2}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getEndID()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/topaz/View$PageTracker;->this$0:Lcom/amazon/topaz/View;

    invoke-static {v2}, Lcom/amazon/topaz/View;->access$100(Lcom/amazon/topaz/View;)I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 115
    iget-object v0, p0, Lcom/amazon/topaz/View$PageTracker;->pageStartIndices:[I

    aput p1, v0, v3

    .line 116
    iget-object v0, p0, Lcom/amazon/topaz/View$PageTracker;->this$0:Lcom/amazon/topaz/View;

    invoke-virtual {p2}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartID()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/topaz/View;->access$102(Lcom/amazon/topaz/View;I)I

    .line 117
    iget-object v0, p0, Lcom/amazon/topaz/View$PageTracker;->this$0:Lcom/amazon/topaz/View;

    invoke-virtual {p2}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartPageNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/topaz/View;->access$202(Lcom/amazon/topaz/View;I)I

    .line 120
    invoke-direct {p0}, Lcom/amazon/topaz/View$PageTracker;->findPreviousPage()V

    move v0, v3

    .line 133
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p2}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getTopY()I

    move-result v0

    invoke-virtual {p2}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getTopMargin()I

    move-result v1

    sub-int/2addr v0, v1

    .line 137
    iget-object v1, p0, Lcom/amazon/topaz/View$PageTracker;->this$0:Lcom/amazon/topaz/View;

    invoke-static {v1}, Lcom/amazon/topaz/View;->access$300(Lcom/amazon/topaz/View;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/topaz/View$PageTracker;->nextPageYCoordinate:I

    .line 140
    iget v0, p0, Lcom/amazon/topaz/View$PageTracker;->nextPageIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/topaz/View$PageTracker;->nextPageIndex:I

    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getBottomY()I

    move-result v1

    iget v2, p0, Lcom/amazon/topaz/View$PageTracker;->nextPageYCoordinate:I

    if-le v1, v2, :cond_2

    .line 128
    iget-object v0, p0, Lcom/amazon/topaz/View$PageTracker;->pageStartIndices:[I

    iget v1, p0, Lcom/amazon/topaz/View$PageTracker;->nextPageIndex:I

    aput p1, v0, v1

    move v0, v3

    .line 129
    goto :goto_1
.end method

.method private checkConsistency()V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/amazon/topaz/View$PageTracker;->pageStartIndices:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/amazon/topaz/View$PageTracker;->pageStartIndices:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/amazon/topaz/View$PageTracker;->this$0:Lcom/amazon/topaz/View;

    invoke-static {v2}, Lcom/amazon/topaz/View;->access$000(Lcom/amazon/topaz/View;)Lcom/amazon/topaz/RenderSegment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/topaz/RenderSegment;->numLines()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 84
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 80
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    return-void
.end method

.method private clearInternal()V
    .locals 3

    .prologue
    .line 181
    const/4 v1, 0x0

    iput v1, p0, Lcom/amazon/topaz/View$PageTracker;->lineScanStartIndex:I

    .line 182
    const/4 v1, 0x1

    iput v1, p0, Lcom/amazon/topaz/View$PageTracker;->nextPageIndex:I

    .line 183
    const/high16 v1, -0x8000

    iput v1, p0, Lcom/amazon/topaz/View$PageTracker;->nextPageYCoordinate:I

    .line 184
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/amazon/topaz/View$PageTracker;->pageStartIndices:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/amazon/topaz/View$PageTracker;->pageStartIndices:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    return-void
.end method

.method private findPreviousPage()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 146
    iget-object v6, p0, Lcom/amazon/topaz/View$PageTracker;->pageStartIndices:[I

    aget v6, v6, v7

    if-lez v6, :cond_0

    .line 148
    iget-object v6, p0, Lcom/amazon/topaz/View$PageTracker;->pageStartIndices:[I

    aget v6, v6, v7

    sub-int v1, v6, v7

    .line 149
    .local v1, lastLineIndexOfPreviousPage:I
    iget-object v6, p0, Lcom/amazon/topaz/View$PageTracker;->this$0:Lcom/amazon/topaz/View;

    invoke-static {v6}, Lcom/amazon/topaz/View;->access$000(Lcom/amazon/topaz/View;)Lcom/amazon/topaz/RenderSegment;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v2

    .line 150
    .local v2, lastLineOfPreviousPage:Lcom/amazon/topaz/internal/layout/LayoutLine;
    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getBottomY()I

    move-result v6

    iget-object v7, p0, Lcom/amazon/topaz/View$PageTracker;->this$0:Lcom/amazon/topaz/View;

    invoke-static {v7}, Lcom/amazon/topaz/View;->access$300(Lcom/amazon/topaz/View;)I

    move-result v7

    sub-int v5, v6, v7

    .line 151
    .local v5, prevPageStartY:I
    move v0, v1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 153
    iget-object v6, p0, Lcom/amazon/topaz/View$PageTracker;->this$0:Lcom/amazon/topaz/View;

    invoke-static {v6}, Lcom/amazon/topaz/View;->access$000(Lcom/amazon/topaz/View;)Lcom/amazon/topaz/RenderSegment;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v3

    .line 154
    .local v3, line:Lcom/amazon/topaz/internal/layout/LayoutLine;
    invoke-virtual {v3}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getTopY()I

    move-result v6

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getTopMargin()I

    move-result v7

    sub-int v4, v6, v7

    .line 155
    .local v4, lineTop:I
    if-ge v4, v5, :cond_1

    .line 157
    iget-object v6, p0, Lcom/amazon/topaz/View$PageTracker;->pageStartIndices:[I

    add-int/lit8 v7, v0, 0x1

    aput v7, v6, v8

    .line 167
    .end local v0           #i:I
    .end local v1           #lastLineIndexOfPreviousPage:I
    .end local v2           #lastLineOfPreviousPage:Lcom/amazon/topaz/internal/layout/LayoutLine;
    .end local v3           #line:Lcom/amazon/topaz/internal/layout/LayoutLine;
    .end local v4           #lineTop:I
    .end local v5           #prevPageStartY:I
    :cond_0
    :goto_1
    return-void

    .line 160
    .restart local v0       #i:I
    .restart local v1       #lastLineIndexOfPreviousPage:I
    .restart local v2       #lastLineOfPreviousPage:Lcom/amazon/topaz/internal/layout/LayoutLine;
    .restart local v3       #line:Lcom/amazon/topaz/internal/layout/LayoutLine;
    .restart local v4       #lineTop:I
    .restart local v5       #prevPageStartY:I
    :cond_1
    if-ne v4, v5, :cond_2

    .line 162
    iget-object v6, p0, Lcom/amazon/topaz/View$PageTracker;->pageStartIndices:[I

    aput v0, v6, v8

    goto :goto_1

    .line 151
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/amazon/topaz/View$PageTracker;->clearInternal()V

    .line 177
    return-void
.end method

.method public getPageStart(I)I
    .locals 1
    .parameter "pageType"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/amazon/topaz/View$PageTracker;->pageStartIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method public linesAdded()V
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Lcom/amazon/topaz/View$PageTracker;->lineScanStartIndex:I

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/amazon/topaz/View$PageTracker;->this$0:Lcom/amazon/topaz/View;

    invoke-static {v1}, Lcom/amazon/topaz/View;->access$000(Lcom/amazon/topaz/View;)Lcom/amazon/topaz/RenderSegment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/topaz/RenderSegment;->numLines()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/amazon/topaz/View$PageTracker;->this$0:Lcom/amazon/topaz/View;

    invoke-static {v1}, Lcom/amazon/topaz/View;->access$000(Lcom/amazon/topaz/View;)Lcom/amazon/topaz/RenderSegment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/topaz/View$PageTracker;->addLine(ILcom/amazon/topaz/internal/layout/LayoutLine;)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/amazon/topaz/View$PageTracker;->this$0:Lcom/amazon/topaz/View;

    invoke-static {v1}, Lcom/amazon/topaz/View;->access$000(Lcom/amazon/topaz/View;)Lcom/amazon/topaz/RenderSegment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/topaz/RenderSegment;->numLines()I

    move-result v1

    iput v1, p0, Lcom/amazon/topaz/View$PageTracker;->lineScanStartIndex:I

    .line 75
    invoke-direct {p0}, Lcom/amazon/topaz/View$PageTracker;->checkConsistency()V

    .line 76
    return-void
.end method

.method public locationChanged()V
    .locals 0

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/amazon/topaz/View$PageTracker;->clear()V

    .line 65
    invoke-virtual {p0}, Lcom/amazon/topaz/View$PageTracker;->linesAdded()V

    .line 66
    return-void
.end method

.method public shiftIndices(I)V
    .locals 3
    .parameter "delta"

    .prologue
    .line 91
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/amazon/topaz/View$PageTracker;->pageStartIndices:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/amazon/topaz/View$PageTracker;->pageStartIndices:[I

    aget v1, v1, v0

    if-ltz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/amazon/topaz/View$PageTracker;->pageStartIndices:[I

    aget v2, v1, v0

    add-int/2addr v2, p1

    aput v2, v1, v0

    .line 91
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    return-void
.end method
