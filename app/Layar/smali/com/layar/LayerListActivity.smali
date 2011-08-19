.class public abstract Lcom/layar/LayerListActivity;
.super Lcom/layar/OurListActivity;
.source "LayerListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/layar/ui/SubsectionWidget$OnSubsectionChangeListener;
.implements Lcom/layar/data/layer/LayersType;
.implements Lcom/layar/data/DownloadListener;
.implements Lcom/layar/data/user/PaymentsManager$PaymentProvidersHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layar/OurListActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Lcom/layar/ui/SubsectionWidget$OnSubsectionChangeListener;",
        "Lcom/layar/data/layer/LayersType;",
        "Lcom/layar/data/DownloadListener",
        "<",
        "Lcom/layar/data/layer/Layer20;",
        ">;",
        "Lcom/layar/data/user/PaymentsManager$PaymentProvidersHandler;"
    }
.end annotation


# static fields
.field protected static final MENU_REFRESH:I = 0x14


# instance fields
.field public final TAG:Ljava/lang/String;

.field private dialogProgress:Landroid/app/ProgressDialog;

.field protected mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

.field private mGetLayerTask:Lcom/layar/data/layer/GetLayersTask;

.field protected mLastFetchTime:J

.field protected mLayerManager:Lcom/layar/data/layer/LayerManager;

.field protected mLoadingMessage:Ljava/lang/CharSequence;

.field private mSelectedLayer:Lcom/layar/data/layer/Layer20;

.field protected mSelectedSubSection:Ljava/lang/String;

.field protected viewEmptyText:Landroid/widget/TextView;

.field protected viewEmptyTextBold:Landroid/widget/TextView;

.field protected viewSubsection:Lcom/layar/ui/SubsectionWidget;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/layar/OurListActivity;-><init>()V

    .line 43
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/LayerListActivity;->TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/LayerListActivity;->mSelectedSubSection:Ljava/lang/String;

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/layar/LayerListActivity;->mLastFetchTime:J

    .line 39
    return-void
.end method

.method private _checkMore()V
    .locals 3

    .prologue
    .line 330
    iget-boolean v2, p0, Lcom/layar/LayerListActivity;->isActive:Z

    if-nez v2, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v2, p0, Lcom/layar/LayerListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v2}, Lcom/layar/adapters/BaseLayersAdapter;->getCount()I

    move-result v0

    .line 338
    .local v0, count:I
    iget-object v2, p0, Lcom/layar/LayerListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v2}, Lcom/layar/adapters/BaseLayersAdapter;->hasPendingItem()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 342
    .local v1, lastVisible:I
    const/4 v2, 0x1

    sub-int v2, v0, v2

    if-lt v1, v2, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->_loadMore()V

    goto :goto_0
.end method

