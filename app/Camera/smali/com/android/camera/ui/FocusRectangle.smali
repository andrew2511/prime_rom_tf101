.class public Lcom/android/camera/ui/FocusRectangle;
.super Landroid/view/View;
.source "FocusRectangle.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method private setDrawable(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FocusRectangle;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FocusRectangle;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    return-void
.end method

.method public showFail()V
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f02004f

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusRectangle;->setDrawable(I)V

    .line 44
    return-void
.end method

.method public showStart()V
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f020051

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusRectangle;->setDrawable(I)V

    .line 36
    return-void
.end method

.method public showSuccess()V
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f020050

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusRectangle;->setDrawable(I)V

    .line 40
    return-void
.end method
