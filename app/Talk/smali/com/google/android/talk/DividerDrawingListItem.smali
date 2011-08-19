.class public Lcom/google/android/talk/DividerDrawingListItem;
.super Landroid/widget/LinearLayout;
.source "DividerDrawingListItem.java"


# instance fields
.field private mDividerDrawRect:Landroid/graphics/Rect;

.field private mShoveDistance:I

.field private mShoverEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/DividerDrawingListItem;->mDividerDrawRect:Landroid/graphics/Rect;

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/talk/DividerDrawingListItem;->mShoveDistance:I

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/DividerDrawingListItem;->mShoverEnabled:Z

    .line 23
    invoke-direct {p0}, Lcom/google/android/talk/DividerDrawingListItem;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/DividerDrawingListItem;->mDividerDrawRect:Landroid/graphics/Rect;

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/talk/DividerDrawingListItem;->mShoveDistance:I

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/DividerDrawingListItem;->mShoverEnabled:Z

    .line 28
    invoke-direct {p0}, Lcom/google/android/talk/DividerDrawingListItem;->init()V

    .line 29
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/android/talk/DividerDrawingListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/DividerDrawingListItem;->mShoveDistance:I

    .line 34
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 49
    invoke-static {}, Lcom/google/android/talk/fragments/RosterListFragment;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 50
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/google/android/talk/DividerDrawingListItem;->mDividerDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/talk/DividerDrawingListItem;->shoverEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/talk/DividerDrawingListItem;->mShoveDistance:I

    :goto_0
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 51
    iget-object v1, p0, Lcom/google/android/talk/DividerDrawingListItem;->mDividerDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/talk/DividerDrawingListItem;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/talk/DividerDrawingListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 53
    iget-object v1, p0, Lcom/google/android/talk/DividerDrawingListItem;->mDividerDrawRect:Landroid/graphics/Rect;

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 54
    iget-object v1, p0, Lcom/google/android/talk/DividerDrawingListItem;->mDividerDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 56
    iget-object v1, p0, Lcom/google/android/talk/DividerDrawingListItem;->mDividerDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 57
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 58
    return-void

    :cond_0
    move v2, v5

    .line 50
    goto :goto_0
.end method

.method public setShoverEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/google/android/talk/DividerDrawingListItem;->mShoverEnabled:Z

    .line 38
    return-void
.end method

.method protected shoverEnabled()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/android/talk/DividerDrawingListItem;->mShoverEnabled:Z

    return v0
.end method
