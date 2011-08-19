.class public Lcom/nvidia/tegrazone/builders/NewsBuilder;
.super Ljava/lang/Object;
.source "NewsBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildNews(Landroid/app/Activity;)V
    .locals 11
    .parameter "a"

    .prologue
    .line 23
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iget-object v6, v0, Lcom/nvidia/tegrazone/model/NVModel;->currentNews:Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;

    .line 25
    .local v6, news:Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;
    const/4 v5, 0x0

    .line 26
    .local v5, marked_up:Landroid/text/Spanned;
    const v0, 0x7f0a009b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 27
    .local v4, l:Landroid/widget/LinearLayout;
    const v0, 0x7f0a009e

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 28
    .local v7, title:Landroid/widget/TextView;
    const v0, 0x7f0a009d

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 29
    .local v1, date:Landroid/widget/TextView;
    const v0, 0x7f0a009f

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 30
    .local v0, author:Landroid/widget/TextView;
    const v2, 0x7f0a009c

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/nvidia/tegrazone/components/GFWebImageView;

    .line 32
    .local v3, img:Lcom/nvidia/tegrazone/components/GFWebImageView;
    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getAuthor()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getAuthor()Ljava/lang/String;

    move-result-object v2

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 33
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v8, 0x7f060004

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, format:Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getAuthor()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .end local v2           #format:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :goto_0
    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getLongDescription()Ljava/lang/String;

    move-result-object v0

    .end local v0           #author:Landroid/widget/TextView;
    if-eqz v0, :cond_8

    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getLongDescription()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 42
    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getLongDescription()Ljava/lang/String;

    move-result-object v0

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getLongDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .end local v5           #marked_up:Landroid/text/Spanned;
    .local v0, marked_up:Landroid/text/Spanned;
    move-object v2, v0

    .line 44
    .end local v0           #marked_up:Landroid/text/Spanned;
    .local v2, marked_up:Landroid/text/Spanned;
    :goto_1
    if-eqz v2, :cond_0

    .line 45
    const v0, 0x7f0a00a0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    .local v0, body:Landroid/widget/TextView;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 49
    .end local v0           #body:Landroid/widget/TextView;
    .end local v2           #marked_up:Landroid/text/Spanned;
    :cond_0
    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getReleaseDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getReleaseDate()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getReleaseDate()Ljava/lang/String;

    move-result-object v0

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getReleaseDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_1
    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getHeaderImage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 53
    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getHeaderImage()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .end local v1           #date:Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 54
    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getHeaderImage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 55
    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getHeaderImage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v2

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->imagesPath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/Active/en_US"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 56
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setVisibility(I)V

    .line 57
    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getHeaderImage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v3}, Lcom/nvidia/tegrazone/components/GFWebImageView;->loadImage()V

    .line 66
    :goto_2
    const v0, 0x7f0a00a1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #img:Lcom/nvidia/tegrazone/components/GFWebImageView;
    check-cast v3, Landroid/widget/LinearLayout;

    .line 67
    .local v3, videoHolder:Landroid/widget/LinearLayout;
    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getVideos()[Lcom/nvidia/tegrazone/model/vo/VideoVO;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getVideos()[Lcom/nvidia/tegrazone/model/vo/VideoVO;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_7

    .line 68
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 69
    :cond_2
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 71
    .local v1, linflater:Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .end local v4           #l:Landroid/widget/LinearLayout;
    .end local v7           #title:Landroid/widget/TextView;
    .local v0, i:I
    :goto_3
    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getVideos()[Lcom/nvidia/tegrazone/model/vo/VideoVO;

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_5

    .line 92
    const/4 p0, 0x0

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    .end local v0           #i:I
    .end local v1           #linflater:Landroid/view/LayoutInflater;
    .end local p0
    :goto_4
    return-void

    .line 37
    .local v0, author:Landroid/widget/TextView;
    .local v1, date:Landroid/widget/TextView;
    .local v3, img:Lcom/nvidia/tegrazone/components/GFWebImageView;
    .restart local v4       #l:Landroid/widget/LinearLayout;
    .restart local v5       #marked_up:Landroid/text/Spanned;
    .restart local v7       #title:Landroid/widget/TextView;
    .restart local p0
    :cond_3
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 61
    .end local v0           #author:Landroid/widget/TextView;
    .end local v1           #date:Landroid/widget/TextView;
    .end local v5           #marked_up:Landroid/text/Spanned;
    :cond_4
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setVisibility(I)V

    goto :goto_2

    .line 73
    .end local v4           #l:Landroid/widget/LinearLayout;
    .end local v7           #title:Landroid/widget/TextView;
    .local v0, i:I
    .local v1, linflater:Landroid/view/LayoutInflater;
    .local v3, videoHolder:Landroid/widget/LinearLayout;
    :cond_5
    const v2, 0x7f03003a

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 74
    .local v5, videoLink:Landroid/view/View;
    const v2, 0x7f0a00ca

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/nvidia/tegrazone/components/GFWebImageView;

    .line 75
    .local v4, videoImage:Lcom/nvidia/tegrazone/components/GFWebImageView;
    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getVideos()[Lcom/nvidia/tegrazone/model/vo/VideoVO;

    move-result-object v2

    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getVideos()[Lcom/nvidia/tegrazone/model/vo/VideoVO;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/VideoVO;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 76
    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getVideos()[Lcom/nvidia/tegrazone/model/vo/VideoVO;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/VideoVO;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v4}, Lcom/nvidia/tegrazone/components/GFWebImageView;->loadImage()V

    .line 80
    :cond_6
    move-object v2, p0

    .line 81
    .local v2, newsActivity:Landroid/app/Activity;
    new-instance v7, Lcom/nvidia/tegrazone/builders/NewsBuilder$1;

    invoke-direct {v7, v6, v2}, Lcom/nvidia/tegrazone/builders/NewsBuilder$1;-><init>(Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;Landroid/app/Activity;)V

    invoke-virtual {v4, v7}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .end local v2           #newsActivity:Landroid/app/Activity;
    invoke-virtual {v4, v2}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setTag(Ljava/lang/Object;)V

    .line 89
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 94
    .end local v0           #i:I
    .end local v1           #linflater:Landroid/view/LayoutInflater;
    .end local v5           #videoLink:Landroid/view/View;
    .local v4, l:Landroid/widget/LinearLayout;
    .restart local v7       #title:Landroid/widget/TextView;
    :cond_7
    const/16 p0, 0x8

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .local v1, date:Landroid/widget/TextView;
    .local v3, img:Lcom/nvidia/tegrazone/components/GFWebImageView;
    .local v5, marked_up:Landroid/text/Spanned;
    :cond_8
    move-object v2, v5

    .end local v5           #marked_up:Landroid/text/Spanned;
    .local v2, marked_up:Landroid/text/Spanned;
    goto/16 :goto_1
.end method


# virtual methods
.method public launchVideo(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 101
    return-void
.end method