.method private _scrollListener()Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 310
    new-instance v0, Lcom/layar/LayerListActivity$2;

    invoke-direct {v0, p0}, Lcom/layar/LayerListActivity$2;-><init>(Lcom/layar/LayerListActivity;)V

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/LayerListActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 541
    invoke-direct {p0, p1}, Lcom/layar/LayerListActivity;->updateSubsections(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/layar/LayerListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/layar/LayerListActivity;->_checkMore()V

    return-void
.end method

.method private isPaidContentShown()Z
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/layar/LayerListActivity;->viewSubsection:Lcom/layar/ui/SubsectionWidget;

    invoke-virtual {v0}, Lcom/layar/ui/SubsectionWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSubsections(Z)V
    .locals 1
    .parameter "showPaid"

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->useSubsections()Z

    move-result v0

    if-nez v0, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    invoke-direct {p0}, Lcom/layar/LayerListActivity;->isPaidContentShown()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->reloadData()V

    goto :goto_0
.end method


# virtual methods
.method protected _loadMore()V
    .locals 4

    .prologue
    .line 353
    iget-object v1, p0, Lcom/layar/LayerListActivity;->mGetLayerTask:Lcom/layar/data/layer/GetLayersTask;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/layar/LayerListActivity;->mGetLayerTask:Lcom/layar/data/layer/GetLayersTask;

    invoke-virtual {v1}, Lcom/layar/data/layer/GetLayersTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    .line 365
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->getLoadQuery()Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, query:Ljava/lang/String;
    new-instance v1, Lcom/layar/data/layer/GetLayersTask;

    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->getListType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/layar/LayerListActivity;->mSelectedSubSection:Ljava/lang/String;

    .line 363
    invoke-direct {v1, p0, v2, v3, p0}, Lcom/layar/data/layer/GetLayersTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/layar/data/DownloadListener;)V

    .line 362
    iput-object v1, p0, Lcom/layar/LayerListActivity;->mGetLayerTask:Lcom/layar/data/layer/GetLayersTask;

    .line 364
    iget-object v1, p0, Lcom/layar/LayerListActivity;->mGetLayerTask:Lcom/layar/data/layer/GetLayersTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/layar/data/layer/GetLayersTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected cancelLoading()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/layar/LayerListActivity;->mGetLayerTask:Lcom/layar/data/layer/GetLayersTask;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/layar/LayerListActivity;->mGetLayerTask:Lcom/layar/data/layer/GetLayersTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/GetLayersTask;->cancel(Z)Z

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/LayerListActivity;->mGetLayerTask:Lcom/layar/data/layer/GetLayersTask;

    .line 327
    :cond_0
    return-void
.end method

.method protected checkForPaidContentAvailable()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 390
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 406
    :goto_0
    return v1

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 394
    invoke-super {p0, p1}, Lcom/layar/OurListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 395
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 396
    .local v0, keyCode:I
    sparse-switch v0, :sswitch_data_0

    .line 406
    invoke-super {p0, p1}, Lcom/layar/OurListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 403
    :sswitch_0
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move v1, v2

    .line 404
    goto :goto_0

    .line 396
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected doLaunchOnClick()Z
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method protected doUpdateIfNeeded()V
    .locals 5

    .prologue
    .line 249
    iget-object v1, p0, Lcom/layar/LayerListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->getListType()Ljava/lang/String;

    move-result-object v2

    .line 250
    iget-object v3, p0, Lcom/layar/LayerListActivity;->mSelectedSubSection:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->getLoadQuery()Ljava/lang/String;

    move-result-object v4

    .line 249
    invoke-virtual {v1, v2, v3, v4}, Lcom/layar/data/layer/LayerManager;->needUpdateCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 251
    .local v0, needUpdate:Z
    if-eqz v0, :cond_0

    .line 252
    iget-object v1, p0, Lcom/layar/LayerListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v1}, Lcom/layar/adapters/BaseLayersAdapter;->clear()V

    .line 253
    iget-object v1, p0, Lcom/layar/LayerListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v1}, Lcom/layar/adapters/BaseLayersAdapter;->addPendingItem()V

    .line 255
    :cond_0
    return-void
.end method

.method protected getAdapter()Lcom/layar/adapters/BaseLayersAdapter;
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lcom/layar/adapters/StandardLayersAdapter;

    invoke-direct {v0, p0}, Lcom/layar/adapters/StandardLayersAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 101
    const v0, 0x7f03002c

    return v0
.end method

.method protected abstract getListType()Ljava/lang/String;
.end method

.method protected getLoadQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getSectionTitle()Ljava/lang/String;
.end method

