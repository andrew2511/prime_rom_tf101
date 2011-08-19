.class public Lcom/newspaperdirect/pressreader/android/LocalStore;
.super Landroid/app/Activity;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;,
        Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;,
        Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;,
        Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;,
        Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;,
        Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;,
        Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;,
        Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;,
        Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;,
        Lcom/newspaperdirect/pressreader/android/LocalStore$ThumbnailUrls;,
        Lcom/newspaperdirect/pressreader/android/LocalStore$TitleWithSupplementsAdapter;,
        Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;,
        Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;,
        Lcom/newspaperdirect/pressreader/android/LocalStore$eView;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eCategory:[I = null

.field public static final ACTION_RELOAD_CATALOG:Ljava/lang/String; = "com.newspaperdirect.pressreader.android.LocalStore.ReloadCalalog"

.field private static final NEW_ORDER_REQUEST_CODE:I = 0x1


# instance fields
.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private fullReload:Z

.field private mAccountSubsciprionPlan:Lcom/newspaperdirect/pressreader/android/core/AccountStatus;

.field private mAllNewspapers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;"
        }
    .end annotation
.end field

.field private mBindAdaptersTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCategoriesView:Landroid/widget/ListView;

.field private mCurrentCategory:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

.field private mCurrentService:Lcom/newspaperdirect/pressreader/android/core/Service;

.field private mCurrentSortBy:Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;

.field private mCurrentViewIdx:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

.field private mGetIssuesDatesTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mImageLoaderManager:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;

.field private mLastSelectedCategory:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

.field private mLastSelectedCountry:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

.field private mLastSelectedLanguage:Ljava/lang/String;

.field private mNewspaperSupplementsView:Landroid/widget/ListView;

.field private mNewspapersView:Landroid/widget/ListView;

.field private mNoParent:Z

.field private mParent:Landroid/app/Activity;

.field private mReloadTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchBtn:Landroid/view/View;

.field private mSearchFilter:Landroid/widget/EditText;

.field private mSearchNewsBtn:Landroid/view/View;

.field private mSortByDateBtn:Landroid/view/View;

.field private mSortByRateBtn:Landroid/view/View;

.field private mSortByTitleBtn:Landroid/view/View;

.field private mSpin:Landroid/view/animation/Animation;

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerCanFire:Z

.field private mSwitcher:Landroid/widget/ViewFlipper;

.field mainRecentItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/RecentItem;",
            ">;"
        }
    .end annotation
.end field

.field mainRecentNewspapers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;"
        }
    .end annotation
.end field

