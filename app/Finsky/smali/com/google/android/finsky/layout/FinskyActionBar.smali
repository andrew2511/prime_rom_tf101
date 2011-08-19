.class public Lcom/google/android/finsky/layout/FinskyActionBar;
.super Ljava/lang/Object;
.source "FinskyActionBar.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/FinskyActionBar$3;,
        Lcom/google/android/finsky/layout/FinskyActionBar$BreadCrumbHolder;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/google/android/finsky/activities/MainActivity;

.field private mBreadCrumbsView:Landroid/view/ViewGroup;

.field private mBrowseBarView:Landroid/view/View;

.field private mChannelList:Lcom/google/android/finsky/model/ChannelList;

.field private mChannelToLoad:I

.field private mCurrentCollectionType:I

.field private mCurrentState:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

.field private mCustomSearchView:Landroid/view/View;

.field private mDetailsView:Landroid/view/View;

.field private final mFrameworkActionBar:Landroid/app/ActionBar;

.field private mLastQuery:Ljava/lang/String;

.field private mLastSearchChannelId:I

.field private final mMyCollectionNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mProcessingChannels:Z

.field private mSearchSpinner:Landroid/widget/Spinner;

.field private mSearchViewWidget:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/activities/MainActivity;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/ActionBar;Lcom/android/volley/Response$ErrorListener;)V
    .locals 4
    .parameter "activity"
    .parameter "navManager"
    .parameter "abar"
    .parameter "errorListener"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mLastSearchChannelId:I

    .line 98
    iput v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mCurrentCollectionType:I

    .line 103
    iput v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelToLoad:I

    .line 109
    iput-object v3, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mDetailsView:Landroid/view/View;

    .line 112
    iput-object v3, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mBrowseBarView:Landroid/view/View;

    .line 151
    iput-object p1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    .line 152
    iput-object p2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 153
    iput-object p3, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mFrameworkActionBar:Landroid/app/ActionBar;

    .line 154
    sget-object v1, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->INITIAL:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    iput-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mCurrentState:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    .line 157
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mMyCollectionNames:Ljava/util/HashMap;

    .line 158
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 160
    .local v0, resources:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mMyCollectionNames:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0b0017

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mMyCollectionNames:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0b0016

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mMyCollectionNames:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0b0018

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mMyCollectionNames:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0b0019

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/FinskyActionBar;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/FinskyActionBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mLastSearchChannelId:I

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/finsky/layout/FinskyActionBar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mLastSearchChannelId:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/FinskyActionBar;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mLastQuery:Ljava/lang/String;

    return-object v0
.end method

.method private clearBrowseBar()V
    .locals 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mBreadCrumbsView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 661
    return-void
.end method

.method private clearDetailsBar()V
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/MainActivity;->showShareMenu(Z)V

    .line 670
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->invalidateOptionsMenu()V

    .line 671
    return-void
.end method

.method private clearHomeBar()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mFrameworkActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->removeAllTabs()V

    .line 634
    return-void
.end method

.method private clearLastSearch()V
    .locals 1

    .prologue
    .line 648
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mLastSearchChannelId:I

    .line 649
    return-void
.end method

.method private clearSearchBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 637
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mFrameworkActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 638
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mSearchViewWidget:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 639
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mSearchViewWidget:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 640
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/MainActivity;->showMyCollectionsMenu(Z)V

    .line 641
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->invalidateOptionsMenu()V

    .line 642
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mSearchSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mSearchSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 645
    :cond_0
    return-void
.end method

