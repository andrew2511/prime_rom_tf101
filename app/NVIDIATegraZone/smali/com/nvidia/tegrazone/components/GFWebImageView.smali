.class public Lcom/nvidia/tegrazone/components/GFWebImageView;
.super Landroid/widget/ViewSwitcher;
.source "GFWebImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nvidia/tegrazone/components/GFWebImageView$DefaultImageLoaderHandler;
    }
.end annotation


# instance fields
.field public imageUrl:Ljava/lang/String;

.field public imageView:Landroid/widget/ImageView;

.field private isLoaded:Z

.field private loadingSpinner:Landroid/widget/ProgressBar;

.field private progressDrawable:Landroid/graphics/drawable/Drawable;

.field private scaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attributes"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v4, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 89
    const-string v4, "http://github.com/droidfu/schema"

    const-string v5, "progressDrawable"

    const/4 v6, 0x0

    invoke-interface {p2, v4, v5, v6}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 90
    .local v3, progressDrawableId:I
    const/4 v2, 0x0

    .line 91
    .local v2, progressDrawable:Landroid/graphics/drawable/Drawable;
    if-lez v3, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 94
    :cond_0
    const-string v4, "http://github.com/droidfu/schema"

    const-string v5, "imageUrl"

    invoke-interface {p2, v4, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, imgUrl:Ljava/lang/String;
    const-string v4, "http://github.com/droidfu/schema"

    const-string v5, "autoLoad"

    const/4 v6, 0x1

    invoke-interface {p2, v4, v5, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 96
    .local v0, autoLoad:Z
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/nvidia/tegrazone/components/GFWebImageView;->initialize(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .parameter "context"
    .parameter "imageUrl"
    .parameter "progressDrawable"
    .parameter "autoLoad"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    .line 47
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nvidia/tegrazone/components/GFWebImageView;->initialize(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "imageUrl"
    .parameter "autoLoad"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    .line 47
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/nvidia/tegrazone/components/GFWebImageView;->initialize(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/nvidia/tegrazone/components/GFWebImageView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->isLoaded:Z

    return-void
.end method

.method private addImageView(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    .line 144
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->imageView:Landroid/widget/ImageView;

    .line 145
    iget-object v1, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 147
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->imageView:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/nvidia/tegrazone/components/GFWebImageView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 150
    return-void
.end method

.method private addLoadingSpinnerView(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 126
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->loadingSpinner:Landroid/widget/ProgressBar;

    .line 127
    iget-object v1, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->loadingSpinner:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 128
    iget-object v1, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->loadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 136
    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 137
    iget-object v2, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 136
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 138
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 140
    iget-object v1, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->loadingSpinner:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/nvidia/tegrazone/components/GFWebImageView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 141
    return-void

    .line 131
    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->loadingSpinner:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v1, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

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
    .line 101
    iput-object p2, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->imageUrl:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 104
    invoke-static {p1}, Lcom/nvidia/tegrazone/components/ImageLoader;->initialize(Landroid/content/Context;)V

    .line 111
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 112
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 113
    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 115
    invoke-direct {p0, p1}, Lcom/nvidia/tegrazone/components/GFWebImageView;->addLoadingSpinnerView(Landroid/content/Context;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/nvidia/tegrazone/components/GFWebImageView;->addImageView(Landroid/content/Context;)V

    .line 118
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/components/GFWebImageView;->loadImage()V

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method public isLoaded()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->isLoaded:Z

    return v0
.end method

.method public loadImage()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->imageUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 159
    const-string v1, "image URL is null; did you forget to set it for this view?"

    .line 158
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->imageUrl:Ljava/lang/String;

    new-instance v1, Lcom/nvidia/tegrazone/components/GFWebImageView$DefaultImageLoaderHandler;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/components/GFWebImageView$DefaultImageLoaderHandler;-><init>(Lcom/nvidia/tegrazone/components/GFWebImageView;)V

    invoke-static {v0, v1}, Lcom/nvidia/tegrazone/components/ImageLoader;->start(Ljava/lang/String;Lcom/nvidia/tegrazone/components/ImageLoaderHandler;)V

    .line 162
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->reset()V

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setDisplayedChild(I)V

    .line 196
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "imageUrl"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->imageUrl:Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setDisplayedChild(I)V

    .line 172
    return-void
.end method

.method public setNoImageDrawable(I)V
    .locals 2
    .parameter "imageResourceId"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/components/GFWebImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setDisplayedChild(I)V

    .line 189
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "progressDrawable"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/nvidia/tegrazone/components/GFWebImageView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 176
    return-void
.end method
