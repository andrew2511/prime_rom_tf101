.class public Lcom/github/droidfu/adapters/WebGalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "WebGalleryAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private imageUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private progressDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    invoke-direct {p0, p1, v0, v0}, Lcom/github/droidfu/adapters/WebGalleryAdapter;->initialize(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, imageUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/droidfu/adapters/WebGalleryAdapter;->initialize(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "progressDrawableResId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p2, imageUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/droidfu/adapters/WebGalleryAdapter;->initialize(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;)V

    .line 71
    return-void
.end method

.method private initialize(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter "progressDrawable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    .local p2, imageUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/github/droidfu/adapters/WebGalleryAdapter;->imageUrls:Ljava/util/List;

    .line 75
    iput-object p1, p0, Lcom/github/droidfu/adapters/WebGalleryAdapter;->context:Landroid/content/Context;

    .line 76
    iput-object p3, p0, Lcom/github/droidfu/adapters/WebGalleryAdapter;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/github/droidfu/adapters/WebGalleryAdapter;->imageUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getImageUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/github/droidfu/adapters/WebGalleryAdapter;->imageUrls:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/github/droidfu/adapters/WebGalleryAdapter;->imageUrls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 88
    int-to-long v0, p1

    return-wide v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/github/droidfu/adapters/WebGalleryAdapter;->progressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, -0x1

    const/4 v7, -0x2

    .line 110
    invoke-virtual {p0, p1}, Lcom/github/droidfu/adapters/WebGalleryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    .local v1, imageUrl:Ljava/lang/String;
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/github/droidfu/adapters/WebGalleryAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, container:Landroid/widget/FrameLayout;
    new-instance v4, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    new-instance v2, Lcom/github/droidfu/widgets/WebImageView;

    iget-object v4, p0, Lcom/github/droidfu/adapters/WebGalleryAdapter;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/github/droidfu/adapters/WebGalleryAdapter;->progressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    invoke-direct {v2, v4, v1, v5, v6}, Lcom/github/droidfu/widgets/WebImageView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 117
    .local v2, item:Lcom/github/droidfu/widgets/WebImageView;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 119
    .local v3, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 120
    invoke-virtual {v2, v3}, Lcom/github/droidfu/widgets/WebImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 124
    invoke-virtual {v2}, Lcom/github/droidfu/widgets/WebImageView;->loadImage()V

    .line 126
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/droidfu/adapters/WebGalleryAdapter;->onGetView(ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 128
    return-object v0
.end method

.method protected onGetView(ILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 132
    return-void
.end method

.method public setImageUrls(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, imageUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/github/droidfu/adapters/WebGalleryAdapter;->imageUrls:Ljava/util/List;

    .line 93
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "progressDrawable"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/github/droidfu/adapters/WebGalleryAdapter;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 101
    return-void
.end method
