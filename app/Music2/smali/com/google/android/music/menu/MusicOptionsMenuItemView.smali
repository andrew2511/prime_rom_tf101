.class public Lcom/google/android/music/menu/MusicOptionsMenuItemView;
.super Landroid/widget/TextView;
.source "MusicOptionsMenuItemView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicMenuItemView"


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mMenuItem:Lcom/google/android/music/menu/MusicMenuItem;

.field private mPositionIconAvailable:Landroid/graphics/Rect;

.field private mPositionIconOutput:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->mPositionIconAvailable:Landroid/graphics/Rect;

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->mPositionIconOutput:Landroid/graphics/Rect;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->mPositionIconAvailable:Landroid/graphics/Rect;

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->mPositionIconOutput:Landroid/graphics/Rect;

    .line 34
    return-void
.end method

.method private positionIcon()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 136
    iget-object v1, p0, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->mPositionIconOutput:Landroid/graphics/Rect;

    .line 142
    .local v0, tmpRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v4, v0}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 143
    iget-object v1, p0, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->mPositionIconAvailable:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->getWidth()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 144
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->mPositionIconAvailable:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->mPositionIconOutput:Landroid/graphics/Rect;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 146
    iget-object v1, p0, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->mPositionIconOutput:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method


# virtual methods
.method public getTextAppropriateLayoutParams()Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 118
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;

    .line 119
    .local v0, lp:Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;
    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;

    .end local v0           #lp:Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;
    invoke-direct {v0, v1, v1}, Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;-><init>(II)V

    .line 125
    .restart local v0       #lp:Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;->desiredWidth:I

    .line 127
    return-object v0
.end method

.method public initialize(Lcom/google/android/music/menu/MusicMenuItem;)V
    .locals 2
    .parameter "menuItem"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->mMenuItem:Lcom/google/android/music/menu/MusicMenuItem;

    .line 49
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 50
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->setEnabled(Z)V

    .line 51
    return-void
.end method

.method initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "title"
    .parameter "icon"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p0, p2}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 44
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 100
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 102
    invoke-direct {p0}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->positionIcon()V

    .line 103
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 110
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->getTextAppropriateLayoutParams()Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    return-void
.end method

.method public performClick()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 64
    :goto_0
    return v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->mMenuItem:Lcom/google/android/music/menu/MusicMenuItem;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicMenuItem;->invoke()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0, v1}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->playSoundEffect(I)V

    move v0, v2

    .line 62
    goto :goto_0

    :cond_1
    move v0, v1

    .line 64
    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "icon"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 73
    iput-object p1, p0, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 74
    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 79
    invoke-virtual {p0, v2, p1, v2, v2}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 82
    const/16 v0, 0x51

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->setGravity(I)V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->requestLayout()V

    .line 96
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 94
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->setGravity(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method
