.class public Lcom/nvidia/tegrazone/adapters/FeaturedAdapter;
.super Landroid/widget/BaseAdapter;
.source "FeaturedAdapter.java"


# instance fields
.field public featuredItems:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

.field private tempGame:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

.field private viewArray:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;)V
    .locals 1
    .parameter "c"
    .parameter "featuredGames"

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/nvidia/tegrazone/adapters/FeaturedAdapter;->featuredItems:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 24
    iget-object v0, p0, Lcom/nvidia/tegrazone/adapters/FeaturedAdapter;->featuredItems:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    array-length v0, v0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/nvidia/tegrazone/adapters/FeaturedAdapter;->viewArray:[Landroid/view/View;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nvidia/tegrazone/adapters/FeaturedAdapter;->featuredItems:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 36
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 41
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 42
    .local v2, linflater:Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    .line 44
    .local v3, tempView:Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/nvidia/tegrazone/adapters/FeaturedAdapter;->viewArray:[Landroid/view/View;

    array-length v4, v4

    if-lt v0, v4, :cond_1

    .line 57
    const v4, 0x7f0a002e

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nvidia/tegrazone/components/GFWebImageView;

    .line 59
    .local v1, img:Lcom/nvidia/tegrazone/components/GFWebImageView;
    iget-object v4, p0, Lcom/nvidia/tegrazone/adapters/FeaturedAdapter;->featuredItems:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-gt p1, v4, :cond_4

    .line 61
    iget-object v4, p0, Lcom/nvidia/tegrazone/adapters/FeaturedAdapter;->featuredItems:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    aget-object v4, v4, p1

    iput-object v4, p0, Lcom/nvidia/tegrazone/adapters/FeaturedAdapter;->tempGame:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 62
    iget-object v4, v1, Lcom/nvidia/tegrazone/components/GFWebImageView;->imageUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/nvidia/tegrazone/adapters/FeaturedAdapter;->tempGame:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    invoke-virtual {v5}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getFeaturedImage()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_0

    .line 63
    iget-object v4, p0, Lcom/nvidia/tegrazone/adapters/FeaturedAdapter;->tempGame:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getFeaturedImage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Lcom/nvidia/tegrazone/components/GFWebImageView;->loadImage()V

    .line 70
    :cond_0
    :goto_1
    return-object v3

    .line 45
    .end local v1           #img:Lcom/nvidia/tegrazone/components/GFWebImageView;
    :cond_1
    iget-object v4, p0, Lcom/nvidia/tegrazone/adapters/FeaturedAdapter;->viewArray:[Landroid/view/View;

    aget-object v4, v4, v0

    if-eqz v4, :cond_3

    .line 46
    if-ne v0, p1, :cond_2

    .line 47
    iget-object v4, p0, Lcom/nvidia/tegrazone/adapters/FeaturedAdapter;->viewArray:[Landroid/view/View;

    aget-object v3, v4, v0

    .end local v3           #tempView:Landroid/widget/LinearLayout;
    check-cast v3, Landroid/widget/LinearLayout;

    .line 44
    .restart local v3       #tempView:Landroid/widget/LinearLayout;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_3
    if-ne v0, p1, :cond_2

    .line 51
    const v4, 0x7f030013

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .end local v3           #tempView:Landroid/widget/LinearLayout;
    check-cast v3, Landroid/widget/LinearLayout;

    .line 52
    .restart local v3       #tempView:Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/nvidia/tegrazone/adapters/FeaturedAdapter;->viewArray:[Landroid/view/View;

    aput-object v3, v4, v0

    goto :goto_2

    .line 67
    .restart local v1       #img:Lcom/nvidia/tegrazone/components/GFWebImageView;
    :cond_4
    new-instance v3, Landroid/widget/LinearLayout;

    .end local v3           #tempView:Landroid/widget/LinearLayout;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .restart local v3       #tempView:Landroid/widget/LinearLayout;
    goto :goto_1
.end method
