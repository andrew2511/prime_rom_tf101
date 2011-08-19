.class public Lcom/layar/FeaturedListActivity;
.super Lcom/layar/LayerListActivity;
.source "FeaturedListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/FeaturedListActivity$ShowFeaturedTask;
    }
.end annotation


# static fields
.field private static LEFT_BANNER:I

.field private static RIGHT_BANNER:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/layer/LayersGroup;",
            ">;"
        }
    .end annotation
.end field

.field private showTask:Lcom/layar/FeaturedListActivity$ShowFeaturedTask;

.field private viewBanner:Landroid/view/View;

.field private viewBannerImageLeft:Landroid/widget/ImageView;

.field private viewBannerImageRight:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/layar/FeaturedListActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/FeaturedListActivity;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/layar/FeaturedListActivity;->LEFT_BANNER:I

    .line 33
    const/4 v0, 0x1

    sput v0, Lcom/layar/FeaturedListActivity;->RIGHT_BANNER:I

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/layar/LayerListActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/FeaturedListActivity;->showTask:Lcom/layar/FeaturedListActivity$ShowFeaturedTask;

    .line 38
    const-string v0, "all"

    iput-object v0, p0, Lcom/layar/FeaturedListActivity;->mSelectedSubSection:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/layar/FeaturedListActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/layar/FeaturedListActivity;->mGroups:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1(Lcom/layar/FeaturedListActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/layar/FeaturedListActivity;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/FeaturedListActivity;)Lcom/layar/FeaturedListActivity$ShowFeaturedTask;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/layar/FeaturedListActivity;->showTask:Lcom/layar/FeaturedListActivity$ShowFeaturedTask;

    return-object v0
.end method

.method static synthetic access$3()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/layar/FeaturedListActivity;->LEFT_BANNER:I

    return v0
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/layar/FeaturedListActivity;->RIGHT_BANNER:I

    return v0
.end method

.method static synthetic access$5(Lcom/layar/FeaturedListActivity;Lcom/layar/data/layer/LayersGroup;Lcom/layar/data/layer/LayersGroup;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/layar/FeaturedListActivity;->initBannerView(Lcom/layar/data/layer/LayersGroup;Lcom/layar/data/layer/LayersGroup;)V

    return-void
.end method

.method private initBannerView(Lcom/layar/data/layer/LayersGroup;Lcom/layar/data/layer/LayersGroup;)V
    .locals 5
    .parameter "groupLeft"
    .parameter "groupRight"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0200a2

    const/4 v2, 0x0

    .line 113
    iget-object v1, p0, Lcom/layar/FeaturedListActivity;->viewBanner:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 114
    const v1, 0x7f070013

    invoke-virtual {p0, v1}, Lcom/layar/FeaturedListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    invoke-static {}, Lcom/layar/App;->getImageCache()Lcom/layar/data/ImageCache;

    move-result-object v0

    .line 116
    .local v0, imageCache:Lcom/layar/data/ImageCache;
    iget-object v1, p1, Lcom/layar/data/layer/LayersGroup;->imageUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p1, Lcom/layar/data/layer/LayersGroup;->imageUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/FeaturedListActivity;->viewBannerImageLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, v4}, Lcom/layar/data/ImageCache;->setGroupImageBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    .line 122
    :goto_0
    iget-object v1, p2, Lcom/layar/data/layer/LayersGroup;->imageUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p2, Lcom/layar/data/layer/LayersGroup;->imageUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/FeaturedListActivity;->viewBannerImageRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, v4}, Lcom/layar/data/ImageCache;->setGroupImageBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    .line 127
    :goto_1
    return-void

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/layar/FeaturedListActivity;->viewBannerImageLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/layar/FeaturedListActivity;->viewBannerImageRight:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private performGroupClick(Lcom/layar/data/layer/LayersGroup;)V
    .locals 5
    .parameter "group"

    .prologue
    const/4 v3, 0x1

    .line 240
    if-nez p1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v2, p1, Lcom/layar/data/layer/LayersGroup;->layers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 244
    .local v0, count:I
    if-eqz v0, :cond_0

    .line 250
    if-ne v0, v3, :cond_2

    .line 251
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/layar/LayerInfoActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .local v1, i:Landroid/content/Intent;
    const-string v3, "info:layername"

    iget-object v2, p1, Lcom/layar/data/layer/LayersGroup;->layers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/layar/data/layer/Layer20;

    iget-object v2, v2, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    iget-object v2, p0, Lcom/layar/FeaturedListActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v2, v1}, Lcom/layar/ActivityHelper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 254
    .end local v1           #i:Landroid/content/Intent;
    :cond_2
    if-le v0, v3, :cond_0

    .line 255
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/layar/GroupLayersListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    .restart local v1       #i:Landroid/content/Intent;
    const-string v2, "group:id"

    iget v3, p1, Lcom/layar/data/layer/LayersGroup;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    const-string v2, "group:name"

    iget-object v3, p1, Lcom/layar/data/layer/LayersGroup;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    iget-object v2, p0, Lcom/layar/FeaturedListActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v2, v1}, Lcom/layar/ActivityHelper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected _loadMore()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/layar/FeaturedListActivity;->showTask:Lcom/layar/FeaturedListActivity$ShowFeaturedTask;

    if-eqz v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v0, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;-><init>(Lcom/layar/FeaturedListActivity;Lcom/layar/FeaturedListActivity$ShowFeaturedTask;)V

    iput-object v0, p0, Lcom/layar/FeaturedListActivity;->showTask:Lcom/layar/FeaturedListActivity$ShowFeaturedTask;

    .line 91
    iget-object v0, p0, Lcom/layar/FeaturedListActivity;->showTask:Lcom/layar/FeaturedListActivity$ShowFeaturedTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/layar/FeaturedListActivity$ShowFeaturedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected doLaunchOnClick()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f03001c

    return v0
