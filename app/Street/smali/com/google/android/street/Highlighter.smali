.class public Lcom/google/android/street/Highlighter;
.super Ljava/lang/Object;
.source "Highlighter.java"


# instance fields
.field private mCurrentItemIsHighlighted:Z

.field private mCurrentlyPressedItem:I

.field private mIsTracking:Z

.field private mRenderer:Lcom/google/android/street/Renderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-direct {p0}, Lcom/google/android/street/Highlighter;->reset()V

    .line 56
    return-void
.end method

.method private isReady()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/street/Highlighter;->mRenderer:Lcom/google/android/street/Renderer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    iput-boolean v1, p0, Lcom/google/android/street/Highlighter;->mIsTracking:Z

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/street/Highlighter;->mCurrentlyPressedItem:I

    .line 154
    iput-boolean v1, p0, Lcom/google/android/street/Highlighter;->mCurrentItemIsHighlighted:Z

    .line 155
    return-void
.end method


# virtual methods
.method public down(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    .line 77
    invoke-direct {p0}, Lcom/google/android/street/Highlighter;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    const/4 v1, 0x0

    .line 95
    :goto_0
    return v1

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/google/android/street/Highlighter;->mRenderer:Lcom/google/android/street/Renderer;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/street/Renderer;->hit(II)I

    move-result v0

    .line 82
    .local v0, hit:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 83
    iput-boolean v4, p0, Lcom/google/android/street/Highlighter;->mIsTracking:Z

    .line 87
    iput v0, p0, Lcom/google/android/street/Highlighter;->mCurrentlyPressedItem:I

    .line 88
    iget-object v1, p0, Lcom/google/android/street/Highlighter;->mRenderer:Lcom/google/android/street/Renderer;

    iget v2, p0, Lcom/google/android/street/Highlighter;->mCurrentlyPressedItem:I

    invoke-virtual {v1, v2}, Lcom/google/android/street/Renderer;->setHighlight(I)V

    .line 89
    iput-boolean v4, p0, Lcom/google/android/street/Highlighter;->mCurrentItemIsHighlighted:Z

    .line 95
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/street/Highlighter;->mIsTracking:Z

    goto :goto_0

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/google/android/street/Highlighter;->reset()V

    goto :goto_1
.end method

.method public getCurrentlyPressedItem()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/google/android/street/Highlighter;->mCurrentlyPressedItem:I

    return v0
.end method

.method public isTracking()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/android/street/Highlighter;->mIsTracking:Z

    return v0
.end method

.method public move(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/google/android/street/Highlighter;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/street/Highlighter;->mIsTracking:Z

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/google/android/street/Highlighter;->mRenderer:Lcom/google/android/street/Renderer;

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-virtual {v2, v3, v4}, Lcom/google/android/street/Renderer;->hit(II)I

    move-result v0

    .line 107
    .local v0, hit:I
    iget v2, p0, Lcom/google/android/street/Highlighter;->mCurrentlyPressedItem:I

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 108
    .local v1, shouldHighlight:Z
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/street/Highlighter;->mCurrentItemIsHighlighted:Z

    if-eq v1, v2, :cond_0

    .line 109
    iput-boolean v1, p0, Lcom/google/android/street/Highlighter;->mCurrentItemIsHighlighted:Z

    .line 110
    if-eqz v1, :cond_2

    .line 111
    iget-object v2, p0, Lcom/google/android/street/Highlighter;->mRenderer:Lcom/google/android/street/Renderer;

    iget v3, p0, Lcom/google/android/street/Highlighter;->mCurrentlyPressedItem:I

    invoke-virtual {v2, v3}, Lcom/google/android/street/Renderer;->setHighlight(I)V

    .line 118
    .end local v0           #hit:I
    .end local v1           #shouldHighlight:Z
    :cond_0
    :goto_1
    iget-boolean v2, p0, Lcom/google/android/street/Highlighter;->mIsTracking:Z

    return v2

    .line 107
    .restart local v0       #hit:I
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 113
    .restart local v1       #shouldHighlight:Z
    :cond_2
    iget-object v2, p0, Lcom/google/android/street/Highlighter;->mRenderer:Lcom/google/android/street/Renderer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/google/android/street/Renderer;->setHighlight(I)V

    goto :goto_1
.end method

.method public setRenderer(Lcom/google/android/street/Renderer;)V
    .locals 0
    .parameter "renderer"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/street/Highlighter;->mRenderer:Lcom/google/android/street/Renderer;

    .line 60
    invoke-direct {p0}, Lcom/google/android/street/Highlighter;->reset()V

    .line 61
    return-void
.end method

.method public up(FF)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, -0x1

    .line 130
    invoke-direct {p0}, Lcom/google/android/street/Highlighter;->isReady()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/street/Highlighter;->mIsTracking:Z

    if-eqz v1, :cond_1

    .line 131
    iget-boolean v1, p0, Lcom/google/android/street/Highlighter;->mCurrentItemIsHighlighted:Z

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/google/android/street/Highlighter;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v1, v4}, Lcom/google/android/street/Renderer;->setHighlight(I)V

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/google/android/street/Highlighter;->mRenderer:Lcom/google/android/street/Renderer;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/street/Renderer;->hit(II)I

    move-result v0

    .line 135
    .local v0, hit:I
    iget v1, p0, Lcom/google/android/street/Highlighter;->mCurrentlyPressedItem:I

    if-ne v0, v1, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/google/android/street/Highlighter;->reset()V

    move v1, v0

    .line 141
    .end local v0           #hit:I
    :goto_0
    return v1

    .line 140
    :cond_1
    invoke-direct {p0}, Lcom/google/android/street/Highlighter;->reset()V

    move v1, v4

    .line 141
    goto :goto_0
.end method
