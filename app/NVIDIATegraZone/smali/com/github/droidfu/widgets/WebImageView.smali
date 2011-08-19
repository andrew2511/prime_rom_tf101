.class public Lcom/github/droidfu/widgets/WebImageView;
.super Landroid/widget/ViewSwitcher;
.source "WebImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/droidfu/widgets/WebImageView$DefaultImageLoaderHandler;
    }
.end annotation


# instance fields
.field private imageUrl:Ljava/lang/String;

.field private imageView:Landroid/widget/ImageView;

.field private isLoaded:Z

.field private loadingSpinner:Landroid/widget/ProgressBar;

.field private progressDrawable:Landroid/graphics/drawable/Drawable;

.field private scaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attributes"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iput-object v2, p0, Lcom/github/droidfu/widgets/WebImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 92
    const-string v2, "http://github.com/droidfu/schema"

    const-string v3, "progressDrawable"

    const/4 v4, 0x0

    invoke-interface {p2, v2, v3, v4}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 94
    .local v1, progressDrawableId:I
    const/4 v0, 0x0

    .line 95
    .local v0, progressDrawable:Landroid/graphics/drawable/Drawable;
    if-lez v1, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 98
    :cond_0
    const-string v2, "http://github.com/droidfu/schema"

    const-string v3, "imageUrl"

    invoke-interface {p2, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://github.com/droidfu/schema"

    const-string v4, "autoLoad"

    const/4 v5, 0x1

    invoke-interface {p2, v3, v4, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {p0, p1, v2, v0, v3}, Lcom/github/droidfu/widgets/WebImageView;->initialize(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .parameter "context"
    .parameter "imageUrl"
    .parameter "progressDrawable"
    .parameter "autoLoad"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    .line 50
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/github/droidfu/widgets/WebImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/github/droidfu/widgets/WebImageView;->initialize(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "imageUrl"
    .parameter "autoLoad"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    .line 50
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/github/droidfu/widgets/WebImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/github/droidfu/widgets/WebImageView;->initialize(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/github/droidfu/widgets/WebImageView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/github/droidfu/widgets/WebImageView;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/github/droidfu/widgets/WebImageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/github/droidfu/widgets/WebImageView;->isLoaded:Z

    return p1
.end method

.method private addImageView(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x2

    .line 146
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/github/droidfu/widgets/WebImageView;->imageView:Landroid/widget/ImageView;

    .line 147
    iget-object v1, p0, Lcom/github/droidfu/widgets/WebImageView;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/github/droidfu/widgets/WebImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 148
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 150
    iget-object v1, p0, Lcom/github/droidfu/widgets/WebImageView;->imageView:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/github/droidfu/widgets/WebImageView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 151
    return-void
.end method

.method private addLoadingSpinnerView(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 127
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/github/droidfu/widgets/WebImageView;->loadingSpinner:Landroid/widget/ProgressBar;

    .line 128
    iget-object v1, p0, Lcom/github/droidfu/widgets/WebImageView;->loadingSpinner:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 129
    iget-object v1, p0, Lcom/github/droidfu/widgets/WebImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/github/droidfu/widgets/WebImageView;->loadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/github/droidfu/widgets/WebImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 138
    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/github/droidfu/widgets/WebImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/github/droidfu/widgets/WebImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 140
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 142
    iget-object v1, p0, Lcom/github/droidfu/widgets/WebImageView;->loadingSpinner:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/github/droidfu/widgets/WebImageView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 143
    return-void

    .line 132
    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/github/droidfu/widgets/WebImageView;->loadingSpinner:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/github/droidfu/widgets/WebImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v1, p0, Lcom/github/droidfu/widgets/WebImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/github/droidfu/widgets/WebImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method

.method private initialize(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 3
    .parameter "context"
    .parameter "imageUrl"
    .parameter "progressDrawable"
    .parameter "autoLoad"

    .prologue
    .line 105
    iput-object p2, p0, Lcom/github/droidfu/widgets/WebImageView;->imageUrl:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcom/github/droidfu/widgets/WebImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-static {p1}, Lcom/github/droidfu/imageloader/ImageLoader;->initialize(Landroid/content/Context;)V

    .line 114
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 115
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/github/droidfu/widgets/WebImageView;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 118
    invoke-direct {p0, p1}, Lcom/github/droidfu/widgets/WebImageView;->addLoadingSpinnerView(Landroid/content/Context;)V

    .line 119
    invoke-direct {p0, p1}, Lcom/github/droidfu/widgets/WebImageView;->addImageView(Landroid/content/Context;)V

    .line 121
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/github/droidfu/widgets/WebImageView;->loadImage()V

    .line 124
    :cond_0
    return-void
.end method


# virtual methods
.method public isLoaded()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/github/droidfu/widgets/WebImageView;->isLoaded:Z

    return v0
.end method

.method public loadImage()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/github/droidfu/widgets/WebImageView;->imageUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "image URL is null; did you forget to set it for this view?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/github/droidfu/widgets/WebImageView;->imageUrl:Ljava/lang/String;

    new-instance v1, Lcom/github/droidfu/widgets/WebImageView$DefaultImageLoaderHandler;

    invoke-direct {v1, p0}, Lcom/github/droidfu/widgets/WebImageView$DefaultImageLoaderHandler;-><init>(Lcom/github/droidfu/widgets/WebImageView;)V

    invoke-static {v0, v1}, Lcom/github/droidfu/imageloader/ImageLoader;->start(Ljava/lang/String;Lcom/github/droidfu/imageloader/ImageLoaderHandler;)V

    .line 163
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->reset()V

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/droidfu/widgets/WebImageView;->setDisplayedChild(I)V

    .line 195
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "imageUrl"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/github/droidfu/widgets/WebImageView;->imageUrl:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setNoImageDrawable(I)V
    .locals 2
    .parameter "imageResourceId"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/github/droidfu/widgets/WebImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/github/droidfu/widgets/WebImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/github/droidfu/widgets/WebImageView;->setDisplayedChild(I)V

    .line 188
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "progressDrawable"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/github/droidfu/widgets/WebImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 175
    return-void
.end method