.end method

.method protected getListType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "featured"

    return-object v0
.end method

.method protected getSectionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const v0, 0x7f090088

    invoke-virtual {p0, v0}, Lcom/layar/FeaturedListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/layar/FeaturedListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected initSubsection()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/layar/LayerListActivity;->onClick(Landroid/view/View;)V

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 237
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 226
    :pswitch_1
    iget-object v0, p0, Lcom/layar/FeaturedListActivity;->mGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/FeaturedListActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/layar/FeaturedListActivity;->mGroups:Ljava/util/ArrayList;

    sget v1, Lcom/layar/FeaturedListActivity;->LEFT_BANNER:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/data/layer/LayersGroup;

    invoke-direct {p0, v0}, Lcom/layar/FeaturedListActivity;->performGroupClick(Lcom/layar/data/layer/LayersGroup;)V

    goto :goto_0

    .line 231
    :pswitch_2
    iget-object v0, p0, Lcom/layar/FeaturedListActivity;->mGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/FeaturedListActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/layar/FeaturedListActivity;->mGroups:Ljava/util/ArrayList;

    sget v1, Lcom/layar/FeaturedListActivity;->RIGHT_BANNER:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/data/layer/LayersGroup;

    invoke-direct {p0, v0}, Lcom/layar/FeaturedListActivity;->performGroupClick(Lcom/layar/data/layer/LayersGroup;)V

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x7f070059
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/layar/LayerListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f090100

    invoke-virtual {p0, v0}, Lcom/layar/FeaturedListActivity;->showNoLayersMessage(I)V

    .line 46
    const v0, 0x7f070057

    invoke-virtual {p0, v0}, Lcom/layar/FeaturedListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/FeaturedListActivity;->viewBanner:Landroid/view/View;

    .line 47
    const v0, 0x7f070059

    invoke-virtual {p0, v0}, Lcom/layar/FeaturedListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/layar/FeaturedListActivity;->viewBannerImageLeft:Landroid/widget/ImageView;

    .line 48
    iget-object v0, p0, Lcom/layar/FeaturedListActivity;->viewBannerImageLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v0, 0x7f07005b

    invoke-virtual {p0, v0}, Lcom/layar/FeaturedListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/layar/FeaturedListActivity;->viewBannerImageRight:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcom/layar/FeaturedListActivity;->viewBannerImageRight:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/layar/LayerListActivity;->onPause()V

    .line 108
    iget-object v0, p0, Lcom/layar/FeaturedListActivity;->showTask:Lcom/layar/FeaturedListActivity$ShowFeaturedTask;

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/FeaturedListActivity;->showTask:Lcom/layar/FeaturedListActivity$ShowFeaturedTask;

    .line 110
    :cond_0
    return-void
.end method

.method public reloadData()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/layar/FeaturedListActivity;->showTask:Lcom/layar/FeaturedListActivity$ShowFeaturedTask;

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/FeaturedListActivity;->showTask:Lcom/layar/FeaturedListActivity$ShowFeaturedTask;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/layar/FeaturedListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v0}, Lcom/layar/adapters/BaseLayersAdapter;->clear()V

    .line 102
    invoke-virtual {p0}, Lcom/layar/FeaturedListActivity;->_loadMore()V

    .line 103
    return-void
.end method
