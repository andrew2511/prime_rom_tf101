.class public Lcom/layar/SearchLayersActivity;
.super Lcom/layar/OurListActivity;
.source "SearchLayersActivity.java"

# interfaces
.implements Lcom/layar/ui/SearchWidget$SearchListener;


# static fields
.field public static final EXTRAS_SEARCH_QUERY:Ljava/lang/String; = "search:query"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected hasConnectionError:Z

.field private mAdapter:Lcom/layar/adapters/StandardLayersAdapter;

.field private mEmptyMessageTemplate:Ljava/lang/String;

.field private mLayerTask:Lcom/layar/data/layer/GetLayersTask;

.field private mSelectedLayer:Lcom/layar/data/layer/Layer20;

.field private viewEmptyResultsText:Landroid/widget/TextView;

.field private viewResultsHeader:Landroid/widget/TextView;

.field private viewSearchWidget:Lcom/layar/ui/SearchWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/layar/SearchLayersActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/SearchLayersActivity;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/layar/OurListActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/SearchLayersActivity;->mLayerTask:Lcom/layar/data/layer/GetLayersTask;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/SearchLayersActivity;->hasConnectionError:Z

    .line 28
    return-void
.end method

.method private _checkMore()V
    .locals 3

    .prologue
    .line 126
    iget-boolean v2, p0, Lcom/layar/SearchLayersActivity;->isActive:Z

    if-nez v2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/layar/SearchLayersActivity;->mAdapter:Lcom/layar/adapters/StandardLayersAdapter;

    invoke-virtual {v2}, Lcom/layar/adapters/StandardLayersAdapter;->getCount()I

    move-result v0

    .line 134
    .local v0, count:I
    iget-object v2, p0, Lcom/layar/SearchLayersActivity;->mAdapter:Lcom/layar/adapters/StandardLayersAdapter;

    invoke-virtual {v2}, Lcom/layar/adapters/StandardLayersAdapter;->hasPendingItem()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/layar/SearchLayersActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 137
    .local v1, lastVisible:I
    const/4 v2, 0x1

    sub-int v2, v0, v2

    if-ne v1, v2, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/layar/SearchLayersActivity;->_loadMore()V

    goto :goto_0
.end method

.method private _loadMore()V
    .locals 4

    .prologue
    .line 143
    iget-object v1, p0, Lcom/layar/SearchLayersActivity;->viewSearchWidget:Lcom/layar/ui/SearchWidget;

    invoke-virtual {v1}, Lcom/layar/ui/SearchWidget;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, query:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/layar/SearchLayersActivity;->mLayerTask:Lcom/layar/data/layer/GetLayersTask;

    if-nez v1, :cond_0

    .line 147
    new-instance v1, Lcom/layar/data/layer/GetLayersTask;

    const-string v2, "search"

    invoke-direct {p0}, Lcom/layar/SearchLayersActivity;->getLayersListener()Lcom/layar/data/DownloadListener;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/layar/data/layer/GetLayersTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/layar/data/DownloadListener;)V

    iput-object v1, p0, Lcom/layar/SearchLayersActivity;->mLayerTask:Lcom/layar/data/layer/GetLayersTask;

    .line 148
    iget-object v1, p0, Lcom/layar/SearchLayersActivity;->mLayerTask:Lcom/layar/data/layer/GetLayersTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/layar/data/layer/GetLayersTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private _onLayerClick()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 285
    new-instance v0, Lcom/layar/SearchLayersActivity$4;

    invoke-direct {v0, p0}, Lcom/layar/SearchLayersActivity$4;-><init>(Lcom/layar/SearchLayersActivity;)V

    return-object v0
.end method

.method private _onLayerLongClick()Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 274
    new-instance v0, Lcom/layar/SearchLayersActivity$3;

    invoke-direct {v0, p0}, Lcom/layar/SearchLayersActivity$3;-><init>(Lcom/layar/SearchLayersActivity;)V

    return-object v0
.end method

.method private _scrollListener()Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 246
    new-instance v0, Lcom/layar/SearchLayersActivity$2;

    invoke-direct {v0, p0}, Lcom/layar/SearchLayersActivity$2;-><init>(Lcom/layar/SearchLayersActivity;)V

    return-object v0
