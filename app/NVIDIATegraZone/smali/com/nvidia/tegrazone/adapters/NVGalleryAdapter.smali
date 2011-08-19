.class public Lcom/nvidia/tegrazone/adapters/NVGalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "NVGalleryAdapter.java"


# instance fields
.field public images:[Lcom/nvidia/tegrazone/model/vo/MediaVO;

.field mGalleryItemBackground:I

.field private tempImage:Lcom/nvidia/tegrazone/model/vo/MediaVO;

.field private viewArray:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/nvidia/tegrazone/model/vo/MediaVO;)V
    .locals 1
    .parameter "c"
    .parameter "images"

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/nvidia/tegrazone/adapters/NVGalleryAdapter;->images:[Lcom/nvidia/tegrazone/model/vo/MediaVO;

    .line 26
    array-length v0, p2

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/nvidia/tegrazone/adapters/NVGalleryAdapter;->viewArray:[Landroid/view/View;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nvidia/tegrazone/adapters/NVGalleryAdapter;->images:[Lcom/nvidia/tegrazone/model/vo/MediaVO;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 38
    int-to-long v0, p1

    return-wide v0
.end method

.method public getScale(ZI)F
    .locals 6
    .parameter "focused"
    .parameter "offset"

    .prologue
    .line 90
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    const-wide/high16 v2, 0x4000

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 43
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 44
    .local v2, linflater:Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    .line 46
    .local v3, tempView:Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/nvidia/tegrazone/adapters/NVGalleryAdapter;->viewArray:[Landroid/view/View;

    array-length v4, v4

    if-lt v0, v4, :cond_1

    .line 59
    const v4, 0x7f0a002e

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nvidia/tegrazone/components/GFWebImageView;

    .line 61
    .local v1, img:Lcom/nvidia/tegrazone/components/GFWebImageView;
    iget-object v4, p0, Lcom/nvidia/tegrazone/adapters/NVGalleryAdapter;->images:[Lcom/nvidia/tegrazone/model/vo/MediaVO;

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-gt p1, v4, :cond_5

    .line 63
    iget-object v4, p0, Lcom/nvidia/tegrazone/adapters/NVGalleryAdapter;->images:[Lcom/nvidia/tegrazone/model/vo/MediaVO;

    aget-object v4, v4, p1

    iput-object v4, p0, Lcom/nvidia/tegrazone/adapters/NVGalleryAdapter;->tempImage:Lcom/nvidia/tegrazone/model/vo/MediaVO;

    .line 65
    iget-object v4, p0, Lcom/nvidia/tegrazone/adapters/NVGalleryAdapter;->images:[Lcom/nvidia/tegrazone/model/vo/MediaVO;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/MediaVO;->getItemType()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/nvidia/tegrazone/model/vo/MediaVO;->IMAGE_TYPE:Ljava/lang/String;

    if-ne v4, v5, :cond_4

    .line 66
    iget-object v4, p0, Lcom/nvidia/tegrazone/adapters/NVGalleryAdapter;->tempImage:Lcom/nvidia/tegrazone/model/vo/MediaVO;

    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/MediaVO;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/nvidia/tegrazone/components/GFWebImageView;->imageUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/nvidia/tegrazone/adapters/NVGalleryAdapter;->tempImage:Lcom/nvidia/tegrazone/model/vo/MediaVO;

    invoke-virtual {v5}, Lcom/nvidia/tegrazone/model/vo/MediaVO;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_0

    .line 68
    iget-object v4, p0, Lcom/nvidia/tegrazone/adapters/NVGalleryAdapter;->tempImage:Lcom/nvidia/tegrazone/model/vo/MediaVO;

    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/MediaVO;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 69
    iget-object v4, v1, Lcom/nvidia/tegrazone/components/GFWebImageView;->imageUrl:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/nvidia/tegrazone/components/GFWebImageView;->imageUrl:Ljava/lang/String;

    const-string v5, ""

    if-eq v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/components/GFWebImageView;->loadImage()V

    .line 82
    :cond_0
    :goto_1
    return-object v3

    .line 47
    .end local v1           #img:Lcom/nvidia/tegrazone/components/GFWebImageView;
    :cond_1
    iget-object v4, p0, Lcom/nvidia/tegrazone/adapters/NVGalleryAdapter;->viewArray:[Landroid/view/View;

    aget-object v4, v4, v0

    if-eqz v4, :cond_3

    .line 48
    if-ne v0, p1, :cond_2

    .line 49
    iget-object v4, p0, Lcom/nvidia/tegrazone/adapters/NVGalleryAdapter;->viewArray:[Landroid/view/View;

    aget-object v3, v4, v0

    .end local v3           #tempView:Landroid/widget/LinearLayout;
    check-cast v3, Landroid/widget/LinearLayout;

    .line 46
    .restart local v3       #tempView:Landroid/widget/LinearLayout;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_3
    if-ne v0, p1, :cond_2

    .line 53
    const v4, 0x7f030006

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .end local v3           #tempView:Landroid/widget/LinearLayout;
    check-cast v3, Landroid/widget/LinearLayout;

    .line 54
    .restart local v3       #tempView:Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/nvidia/tegrazone/adapters/NVGalleryAdapter;->viewArray:[Landroid/view/View;

    aput-object v3, v4, v0

    goto :goto_2

    .line 72
    .restart local v1       #img:Lcom/nvidia/tegrazone/components/GFWebImageView;
    :cond_4
    iget-object v4, v1, Lcom/nvidia/tegrazone/components/GFWebImageView;->imageUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/nvidia/tegrazone/adapters/NVGalleryAdapter;->tempImage:Lcom/nvidia/tegrazone/model/vo/MediaVO;

    invoke-virtual {v5}, Lcom/nvidia/tegrazone/model/vo/MediaVO;->getUrl()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_0

    .line 73
    iget-object v4, p0, Lcom/nvidia/tegrazone/adapters/NVGalleryAdapter;->tempImage:Lcom/nvidia/tegrazone/model/vo/MediaVO;

    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/MediaVO;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 74
    iget-object v4, v1, Lcom/nvidia/tegrazone/components/GFWebImageView;->imageUrl:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/nvidia/tegrazone/components/GFWebImageView;->imageUrl:Ljava/lang/String;

    const-string v5, ""

    if-eq v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/components/GFWebImageView;->loadImage()V

    goto :goto_1

    .line 79
    :cond_5
    new-instance v3, Landroid/widget/LinearLayout;

    .end local v3           #tempView:Landroid/widget/LinearLayout;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .restart local v3       #tempView:Landroid/widget/LinearLayout;
    goto :goto_1
.end method