.method private displayChannels()V
    .locals 7

    .prologue
    .line 322
    iget v5, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelToLoad:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelList:Lcom/google/android/finsky/model/ChannelList;

    invoke-virtual {v5}, Lcom/google/android/finsky/model/ChannelList;->getSelectedTabId()I

    move-result v5

    move v3, v5

    .line 327
    .local v3, selectedTabId:I
    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelList:Lcom/google/android/finsky/model/ChannelList;

    invoke-virtual {v5}, Lcom/google/android/finsky/model/ChannelList;->getTabs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/model/ChannelTab;

    .line 330
    .local v0, channel:Lcom/google/android/finsky/model/ChannelTab;
    invoke-virtual {v0}, Lcom/google/android/finsky/model/ChannelTab;->getActionBarTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    if-nez v5, :cond_0

    .line 331
    iget-object v5, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mFrameworkActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 332
    .local v2, newTab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v0}, Lcom/google/android/finsky/model/ChannelTab;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 333
    invoke-virtual {v2, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 335
    invoke-virtual {v0}, Lcom/google/android/finsky/model/ChannelTab;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 337
    invoke-virtual {v0, v2}, Lcom/google/android/finsky/model/ChannelTab;->setActionBarTab(Landroid/app/ActionBar$Tab;)V

    .line 340
    .end local v2           #newTab:Landroid/app/ActionBar$Tab;
    :cond_0
    const/4 v4, 0x0

    .line 341
    .local v4, shouldSelectTab:Z
    invoke-virtual {v0}, Lcom/google/android/finsky/model/ChannelTab;->getId()I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 342
    const/4 v4, 0x1

    .line 345
    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mFrameworkActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Lcom/google/android/finsky/model/ChannelTab;->getActionBarTab()Landroid/app/ActionBar$Tab;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    goto :goto_1

    .line 322
    .end local v0           #channel:Lcom/google/android/finsky/model/ChannelTab;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #selectedTabId:I
    .end local v4           #shouldSelectTab:Z
    :cond_2
    iget v5, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelToLoad:I

    move v3, v5

    goto :goto_0

    .line 347
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #selectedTabId:I
    :cond_3
    return-void
.end method

.method private initSearchView()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 597
    new-instance v6, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    const v4, 0x7f040043

    invoke-direct {v6, v2, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 599
    .local v6, spinnerAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/google/android/finsky/model/ChannelTab;>;"
    const v2, 0x7f040042

    invoke-virtual {v6, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 600
    iget-object v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b002f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 601
    .local v1, allString:Ljava/lang/String;
    new-instance v0, Lcom/google/android/finsky/model/ChannelTab;

    const/4 v2, 0x0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/model/ChannelTab;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/app/ActionBar$Tab;)V

    .line 603
    .local v0, multi:Lcom/google/android/finsky/model/ChannelTab;
    invoke-virtual {v6, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 604
    iget-object v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelList:Lcom/google/android/finsky/model/ChannelList;

    invoke-virtual {v2}, Lcom/google/android/finsky/model/ChannelList;->getTabs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 607
    iget-object v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mCustomSearchView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 608
    iget-object v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    const v4, 0x7f040002

    invoke-static {v2, v4, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mCustomSearchView:Landroid/view/View;

    .line 611
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mCustomSearchView:Landroid/view/View;

    const v3, 0x7f090007

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mSearchSpinner:Landroid/widget/Spinner;

    .line 612
    iget-object v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mSearchSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 613
    iget v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mLastSearchChannelId:I

    invoke-direct {p0, v2}, Lcom/google/android/finsky/layout/FinskyActionBar;->selectSpinnerCorpus(I)V

    .line 615
    iget-object v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mSearchSpinner:Landroid/widget/Spinner;

    new-instance v3, Lcom/google/android/finsky/layout/FinskyActionBar$2;

    invoke-direct {v3, p0, v6}, Lcom/google/android/finsky/layout/FinskyActionBar$2;-><init>(Lcom/google/android/finsky/layout/FinskyActionBar;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 626
    iget-object v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mFrameworkActionBar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mCustomSearchView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 627
    return-void
.end method

.method private processTabSelection(Lcom/google/android/finsky/model/ChannelTab;Landroid/app/ActionBar$Tab;)V
    .locals 2
    .parameter "channelTab"
    .parameter "actionBarTab"

    .prologue
    .line 359
    invoke-virtual {p1}, Lcom/google/android/finsky/model/ChannelTab;->getDataUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No url assigned to the channel. I can\'t retrieve the page"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->drainAllRequests()V

    .line 366
    invoke-virtual {p1}, Lcom/google/android/finsky/model/ChannelTab;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FinskyActionBar;->setCurrentCollectionType(I)V

    .line 367
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->invalidateOptionsMenu()V

    .line 369
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelList:Lcom/google/android/finsky/model/ChannelList;

    iget v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelToLoad:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/model/ChannelList;->selectTabWithId(I)V

    .line 370
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {p1}, Lcom/google/android/finsky/model/ChannelTab;->getDataUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goHome(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method private selectSpinnerCorpus(I)V
    .locals 3
    .parameter "channelId"

    .prologue
    .line 561
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelList:Lcom/google/android/finsky/model/ChannelList;

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/model/ChannelList;->getIndexForBackendId(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 562
    .local v0, positionInSpinner:I
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mSearchSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 563
    return-void
.end method

.method private selectTab(Landroid/app/ActionBar$Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 69
    iget-boolean v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mProcessingChannels:Z

    if-eqz v1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelToLoad:I

    .line 74
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelList:Lcom/google/android/finsky/model/ChannelList;

    iget v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelToLoad:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/model/ChannelList;->getTab(I)Lcom/google/android/finsky/model/ChannelTab;

    move-result-object v0

    .line 75
    .local v0, channel:Lcom/google/android/finsky/model/ChannelTab;
    invoke-direct {p0, v0, p1}, Lcom/google/android/finsky/layout/FinskyActionBar;->processTabSelection(Lcom/google/android/finsky/model/ChannelTab;Landroid/app/ActionBar$Tab;)V

    goto :goto_0
.end method

.method private setCorpusSpecificHomeIcon(I)V
    .locals 4
    .parameter "corpus"

    .prologue
    .line 690
    iget-object v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x102002c

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 691
    .local v0, homeIcon:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 715
    .end local v0           #homeIcon:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 696
    .restart local v0       #homeIcon:Landroid/view/View;
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 710
    const v1, 0x7f02001f

    .line 714
    .local v1, iconRes:I
    :goto_1
    check-cast v0, Landroid/widget/ImageView;

    .end local v0           #homeIcon:Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 698
    .end local v1           #iconRes:I
    .restart local v0       #homeIcon:Landroid/view/View;
    :pswitch_0
    const v1, 0x7f02001c

    .line 699
    .restart local v1       #iconRes:I
    goto :goto_1

    .line 701
    .end local v1           #iconRes:I
    :pswitch_1
    const v1, 0x7f02001d

    .line 702
    .restart local v1       #iconRes:I
    goto :goto_1

    .line 704
    .end local v1           #iconRes:I
    :pswitch_2
    const v1, 0x7f020020

    .line 705
    .restart local v1       #iconRes:I
    goto :goto_1

    .line 707
    .end local v1           #iconRes:I
    :pswitch_3
    const v1, 0x7f02001e

    .line 708
    .restart local v1       #iconRes:I
    goto :goto_1

    .line 696
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setLastQuery(Ljava/lang/String;I)V
    .locals 0
    .parameter "query"
    .parameter "channelId"

    .prologue
    .line 495
    iput-object p1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mLastQuery:Ljava/lang/String;

    .line 496
    iput p2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mLastSearchChannelId:I

    .line 497
    return-void
.end method

.method private switchToBrowseBar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 377
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mBrowseBarView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    const/high16 v2, 0x7f04

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mBrowseBarView:Landroid/view/View;

    .line 379
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mBrowseBarView:Landroid/view/View;

    const v2, 0x7f090003

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mBreadCrumbsView:Landroid/view/ViewGroup;

    .line 380
    new-instance v0, Lcom/google/android/finsky/layout/FinskyActionBar$BreadCrumbHolder;

    invoke-direct {v0, p0, v3}, Lcom/google/android/finsky/layout/FinskyActionBar$BreadCrumbHolder;-><init>(Lcom/google/android/finsky/layout/FinskyActionBar;Lcom/google/android/finsky/layout/FinskyActionBar$1;)V

    .line 381
    .local v0, holder:Lcom/google/android/finsky/layout/FinskyActionBar$BreadCrumbHolder;
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mBreadCrumbsView:Landroid/view/ViewGroup;

    const v2, 0x7f090004

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/google/android/finsky/layout/FinskyActionBar$BreadCrumbHolder;->parent:Landroid/widget/TextView;

    .line 382
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mBreadCrumbsView:Landroid/view/ViewGroup;

    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/google/android/finsky/layout/FinskyActionBar$BreadCrumbHolder;->child:Landroid/widget/TextView;

    .line 383
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mBreadCrumbsView:Landroid/view/ViewGroup;

    const v2, 0x7f090005

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/finsky/layout/FinskyActionBar$BreadCrumbHolder;->divider:Landroid/view/View;

    .line 384
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mBreadCrumbsView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 386
    .end local v0           #holder:Lcom/google/android/finsky/layout/FinskyActionBar$BreadCrumbHolder;
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mFrameworkActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 387
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mFrameworkActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mBrowseBarView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 388
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mFrameworkActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 389
    return-void
.end method

.method private switchToDetailsBar()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 448
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mDetailsView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    const v1, 0x7f040001

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mDetailsView:Landroid/view/View;

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mFrameworkActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mDetailsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 452
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/activities/MainActivity;->showShareMenu(Z)V

    .line 453
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->invalidateOptionsMenu()V

    .line 454
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mFrameworkActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 455
    return-void
.end method

.method private switchToHomeBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mProcessingChannels:Z

    .line 310
    invoke-direct {p0}, Lcom/google/android/finsky/layout/FinskyActionBar;->displayChannels()V

    .line 311
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mFrameworkActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 312
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mFrameworkActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 313
    iput-boolean v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mProcessingChannels:Z

    .line 314
    return-void
.end method

.method private switchToSearchBar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 569
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/activities/MainActivity;->showMyCollectionsMenu(Z)V

    .line 570
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/MainActivity;->invalidateOptionsMenu()V

    .line 572
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mCustomSearchView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 573
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mFrameworkActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mCustomSearchView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 575
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mSearchViewWidget:Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    .line 576
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mLastQuery:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mSearchViewWidget:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getSuggestionsAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    .line 578
    .local v0, adapter:Landroid/widget/CursorAdapter;
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mSearchViewWidget:Landroid/widget/SearchView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V

    .line 579
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mSearchViewWidget:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mLastQuery:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 580
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mSearchViewWidget:Landroid/widget/SearchView;

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V

    .line 583
    .end local v0           #adapter:Landroid/widget/CursorAdapter;
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/layout/FinskyActionBar;->initSearchView()V

    .line 588
    :goto_0
    return-void

    .line 586
    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/layout/FinskyActionBar;->initSearchView()V

    .line 587
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mFrameworkActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 182
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/MainActivity;->showSearchMenu(Z)V

    .line 184
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/MainActivity;->showShareMenu(Z)V

    .line 186
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/MainActivity;->showMyCollectionsMenu(Z)V

    .line 188
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mFrameworkActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->removeAllTabs()V

    .line 189
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mFrameworkActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 191
    iput-object v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mCustomSearchView:Landroid/view/View;

    .line 192
    iput-object v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mDetailsView:Landroid/view/View;

    .line 193
    iput-object v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mBrowseBarView:Landroid/view/View;

    .line 194
    iput-object v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mSearchSpinner:Landroid/widget/Spinner;

    .line 195
    iput-object v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mBreadCrumbsView:Landroid/view/ViewGroup;

    .line 197
    iput-object v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 198
    iput-object v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelList:Lcom/google/android/finsky/model/ChannelList;

    .line 199
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mLastQuery:Ljava/lang/String;

    .line 200
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mLastSearchChannelId:I

    .line 201
    return-void
.end method

.method public getChannelToLoad()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelToLoad:I

    return v0
.end method

.method public getChannels()Lcom/google/android/finsky/model/ChannelList;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelList:Lcom/google/android/finsky/model/ChannelList;

    return-object v0
.end method

.method public getCurrentCollectionType()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mCurrentCollectionType:I

    return v0
.end method

.method public getHomeUrlForActiveChannel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 481
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelList:Lcom/google/android/finsky/model/ChannelList;

    if-nez v1, :cond_0

    .line 482
    const/4 v1, 0x0

    .line 486
    :goto_0
    return-object v1

    .line 484
    :cond_0
    iget v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelToLoad:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelList:Lcom/google/android/finsky/model/ChannelList;

    invoke-virtual {v1}, Lcom/google/android/finsky/model/ChannelList;->getSelectedTabId()I

    move-result v1

    move v0, v1

    .line 486
    .local v0, selectedTabId:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FinskyActionBar;->getChannels()Lcom/google/android/finsky/model/ChannelList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/model/ChannelList;->getTab(I)Lcom/google/android/finsky/model/ChannelTab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/model/ChannelTab;->getDataUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 484
    .end local v0           #selectedTabId:I
    :cond_1
    iget v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelToLoad:I

    move v0, v1

    goto :goto_1
.end method

.method public getLastSearchChannelId()I
    .locals 2

    .prologue
    .line 503
    iget v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mLastSearchChannelId:I

    if-gez v0, :cond_0

    .line 504
    iget v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelToLoad:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelList:Lcom/google/android/finsky/model/ChannelList;

    invoke-virtual {v0}, Lcom/google/android/finsky/model/ChannelList;->getSelectedTabId()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mLastSearchChannelId:I

    .line 507
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mLastSearchChannelId:I

    return v0

    .line 504
    :cond_1
    iget v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelToLoad:I

    goto :goto_0
.end method

.method public getMyCollectionsName()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mMyCollectionNames:Ljava/util/HashMap;

    iget v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mCurrentCollectionType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public init(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/DfeApi;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
    .parameter "navManager"
    .parameter "api"
    .parameter "errorListener"

    .prologue
    const/4 v1, 0x3

    .line 171
    iput-object p1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 172
    sget-object v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->INITIAL:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    iput-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mCurrentState:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    .line 173
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/FinskyActionBar;->setCurrentCollectionType(I)V

    .line 174
    iput v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelToLoad:I

    .line 175
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mSearchViewWidget:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mSearchViewWidget:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 681
    :cond_0
    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "arg1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/FinskyActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 50
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "arg1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/FinskyActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 55
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "arg1"

    .prologue
    .line 59
    return-void
.end method

.method public selectSpinnerCorpusNoRefresh(I)V
    .locals 3
    .parameter "channelId"

    .prologue
    .line 554
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mSearchSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    .line 555
    .local v0, listener:Landroid/widget/AdapterView$OnItemSelectedListener;
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mSearchSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 556
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/FinskyActionBar;->selectSpinnerCorpus(I)V

    .line 557
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mSearchSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 558
    return-void
.end method

.method public setChannelToLoad(I)V
    .locals 0
    .parameter "channelId"

    .prologue
    .line 472
    iput p1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelToLoad:I

    .line 473
    return-void
.end method

.method public setChannels(Lcom/google/android/finsky/model/ChannelList;)V
    .locals 0
    .parameter "channels"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelList:Lcom/google/android/finsky/model/ChannelList;

    .line 205
    return-void
.end method

.method public setCurrentCollectionType(I)V
    .locals 1
    .parameter "channelId"

    .prologue
    .line 223
    iput p1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mCurrentCollectionType:I

    .line 224
    iget v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mCurrentCollectionType:I

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/FinskyActionBar;->setCorpusSpecificHomeIcon(I)V

    .line 225
    return-void
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .locals 2
    .parameter "query"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mSearchViewWidget:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 653
    return-void
.end method

.method public setSearchViewWidget(Landroid/widget/SearchView;)V
    .locals 0
    .parameter "sv"

    .prologue
    .line 516
    iput-object p1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mSearchViewWidget:Landroid/widget/SearchView;

    .line 517
    return-void
.end method

.method public setupBreadcrumbs(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, breadcrumbs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;>;"
    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 401
    if-nez p1, :cond_0

    .line 442
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mBreadCrumbsView:Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 406
    const-string v3, "Unable to set breadcrumbs when not in browse mode."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 410
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 411
    iget-object v3, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mBreadCrumbsView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 415
    :cond_2
    iget-object v3, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mBreadCrumbsView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/FinskyActionBar$BreadCrumbHolder;

    .line 419
    .local v2, holder:Lcom/google/android/finsky/layout/FinskyActionBar$BreadCrumbHolder;
    iget-object v4, v2, Lcom/google/android/finsky/layout/FinskyActionBar$BreadCrumbHolder;->parent:Landroid/widget/TextView;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v3, v2, Lcom/google/android/finsky/layout/FinskyActionBar$BreadCrumbHolder;->parent:Landroid/widget/TextView;

    new-instance v4, Lcom/google/android/finsky/layout/FinskyActionBar$1;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/layout/FinskyActionBar$1;-><init>(Lcom/google/android/finsky/layout/FinskyActionBar;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    const/4 v1, 0x0

    .line 428
    .local v1, childName:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v7, :cond_3

    .line 429
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int v0, v3, v7

    .line 430
    .local v0, childIndex:I
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getName()Ljava/lang/String;

    move-result-object v1

    .line 433
    .end local v0           #childIndex:I
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 434
    iget-object v3, v2, Lcom/google/android/finsky/layout/FinskyActionBar$BreadCrumbHolder;->child:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    iget-object v3, v2, Lcom/google/android/finsky/layout/FinskyActionBar$BreadCrumbHolder;->divider:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 441
    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mBreadCrumbsView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 437
    :cond_4
    iget-object v3, v2, Lcom/google/android/finsky/layout/FinskyActionBar$BreadCrumbHolder;->child:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v3, v2, Lcom/google/android/finsky/layout/FinskyActionBar$BreadCrumbHolder;->child:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    iget-object v3, v2, Lcom/google/android/finsky/layout/FinskyActionBar$BreadCrumbHolder;->divider:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public switchState(Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mChannelList:Lcom/google/android/finsky/model/ChannelList;

    if-nez v0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mCurrentState:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    if-eq p1, v0, :cond_0

    .line 262
    sget-object v0, Lcom/google/android/finsky/layout/FinskyActionBar$3;->$SwitchMap$com$google$android$finsky$navigationmanager$NavigationManager$NavigationState:[I

    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mCurrentState:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 281
    :goto_1
    iput-object p1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mCurrentState:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    .line 282
    sget-object v0, Lcom/google/android/finsky/layout/FinskyActionBar$3;->$SwitchMap$com$google$android$finsky$navigationmanager$NavigationManager$NavigationState:[I

    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mCurrentState:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 284
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/finsky/layout/FinskyActionBar;->clearLastSearch()V

    .line 285
    invoke-direct {p0}, Lcom/google/android/finsky/layout/FinskyActionBar;->switchToBrowseBar()V

    .line 286
    invoke-direct {p0}, Lcom/google/android/finsky/layout/FinskyActionBar;->switchToHomeBar()V

    goto :goto_0

    .line 264
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/finsky/layout/FinskyActionBar;->clearHomeBar()V

    goto :goto_1

    .line 268
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/finsky/layout/FinskyActionBar;->clearBrowseBar()V

    goto :goto_1

    .line 272
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/finsky/layout/FinskyActionBar;->clearSearchBar()V

    goto :goto_1

    .line 276
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/finsky/layout/FinskyActionBar;->clearDetailsBar()V

    goto :goto_1

    .line 290
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/finsky/layout/FinskyActionBar;->switchToBrowseBar()V

    goto :goto_0

    .line 294
    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/finsky/layout/FinskyActionBar;->switchToSearchBar()V

    goto :goto_0

    .line 298
    :pswitch_7
    invoke-direct {p0}, Lcom/google/android/finsky/layout/FinskyActionBar;->switchToDetailsBar()V

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 282
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public triggerQuery(Ljava/lang/String;I)Z
    .locals 1
    .parameter "query"
    .parameter "channelId"

    .prologue
    .line 532
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/FinskyActionBar;->setLastQuery(Ljava/lang/String;I)V

    .line 533
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/FinskyActionBar;->setSearchQuery(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mCustomSearchView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 539
    const/4 v0, 0x0

    .line 545
    :goto_0
    return v0

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mSearchViewWidget:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 544
    iget v0, p0, Lcom/google/android/finsky/layout/FinskyActionBar;->mLastSearchChannelId:I

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FinskyActionBar;->selectSpinnerCorpusNoRefresh(I)V

    .line 545
    const/4 v0, 0x1

    goto :goto_0
.end method
