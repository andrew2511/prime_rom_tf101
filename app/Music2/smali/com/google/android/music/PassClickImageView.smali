.class public Lcom/google/android/music/PassClickImageView;
.super Landroid/widget/ImageView;
.source "PassClickImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/music/widgets/DrawableStateChangeListener;


# instance fields
.field private mClickReceiver:Landroid/view/View;

.field private final mClickReceiverId:I

.field private mSearchedForClickReceiver:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/PassClickImageView;->mClickReceiver:Landroid/view/View;

    .line 27
    iput-boolean v3, p0, Lcom/google/android/music/PassClickImageView;->mSearchedForClickReceiver:Z

    .line 31
    sget-object v1, Lcom/google/android/music/R$styleable;->PassClick:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/PassClickImageView;->mClickReceiverId:I

    .line 33
    iget v1, p0, Lcom/google/android/music/PassClickImageView;->mClickReceiverId:I

    if-ne v1, v2, :cond_0

    .line 34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "PassClickImageView must be given a click receiver"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_0
    invoke-virtual {p0, p0}, Lcom/google/android/music/PassClickImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method

.method private getClickReceiver()Landroid/view/View;
    .locals 5

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/android/music/PassClickImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 53
    .local v2, parent:Landroid/view/ViewParent;
    :goto_0
    if-eqz v2, :cond_1

    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 54
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    iget v4, p0, Lcom/google/android/music/PassClickImageView;->mClickReceiverId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, foundReceiver:Landroid/view/View;
    if-eqz v1, :cond_0

    move-object v3, v1

    .line 61
    .end local v1           #foundReceiver:Landroid/view/View;
    :goto_1
    return-object v3

    .line 58
    .restart local v1       #foundReceiver:Landroid/view/View;
    :cond_0
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 60
    goto :goto_0

    .line 61
    .end local v1           #foundReceiver:Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/google/android/music/PassClickImageView;->mSearchedForClickReceiver:Z

    if-nez v0, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/google/android/music/PassClickImageView;->getClickReceiver()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/PassClickImageView;->mClickReceiver:Landroid/view/View;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/PassClickImageView;->mSearchedForClickReceiver:Z

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/PassClickImageView;->mClickReceiver:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/music/PassClickImageView;->mClickReceiver:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/music/PassClickImageView;->mClickReceiver:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/google/android/music/PassClickImageView;->mClickReceiver:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 49
    :cond_1
    return-void
.end method

.method public onDrawableStateChanged([I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/android/music/PassClickImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 66
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 69
    :cond_0
    return-void
.end method