.method protected getSubsetcionIds()[I
    .locals 1

    .prologue
    .line 163
    const v0, 0x7f060006

    invoke-static {p0, v0}, Lcom/layar/util/Util;->getArrayIds(Landroid/content/Context;I)[I

    move-result-object v0

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/layar/LayerListActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Lcom/layar/data/user/PaymentProvidersResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 524
    iput-boolean v3, p0, Lcom/layar/LayerListActivity;->isActive:Z

    .line 525
    iget-object v1, p0, Lcom/layar/LayerListActivity;->dialogProgress:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/layar/LayerListActivity;->dialogProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 528
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/layar/LayerListActivity;->dialogProgress:Landroid/app/ProgressDialog;

    .line 529
    iget-object v1, p0, Lcom/layar/LayerListActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v1, p1, v2}, Lcom/layar/ActivityHelper;->handleResponse(Lcom/layar/data/Response;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 535
    :cond_1
    :goto_0
    return-void

    .line 531
    :cond_2
    invoke-virtual {p1}, Lcom/layar/data/user/PaymentProvidersResponse;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 532
    iget-object v1, p1, Lcom/layar/data/user/PaymentProvidersResponse;->paymentProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 533
    .local v0, count:I
    if-lez v0, :cond_3

    move v1, v3

    :goto_1
    invoke-direct {p0, v1}, Lcom/layar/LayerListActivity;->updateSubsections(Z)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method protected initSubsection()V
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->useSubsections()Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    new-instance v0, Lcom/layar/ui/SubsectionWidget$Subsection;

    invoke-direct {v0}, Lcom/layar/ui/SubsectionWidget$Subsection;-><init>()V

    .line 171
    .local v0, subsection:Lcom/layar/ui/SubsectionWidget$Subsection;
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->getSubsetcionIds()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layar/ui/SubsectionWidget$Subsection;->setSubsectionArray([I)V

    .line 172
    iget-object v1, p0, Lcom/layar/LayerListActivity;->viewSubsection:Lcom/layar/ui/SubsectionWidget;

    invoke-virtual {v1, v0}, Lcom/layar/ui/SubsectionWidget;->setSubSection(Lcom/layar/ui/SubsectionWidget$Subsection;)V

    goto :goto_0
.end method

.method protected isDownloadingInProgress()Z
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/layar/LayerListActivity;->mGetLayerTask:Lcom/layar/data/layer/GetLayersTask;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/layar/LayerListActivity;->mGetLayerTask:Lcom/layar/data/layer/GetLayersTask;

    invoke-virtual {v0}, Lcom/layar/data/layer/GetLayersTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 462
    goto :goto_0
.end method

.method protected loginHandler()Lcom/layar/data/user/UserManager$LoginHandler;
    .locals 1

    .prologue
    .line 443
    new-instance v0, Lcom/layar/LayerListActivity$3;

    invoke-direct {v0, p0}, Lcom/layar/LayerListActivity$3;-><init>(Lcom/layar/LayerListActivity;)V

    return-object v0
.end method

.method protected needUpdateOnResume()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method protected needUpdateOnSubsectionChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "newSubsection"

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->doLaunchOnClick()Z

    move-result v0

    iget-object v1, p0, Lcom/layar/LayerListActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-static {p1, v0, v1}, Lcom/layar/data/layer/LayerHelper;->onClick(Landroid/view/View;ZLcom/layar/ActivityHelper;)Lcom/layar/data/layer/Layer20;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/LayerListActivity;->mSelectedLayer:Lcom/layar/data/layer/Layer20;

    .line 386
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 428
    iget-object v1, p0, Lcom/layar/LayerListActivity;->mSelectedLayer:Lcom/layar/data/layer/Layer20;

    invoke-static {p0, p1, v1}, Lcom/layar/data/layer/LayerHelper;->onContextItemSelected(Landroid/content/Context;Landroid/view/MenuItem;Lcom/layar/data/layer/Layer20;)Z

    .line 429
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 430
    .local v0, itemId:I
    packed-switch v0, :pswitch_data_0

    .line 439
    invoke-super {p0, p1}, Lcom/layar/OurListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 432
    :pswitch_0
    iget-object v1, p0, Lcom/layar/LayerListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v2, p0, Lcom/layar/LayerListActivity;->mSelectedLayer:Lcom/layar/data/layer/Layer20;

    invoke-virtual {v1, v2}, Lcom/layar/data/layer/LayerManager;->removeBookmark(Lcom/layar/data/layer/Layer20;)V

    .line 433
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->getListType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "my"

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->getListType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "my+purchased"

    if-ne v1, v2, :cond_1

    .line 434
    :cond_0
    iget-object v1, p0, Lcom/layar/LayerListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    iget-object v2, p0, Lcom/layar/LayerListActivity;->mSelectedLayer:Lcom/layar/data/layer/Layer20;

    invoke-virtual {v1, v2}, Lcom/layar/adapters/BaseLayersAdapter;->remove(Lcom/layar/data/layer/Layer20;)V

    .line 435
    iget-object v1, p0, Lcom/layar/LayerListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v1}, Lcom/layar/adapters/BaseLayersAdapter;->notifyDataSetChanged()V

    .line 437
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/layar/OurListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->getLayoutId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/layar/LayerListActivity;->setContentView(I)V

    .line 118
    const v4, 0x7f07004d

    invoke-virtual {p0, v4}, Lcom/layar/LayerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 119
    .local v3, viewTitle:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->getSectionTitle()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, titleText:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 121
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_0
    const v4, 0x1020004

    invoke-virtual {p0, v4}, Lcom/layar/LayerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, emptyView:Landroid/view/View;
    const v4, 0x1020014

    invoke-virtual {p0, v4}, Lcom/layar/LayerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/layar/LayerListActivity;->viewEmptyTextBold:Landroid/widget/TextView;

    .line 126
    const v4, 0x1020015

    invoke-virtual {p0, v4}, Lcom/layar/LayerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/layar/LayerListActivity;->viewEmptyText:Landroid/widget/TextView;

    .line 127
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 128
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->useSubsections()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    const v4, 0x7f070052

    invoke-virtual {p0, v4}, Lcom/layar/LayerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/layar/ui/SubsectionWidget;

    iput-object v4, p0, Lcom/layar/LayerListActivity;->viewSubsection:Lcom/layar/ui/SubsectionWidget;

    .line 130
    iget-object v4, p0, Lcom/layar/LayerListActivity;->viewSubsection:Lcom/layar/ui/SubsectionWidget;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/layar/ui/SubsectionWidget;->setVisibility(I)V

    .line 131
    iget-object v4, p0, Lcom/layar/LayerListActivity;->viewSubsection:Lcom/layar/ui/SubsectionWidget;

    invoke-virtual {v4, p0}, Lcom/layar/ui/SubsectionWidget;->setListener(Lcom/layar/ui/SubsectionWidget$OnSubsectionChangeListener;)V

    .line 132
    const v4, 0x7f090012

    .line 133
    const v5, 0x7f090013

    .line 132
    invoke-virtual {p0, v4, v5}, Lcom/layar/LayerListActivity;->showNoLayersMessage(II)V

    .line 136
    :cond_0
    const v4, 0x7f090091

    invoke-virtual {p0, v4}, Lcom/layar/LayerListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/layar/LayerListActivity;->mLoadingMessage:Ljava/lang/CharSequence;

    .line 138
    invoke-static {p0}, Lcom/layar/data/layer/LayerManager;->getLayerManager(Landroid/content/Context;)Lcom/layar/data/layer/LayerManager;

    move-result-object v4

    iput-object v4, p0, Lcom/layar/LayerListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    .line 140
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->getAdapter()Lcom/layar/adapters/BaseLayersAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/layar/LayerListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    .line 141
    iget-object v4, p0, Lcom/layar/LayerListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v4, p0}, Lcom/layar/adapters/BaseLayersAdapter;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v4, p0, Lcom/layar/LayerListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v4, p0}, Lcom/layar/adapters/BaseLayersAdapter;->setLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 143
    iget-object v4, p0, Lcom/layar/LayerListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v4}, Lcom/layar/adapters/BaseLayersAdapter;->addPendingItem()V

    .line 145
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 146
    .local v1, list:Landroid/widget/ListView;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 147
    iget-object v4, p0, Lcom/layar/LayerListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    invoke-direct {p0}, Lcom/layar/LayerListActivity;->_scrollListener()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 149
    invoke-virtual {p0, v1}, Lcom/layar/LayerListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 151
    const v4, 0x7f09008b

    invoke-static {v4}, Lcom/layar/data/layer/LayerManager;->mapSusectionIdToApiKey(I)Ljava/lang/String;

    move-result-object v4

    .line 150
    iput-object v4, p0, Lcom/layar/LayerListActivity;->mSelectedSubSection:Ljava/lang/String;

    .line 152
    return-void

    .line 123
    .end local v0           #emptyView:Landroid/view/View;
    .end local v1           #list:Landroid/widget/ListView;
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/layar/LayerListActivity;->mSelectedLayer:Lcom/layar/data/layer/Layer20;

    if-nez v0, :cond_0

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/layar/LayerListActivity;->mSelectedLayer:Lcom/layar/data/layer/Layer20;

    invoke-static {p1, v0}, Lcom/layar/data/layer/LayerHelper;->onCreateContextMenu(Landroid/view/ContextMenu;Lcom/layar/data/layer/Layer20;)V

    .line 423
    invoke-super {p0, p1, p2, p3}, Lcom/layar/OurListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 268
    const/16 v0, 0x14

    const v1, 0x7f090049

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 269
    const v1, 0x7f0200cc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 270
    invoke-super {p0, p1}, Lcom/layar/OurListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 302
    invoke-super {p0}, Lcom/layar/OurListActivity;->onDestroy()V

    .line 305
    iget-object v0, p0, Lcom/layar/LayerListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->getListType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/layar/LayerListActivity;->mSelectedSubSection:Ljava/lang/String;

    .line 306
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->getLoadQuery()Ljava/lang/String;

    move-result-object v3

    .line 305
    invoke-virtual {v0, v1, v2, v3}, Lcom/layar/data/layer/LayerManager;->resetPageParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public onDownloaded(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 475
    return-void
.end method

.method public onDownloadingCanceled()V
    .locals 1

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    :cond_0
    return-void
.end method

.method public onDownloadingEnded()V
    .locals 2

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    :goto_0
    return-void

    .line 494
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/layar/LayerListActivity;->mGetLayerTask:Lcom/layar/data/layer/GetLayersTask;

    .line 495
    iget-object v1, p0, Lcom/layar/LayerListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    invoke-virtual {v1}, Lcom/layar/data/layer/LayerManager;->getPageParams()Lcom/layar/data/PaginationParams;

    move-result-object v0

    .line 499
    .local v0, pagination:Lcom/layar/data/PaginationParams;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    if-nez v1, :cond_2

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/layar/LayerListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v1}, Lcom/layar/adapters/BaseLayersAdapter;->removePendingItem()V

    goto :goto_0

    .line 502
    :cond_2
    invoke-direct {p0}, Lcom/layar/LayerListActivity;->_checkMore()V

    goto :goto_0
