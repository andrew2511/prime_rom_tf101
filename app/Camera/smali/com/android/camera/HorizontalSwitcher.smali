.class public Lcom/android/camera/HorizontalSwitcher;
.super Lcom/android/camera/Switcher;
.source "HorizontalSwitcher.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/camera/Switcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected getAvailableLength()I
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/camera/HorizontalSwitcher;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/HorizontalSwitcher;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/HorizontalSwitcher;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/HorizontalSwitcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getOffsetLeftToDraw()I
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/camera/HorizontalSwitcher;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/HorizontalSwitcher;->getLogicalPosition()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getOffsetTopToDraw()I
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/camera/HorizontalSwitcher;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/HorizontalSwitcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected trackTouch(Landroid/view/MotionEvent;)I
    .locals 2
    .parameter "event"

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/android/camera/HorizontalSwitcher;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/HorizontalSwitcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method
