.class public Lcom/nvidia/tegrazone/adapters/ImageViewerAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageViewerAdapter.java"


# instance fields
.field private urls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private viewArray:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "a"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, incomingUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/nvidia/tegrazone/adapters/ImageViewerAdapter;->viewArray:[Landroid/view/View;

    .line 24
    iput-object p2, p0, Lcom/nvidia/tegrazone/adapters/ImageViewerAdapter;->urls:Ljava/util/ArrayList;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nvidia/tegrazone/adapters/ImageViewerAdapter;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

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
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 41
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 42
    .local v2, linflater:Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    .line 45
    .local v3, tempView:Landroid/widget/RelativeLayout;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/nvidia/tegrazone/adapters/ImageViewerAdapter;->viewArray:[Landroid/view/View;

    array-length v5, v5

    if-lt v0, v5, :cond_1

    .line 59
    if-eqz v3, :cond_0

    .line 60
    const v5, 0x7f0a0088

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nvidia/tegrazone/components/GFWebImageView;

    .line 62
    .local v1, img:Lcom/nvidia/tegrazone/components/GFWebImageView;
    iget-object v5, p0, Lcom/nvidia/tegrazone/adapters/ImageViewerAdapter;->urls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-gt p1, v5, :cond_4

    .line 63
    iget-object v5, p0, Lcom/nvidia/tegrazone/adapters/ImageViewerAdapter;->urls:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, url:Ljava/lang/String;
    iget-object v5, v1, Lcom/nvidia/tegrazone/components/GFWebImageView;->imageUrl:Ljava/lang/String;

    if-eq v5, v4, :cond_0

    .line 65
    invoke-virtual {v1, v4}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1}, Lcom/nvidia/tegrazone/components/GFWebImageView;->loadImage()V

    .line 73
    .end local v1           #img:Lcom/nvidia/tegrazone/components/GFWebImageView;
    .end local v4           #url:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v3

    .line 46
    .restart local p0
    :cond_1
    iget-object v5, p0, Lcom/nvidia/tegrazone/adapters/ImageViewerAdapter;->viewArray:[Landroid/view/View;

    aget-object v5, v5, v0

    if-eqz v5, :cond_3

    .line 47
    if-ne v0, p1, :cond_2

    .line 48
    iget-object v5, p0, Lcom/nvidia/tegrazone/adapters/ImageViewerAdapter;->viewArray:[Landroid/view/View;

    aget-object v3, v5, v0

    .end local v3           #tempView:Landroid/widget/RelativeLayout;
    check-cast v3, Landroid/widget/RelativeLayout;

    .line 45
    .restart local v3       #tempView:Landroid/widget/RelativeLayout;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_3
    if-ne v0, p1, :cond_2

    .line 52
    const v5, 0x7f03001c

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .end local v3           #tempView:Landroid/widget/RelativeLayout;
    check-cast v3, Landroid/widget/RelativeLayout;

    .line 53
    .restart local v3       #tempView:Landroid/widget/RelativeLayout;
    iget-object v5, p0, Lcom/nvidia/tegrazone/adapters/ImageViewerAdapter;->viewArray:[Landroid/view/View;

    aput-object v3, v5, v0

    goto :goto_2

    .line 69
    .restart local v1       #img:Lcom/nvidia/tegrazone/components/GFWebImageView;
    :cond_4
    new-instance v3, Landroid/widget/RelativeLayout;

    .end local v3           #tempView:Landroid/widget/RelativeLayout;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .restart local v3       #tempView:Landroid/widget/RelativeLayout;
    goto :goto_1
.end method