.end method

.method public onDownloadingError(I)V
    .locals 3
    .parameter "responseCode"

    .prologue
    const/4 v2, 0x0

    .line 515
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/layar/LayerListActivity;->helper:Lcom/layar/ActivityHelper;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v2, v1, v2}, Lcom/layar/ActivityHelper;->downloadErrorHandling(IZIZ)Z

    .line 518
    iget-object v0, p0, Lcom/layar/LayerListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v0}, Lcom/layar/adapters/BaseLayersAdapter;->removePendingItem()V

    .line 519
    const v0, 0x7f090100

    invoke-virtual {p0, v0}, Lcom/layar/LayerListActivity;->showNoLayersMessage(I)V

    goto :goto_0
.end method

.method public onDownloadingStarted()V
    .locals 1

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/layar/LayerListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v0}, Lcom/layar/adapters/BaseLayersAdapter;->addPendingItem()V

    goto :goto_0
.end method

.method public onItemDownloaded(Lcom/layar/data/layer/Layer20;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    sget-boolean v0, Lcom/layar/data/layer/LayerManager;->ADD_FAVORITE_MODE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layar/LayerListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    invoke-virtual {v0, p1}, Lcom/layar/data/layer/LayerManager;->isBookmarked(Lcom/layar/data/layer/Layer20;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/layar/LayerListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v0}, Lcom/layar/adapters/BaseLayersAdapter;->removePendingItem()V

    .line 486
    iget-object v0, p0, Lcom/layar/LayerListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v0, p1}, Lcom/layar/adapters/BaseLayersAdapter;->add(Lcom/layar/data/layer/Layer20;)V

    .line 487
    iget-object v0, p0, Lcom/layar/LayerListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v0}, Lcom/layar/adapters/BaseLayersAdapter;->addPendingItem()V

    goto :goto_0
