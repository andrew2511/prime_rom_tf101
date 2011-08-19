.class public Lcom/google/android/finsky/navigationmanager/NavigationManager;
.super Ljava/lang/Object;
.source "NavigationManager.java"

# interfaces
.implements Lcom/google/android/finsky/utils/PurchaseButtonWrapper$PurchaseButtonHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;,
        Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/google/android/finsky/activities/MainActivity;

.field private mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private final mBackStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;",
            ">;"
        }
    .end annotation
.end field

.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mErrorListener:Lcom/android/volley/Response$ErrorListener;

.field private mFragmentManager:Landroid/app/FragmentManager;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/activities/MainActivity;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/analytics/Analytics;)V
    .locals 1
    .parameter "activity"
    .parameter "api"
    .parameter "analytics"

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/google/android/finsky/utils/MainThreadStack;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/MainThreadStack;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    .line 130
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager$1;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    iput-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 151
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->init(Lcom/google/android/finsky/activities/MainActivity;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/analytics/Analytics;)V

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/navigationmanager/NavigationManager;)Lcom/google/android/finsky/activities/MainActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->searchMore(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private getActivePage()Lcom/google/android/finsky/fragments/PageFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/finsky/fragments/PageFragment",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 713
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/app/FragmentManager;

    const v1, 0x7f090076

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/finsky/fragments/PageFragment;

    return-object p0
.end method

.method public static getConsumptionIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 5
    .parameter "context"
    .parameter "doc"

    .prologue
    const/4 v2, 0x0

    .line 603
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    .line 604
    .local v0, contentType:I
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v1

    .line 605
    .local v1, id:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 623
    :goto_0
    :pswitch_0
    return-object v2

    .line 610
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 626
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open an item from the corpus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 612
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/finsky/utils/IntentUtils;->buildConsumptionAppViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    .line 616
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/finsky/utils/IntentUtils;->buildConsumptionAppViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    .line 623
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/finsky/utils/IntentUtils;->buildConsumptionAppViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    .line 610
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static getManageIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 5
    .parameter "context"
    .parameter "doc"

    .prologue
    .line 635
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    .line 636
    .local v0, contentType:I
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, id:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 638
    const/4 v2, 0x0

    .line 645
    :goto_0
    return-object v2

    .line 642
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 648
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open an item from the corpus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 645
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/finsky/utils/IntentUtils;->buildConsumptionAppManageItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    .line 642
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getSampleIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 5
    .parameter "context"
    .parameter "doc"

    .prologue
    .line 658
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    .line 659
    .local v0, contentType:I
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v1

    .line 660
    .local v1, id:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 661
    const/4 v2, 0x0

    .line 668
    :goto_0
    return-object v2

    .line 663
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 675
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open an item from the corpus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 668
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/finsky/utils/IntentUtils;->buildConsumptionAppViewSampleIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    .line 663
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private popAllDetailsOff()V
    .locals 4

    .prologue
    .line 393
    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;

    iget-object v2, v2, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;->state:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    sget-object v3, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->DETAILS:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    if-ne v2, v3, :cond_0

    .line 407
    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;

    .line 408
    .local v0, currentEntry:Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;
    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;

    iget-object v2, v2, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;->state:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    sget-object v3, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->DETAILS:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    if-ne v2, v3, :cond_2

    .line 410
    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 411
    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_1

    .line 417
    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 418
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToChannelHome()V

    goto :goto_0

    .line 422
    :cond_3
    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;

    .line 423
    .local v1, resultPage:Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;
    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/MainActivity;->getFinskyActionBar()Lcom/google/android/finsky/layout/FinskyActionBar;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;->state:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/FinskyActionBar;->switchState(Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;)V

    goto :goto_0
.end method

.method private searchMore(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "partialUrl"
    .parameter "query"
    .parameter "backendId"

    .prologue
    .line 307
    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;

    iget-object v3, v3, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;->state:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    sget-object v4, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->SEARCH:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    if-eq v3, v4, :cond_3

    .line 312
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 315
    :cond_3
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v1

    .line 316
    .local v1, active:Lcom/google/android/finsky/fragments/PageFragment;,"Lcom/google/android/finsky/fragments/PageFragment<*>;"
    if-eqz v1, :cond_4

    instance-of v3, v1, Lcom/google/android/finsky/fragments/SearchFragment;

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    move v2, v3

    .line 318
    .local v2, replaceTop:Z
    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/MainActivity;->getFinskyActionBar()Lcom/google/android/finsky/layout/FinskyActionBar;

    move-result-object v0

    .line 319
    .local v0, actionBar:Lcom/google/android/finsky/layout/FinskyActionBar;
    invoke-virtual {v0, p2}, Lcom/google/android/finsky/layout/FinskyActionBar;->setSearchQuery(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0, p3}, Lcom/google/android/finsky/layout/FinskyActionBar;->selectSpinnerCorpusNoRefresh(I)V

    .line 321
    sget-object v3, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->SEARCH:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    invoke-static {p1}, Lcom/google/android/finsky/fragments/SearchFragment;->newInstance(Ljava/lang/String;)Lcom/google/android/finsky/fragments/SearchFragment;

    move-result-object v4

    invoke-direct {p0, v3, v4, p1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;Landroid/app/Fragment;Ljava/lang/String;Z)V

    goto :goto_0

    .line 316
    .end local v0           #actionBar:Lcom/google/android/finsky/layout/FinskyActionBar;
    .end local v2           #replaceTop:Z
    :cond_4
    const/4 v3, 0x0

    move v2, v3

    goto :goto_1
.end method

.method private showPage(Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "fragment"
    .parameter "url"

    .prologue
    .line 748
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;Landroid/app/Fragment;Ljava/lang/String;Z)V

    .line 749
    return-void
.end method

.method private showPage(Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;Landroid/app/Fragment;Ljava/lang/String;Z)V
    .locals 3
    .parameter "state"
    .parameter "fragment"
    .parameter "url"
    .parameter "replaceTop"

    .prologue
    .line 768
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/MainActivity;->getFinskyActionBar()Lcom/google/android/finsky/layout/FinskyActionBar;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/layout/FinskyActionBar;->switchState(Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;)V

    .line 770
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 771
    .local v0, ft:Landroid/app/FragmentTransaction;
    const v1, 0x7f090076

    invoke-virtual {v0, v1, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 773
    if-eqz p4, :cond_1

    .line 775
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 776
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 778
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 782
    :cond_1
    const-string v1, "unused name"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 783
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 784
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    new-instance v2, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;

    invoke-direct {v2, p1, p3}, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 787
    return-void
.end method


# virtual methods
.method public buy(Lcom/google/android/finsky/api/model/Document;I)V
    .locals 2
    .parameter "document"
    .parameter "offerType"

    .prologue
    .line 907
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getCookie()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->buyItem(Ljava/lang/String;Ljava/lang/String;I)V

    .line 908
    return-void
.end method

.method public buyItem(Lcom/google/android/finsky/api/model/Document;I)V
    .locals 6
    .parameter "doc"
    .parameter "offerType"

    .prologue
    .line 490
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoCache()Lcom/google/android/finsky/utils/PackageInfoCache;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/finsky/api/model/Document;->ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    :goto_0
    return-void

    .line 493
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    .line 494
    .local v0, contentType:I
    packed-switch v0, :pswitch_data_0

    .line 504
    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    const v4, 0x7f0b0021

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 507
    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    sget-object v3, Lcom/google/android/finsky/analytics/Analytics$Event;->BUY_ITEM:Lcom/google/android/finsky/analytics/Analytics$Event;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getCookie()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/finsky/analytics/Analytics;->reportEvent(Lcom/google/android/finsky/analytics/Analytics$Event;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 499
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    .line 500
    .local v1, mainActivity:Lcom/google/android/finsky/activities/MainActivity;
    invoke-virtual {v1, p1, p2}, Lcom/google/android/finsky/activities/MainActivity;->startPurchase(Lcom/google/android/finsky/api/model/Document;I)V

    goto :goto_1

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public buyItem(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "url"
    .parameter "cookie"
    .parameter "offerType"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    new-instance v1, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->getDetails(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 537
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 795
    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 797
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 799
    :cond_0
    return-void
.end method

.method public createSearchMoreClickListener(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "url"
    .parameter "query"
    .parameter "backendId"

    .prologue
    .line 827
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public deserialize(Landroid/os/Bundle;)Z
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 442
    const-string v6, "nm_state"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 444
    .local v1, contents:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;>;"
    const-string v6, "nm_selected_channel"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 447
    .local v3, previouslySelectedChannel:I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 448
    :cond_0
    const/4 v6, 0x0

    .line 461
    :goto_0
    return v6

    .line 451
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;

    .line 452
    .local v4, st:Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;
    iget-object v6, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v6, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 455
    .end local v4           #st:Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;
    :cond_2
    iget-object v6, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v6}, Lcom/google/android/finsky/activities/MainActivity;->getFinskyActionBar()Lcom/google/android/finsky/layout/FinskyActionBar;

    move-result-object v0

    .line 456
    .local v0, bar:Lcom/google/android/finsky/layout/FinskyActionBar;
    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/FinskyActionBar;->setChannelToLoad(I)V

    .line 458
    iget-object v6, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;

    .line 460
    .local v5, top:Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;
    iget-object v6, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v6}, Lcom/google/android/finsky/activities/MainActivity;->getFinskyActionBar()Lcom/google/android/finsky/layout/FinskyActionBar;

    move-result-object v6

    iget-object v7, v5, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;->state:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/layout/FinskyActionBar;->switchState(Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;)V

    .line 461
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public getBuyImmediateClickListener(Lcom/google/android/finsky/api/model/Document;I)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "doc"
    .parameter "offerType"

    .prologue
    .line 871
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/navigationmanager/NavigationManager$7;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;I)V

    return-object v0
.end method

.method public getCurrentDocument()Lcom/google/android/finsky/api/model/Document;
    .locals 2

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    .line 474
    .local v0, active:Lcom/google/android/finsky/fragments/PageFragment;,"Lcom/google/android/finsky/fragments/PageFragment<*>;"
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/google/android/finsky/fragments/DetailsFragment;

    if-eqz v1, :cond_0

    .line 475
    check-cast v0, Lcom/google/android/finsky/fragments/DetailsFragment;

    .end local v0           #active:Lcom/google/android/finsky/fragments/PageFragment;,"Lcom/google/android/finsky/fragments/PageFragment<*>;"
    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    .line 477
    :goto_0
    return-object v1

    .restart local v0       #active:Lcom/google/android/finsky/fragments/PageFragment;,"Lcom/google/android/finsky/fragments/PageFragment<*>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentPageUrl()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 721
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 727
    .end local p0
    :goto_0
    return-object v0

    .line 724
    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 725
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;->url:Ljava/lang/String;

    goto :goto_0

    .restart local p0
    :cond_2
    move-object v0, v1

    .line 727
    goto :goto_0
.end method

.method public getDetailsClickListener(Lcom/google/android/finsky/api/model/Document;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "doc"

    .prologue
    .line 855
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$6;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager$6;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;)V

    return-object v0
.end method

.method public getManageClickListener(Lcom/google/android/finsky/api/model/Document;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "doc"

    .prologue
    .line 897
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$9;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager$9;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;)V

    return-object v0
.end method

.method public getOpenClickListener(Lcom/google/android/finsky/api/model/Document;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "doc"

    .prologue
    .line 884
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$8;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager$8;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;)V

    return-object v0
.end method

.method public goBack()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 333
    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v5

    .line 357
    :goto_0
    return v3

    .line 338
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;

    .line 339
    .local v0, currentEntry:Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;
    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->popBackStack()V

    .line 341
    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;

    .line 342
    .local v2, newStackEntry:Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;
    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/MainActivity;->getFinskyActionBar()Lcom/google/android/finsky/layout/FinskyActionBar;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;->state:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/layout/FinskyActionBar;->switchState(Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;)V
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    const/4 v3, 0x1

    goto :goto_0

    .line 352
    .end local v0           #currentEntry:Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;
    .end local v2           #newStackEntry:Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, ex:Ljava/util/EmptyStackException;
    move v3, v5

    .line 357
    goto :goto_0
.end method

.method public goBrowse(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-static {p1}, Lcom/google/android/finsky/api/DfeApi;->isTopLevelUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToChannelHome()V

    goto :goto_0

    .line 201
    :cond_2
    sget-object v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->BROWSE:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    invoke-static {p1}, Lcom/google/android/finsky/fragments/BrowseFragment;->newInstance(Ljava/lang/String;)Lcom/google/android/finsky/fragments/BrowseFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;Landroid/app/Fragment;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public goHome(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    .line 184
    sget-object v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->HOME:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    invoke-static {p1}, Lcom/google/android/finsky/fragments/BrowseFragment;->newInstance(Ljava/lang/String;)Lcom/google/android/finsky/fragments/BrowseFragment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;Landroid/app/Fragment;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public goToChannelHome()V
    .locals 2

    .prologue
    .line 686
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/MainActivity;->getFinskyActionBar()Lcom/google/android/finsky/layout/FinskyActionBar;

    move-result-object v0

    .line 687
    .local v0, actionBar:Lcom/google/android/finsky/layout/FinskyActionBar;
    invoke-virtual {v0}, Lcom/google/android/finsky/layout/FinskyActionBar;->getHomeUrlForActiveChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goHome(Ljava/lang/String;)V

    .line 688
    return-void
.end method

.method public goUp()V
    .locals 2

    .prologue
    .line 372
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;

    iget-object v0, v1, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;->state:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    .line 377
    .local v0, currentState:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;
    sget-object v1, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->DETAILS:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    if-ne v0, v1, :cond_2

    .line 378
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->popAllDetailsOff()V

    goto :goto_0

    .line 379
    :cond_2
    sget-object v1, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->BROWSE:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    if-ne v0, v1, :cond_3

    .line 380
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBack()Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToChannelHome()V

    goto :goto_0

    .line 383
    :cond_3
    sget-object v1, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->SEARCH:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    if-ne v0, v1, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToChannelHome()V

    goto :goto_0
.end method

.method public init(Lcom/google/android/finsky/activities/MainActivity;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/analytics/Analytics;)V
    .locals 1
    .parameter "activity"
    .parameter "api"
    .parameter "analytics"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    .line 159
    iput-object p2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 160
    iput-object p3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 161
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 162
    return-void
.end method

.method public manage(Lcom/google/android/finsky/api/model/Document;)V
    .locals 0
    .parameter "document"

    .prologue
    .line 912
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->manageItem(Lcom/google/android/finsky/api/model/Document;)V

    .line 913
    return-void
.end method

.method public manageItem(Lcom/google/android/finsky/api/model/Document;)V
    .locals 5
    .parameter "doc"

    .prologue
    .line 584
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v1, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getManageIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v0

    .line 585
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 586
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 592
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    sget-object v2, Lcom/google/android/finsky/analytics/Analytics$Event;->MANAGE_ITEM:Lcom/google/android/finsky/analytics/Analytics$Event;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getCookie()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/analytics/Analytics;->reportEvent(Lcom/google/android/finsky/analytics/Analytics$Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    return-void

    .line 589
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    const v3, 0x7f0b0033

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public open(Lcom/google/android/finsky/api/model/Document;)V
    .locals 0
    .parameter "document"

    .prologue
    .line 917
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->openItem(Lcom/google/android/finsky/api/model/Document;)V

    .line 918
    return-void
.end method

.method public openItem(Lcom/google/android/finsky/api/model/Document;)V
    .locals 5
    .parameter "doc"

    .prologue
    .line 562
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v1, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getConsumptionIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v0

    .line 563
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 564
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 574
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    sget-object v2, Lcom/google/android/finsky/analytics/Analytics$Event;->VIEW_ITEM:Lcom/google/android/finsky/analytics/Analytics$Event;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getCookie()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/analytics/Analytics;->reportEvent(Lcom/google/android/finsky/analytics/Analytics$Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    return-void

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    const v3, 0x7f0b0055

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public refreshPage()V
    .locals 4

    .prologue
    .line 698
    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 710
    :goto_0
    return-void

    .line 702
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;

    .line 703
    .local v1, stackTop:Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    .line 704
    .local v0, active:Lcom/google/android/finsky/fragments/PageFragment;,"Lcom/google/android/finsky/fragments/PageFragment<*>;"
    if-eqz v0, :cond_1

    .line 706
    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PageFragment;->refresh()V

    goto :goto_0

    .line 708
    :cond_1
    const-string v2, "Called refresh but there was no active page"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sampleItem(Lcom/google/android/finsky/api/model/Document;)V
    .locals 4
    .parameter "doc"

    .prologue
    .line 546
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v1, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getSampleIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v0

    .line 547
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 548
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 554
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    const v3, 0x7f0b0033

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public search(Ljava/lang/String;I)V
    .locals 1
    .parameter "query"
    .parameter "channel"

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->search(Ljava/lang/String;IZ)V

    .line 264
    return-void
.end method

.method public search(Ljava/lang/String;IZ)V
    .locals 6
    .parameter "query"
    .parameter "channel"
    .parameter "resetStack"

    .prologue
    .line 275
    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v4}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    const/4 v2, 0x0

    .line 280
    .local v2, replaceTop:Z
    if-eqz p3, :cond_2

    .line 282
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToChannelHome()V

    .line 288
    :goto_1
    invoke-static {p1, p2}, Lcom/google/android/finsky/api/DfeApi;->formSearchUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, searchUrl:Ljava/lang/String;
    sget-object v4, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->SEARCH:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    invoke-static {v3}, Lcom/google/android/finsky/fragments/SearchFragment;->newInstance(Ljava/lang/String;)Lcom/google/android/finsky/fragments/SearchFragment;

    move-result-object v5

    invoke-direct {p0, v4, v5, v3, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;Landroid/app/Fragment;Ljava/lang/String;Z)V

    .line 292
    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v4}, Lcom/google/android/finsky/activities/MainActivity;->getFinskyActionBar()Lcom/google/android/finsky/layout/FinskyActionBar;

    move-result-object v0

    .line 293
    .local v0, actionBar:Lcom/google/android/finsky/layout/FinskyActionBar;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/layout/FinskyActionBar;->triggerQuery(Ljava/lang/String;I)Z

    goto :goto_0

    .line 284
    .end local v0           #actionBar:Lcom/google/android/finsky/layout/FinskyActionBar;
    .end local v3           #searchUrl:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v1

    .line 285
    .local v1, active:Lcom/google/android/finsky/fragments/PageFragment;,"Lcom/google/android/finsky/fragments/PageFragment<*>;"
    if-eqz v1, :cond_3

    instance-of v4, v1, Lcom/google/android/finsky/fragments/SearchFragment;

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    move v2, v4

    :goto_2
    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    move v2, v4

    goto :goto_2
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 432
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 436
    .local v0, asList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;>;"
    const-string v1, "nm_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 437
    const-string v1, "nm_selected_channel"

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/MainActivity;->getFinskyActionBar()Lcom/google/android/finsky/layout/FinskyActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/FinskyActionBar;->getChannelToLoad()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public showDetails(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showDetails(Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V

    .line 211
    return-void
.end method

.method public showDetails(Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V
    .locals 3
    .parameter "url"
    .parameter "doc"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    sget-object v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->DETAILS:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    invoke-static {p1, p2}, Lcom/google/android/finsky/fragments/DetailsFragment;->newInstance(Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/fragments/DetailsFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;Landroid/app/Fragment;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    sget-object v1, Lcom/google/android/finsky/analytics/Analytics$Event;->VIEW_ITEM:Lcom/google/android/finsky/analytics/Analytics$Event;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getCookie()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/finsky/analytics/Analytics;->reportEvent(Lcom/google/android/finsky/analytics/Analytics$Event;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public switchDetailsPageState(Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;)V
    .locals 3
    .parameter "newState"

    .prologue
    .line 245
    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;

    .line 249
    .local v1, newStackEntry:Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    .line 250
    .local v0, active:Lcom/google/android/finsky/fragments/PageFragment;,"Lcom/google/android/finsky/fragments/PageFragment<*>;"
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/google/android/finsky/fragments/DetailsFragment;

    if-eqz v2, :cond_0

    .line 251
    check-cast v0, Lcom/google/android/finsky/fragments/DetailsFragment;

    .end local v0           #active:Lcom/google/android/finsky/fragments/PageFragment;,"Lcom/google/android/finsky/fragments/PageFragment<*>;"
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/fragments/DetailsFragment;->switchLayout(Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;)V

    goto :goto_0
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    .line 169
    return-void
.end method