.end method

.method private _updateResults()V
    .locals 6

    .prologue
    .line 153
    iget-object v3, p0, Lcom/layar/SearchLayersActivity;->mAdapter:Lcom/layar/adapters/StandardLayersAdapter;

    invoke-virtual {v3}, Lcom/layar/adapters/StandardLayersAdapter;->hasPendingItem()Z

    move-result v1

    .line 154
    .local v1, hasPendingItem:Z
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/layar/SearchLayersActivity;->mAdapter:Lcom/layar/adapters/StandardLayersAdapter;

    invoke-virtual {v3}, Lcom/layar/adapters/StandardLayersAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v0, v3

    .line 156
    .local v0, count:I
    :goto_0
    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    .line 157
    :cond_0
    const v3, 0x7f0900d0

    invoke-virtual {p0, v3}, Lcom/layar/SearchLayersActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, resultTemplate:Ljava/lang/String;
    const-string v3, "%num%"

    .line 159
    if-eqz v1, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 158
    :goto_1
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 161
    const-string v3, "%query%"

    iget-object v4, p0, Lcom/layar/SearchLayersActivity;->viewSearchWidget:Lcom/layar/ui/SearchWidget;

    invoke-virtual {v4}, Lcom/layar/ui/SearchWidget;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 162
    iget-object v3, p0, Lcom/layar/SearchLayersActivity;->viewResultsHeader:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v3, p0, Lcom/layar/SearchLayersActivity;->viewResultsHeader:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    .end local v2           #resultTemplate:Ljava/lang/String;
    :goto_2
    return-void

    .line 155
    .end local v0           #count:I
    :cond_1
    iget-object v3, p0, Lcom/layar/SearchLayersActivity;->mAdapter:Lcom/layar/adapters/StandardLayersAdapter;

    invoke-virtual {v3}, Lcom/layar/adapters/StandardLayersAdapter;->getCount()I

    move-result v3

    move v0, v3

    goto :goto_0

    .line 160
    .restart local v0       #count:I
    .restart local v2       #resultTemplate:Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 165
    .end local v2           #resultTemplate:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/layar/SearchLayersActivity;->viewResultsHeader:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method static synthetic access$0(Lcom/layar/SearchLayersActivity;Lcom/layar/data/layer/GetLayersTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/layar/SearchLayersActivity;->mLayerTask:Lcom/layar/data/layer/GetLayersTask;

    return-void
.end method

