.class public Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "QuickContactBackgroundDrawable.java"


# instance fields
.field private mAlpha:I

.field private mBottomOverride:I

.field private mBoundsSet:Z

.field private mLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private mMiddleDrawable:Landroid/graphics/drawable/Drawable;

.field private mRequestedX:I

.field private mRightDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x8000

    .line 31
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 35
    iput v1, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mRequestedX:I

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mBoundsSet:Z

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mAlpha:I

    .line 38
    iput v1, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mBottomOverride:I

    return-void
.end method

.method private setChildAlpha()V
    .locals 2

    .prologue
    .line 99
    iget v0, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mAlpha:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private setChildBounds()V
    .locals 9

    .prologue
    const/high16 v8, -0x8000

    .line 107
    iget v6, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mRequestedX:I

    if-ne v6, v8, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-boolean v6, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mBoundsSet:Z

    if-eqz v6, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 111
    .local v1, bounds:Landroid/graphics/Rect;
    iget v6, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mRequestedX:I

    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v3, v6, v7

    .line 112
    .local v3, middleLeft:I
    iget v6, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mRequestedX:I

    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 115
    .local v4, middleRight:I
    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int v6, v3, v6

    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int v2, v6, v7

    .line 116
    .local v2, leftExtra:I
    if-gez v2, :cond_2

    .line 117
    sub-int/2addr v3, v2

    .line 118
    sub-int/2addr v4, v2

    .line 122
    :cond_2
    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v4

    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int v5, v6, v7

    .line 123
    .local v5, rightExtra:I
    if-gez v5, :cond_3

    .line 124
    add-int/2addr v3, v5

    .line 125
    add-int/2addr v4, v5

    .line 128
    :cond_3
    iget v6, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mBottomOverride:I

    if-ne v6, v8, :cond_4

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    move v0, v6

    .line 129
    .local v0, bottom:I
    :goto_1
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7, v8, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 130
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    iget v7, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v3, v7, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 131
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6, v4, v7, v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 128
    .end local v0           #bottom:I
    :cond_4
    iget v6, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mBottomOverride:I

    move v0, v6

    goto :goto_1
.end method


# virtual methods
.method public clearBottomOverride()V
    .locals 1

    .prologue
    .line 57
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mBottomOverride:I

    .line 58
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->invalidateSelf()V

    .line 59
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->setChildBounds()V

    .line 60
    return-void
.end method

.method public configure(Landroid/content/res/Resources;ZI)V
    .locals 1
    .parameter "resources"
    .parameter "arrowUp"
    .parameter "requestedX"

    .prologue
    .line 76
    if-eqz p2, :cond_0

    const v0, 0x7f020098

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 79
    if-eqz p2, :cond_1

    const v0, 0x7f020099

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    .line 82
    if-eqz p2, :cond_2

    const v0, 0x7f02009a

    :goto_2
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 86
    iput p3, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mRequestedX:I

    .line 88
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->setChildAlpha()V

    .line 89
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->setChildBounds()V

    .line 90
    return-void

    .line 76
    :cond_0
    const v0, 0x7f020095

    goto :goto_0

    .line 79
    :cond_1
    const v0, 0x7f020096

    goto :goto_1

    .line 82
    :cond_2
    const v0, 0x7f020097

    goto :goto_2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 137
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 138
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 139
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mBoundsSet:Z

    .line 95
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->setChildBounds()V

    .line 96
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mAlpha:I

    .line 43
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->setChildAlpha()V

    .line 44
    return-void
.end method

.method public setBottomOverride(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->mBottomOverride:I

    .line 52
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->setChildBounds()V

    .line 53
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->invalidateSelf()V

    .line 54
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 68
    return-void
.end method
