.class public Lcom/google/android/music/widgets/DrawableStateChangeListenerImageView;
.super Landroid/widget/ImageView;
.source "DrawableStateChangeListenerImageView.java"

# interfaces
.implements Lcom/google/android/music/widgets/DrawableStateChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method public onDrawableStateChanged([I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/android/music/widgets/DrawableStateChangeListenerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 19
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 22
    :cond_0
    return-void
.end method