.method static synthetic access$1(Lcom/layar/SearchLayersActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/layar/SearchLayersActivity;->_checkMore()V

    return-void
.end method

.method static synthetic access$2(Lcom/layar/SearchLayersActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/layar/SearchLayersActivity;->_updateResults()V

    return-void
.end method

.method static synthetic access$3(Lcom/layar/SearchLayersActivity;)Lcom/layar/adapters/StandardLayersAdapter;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/layar/SearchLayersActivity;->mAdapter:Lcom/layar/adapters/StandardLayersAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/layar/SearchLayersActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/layar/SearchLayersActivity;->viewEmptyResultsText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/layar/SearchLayersActivity;)Lcom/layar/ui/SearchWidget;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/layar/SearchLayersActivity;->viewSearchWidget:Lcom/layar/ui/SearchWidget;

    return-object v0
.end method

.method static synthetic access$6(Lcom/layar/SearchLayersActivity;Lcom/layar/data/layer/Layer20;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/layar/SearchLayersActivity;->mSelectedLayer:Lcom/layar/data/layer/Layer20;

    return-void
.end method

.method private getLayersListener()Lcom/layar/data/DownloadListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/layar/data/DownloadListener",
            "<",
            "Lcom/layar/data/layer/Layer20;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Lcom/layar/SearchLayersActivity$1;

    invoke-direct {v0, p0}, Lcom/layar/SearchLayersActivity$1;-><init>(Lcom/layar/SearchLayersActivity;)V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v0

    const-string v1, "search"

    invoke-virtual {v0, v1, v2, v2}, Lcom/layar/data/layer/LayerManager;->resetPageParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/layar/SearchLayersActivity;->mSelectedLayer:Lcom/layar/data/layer/Layer20;

    invoke-static {p0, p1, v0}, Lcom/layar/data/layer/LayerHelper;->onContextItemSelected(Landroid/content/Context;Landroid/view/MenuItem;Lcom/layar/data/layer/Layer20;)Z

    .line 270
    invoke-super {p0, p1}, Lcom/layar/OurListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x1020014

    .line 52
    invoke-super {p0, p1}, Lcom/layar/OurListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v3, 0x7f03004c

    invoke-virtual {p0, v3}, Lcom/layar/SearchLayersActivity;->setContentView(I)V

    .line 55
    const v3, 0x7f0900c3

    invoke-virtual {p0, v3}, Lcom/layar/SearchLayersActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/layar/SearchLayersActivity;->mEmptyMessageTemplate:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/layar/SearchLayersActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 58
    .local v2, viewList:Landroid/widget/ListView;
    invoke-direct {p0}, Lcom/layar/SearchLayersActivity;->_scrollListener()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 59
    const v3, 0x1020004

    invoke-virtual {p0, v3}, Lcom/layar/SearchLayersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, emptyView:Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/layar/SearchLayersActivity;->viewEmptyResultsText:Landroid/widget/TextView;

    .line 61
    iget-object v3, p0, Lcom/layar/SearchLayersActivity;->viewEmptyResultsText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 64
    invoke-virtual {p0, v5}, Lcom/layar/SearchLayersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/layar/SearchLayersActivity;->viewResultsHeader:Landroid/widget/TextView;

    .line 66
    const v3, 0x7f070010

    invoke-virtual {p0, v3}, Lcom/layar/SearchLayersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/layar/ui/SearchWidget;

    iput-object v3, p0, Lcom/layar/SearchLayersActivity;->viewSearchWidget:Lcom/layar/ui/SearchWidget;

    .line 67
    iget-object v3, p0, Lcom/layar/SearchLayersActivity;->viewSearchWidget:Lcom/layar/ui/SearchWidget;

    invoke-virtual {v3, p0}, Lcom/layar/ui/SearchWidget;->setSearchListener(Lcom/layar/ui/SearchWidget$SearchListener;)V

    .line 69
    new-instance v3, Lcom/layar/adapters/StandardLayersAdapter;

    invoke-direct {v3, p0}, Lcom/layar/adapters/StandardLayersAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/layar/SearchLayersActivity;->mAdapter:Lcom/layar/adapters/StandardLayersAdapter;

    .line 70
    iget-object v3, p0, Lcom/layar/SearchLayersActivity;->mAdapter:Lcom/layar/adapters/StandardLayersAdapter;

    invoke-direct {p0}, Lcom/layar/SearchLayersActivity;->_onLayerClick()Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/layar/adapters/StandardLayersAdapter;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v3, p0, Lcom/layar/SearchLayersActivity;->mAdapter:Lcom/layar/adapters/StandardLayersAdapter;

    invoke-direct {p0}, Lcom/layar/SearchLayersActivity;->_onLayerLongClick()Landroid/view/View$OnLongClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/layar/adapters/StandardLayersAdapter;->setLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 72
    iget-object v3, p0, Lcom/layar/SearchLayersActivity;->mAdapter:Lcom/layar/adapters/StandardLayersAdapter;

    invoke-virtual {p0, v3}, Lcom/layar/SearchLayersActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    invoke-virtual {p0}, Lcom/layar/SearchLayersActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/layar/SearchLayersActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 76
    invoke-virtual {p0}, Lcom/layar/SearchLayersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "search:query"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, query:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 79
    iget-object v3, p0, Lcom/layar/SearchLayersActivity;->viewSearchWidget:Lcom/layar/ui/SearchWidget;

    invoke-virtual {v3, v1}, Lcom/layar/ui/SearchWidget;->setQuery(Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/layar/SearchLayersActivity;->mSelectedLayer:Lcom/layar/data/layer/Layer20;

    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/layar/SearchLayersActivity;->mSelectedLayer:Lcom/layar/data/layer/Layer20;

    invoke-static {p1, v0}, Lcom/layar/data/layer/LayerHelper;->onCreateContextMenu(Landroid/view/ContextMenu;Lcom/layar/data/layer/Layer20;)V

    .line 264
    invoke-super {p0, p1, p2, p3}, Lcom/layar/OurListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/layar/OurListActivity;->onDestroy()V

    .line 119
    iget-object v0, p0, Lcom/layar/SearchLayersActivity;->mLayerTask:Lcom/layar/data/layer/GetLayersTask;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/layar/SearchLayersActivity;->mLayerTask:Lcom/layar/data/layer/GetLayersTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/GetLayersTask;->cancel(Z)Z

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/SearchLayersActivity;->mLayerTask:Lcom/layar/data/layer/GetLayersTask;

    .line 123
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/layar/OurListActivity;->onPause()V

    .line 111
    iget-object v0, p0, Lcom/layar/SearchLayersActivity;->viewSearchWidget:Lcom/layar/ui/SearchWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/layar/ui/SearchWidget;->showKeyboard(Z)V

    .line 113
    iget-object v0, p0, Lcom/layar/SearchLayersActivity;->mAdapter:Lcom/layar/adapters/StandardLayersAdapter;

    invoke-virtual {v0}, Lcom/layar/adapters/StandardLayersAdapter;->onPause()V

    .line 114
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Lcom/layar/OurListActivity;->onResume()V

    .line 101
    iget-object v1, p0, Lcom/layar/SearchLayersActivity;->viewSearchWidget:Lcom/layar/ui/SearchWidget;

    invoke-virtual {v1}, Lcom/layar/ui/SearchWidget;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, query:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/layar/SearchLayersActivity;->viewSearchWidget:Lcom/layar/ui/SearchWidget;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/layar/ui/SearchWidget;->activate(Z)V

    .line 105
    :cond_0
    return-void
.end method

.method public onSearch(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .parameter "v"
    .parameter "query"

    .prologue
    .line 235
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/layar/SearchLayersActivity;->mLayerTask:Lcom/layar/data/layer/GetLayersTask;

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/layar/SearchLayersActivity;->viewEmptyResultsText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/layar/SearchLayersActivity;->mEmptyMessageTemplate:Ljava/lang/String;

    const-string v2, "%query%"

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/layar/SearchLayersActivity;->mAdapter:Lcom/layar/adapters/StandardLayersAdapter;

    invoke-virtual {v0}, Lcom/layar/adapters/StandardLayersAdapter;->clear()V

    .line 240
    new-instance v0, Lcom/layar/data/layer/GetLayersTask;

    const-string v1, "search"

    invoke-direct {p0}, Lcom/layar/SearchLayersActivity;->getLayersListener()Lcom/layar/data/DownloadListener;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/layar/data/layer/GetLayersTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/layar/data/DownloadListener;)V

    iput-object v0, p0, Lcom/layar/SearchLayersActivity;->mLayerTask:Lcom/layar/data/layer/GetLayersTask;

    .line 241
    iget-object v0, p0, Lcom/layar/SearchLayersActivity;->mLayerTask:Lcom/layar/data/layer/GetLayersTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/GetLayersTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/layar/OurListActivity;->onWindowFocusChanged(Z)V

    .line 85
    if-eqz p1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/layar/SearchLayersActivity;->viewSearchWidget:Lcom/layar/ui/SearchWidget;

    invoke-virtual {v1}, Lcom/layar/ui/SearchWidget;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, query:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/layar/SearchLayersActivity;->viewSearchWidget:Lcom/layar/ui/SearchWidget;

    invoke-virtual {v1}, Lcom/layar/ui/SearchWidget;->isSearchingActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/layar/SearchLayersActivity;->_checkMore()V

    .line 94
    .end local v0           #query:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 91
    .restart local v0       #query:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/layar/SearchLayersActivity;->viewSearchWidget:Lcom/layar/ui/SearchWidget;

    invoke-virtual {v1}, Lcom/layar/ui/SearchWidget;->search()V

    goto :goto_0
.end method

.method public useNavigationBar()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method