.end method

.method public bridge synthetic onItemDownloaded(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/layar/data/layer/Layer20;

    invoke-virtual {p0, p1}, Lcom/layar/LayerListActivity;->onItemDownloaded(Lcom/layar/data/layer/Layer20;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 411
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/data/layer/Layer20;

    iput-object v0, p0, Lcom/layar/LayerListActivity;->mSelectedLayer:Lcom/layar/data/layer/Layer20;

    .line 412
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layar/LayerListActivity;->openContextMenu(Landroid/view/View;)V

    .line 413
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 275
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 283
    invoke-super {p0, p1}, Lcom/layar/OurListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 277
    :pswitch_0
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->getListType()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, type:Ljava/lang/String;
    iget-object v1, p0, Lcom/layar/LayerListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    invoke-virtual {v1, v0}, Lcom/layar/data/layer/LayerManager;->resetCache(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/layar/LayerListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v2, p0, Lcom/layar/LayerListActivity;->mSelectedSubSection:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->getLoadQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/layar/data/layer/LayerManager;->resetPageParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->reloadData()V

    .line 281
    const/4 v1, 0x1

    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 288
    invoke-super {p0}, Lcom/layar/OurListActivity;->onPause()V

    .line 292
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->cancelLoading()V

    .line 294
    iget-object v0, p0, Lcom/layar/LayerListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v0}, Lcom/layar/adapters/BaseLayersAdapter;->onPause()V

    .line 296
    iget-object v0, p0, Lcom/layar/LayerListActivity;->dialogProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/layar/LayerListActivity;->dialogProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 298
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Lcom/layar/OurListActivity;->onResume()V

    .line 219
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->needUpdateOnResume()Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->checkForPaidContentAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/LayerListActivity;->dialogProgress:Landroid/app/ProgressDialog;

    .line 227
    iget-object v0, p0, Lcom/layar/LayerListActivity;->dialogProgress:Landroid/app/ProgressDialog;

    const v1, 0x7f090106

    invoke-virtual {p0, v1}, Lcom/layar/LayerListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/layar/LayerListActivity;->dialogProgress:Landroid/app/ProgressDialog;

    .line 229
    new-instance v1, Lcom/layar/LayerListActivity$1;

    invoke-direct {v1, p0}, Lcom/layar/LayerListActivity$1;-><init>(Lcom/layar/LayerListActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 235
    iget-object v0, p0, Lcom/layar/LayerListActivity;->dialogProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/LayerListActivity;->isActive:Z

    .line 237
    invoke-static {}, Lcom/layar/App;->getPaymentManager()Lcom/layar/data/user/PaymentsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/layar/data/user/PaymentsManager;->getPaymentProvider(Lcom/layar/data/user/PaymentsManager$PaymentProvidersHandler;)V

    .line 240
    :cond_2
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->doUpdateIfNeeded()V

    .line 242
    sget-boolean v0, Lcom/layar/data/layer/LayerManager;->ADD_FAVORITE_MODE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/LayerListActivity;->mSelectedLayer:Lcom/layar/data/layer/Layer20;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/layar/LayerListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v1, p0, Lcom/layar/LayerListActivity;->mSelectedLayer:Lcom/layar/data/layer/Layer20;

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerManager;->isBookmarked(Lcom/layar/data/layer/Layer20;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/layar/LayerListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    iget-object v1, p0, Lcom/layar/LayerListActivity;->mSelectedLayer:Lcom/layar/data/layer/Layer20;

    invoke-virtual {v0, v1}, Lcom/layar/adapters/BaseLayersAdapter;->remove(Lcom/layar/data/layer/Layer20;)V

    goto :goto_0
.end method

.method public onSubsectionChanged(Lcom/layar/ui/SubsectionWidget;I)V
    .locals 5
    .parameter "subsection"
    .parameter "id"

    .prologue
    const v4, 0x7f090100

    const v3, 0x7f090013

    const v2, 0x7f090012

    .line 177
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->useSubsections()Z

    move-result v1

    if-nez v1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 193
    invoke-virtual {p0, v4}, Lcom/layar/LayerListActivity;->showNoLayersMessage(I)V

    .line 197
    :goto_1
    invoke-static {p2}, Lcom/layar/data/layer/LayerManager;->mapSusectionIdToApiKey(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, newSubsection:Ljava/lang/String;
    iget-object v1, p0, Lcom/layar/LayerListActivity;->mSelectedSubSection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/layar/LayerListActivity;->needUpdateOnSubsectionChange(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    :cond_2
    iget-object v1, p0, Lcom/layar/LayerListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->getListType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/layar/LayerListActivity;->mSelectedSubSection:Ljava/lang/String;

    .line 203
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->getLoadQuery()Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-virtual {v1, v2, v3, v4}, Lcom/layar/data/layer/LayerManager;->resetPageParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iput-object v0, p0, Lcom/layar/LayerListActivity;->mSelectedSubSection:Ljava/lang/String;

    .line 207
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->reloadData()V

    goto :goto_0

    .line 182
    .end local v0           #newSubsection:Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p0, v2, v3}, Lcom/layar/LayerListActivity;->showNoLayersMessage(II)V

    goto :goto_1

    .line 186
    :pswitch_1
    invoke-virtual {p0, v2, v3}, Lcom/layar/LayerListActivity;->showNoLayersMessage(II)V

    goto :goto_1

    .line 190
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/layar/LayerListActivity;->showNoLayersMessage(I)V

    goto :goto_1

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x7f090085
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/layar/OurListActivity;->onWindowFocusChanged(Z)V

    .line 262
    if-eqz p1, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/layar/LayerListActivity;->_checkMore()V

    .line 264
    :cond_0
    return-void
.end method

.method public reloadData()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/layar/LayerListActivity;->mGetLayerTask:Lcom/layar/data/layer/GetLayersTask;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/layar/LayerListActivity;->mGetLayerTask:Lcom/layar/data/layer/GetLayersTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/GetLayersTask;->cancel(Z)Z

    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/LayerListActivity;->mGetLayerTask:Lcom/layar/data/layer/GetLayersTask;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/layar/LayerListActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v0}, Lcom/layar/adapters/BaseLayersAdapter;->clear()V

    .line 377
    invoke-virtual {p0}, Lcom/layar/LayerListActivity;->_loadMore()V

    .line 378
    return-void
.end method

.method public showNoLayersMessage(I)V
    .locals 2
    .parameter "resIdBold"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/layar/LayerListActivity;->viewEmptyTextBold:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 563
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/layar/LayerListActivity;->viewEmptyTextBold:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 561
    iget-object v0, p0, Lcom/layar/LayerListActivity;->viewEmptyTextBold:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/layar/LayerListActivity;->viewEmptyText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showNoLayersMessage(II)V
    .locals 2
    .parameter "resIdBold"
    .parameter "resId"

    .prologue
    const/4 v1, 0x0

    .line 566
    iget-object v0, p0, Lcom/layar/LayerListActivity;->viewEmptyTextBold:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/LayerListActivity;->viewEmptyText:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/layar/LayerListActivity;->viewEmptyTextBold:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 569
    iget-object v0, p0, Lcom/layar/LayerListActivity;->viewEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 570
    iget-object v0, p0, Lcom/layar/LayerListActivity;->viewEmptyTextBold:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 571
    iget-object v0, p0, Lcom/layar/LayerListActivity;->viewEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public useNavigationBar()Z
    .locals 1

    .prologue
    .line 106
    sget-boolean v0, Lcom/layar/data/layer/LayerManager;->ADD_FAVORITE_MODE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected useSubsections()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method
