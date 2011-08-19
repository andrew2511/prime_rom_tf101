.class public Lcom/layar/ui/ImageStatesButton;
.super Landroid/widget/ImageButton;
.source "ImageStatesButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 3

    .prologue
    .line 26
    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    .line 27
    invoke-virtual {p0}, Lcom/layar/ui/ImageStatesButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 28
    .local v0, image:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/layar/ui/ImageStatesButton;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    const v1, -0x777778

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 34
    :goto_0
    invoke-virtual {p0}, Lcom/layar/ui/ImageStatesButton;->invalidate()V

    .line 36
    :cond_0
    return-void

    .line 32
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method
