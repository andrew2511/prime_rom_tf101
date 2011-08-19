.class public Lcom/nvidia/tegrazone/adapters/AppListingAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppListingAdapter.java"


# instance fields
.field public games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;)V
    .locals 0
    .parameter "c"
    .parameter "games"

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/nvidia/tegrazone/adapters/AppListingAdapter;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/nvidia/tegrazone/adapters/AppListingAdapter;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nvidia/tegrazone/adapters/AppListingAdapter;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 37
    int-to-long v0, p1

    return-wide v0
.end method

.method public getScale(ZI)F
    .locals 6
    .parameter "focused"
    .parameter "offset"

    .prologue
    .line 105
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
    .locals 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 42
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 45
    .local v5, linflater:Landroid/view/LayoutInflater;
    if-eqz p2, :cond_3

    .line 46
    const-string v11, "re-using the convertView!"

    invoke-static {v11}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 47
    move-object v10, p2

    .line 52
    .local v10, tempView:Landroid/view/View;
    :goto_0
    iget-object v11, p0, Lcom/nvidia/tegrazone/adapters/AppListingAdapter;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    array-length v11, v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-gt p1, v11, :cond_7

    .line 54
    const/4 v9, 0x0

    .line 56
    .local v9, tempGame:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    iget-object v11, p0, Lcom/nvidia/tegrazone/adapters/AppListingAdapter;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    aget-object v9, v11, p1

    .line 59
    const v11, 0x7f0a000e

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 60
    .local v1, firstLine:Landroid/widget/TextView;
    const v11, 0x7f0a000f

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 61
    .local v8, secondLine:Landroid/widget/TextView;
    const v11, 0x7f0a0020

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 62
    .local v7, reviewLine:Landroid/widget/TextView;
    const v11, 0x7f0a0012

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 64
    .local v6, priceLine:Landroid/widget/TextView;
    invoke-virtual {v9}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getDeveloper()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v9}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getDeveloper()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    move-result-object v11

    array-length v11, v11

    if-lez v11, :cond_0

    .line 65
    const-string v0, ""

    .line 66
    .local v0, developerString:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    invoke-virtual {v9}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getDeveloper()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    move-result-object v11

    array-length v11, v11

    if-lt v4, v11, :cond_4

    .line 73
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .end local v0           #developerString:Ljava/lang/String;
    .end local v4           #j:I
    :cond_0
    invoke-virtual {v9}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v9}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getPrice()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    if-eq v11, v12, :cond_6

    invoke-virtual {v9}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getPrice()Ljava/lang/String;

    move-result-object v11

    :goto_2
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v9}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getReviews()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v9}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getReviews()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getReviews()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " Reviews"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_1
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 84
    rem-int/lit8 v11, p1, 0x2

    if-eqz v11, :cond_2

    const v11, 0x7f020009

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 86
    :cond_2
    const v11, 0x7f0a001d

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nvidia/tegrazone/components/GFWebImageView;

    .line 87
    .local v2, iconImage:Lcom/nvidia/tegrazone/components/GFWebImageView;
    invoke-virtual {v9}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getSmallImage()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, imgURL:Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2}, Lcom/nvidia/tegrazone/components/GFWebImageView;->loadImage()V

    .line 92
    invoke-virtual {v9}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getAppId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 97
    .end local v1           #firstLine:Landroid/widget/TextView;
    .end local v2           #iconImage:Lcom/nvidia/tegrazone/components/GFWebImageView;
    .end local v3           #imgURL:Ljava/lang/String;
    .end local v6           #priceLine:Landroid/widget/TextView;
    .end local v7           #reviewLine:Landroid/widget/TextView;
    .end local v8           #secondLine:Landroid/widget/TextView;
    .end local v9           #tempGame:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    :goto_3
    return-object v10

    .line 49
    .end local v10           #tempView:Landroid/view/View;
    :cond_3
    const v11, 0x7f03000b

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .restart local v10       #tempView:Landroid/view/View;
    goto/16 :goto_0

    .line 67
    .restart local v0       #developerString:Ljava/lang/String;
    .restart local v1       #firstLine:Landroid/widget/TextView;
    .restart local v4       #j:I
    .restart local v6       #priceLine:Landroid/widget/TextView;
    .restart local v7       #reviewLine:Landroid/widget/TextView;
    .restart local v8       #secondLine:Landroid/widget/TextView;
    .restart local v9       #tempGame:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    :cond_4
    invoke-virtual {v9}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getDeveloper()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    move-result-object v11

    array-length v11, v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-eq v4, v11, :cond_5

    .line 68
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getDeveloper()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v12}, Lcom/nvidia/tegrazone/model/vo/DeveloperVO;->getDeveloperName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 70
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getDeveloper()[Lcom/nvidia/tegrazone/model/vo/DeveloperVO;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v12}, Lcom/nvidia/tegrazone/model/vo/DeveloperVO;->getDeveloperName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 78
    .end local v0           #developerString:Ljava/lang/String;
    .end local v4           #j:I
    :cond_6
    const-string v11, "$12.99"

    goto/16 :goto_2

    .line 94
    .end local v1           #firstLine:Landroid/widget/TextView;
    .end local v6           #priceLine:Landroid/widget/TextView;
    .end local v7           #reviewLine:Landroid/widget/TextView;
    .end local v8           #secondLine:Landroid/widget/TextView;
    .end local v9           #tempGame:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    :cond_7
    new-instance v10, Landroid/view/View;

    .end local v10           #tempView:Landroid/view/View;
    iget-object v11, p0, Lcom/nvidia/tegrazone/adapters/AppListingAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .restart local v10       #tempView:Landroid/view/View;
    goto :goto_3
.end method