.field private persistService:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eCategory()[I
    .locals 3

    .prologue
    .line 85
    sget-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore;->$SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eCategory:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->values()[Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->CountryList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->FavoriteList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->LanguageList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->RecentList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->SearchResult:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore;->$SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eCategory:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 114
    iput-boolean v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSpinnerCanFire:Z

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    .line 152
    iput-boolean v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mNoParent:Z

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->fullReload:Z

    .line 157
    iput-boolean v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->persistService:Z

    .line 286
    new-instance v0, Lcom/newspaperdirect/pressreader/android/LocalStore$1;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$1;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    return-void
.end method

.method private ReloadAllNewspapers()V
    .locals 1

    .prologue
    .line 422
    new-instance v0, Lcom/newspaperdirect/pressreader/android/LocalStore$9;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$9;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    .line 427
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$9;->run()V

    .line 428
    return-void
.end method

.method private ReloadCatalog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 390
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 391
    const v0, 0x7f0c0012

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 392
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->showToolbar()V

    .line 393
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mReloadTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mReloadTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 394
    :cond_0
    new-instance v0, Lcom/newspaperdirect/pressreader/android/LocalStore$8;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$8;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    .line 417
    const/4 v2, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    .line 394
    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mReloadTask:Landroid/os/AsyncTask;

    .line 419
    :cond_1
    return-void
.end method

.method private ReloadCatalogBind()V
    .locals 2

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->bindAdapters()V

    .line 432
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->fullReload:Z

    if-eqz v0, :cond_0

    .line 433
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->reset()V

    .line 434
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/LocalStore$ThumbnailUrls;->access$1()V

    .line 435
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->isSmartEdition()Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->showCategoriesView()V

    .line 442
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->fullReload:Z

    .line 444
    :cond_0
    return-void

    .line 438
    :cond_1
    sget-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->NewspaperList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    invoke-direct {p0, v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->showNewspapersView(Lcom/newspaperdirect/pressreader/android/LocalStore$eView;)V

    .line 439
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentService:Lcom/newspaperdirect/pressreader/android/core/Service;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getNewspapers(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mAllNewspapers:Ljava/util/List;

    .line 440
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mAllNewspapers:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->onCategoryClicked(Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/LocalStore;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->fullReload:Z

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/LocalStore;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->persistService:Z

    return-void
.end method

.method static synthetic access$10(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2127
    invoke-direct {p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/LocalStore;->applyAdditionalMarks(Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$11(Lcom/newspaperdirect/pressreader/android/LocalStore;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSpin:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$12(Lcom/newspaperdirect/pressreader/android/LocalStore;Landroid/widget/ImageView;Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2031
    invoke-direct {p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/LocalStore;->loadThumbnail(Landroid/widget/ImageView;Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;)V

    return-void
.end method

.method static synthetic access$13(Lcom/newspaperdirect/pressreader/android/LocalStore;)Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentCategory:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    return-object v0
.end method

.method static synthetic access$14(Lcom/newspaperdirect/pressreader/android/LocalStore;)Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentSortBy:Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;

    return-object v0
.end method

.method static synthetic access$15(Lcom/newspaperdirect/pressreader/android/LocalStore;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mAllNewspapers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$16(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1693
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->getOrderDateTimeString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17(Lcom/newspaperdirect/pressreader/android/LocalStore;)Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mImageLoaderManager:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;

    return-object v0
.end method

.method static synthetic access$18(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2039
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->getThumbnailBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$19(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/core/AccountStatus;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mAccountSubsciprionPlan:Lcom/newspaperdirect/pressreader/android/core/AccountStatus;

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentCategory:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    return-void
.end method

.method static synthetic access$20(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/core/catalog/Country;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mLastSelectedCountry:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    return-void
.end method

.method static synthetic access$21(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mLastSelectedLanguage:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$22(Lcom/newspaperdirect/pressreader/android/LocalStore;)Lcom/newspaperdirect/pressreader/android/core/catalog/Country;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mLastSelectedCountry:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    return-object v0
.end method

.method static synthetic access$23(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 946
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->onCategoryClicked(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$24(Lcom/newspaperdirect/pressreader/android/LocalStore;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mLastSelectedLanguage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$25(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 997
    invoke-direct {p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/LocalStore;->onMainTitleClicked(Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$26(Lcom/newspaperdirect/pressreader/android/LocalStore;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mNewspaperSupplementsView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$27(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;)Ljava/lang/Boolean;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1717
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->getIssuesDates(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$28(Lcom/newspaperdirect/pressreader/android/LocalStore;)Z
    .locals 1
    .parameter

    .prologue
    .line 586
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->selectService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$29(Lcom/newspaperdirect/pressreader/android/LocalStore;)V
    .locals 0
    .parameter

    .prologue
    .line 2053
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->showMyLibraryTab()V

    return-void
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/LocalStore$eView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentViewIdx:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    return-void
.end method

.method static synthetic access$30(Lcom/newspaperdirect/pressreader/android/LocalStore;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->ReloadAllNewspapers()V

    return-void
.end method

.method static synthetic access$31(Lcom/newspaperdirect/pressreader/android/LocalStore;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->ReloadCatalogBind()V

    return-void
.end method

.method static synthetic access$32(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mAllNewspapers:Ljava/util/List;

    return-void
.end method

.method static synthetic access$33(Lcom/newspaperdirect/pressreader/android/LocalStore;)Landroid/os/AsyncTask;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mGetIssuesDatesTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$34(Lcom/newspaperdirect/pressreader/android/LocalStore;Landroid/os/AsyncTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mGetIssuesDatesTask:Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$36(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/core/Service;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentService:Lcom/newspaperdirect/pressreader/android/core/Service;

    return-void
.end method

.method static synthetic access$37(Lcom/newspaperdirect/pressreader/android/LocalStore;)Z
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSpinnerCanFire:Z

    return v0
.end method

.method static synthetic access$38(Lcom/newspaperdirect/pressreader/android/LocalStore;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSpinnerCanFire:Z

    return-void
.end method

.method static synthetic access$39(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/LocalStore$eView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 831
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->showNewspapersView(Lcom/newspaperdirect/pressreader/android/LocalStore$eView;)V

    return-void
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/LocalStore;)V
    .locals 0
    .parameter

    .prologue
    .line 857
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->showCategoriesView()V

    return-void
.end method

.method static synthetic access$40(Lcom/newspaperdirect/pressreader/android/LocalStore;)V
    .locals 0
    .parameter

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->bindAdapters()V

    return-void
.end method

.method static synthetic access$41(Lcom/newspaperdirect/pressreader/android/LocalStore;)V
    .locals 0
    .parameter

    .prologue
    .line 2140
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->applySorting()V

    return-void
.end method

.method static synthetic access$42(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 871
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->filterNewspapers(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$43(Lcom/newspaperdirect/pressreader/android/LocalStore;)Lcom/newspaperdirect/pressreader/android/LocalStore$eView;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentViewIdx:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    return-object v0
.end method

.method static synthetic access$44(Lcom/newspaperdirect/pressreader/android/LocalStore;)V
    .locals 0
    .parameter

    .prologue
    .line 729
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->cancelSearch()V

    return-void
.end method

.method static synthetic access$45(Lcom/newspaperdirect/pressreader/android/LocalStore;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSearchFilter:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$46(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1758
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->getMainTitles(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$47(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1706
    invoke-direct {p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/LocalStore;->findByCid(Ljava/util/List;Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/newspaperdirect/pressreader/android/LocalStore;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->ReloadCatalog()V

    return-void
.end method

.method static synthetic access$6(Lcom/newspaperdirect/pressreader/android/LocalStore;)Lcom/newspaperdirect/pressreader/android/core/Service;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentService:Lcom/newspaperdirect/pressreader/android/core/Service;

    return-object v0
.end method

.method static synthetic access$7(Lcom/newspaperdirect/pressreader/android/LocalStore;Landroid/widget/ImageView;Lcom/newspaperdirect/pressreader/android/core/catalog/Country;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1699
    invoke-direct {p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/LocalStore;->loadFlag(Landroid/widget/ImageView;Lcom/newspaperdirect/pressreader/android/core/catalog/Country;)V

    return-void
.end method

.method static synthetic access$8(Lcom/newspaperdirect/pressreader/android/LocalStore;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mNewspapersView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentSortBy:Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;

    return-void
.end method

.method private applyAdditionalMarks(Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;Landroid/view/View;)V
    .locals 2
    .parameter "nppr"
    .parameter "container"

    .prologue
    .line 2128
    const v1, 0x7f0c0033

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2129
    .local v0, label:Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2130
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->isFree()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2131
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mAccountSubsciprionPlan:Lcom/newspaperdirect/pressreader/android/core/AccountStatus;

    if-eqz v1, :cond_1

    .line 2132
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mAccountSubsciprionPlan:Lcom/newspaperdirect/pressreader/android/core/AccountStatus;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->IsTrial()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2133
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mAccountSubsciprionPlan:Lcom/newspaperdirect/pressreader/android/core/AccountStatus;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->getShowRemainingFreeCredits()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2134
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mAccountSubsciprionPlan:Lcom/newspaperdirect/pressreader/android/core/AccountStatus;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->getRemainigCredits()I

    move-result v1

    if-nez v1, :cond_1

    .line 2135
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2138
    :cond_1
    return-void
.end method

.method private applySorting()V
    .locals 3

    .prologue
    .line 2141
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->showToolbar()V

    .line 2142
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentViewIdx:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    sget-object v2, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->NewspaperList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mNewspapersView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    move-object v0, v1

    .line 2143
    .local v0, adapter:Landroid/widget/ListAdapter;
    :goto_0
    instance-of v1, v0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;

    if-eqz v1, :cond_0

    .line 2145
    check-cast v0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentSortBy:Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->sort(Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;)V

    .line 2147
    :cond_0
    return-void

    .line 2142
    :cond_1
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mNewspaperSupplementsView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private bindAdapters()V
    .locals 2

    .prologue
    .line 522
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/LocalStore;->$SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eCategory()[I

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentCategory:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 580
    :goto_0
    return-void

    .line 524
    :pswitch_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCategoriesView:Landroid/widget/ListView;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$LanguagesListAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 527
    :pswitch_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCategoriesView:Landroid/widget/ListView;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$CountriesListAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 530
    :pswitch_2
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mBindAdaptersTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mBindAdaptersTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 531
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mBindAdaptersTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 533
    :cond_0
    new-instance v0, Lcom/newspaperdirect/pressreader/android/LocalStore$10;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$10;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 574
    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$10;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    .line 533
    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mBindAdaptersTask:Landroid/os/AsyncTask;

    goto :goto_0

    .line 577
    :pswitch_3
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mNewspapersView:Landroid/widget/ListView;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 522
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private cancelSearch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 730
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->clearInput()V

    .line 731
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSearchFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 732
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mLastSelectedCategory:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentCategory:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    .line 733
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentCategory:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->CountryList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentCategory:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->LanguageList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    if-ne v0, v1, :cond_1

    .line 735
    :cond_0
    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mLastSelectedCountry:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    .line 736
    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mLastSelectedLanguage:Ljava/lang/String;

    .line 737
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->bindAdapters()V

    .line 738
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->showCategoriesView()V

    .line 742
    :goto_0
    return-void

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentViewIdx:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    invoke-direct {p0, v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->showNewspapersView(Lcom/newspaperdirect/pressreader/android/LocalStore$eView;)V

    goto :goto_0
.end method

.method private clearInput()V
    .locals 3

    .prologue
    .line 745
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSearchFilter:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 748
    :goto_0
    return-void

    .line 746
    :cond_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 747
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSearchFilter:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private filterNewspapers(Ljava/lang/String;)V
    .locals 9
    .parameter "filter"

    .prologue
    const/4 v8, 0x1

    .line 872
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mAllNewspapers:Ljava/util/List;

    if-nez v5, :cond_0

    .line 944
    :goto_0
    return-void

    .line 873
    :cond_0
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mGetIssuesDatesTask:Landroid/os/AsyncTask;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mGetIssuesDatesTask:Landroid/os/AsyncTask;

    invoke-virtual {v5, v8}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 874
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 875
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mNewspapersView:Landroid/widget/ListView;

    new-instance v6, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 878
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 879
    .local v1, key:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 880
    .local v3, newspapers:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 881
    .local v4, newspapersAdditional:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mAllNewspapers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 893
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 895
    new-instance v0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;

    invoke-direct {v0, p0, v3, v4}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;Ljava/util/List;)V

    .line 896
    .local v0, a:Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mLastSelectedCountry:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    invoke-virtual {v5}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->setTitle(Ljava/lang/String;)V

    .line 897
    const-string v5, "All countries"

    invoke-virtual {v0, v5}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->setAdditionalTitle(Ljava/lang/String;)V

    .line 901
    :goto_2
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mNewspapersView:Landroid/widget/ListView;

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 903
    new-instance v5, Lcom/newspaperdirect/pressreader/android/LocalStore$22;

    invoke-direct {v5, p0, v3, v4, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$22;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    new-array v6, v8, [Ljava/lang/Void;

    const/4 v7, 0x0

    .line 943
    const/4 v8, 0x0

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/newspaperdirect/pressreader/android/LocalStore$22;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v5

    .line 903
    iput-object v5, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mGetIssuesDatesTask:Landroid/os/AsyncTask;

    goto :goto_0

    .line 881
    .end local v0           #a:Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    .line 882
    .local v2, newspaper:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 883
    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mLastSelectedCountry:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    if-eqz v6, :cond_6

    .line 884
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCountryISOCode()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mLastSelectedCountry:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->getISOCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 885
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 887
    :cond_5
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 889
    :cond_6
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 900
    .end local v2           #newspaper:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    :cond_7
    new-instance v0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_8

    move-object v5, v4

    :goto_3
    invoke-direct {v0, p0, v5}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;)V

    .restart local v0       #a:Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;
    goto :goto_2

    .end local v0           #a:Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;
    :cond_8
    move-object v5, v3

    goto :goto_3
.end method

.method private findByCid(Ljava/util/List;Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    .locals 3
    .parameter
    .parameter "cid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;"
        }
    .end annotation

    .prologue
    .line 1707
    .local p1, newspapers:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1711
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 1707
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    .line 1708
    .local v0, newspaper:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1709
    goto :goto_0
.end method

.method private getIssuesDates(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 1718
    .local p1, newspapers:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    const-string v7, "get-latest-issue-info"

    invoke-direct {v3, v7}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;-><init>(Ljava/lang/String;)V

    .line 1719
    .local v3, helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1720
    .local v0, builder:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1721
    .local v5, issueDateFormat:Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1722
    .local v4, issueActivationDateFormat:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1723
    .local v1, dic:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1727
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->setRequestBody(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    .line 1728
    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->getResponseElement()Landroid/sax/Element;

    move-result-object v7

    const-string v8, "cids"

    invoke-virtual {v7, v8}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v7

    const-string v8, "item"

    invoke-virtual {v7, v8}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v7

    new-instance v8, Lcom/newspaperdirect/pressreader/android/LocalStore$25;

    invoke-direct {v8, p0, p1, v5, v4}, Lcom/newspaperdirect/pressreader/android/LocalStore$25;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;)V

    invoke-virtual {v7, v8}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 1746
    :try_start_0
    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1752
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    :goto_1
    return-object v7

    .line 1723
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    .line 1724
    .local v6, newspaper:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "<cid>"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</cid>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1748
    .end local v6           #newspaper:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    :catch_0
    move-exception v2

    .line 1749
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1750
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_1
.end method

.method private getMainTitles(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1759
    .local p1, allNewspapers:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1760
    .local v0, mainTitles:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1765
    return-object v0

    .line 1760
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    .line 1761
    .local v1, newspaper:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getSupplementName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1762
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getOrderDateTimeString(Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .parameter "dateTime"

    .prologue
    .line 1694
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "E, d MMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1695
    .local v0, dateFormatter:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1696
    .local v1, timeFormatter:Ljava/text/SimpleDateFormat;
    const-string v2, "Ordered %1$s \n at: %2$s "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getThumbnailBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "file"

    .prologue
    .line 2040
    const/4 v0, 0x0

    .line 2042
    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2043
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2044
    .local v3, w:I
    sget v4, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->THUMBNAIL_WIDTH:I

    div-int/lit8 v2, v4, 0x2

    .line 2045
    .local v2, h:I
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v4, v5, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2050
    .end local v2           #h:I
    .end local v3           #w:I
    :goto_0
    return-object v0

    .line 2047
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 2048
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initToolbar()V
    .locals 4

    .prologue
    .line 624
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    const v3, 0x7f0c0018

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSpinner:Landroid/widget/Spinner;

    .line 625
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f090066

    invoke-virtual {p0, v3}, Lcom/newspaperdirect/pressreader/android/LocalStore;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f090068

    invoke-virtual {p0, v3}, Lcom/newspaperdirect/pressreader/android/LocalStore;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f0900cc

    invoke-virtual {p0, v3}, Lcom/newspaperdirect/pressreader/android/LocalStore;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x7f0900cd

    invoke-virtual {p0, v3}, Lcom/newspaperdirect/pressreader/android/LocalStore;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 626
    .local v1, items:[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 627
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 628
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 629
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSpinner:Landroid/widget/Spinner;

    new-instance v3, Lcom/newspaperdirect/pressreader/android/LocalStore$13;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$13;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 657
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    const v3, 0x7f0c0017

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSearchBtn:Landroid/view/View;

    .line 658
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSearchBtn:Landroid/view/View;

    new-instance v3, Lcom/newspaperdirect/pressreader/android/LocalStore$14;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$14;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    const v3, 0x7f0c001f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSortByTitleBtn:Landroid/view/View;

    .line 665
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSortByTitleBtn:Landroid/view/View;

    new-instance v3, Lcom/newspaperdirect/pressreader/android/LocalStore$15;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$15;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    const v3, 0x7f0c001e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSortByRateBtn:Landroid/view/View;

    .line 673
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSortByRateBtn:Landroid/view/View;

    new-instance v3, Lcom/newspaperdirect/pressreader/android/LocalStore$16;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$16;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    const v3, 0x7f0c001d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSortByDateBtn:Landroid/view/View;

    .line 681
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSortByDateBtn:Landroid/view/View;

    new-instance v3, Lcom/newspaperdirect/pressreader/android/LocalStore$17;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$17;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    const v3, 0x7f0c001c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSearchNewsBtn:Landroid/view/View;

    .line 689
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSearchNewsBtn:Landroid/view/View;

    new-instance v3, Lcom/newspaperdirect/pressreader/android/LocalStore$18;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$18;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    const v3, 0x7f0c001a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSearchFilter:Landroid/widget/EditText;

    .line 695
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSearchFilter:Landroid/widget/EditText;

    new-instance v3, Lcom/newspaperdirect/pressreader/android/LocalStore$19;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$19;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 703
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    const v3, 0x7f0c001b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/newspaperdirect/pressreader/android/LocalStore$20;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$20;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    const v3, 0x7f0c0019

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/newspaperdirect/pressreader/android/LocalStore$21;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$21;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    return-void
.end method

.method private loadFlag(Landroid/widget/ImageView;Lcom/newspaperdirect/pressreader/android/core/catalog/Country;)V
    .locals 2
    .parameter "img"
    .parameter "country"

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mImageLoaderManager:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;

    invoke-virtual {v0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->removeTask(Landroid/widget/ImageView;)V

    .line 1701
    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->getISOCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1702
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1703
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mImageLoaderManager:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;Landroid/widget/ImageView;Lcom/newspaperdirect/pressreader/android/core/catalog/Country;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->addTask(Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;)V

    .line 1704
    return-void
.end method

.method private loadThumbnail(Landroid/widget/ImageView;Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;)V
    .locals 2
    .parameter "img"
    .parameter "newspaper"

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mImageLoaderManager:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;

    invoke-virtual {v0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->removeTask(Landroid/widget/ImageView;)V

    .line 2033
    iget-object v0, p2, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->latestIssueDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 2037
    :goto_0
    return-void

    .line 2034
    :cond_0
    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2035
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2036
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mImageLoaderManager:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;Landroid/widget/ImageView;Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->addTask(Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;)V

    goto :goto_0
.end method

.method private onCategoryClicked(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 947
    .local p1, newspapers:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcom/newspaperdirect/pressreader/android/LocalStore$23;

    invoke-direct {v1, p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$23;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->setPositiveResult(Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;

    move-result-object v0

    .line 994
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->check()V

    .line 995
    return-void
.end method

.method private onMainTitleClicked(Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;Ljava/util/List;)V
    .locals 2
    .parameter "newspaper"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 998
    .local p2, newspapers:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcom/newspaperdirect/pressreader/android/LocalStore$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/LocalStore$24;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->setPositiveResult(Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;

    move-result-object v0

    .line 1044
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->check()V

    .line 1045
    return-void
.end method

.method private selectService()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 587
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    .line 619
    :goto_0
    return v4

    .line 588
    :cond_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getServicesCount()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 589
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActive()Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v4

    iput-object v4, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentService:Lcom/newspaperdirect/pressreader/android/core/Service;

    move v4, v6

    .line 590
    goto :goto_0

    .line 593
    :cond_1
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getServicesCount()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 594
    .local v2, names:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 595
    .local v0, idx:I
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getServices()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 598
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 599
    const v5, 0x7f090081

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 600
    new-instance v5, Lcom/newspaperdirect/pressreader/android/LocalStore$11;

    invoke-direct {v5, p0, v2}, Lcom/newspaperdirect/pressreader/android/LocalStore$11;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;[Ljava/lang/String;)V

    invoke-virtual {v4, v2, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 611
    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 612
    new-instance v5, Lcom/newspaperdirect/pressreader/android/LocalStore$12;

    invoke-direct {v5, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$12;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 618
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v4, v7

    .line 619
    goto :goto_0

    .line 595
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newspaperdirect/pressreader/android/core/Service;

    .line 596
    .local v3, service:Lcom/newspaperdirect/pressreader/android/core/Service;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #idx:I
    .local v1, idx:I
    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/Service;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    move v0, v1

    .end local v1           #idx:I
    .restart local v0       #idx:I
    goto :goto_1
.end method

.method private showCategoriesToolbar()V
    .locals 5

    .prologue
    const v4, 0x7f0c0020

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 767
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 768
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    const v1, 0x7f0c0022

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 769
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->isSmartEdition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 773
    :goto_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/LocalStore;->$SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eCategory()[I

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentCategory:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 788
    :goto_1
    return-void

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 776
    :pswitch_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 779
    :pswitch_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 782
    :pswitch_2
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 785
    :pswitch_3
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 773
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showCategoriesView()V
    .locals 3

    .prologue
    const v2, 0x7f0c0010

    .line 858
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->isSmartEdition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    sget-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->CategoryList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentViewIdx:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    .line 860
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->showToolbar()V

    .line 861
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSwitcher:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 862
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSwitcher:Landroid/widget/ViewFlipper;

    const v1, 0x7f040004

    invoke-virtual {v0, p0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 863
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSwitcher:Landroid/widget/ViewFlipper;

    const v1, 0x7f040005

    invoke-virtual {v0, p0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 864
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSwitcher:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 865
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSwitcher:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 866
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSwitcher:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    goto :goto_0
.end method

.method private showMyLibraryTab()V
    .locals 3

    .prologue
    .line 2054
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 2055
    .local v0, parent:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/newspaperdirect/pressreader/android/Main;

    if-eqz v1, :cond_0

    .line 2056
    check-cast v0, Lcom/newspaperdirect/pressreader/android/Main;

    .end local v0           #parent:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/Main;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 2061
    :goto_0
    return-void

    .line 2059
    .restart local v0       #parent:Landroid/app/Activity;
    :cond_0
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->finish()V

    goto :goto_0
.end method

.method private showNewspapersToolbar()V
    .locals 7

    .prologue
    const v6, 0x7f0c0020

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f0c001b

    .line 791
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 792
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    const v1, 0x7f0c0022

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 793
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->isSmartEdition()Z

    move-result v0

    if-nez v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 798
    :goto_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/LocalStore;->$SWITCH_TABLE$com$newspaperdirect$pressreader$android$LocalStore$eCategory()[I

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentCategory:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 804
    :goto_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentCategory:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->SearchResult:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    if-ne v0, v1, :cond_2

    .line 805
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "Search"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 815
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSortByTitleBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentSortBy:Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;

    sget-object v2, Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;->Title:Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;

    if-ne v1, v2, :cond_4

    move v1, v4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 816
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSortByRateBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentSortBy:Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;

    sget-object v2, Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;->Rate:Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;

    if-ne v1, v2, :cond_5

    move v1, v4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 817
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSortByDateBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentSortBy:Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;

    sget-object v2, Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;->Date:Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;

    if-ne v1, v2, :cond_6

    move v1, v4

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 818
    return-void

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 799
    :pswitch_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 800
    :pswitch_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f090069

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 801
    :pswitch_2
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0900cc

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 802
    :pswitch_3
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0900cd

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 807
    :cond_2
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentViewIdx:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->SupplementList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    if-ne v0, v1, :cond_0

    .line 808
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mLastSelectedCountry:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    if-eqz v0, :cond_3

    .line 809
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mLastSelectedCountry:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 810
    :cond_3
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mLastSelectedLanguage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mLastSelectedLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_4
    move v1, v3

    .line 815
    goto/16 :goto_3

    :cond_5
    move v1, v3

    .line 816
    goto/16 :goto_4

    :cond_6
    move v1, v3

    .line 817
    goto/16 :goto_5

    .line 798
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showNewspapersView(Lcom/newspaperdirect/pressreader/android/LocalStore$eView;)V
    .locals 6
    .parameter "view"

    .prologue
    const v5, 0x7f0c0016

    const v4, 0x7f040003

    const v3, 0x7f040002

    .line 832
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentViewIdx:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    .line 833
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->showToolbar()V

    .line 834
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSwitcher:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    .line 835
    .local v0, current:I
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentViewIdx:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    sget-object v2, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->SupplementList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    if-ne v1, v2, :cond_0

    .line 837
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSwitcher:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, p0, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 838
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSwitcher:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, p0, v4}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 839
    if-eq v0, v5, :cond_0

    .line 840
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSwitcher:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showNext()V

    .line 842
    :cond_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentViewIdx:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    sget-object v2, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->NewspaperList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    if-ne v1, v2, :cond_2

    .line 844
    const v1, 0x7f0c0010

    if-ne v0, v1, :cond_1

    .line 845
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSwitcher:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, p0, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 846
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSwitcher:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, p0, v4}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 847
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSwitcher:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showNext()V

    .line 849
    :cond_1
    if-ne v0, v5, :cond_2

    .line 850
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSwitcher:Landroid/widget/ViewFlipper;

    const v2, 0x7f040004

    invoke-virtual {v1, p0, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 851
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSwitcher:Landroid/widget/ViewFlipper;

    const v2, 0x7f040005

    invoke-virtual {v1, p0, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 852
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSwitcher:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 855
    :cond_2
    return-void
.end method

.method private showSearchToolbar()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 821
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    const v2, 0x7f0c0021

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 822
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    const v2, 0x7f0c0020

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 823
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    const v2, 0x7f0c0022

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 826
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSearchFilter:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 827
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 828
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSearchFilter:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 829
    return-void
.end method

.method private showToolbar()V
    .locals 2

    .prologue
    .line 751
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mNoParent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentCategory:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->SearchResult:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentViewIdx:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->SupplementList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    if-eq v0, v1, :cond_2

    .line 753
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->showSearchToolbar()V

    .line 764
    :cond_1
    :goto_0
    return-void

    .line 756
    :cond_2
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentViewIdx:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->CategoryList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentViewIdx:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->NewspaperList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentCategory:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->RecentList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentCategory:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->FavoriteList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    if-ne v0, v1, :cond_4

    .line 757
    :cond_3
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->showCategoriesToolbar()V

    goto :goto_0

    .line 760
    :cond_4
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentViewIdx:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->NewspaperList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentViewIdx:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->SupplementList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    if-ne v0, v1, :cond_1

    .line 761
    :cond_5
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->showNewspapersToolbar()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 469
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 470
    packed-switch p1, :pswitch_data_0

    .line 477
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->persistService:Z

    .line 478
    return-void

    .line 472
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 473
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->showMyLibraryTab()V

    goto :goto_0

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 170
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/AppInitHelper;->init(Landroid/app/Activity;)V

    .line 172
    new-instance v1, Lcom/newspaperdirect/pressreader/android/LocalStore$2;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$2;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 178
    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/LocalStore$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 180
    const/high16 v1, 0x7f04

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSpin:Landroid/view/animation/Animation;

    .line 181
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->getParent()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    .line 182
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 183
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mNoParent:Z

    .line 184
    iput-object p0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mParent:Landroid/app/Activity;

    .line 185
    const v1, 0x7f03000a

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->setContentView(I)V

    .line 189
    :goto_0
    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->CategoryList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentViewIdx:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    .line 190
    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->CountryList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentCategory:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    .line 191
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->isSmartEdition()Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;->Rate:Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentSortBy:Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;

    .line 195
    :goto_1
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->initToolbar()V

    .line 197
    const v1, 0x7f0c0011

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCategoriesView:Landroid/widget/ListView;

    .line 198
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCategoriesView:Landroid/widget/ListView;

    new-instance v2, Lcom/newspaperdirect/pressreader/android/LocalStore$3;

    invoke-direct {v2, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$3;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 218
    const v1, 0x7f0c0014

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mNewspapersView:Landroid/widget/ListView;

    .line 219
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mNewspapersView:Landroid/widget/ListView;

    new-instance v2, Lcom/newspaperdirect/pressreader/android/LocalStore$4;

    invoke-direct {v2, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$4;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 244
    const v1, 0x7f0c0016

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mNewspaperSupplementsView:Landroid/widget/ListView;

    .line 245
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mNewspaperSupplementsView:Landroid/widget/ListView;

    new-instance v2, Lcom/newspaperdirect/pressreader/android/LocalStore$5;

    invoke-direct {v2, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$5;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 278
    const v1, 0x7f0c000f

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSwitcher:Landroid/widget/ViewFlipper;

    .line 280
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 281
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.newspaperdirect.pressreader.android.LocalStore.ReloadCalalog"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 283
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->ReloadCatalog()V

    .line 284
    return-void

    .line 187
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->setContentView(I)V

    goto :goto_0

    .line 194
    :cond_1
    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;->Title:Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentSortBy:Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 482
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getServicesCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 483
    const/4 v0, 0x3

    const v1, 0x7f0900cb

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 484
    const v1, 0x7f02003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 486
    :cond_0
    const v0, 0x7f090083

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 487
    const v1, 0x7f020042

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 488
    const/4 v0, 0x2

    const v1, 0x7f090086

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 489
    const v1, 0x7f020044

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 490
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 332
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 333
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 450
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 451
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentViewIdx:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->NewspaperList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentCategory:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->SearchResult:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    if-ne v0, v1, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->cancelSearch()V

    move v0, v2

    .line 464
    :goto_0
    return v0

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentViewIdx:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->NewspaperList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentCategory:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->CountryList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentCategory:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->LanguageList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    if-ne v0, v1, :cond_2

    .line 456
    :cond_1
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->showCategoriesView()V

    move v0, v2

    .line 457
    goto :goto_0

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentViewIdx:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->SupplementList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    if-ne v0, v1, :cond_3

    .line 460
    sget-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->NewspaperList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    invoke-direct {p0, v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->showNewspapersView(Lcom/newspaperdirect/pressreader/android/LocalStore$eView;)V

    move v0, v2

    .line 461
    goto :goto_0

    .line 464
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLibraryItemClick(Landroid/widget/ListAdapter;IZ)V
    .locals 12
    .parameter "parent"
    .parameter "position"
    .parameter "inSupplements"

    .prologue
    const/4 v11, 0x1

    .line 348
    invoke-interface {p1, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    .line 349
    .local v2, nppr:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 351
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    const/4 v4, 0x0

    .line 352
    .local v4, recentitem:Lcom/newspaperdirect/pressreader/android/core/RecentItem;
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mainRecentItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 357
    :goto_0
    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->getOrderWithSupplements()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz p3, :cond_3

    .line 358
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mNewspaperSupplementsView:Landroid/widget/ListView;

    new-instance v8, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;

    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->getIssueId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentSupplementsItemsListAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 359
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mSwitcher:Landroid/widget/ViewFlipper;

    invoke-virtual {v7}, Landroid/widget/ViewFlipper;->showNext()V

    .line 360
    sget-object v7, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->SupplementList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    iput-object v7, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentViewIdx:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    .line 361
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->showToolbar()V

    .line 387
    :cond_1
    :goto_1
    return-void

    .line 352
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/newspaperdirect/pressreader/android/core/RecentItem;

    .line 353
    .local v5, ri:Lcom/newspaperdirect/pressreader/android/core/RecentItem;
    invoke-virtual {v5}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->getIssueId()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v2, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->latestIssueDate:Ljava/util/Date;

    invoke-virtual {v0, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 354
    move-object v4, v5

    .line 355
    goto :goto_0

    .line 365
    .end local v5           #ri:Lcom/newspaperdirect/pressreader/android/core/RecentItem;
    :cond_3
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCid()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->latestIssueDate:Ljava/util/Date;

    invoke-static {v7, v8}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->findItem(Ljava/lang/String;Ljava/util/Date;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v1

    .line 367
    .local v1, item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v6, supplements:Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->hasSupplements()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 370
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getSupplements()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5

    .line 374
    :cond_4
    if-nez v1, :cond_6

    .line 375
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/newspaperdirect/pressreader/android/NewOrder;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    const-string v8, "new_order_issue"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v2, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->latestIssueDate:Ljava/util/Date;

    invoke-virtual {v0, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 377
    const-string v8, "new_order_supplements"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 378
    const-string v8, "new_order_title"

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 375
    invoke-virtual {p0, v7, v11}, Lcom/newspaperdirect/pressreader/android/LocalStore;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 370
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    .line 371
    .local v3, npr:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCid()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v2, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->latestIssueDate:Ljava/util/Date;

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 382
    .end local v3           #npr:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    :cond_6
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isSemiReady()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 383
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->setAsCurrent()V

    .line 384
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->checkFilesConsistency()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 385
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "previous_activity_string"

    const-string v9, "marker"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7, v11}, Lcom/newspaperdirect/pressreader/android/LocalStore;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 495
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/app/TabActivity;

    invoke-virtual {v1}, Landroid/app/TabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    .line 496
    .local v0, tabHost:Landroid/widget/TabHost;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 507
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 498
    :pswitch_1
    const-string v1, "mylibrary"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    move v1, v2

    .line 499
    goto :goto_0

    .line 501
    :pswitch_2
    const-string v1, "settings"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    move v1, v2

    .line 502
    goto :goto_0

    .line 504
    :pswitch_3
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->selectService()Z

    move v1, v2

    .line 505
    goto :goto_0

    .line 496
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 337
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 338
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mImageLoaderManager:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->stop()V

    .line 339
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentService:Lcom/newspaperdirect/pressreader/android/core/Service;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->get(Lcom/newspaperdirect/pressreader/android/core/Service;)Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    move-result-object v0

    .line 340
    .local v0, catalog:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->removeOnCatalogLoadedListener()V

    .line 341
    :cond_0
    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mAllNewspapers:Ljava/util/List;

    .line 342
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mGetIssuesDatesTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mGetIssuesDatesTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 343
    :cond_1
    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mGetIssuesDatesTask:Landroid/os/AsyncTask;

    .line 344
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->clearInput()V

    .line 345
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 303
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 304
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->persistService:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->fullReload:Z

    if-eqz v0, :cond_1

    .line 305
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentService:Lcom/newspaperdirect/pressreader/android/core/Service;

    .line 307
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->persistService:Z

    .line 308
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mImageLoaderManager:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;

    if-nez v0, :cond_2

    .line 309
    new-instance v0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mImageLoaderManager:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;

    .line 312
    :goto_0
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;-><init>(Landroid/app/Activity;)V

    .line 313
    new-instance v1, Lcom/newspaperdirect/pressreader/android/LocalStore$6;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$6;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->setPositiveResult(Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;

    move-result-object v0

    .line 321
    new-instance v1, Lcom/newspaperdirect/pressreader/android/LocalStore$7;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$7;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->setNegativeResult(Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnNegativeResult;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->check()V

    .line 327
    return-void

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mImageLoaderManager:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->start()V

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    .line 512
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->isSmartEdition()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentCategory:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->SearchResult:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    if-eq v0, v1, :cond_0

    .line 513
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentCategory:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mLastSelectedCategory:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    .line 514
    sget-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->SearchResult:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mCurrentCategory:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    .line 515
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore;->mNewspapersView:Landroid/widget/ListView;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 516
    sget-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->NewspaperList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    invoke-direct {p0, v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->showNewspapersView(Lcom/newspaperdirect/pressreader/android/LocalStore$eView;)V

    .line 518
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 725
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 727
    return-void
.end method
