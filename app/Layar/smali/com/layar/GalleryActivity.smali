.class public Lcom/layar/GalleryActivity;
.super Lcom/layar/OurActivity;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/layar/data/layer/LayersType;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/GalleryActivity$GetFeaturedIcon;,
        Lcom/layar/GalleryActivity$RefreshTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/layar/adapters/GalleryExpandableAdapter;

.field private mGetFeaturedTask:Lcom/layar/GalleryActivity$GetFeaturedIcon;

.field private mRefreshTask:Lcom/layar/GalleryActivity$RefreshTask;

.field private viewList:Landroid/widget/ExpandableListView;

.field private viewSearch:Lcom/layar/ui/SearchWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/layar/GalleryActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/GalleryActivity;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/layar/OurActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/GalleryActivity;)Lcom/layar/adapters/GalleryExpandableAdapter;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/layar/GalleryActivity;->mAdapter:Lcom/layar/adapters/GalleryExpandableAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/GalleryActivity;)Landroid/widget/ExpandableListView;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/layar/GalleryActivity;->viewList:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/GalleryActivity;Lcom/layar/GalleryActivity$RefreshTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/layar/GalleryActivity;->mRefreshTask:Lcom/layar/GalleryActivity$RefreshTask;

    return-void
.end method

.method static synthetic access$3(Lcom/layar/GalleryActivity;Lcom/layar/GalleryActivity$GetFeaturedIcon;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/layar/GalleryActivity;->mGetFeaturedTask:Lcom/layar/GalleryActivity$GetFeaturedIcon;

    return-void
.end method

.method private setFeaturedIcon()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 167
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layar/data/layer/LayerManager;->readFirstFeaturedLayerName()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, layerName:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 169
    new-instance v2, Lcom/layar/GalleryActivity$GetFeaturedIcon;

    invoke-direct {v2, p0, v4}, Lcom/layar/GalleryActivity$GetFeaturedIcon;-><init>(Lcom/layar/GalleryActivity;Lcom/layar/GalleryActivity$GetFeaturedIcon;)V

    iput-object v2, p0, Lcom/layar/GalleryActivity;->mGetFeaturedTask:Lcom/layar/GalleryActivity$GetFeaturedIcon;

    .line 170
    iget-object v2, p0, Lcom/layar/GalleryActivity;->mGetFeaturedTask:Lcom/layar/GalleryActivity$GetFeaturedIcon;

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/layar/GalleryActivity$GetFeaturedIcon;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 181
    :goto_0
    return-void

    .line 174
    :cond_0
    const-string v2, "icon"

    invoke-static {v1, v2, v3}, Lcom/layar/data/ImageCache;->readLayerImage(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    .local v0, icon:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 176
    new-instance v2, Lcom/layar/GalleryActivity$GetFeaturedIcon;

    invoke-direct {v2, p0, v4}, Lcom/layar/GalleryActivity$GetFeaturedIcon;-><init>(Lcom/layar/GalleryActivity;Lcom/layar/GalleryActivity$GetFeaturedIcon;)V

    iput-object v2, p0, Lcom/layar/GalleryActivity;->mGetFeaturedTask:Lcom/layar/GalleryActivity$GetFeaturedIcon;

    .line 177
    iget-object v2, p0, Lcom/layar/GalleryActivity;->mGetFeaturedTask:Lcom/layar/GalleryActivity$GetFeaturedIcon;

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/layar/GalleryActivity$GetFeaturedIcon;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 180
    :cond_1
    iget-object v2, p0, Lcom/layar/GalleryActivity;->mAdapter:Lcom/layar/adapters/GalleryExpandableAdapter;

    const-string v3, "featured"

    invoke-virtual {v2, v3, v0}, Lcom/layar/adapters/GalleryExpandableAdapter;->updateTab(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 5
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 138
    if-nez p3, :cond_2

    .line 139
    iget-object v2, p0, Lcom/layar/GalleryActivity;->mAdapter:Lcom/layar/adapters/GalleryExpandableAdapter;

    invoke-virtual {v2, p4}, Lcom/layar/adapters/GalleryExpandableAdapter;->getTab(I)Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;

    move-result-object v1

    .line 140
    .local v1, item:Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, v1, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->intentClass:Ljava/lang/Class;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, v1, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->extrasBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, v1, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->extrasBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/layar/GalleryActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v2, v0}, Lcom/layar/ActivityHelper;->startActivity(Landroid/content/Intent;)V

    .line 154
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #item:Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;
    :cond_1
    :goto_0
    return v4

    .line 144
    :cond_2
    if-ne p3, v4, :cond_1

    .line 145
    iget-object v2, p0, Lcom/layar/GalleryActivity;->mAdapter:Lcom/layar/adapters/GalleryExpandableAdapter;

    invoke-virtual {v2, p4}, Lcom/layar/adapters/GalleryExpandableAdapter;->getItem(I)Lcom/layar/data/category/Category;

    move-result-object v1

    .line 147
    .local v1, item:Lcom/layar/data/category/Category;
    new-instance v0, Landroid/content/Intent;

    .line 148
    const-class v2, Lcom/layar/CategoryLayersListActivity;

    .line 147
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "categoryId"

    iget v3, v1, Lcom/layar/data/category/Category;->id:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    const-string v2, "categoryName"

    iget-object v3, v1, Lcom/layar/data/category/Category;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-object v2, p0, Lcom/layar/GalleryActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v2, v0}, Lcom/layar/ActivityHelper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/layar/OurActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/layar/GalleryActivity;->setContentView(I)V

    .line 54
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/layar/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/layar/ui/SearchWidget;

    iput-object v0, p0, Lcom/layar/GalleryActivity;->viewSearch:Lcom/layar/ui/SearchWidget;

    .line 55
    iget-object v0, p0, Lcom/layar/GalleryActivity;->viewSearch:Lcom/layar/ui/SearchWidget;

    new-instance v1, Lcom/layar/GalleryActivity$1;

    invoke-direct {v1, p0}, Lcom/layar/GalleryActivity$1;-><init>(Lcom/layar/GalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/layar/ui/SearchWidget;->setSearchListener(Lcom/layar/ui/SearchWidget$SearchListener;)V

    .line 70
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/layar/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/layar/GalleryActivity;->viewList:Landroid/widget/ExpandableListView;

    .line 71
    new-instance v0, Lcom/layar/adapters/GalleryExpandableAdapter;

    invoke-direct {v0, p0}, Lcom/layar/adapters/GalleryExpandableAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/GalleryActivity;->mAdapter:Lcom/layar/adapters/GalleryExpandableAdapter;

    .line 72
    iget-object v0, p0, Lcom/layar/GalleryActivity;->viewList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/layar/GalleryActivity;->mAdapter:Lcom/layar/adapters/GalleryExpandableAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 74
    iget-object v0, p0, Lcom/layar/GalleryActivity;->viewList:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 75
    iget-object v0, p0, Lcom/layar/GalleryActivity;->viewList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 76
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/layar/OurActivity;->onPause()V

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/layar/GalleryActivity;->mRefreshTask:Lcom/layar/GalleryActivity$RefreshTask;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/layar/GalleryActivity;->mRefreshTask:Lcom/layar/GalleryActivity$RefreshTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/layar/GalleryActivity$RefreshTask;->cancel(Z)Z

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/GalleryActivity;->mRefreshTask:Lcom/layar/GalleryActivity$RefreshTask;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/layar/GalleryActivity;->mGetFeaturedTask:Lcom/layar/GalleryActivity$GetFeaturedIcon;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/layar/GalleryActivity;->mGetFeaturedTask:Lcom/layar/GalleryActivity$GetFeaturedIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/layar/GalleryActivity$GetFeaturedIcon;->cancel(Z)Z

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/GalleryActivity;->mGetFeaturedTask:Lcom/layar/GalleryActivity$GetFeaturedIcon;

    .line 96
    :cond_1
    monitor-exit p0

    .line 107
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onPrepareTabList()V
    .locals 12

    .prologue
    .line 110
    iget-object v0, p0, Lcom/layar/GalleryActivity;->mAdapter:Lcom/layar/adapters/GalleryExpandableAdapter;

    invoke-virtual {v0}, Lcom/layar/adapters/GalleryExpandableAdapter;->clearTabs()V

    .line 112
    iget-object v0, p0, Lcom/layar/GalleryActivity;->mAdapter:Lcom/layar/adapters/GalleryExpandableAdapter;

    const-string v1, "featured"

    const v2, 0x7f0200a5

    const v3, 0x7f090088

    const-class v4, Lcom/layar/FeaturedListActivity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/layar/adapters/GalleryExpandableAdapter;->addTab(Ljava/lang/String;IILjava/lang/Class;)V

    .line 113
    iget-object v0, p0, Lcom/layar/GalleryActivity;->mAdapter:Lcom/layar/adapters/GalleryExpandableAdapter;

    const-string v1, "popular"

    const v2, 0x7f0200aa

    const v3, 0x7f090089

    const-class v4, Lcom/layar/PopularListActivity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/layar/adapters/GalleryExpandableAdapter;->addTab(Ljava/lang/String;IILjava/lang/Class;)V

    .line 114
    iget-object v0, p0, Lcom/layar/GalleryActivity;->mAdapter:Lcom/layar/adapters/GalleryExpandableAdapter;

    const-string v1, "new"

    const v2, 0x7f0200a6

    const v3, 0x7f09008a

    const-class v4, Lcom/layar/NewLayersActivity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/layar/adapters/GalleryExpandableAdapter;->addTab(Ljava/lang/String;IILjava/lang/Class;)V

    .line 115
    invoke-direct {p0}, Lcom/layar/GalleryActivity;->setFeaturedIcon()V

    .line 117
    invoke-static {}, Lcom/layar/App;->getVariantsManager()Lcom/layar/data/variants/VariantsManager;

    move-result-object v10

    .line 118
    .local v10, variantsManager:Lcom/layar/data/variants/VariantsManager;
    invoke-virtual {v10}, Lcom/layar/data/variants/VariantsManager;->getVariants()Ljava/util/ArrayList;

    move-result-object v9

    .line 119
    .local v9, variants:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/variants/Variant;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 120
    .local v6, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-lt v7, v6, :cond_1

    .line 129
    iget-object v0, p0, Lcom/layar/GalleryActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v0}, Lcom/layar/ActivityHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/GalleryActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v0}, Lcom/layar/ActivityHelper;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/data/user/UserManager;->isDeveloper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/layar/GalleryActivity;->mAdapter:Lcom/layar/adapters/GalleryExpandableAdapter;

    const-string v1, "test"

    const v2, 0x7f0200a4

    const v3, 0x7f09008e

    const-class v4, Lcom/layar/TestLayersActivity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/layar/adapters/GalleryExpandableAdapter;->addTab(Ljava/lang/String;IILjava/lang/Class;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/layar/GalleryActivity;->mAdapter:Lcom/layar/adapters/GalleryExpandableAdapter;

    invoke-virtual {v0}, Lcom/layar/adapters/GalleryExpandableAdapter;->notifyDataSetChanged()V

    .line 133
    return-void

    .line 121
    :cond_1
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/layar/data/variants/Variant;

    .line 122
    .local v8, variant:Lcom/layar/data/variants/Variant;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v5, extras:Landroid/os/Bundle;
    const-string v0, "variantId"

    iget-object v1, v8, Lcom/layar/data/variants/Variant;->name:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "variantName"

    iget-object v1, v8, Lcom/layar/data/variants/Variant;->heading:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v11, p0, Lcom/layar/GalleryActivity;->mAdapter:Lcom/layar/adapters/GalleryExpandableAdapter;

    new-instance v0, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "variant"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/layar/data/variants/Variant;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Lcom/layar/data/variants/Variant;->image:Landroid/graphics/Bitmap;

    .line 126
    iget-object v3, v8, Lcom/layar/data/variants/Variant;->heading:Ljava/lang/String;

    const-class v4, Lcom/layar/VariantDetailsActivity;

    invoke-direct/range {v0 .. v5}, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {v11, v0}, Lcom/layar/adapters/GalleryExpandableAdapter;->addTab(Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;)V

    .line 120
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/layar/OurActivity;->onResume()V

    .line 87
    invoke-virtual {p0}, Lcom/layar/GalleryActivity;->onPrepareTabList()V

    .line 88
    iget-object v0, p0, Lcom/layar/GalleryActivity;->viewSearch:Lcom/layar/ui/SearchWidget;

    invoke-virtual {v0}, Lcom/layar/ui/SearchWidget;->reset()V

    .line 89
    invoke-virtual {p0}, Lcom/layar/GalleryActivity;->refresh()V

    .line 90
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/layar/GalleryActivity;->mRefreshTask:Lcom/layar/GalleryActivity$RefreshTask;

    if-eqz v0, :cond_0

    .line 160
    monitor-exit p0

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    new-instance v0, Lcom/layar/GalleryActivity$RefreshTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/layar/GalleryActivity$RefreshTask;-><init>(Lcom/layar/GalleryActivity;Lcom/layar/GalleryActivity$RefreshTask;)V

    iput-object v0, p0, Lcom/layar/GalleryActivity;->mRefreshTask:Lcom/layar/GalleryActivity$RefreshTask;

    .line 162
    iget-object v0, p0, Lcom/layar/GalleryActivity;->mRefreshTask:Lcom/layar/GalleryActivity$RefreshTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/layar/GalleryActivity$RefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 158
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public useNavigationBar()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/layar/data/layer/LayerManager;->ADD_FAVORITE_MODE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
