.class public Lcom/google/android/youtube/videos/tablet/RentalsController;
.super Lcom/google/android/youtube/core/tablet/Controller;
.source "RentalsController.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;
.implements Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/tablet/RentalsController$PopupMenuListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

.field private final drmManager:Lcom/google/android/youtube/videos/DrmManager;

.field private myRentals:Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;

.field private myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

.field private final navigation:Lcom/google/android/youtube/videos/Navigation;

.field private offlineManagement:Z

.field private popupAnchor:Landroid/view/View;

.field private final preferences:Landroid/content/SharedPreferences;

.field private final requesters:Lcom/google/android/youtube/videos/Requesters;

.field private topRentals:Lcom/google/android/youtube/core/ui/PagedGridView;

.field private topRentalsHelper:Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;

.field private topRentalsTitle:Landroid/widget/TextView;

.field private userAuth:Lcom/google/android/youtube/core/model/UserAuth;

.field private final userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/VideosApplication;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/os/Bundle;)V
    .locals 1
    .parameter "application"
    .parameter "activity"
    .parameter "navigation"
    .parameter "launchBundle"

    .prologue
    .line 78
    invoke-direct {p0, p1, p1, p2, p4}, Lcom/google/android/youtube/core/tablet/Controller;-><init>(Landroid/app/Application;Lcom/google/android/youtube/core/Analytics;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 79
    iput-object p3, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->navigation:Lcom/google/android/youtube/videos/Navigation;

    .line 81
    invoke-virtual {p1}, Lcom/google/android/youtube/videos/VideosApplication;->getRequesters()Lcom/google/android/youtube/videos/Requesters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->requesters:Lcom/google/android/youtube/videos/Requesters;

    .line 82
    invoke-virtual {p1}, Lcom/google/android/youtube/videos/VideosApplication;->getDrmManager()Lcom/google/android/youtube/videos/DrmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    .line 83
    invoke-virtual {p1}, Lcom/google/android/youtube/videos/VideosApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 84
    invoke-virtual {p1}, Lcom/google/android/youtube/videos/VideosApplication;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->preferences:Landroid/content/SharedPreferences;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/tablet/RentalsController;)Lcom/google/android/youtube/videos/Navigation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->navigation:Lcom/google/android/youtube/videos/Navigation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/tablet/RentalsController;)Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/tablet/RentalsController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/videos/tablet/RentalsController;)Lcom/google/android/youtube/core/model/UserAuth;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    return-object v0
.end method


# virtual methods
.method protected getContentViewId()I
    .locals 1

    .prologue
    .line 89
    const v0, 0x7f04000f

    return v0
.end method

.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 4
    .parameter "userAuth"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 213
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->topRentalsHelper:Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->topRentalsHelper:Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/async/GDataRequests;->getTrendingMoviesRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;->init(Lcom/google/android/youtube/core/model/UserAuth;[Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->init(Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 219
    return-void
.end method

.method public onAuthenticationError(Ljava/lang/Exception;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 228
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 229
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 230
    return-void
.end method

.method protected onBackPressed()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->offlineManagement:Z

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/videos/tablet/RentalsController;->setOfflineManagement(Z)V

    .line 185
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 94
    const v0, 0x7f080032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->myRentals:Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;

    .line 96
    new-instance v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->activity:Landroid/app/Activity;

    const v2, 0x7f040006

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    .line 97
    new-instance v0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->navigation:Lcom/google/android/youtube/videos/Navigation;

    iget-object v3, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->preferences:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->myRentals:Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;

    iget-object v6, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    iget-object v7, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->requesters:Lcom/google/android/youtube/videos/Requesters;

    iget-object v8, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    move-object v4, p1

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/content/SharedPreferences;Landroid/view/View;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;Lcom/google/android/youtube/videos/Requesters;Lcom/google/android/youtube/videos/DrmManager;Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->myRentals:Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 108
    const v0, 0x7f080034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->topRentalsTitle:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f080033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/PagedGridView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->topRentals:Lcom/google/android/youtube/core/ui/PagedGridView;

    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->topRentals:Lcom/google/android/youtube/core/ui/PagedGridView;

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;

    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->topRentals:Lcom/google/android/youtube/core/ui/PagedGridView;

    new-instance v3, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;

    iget-object v4, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->activity:Landroid/app/Activity;

    const v5, 0x7f040007

    invoke-direct {v3, v4, v5}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;-><init>(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->requesters:Lcom/google/android/youtube/videos/Requesters;

    invoke-interface {v4}, Lcom/google/android/youtube/videos/Requesters;->getMostPopularMoviesRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->requesters:Lcom/google/android/youtube/videos/Requesters;

    invoke-interface {v5}, Lcom/google/android/youtube/videos/Requesters;->getPosterArtRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/videos/adapter/MovieListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->topRentalsHelper:Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;

    .line 119
    :cond_0
    const v0, 0x7f080031

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->popupAnchor:Landroid/view/View;

    .line 120
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 292
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 293
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 298
    :goto_0
    return-object v1

    .line 295
    :cond_0
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v2, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->onCreateDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 298
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 234
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/core/tablet/Controller;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 235
    const v0, 0x7f100003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 236
    const/high16 v0, 0x7f10

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 237
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->myRentals:Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;->destroy()V

    .line 207
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onDestroy()V

    .line 208
    invoke-super {p0}, Lcom/google/android/youtube/core/tablet/Controller;->onDestroy()V

    .line 209
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 123
    iget-object v3, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v3}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isOfflineManagement()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    .line 141
    :goto_0
    return v3

    .line 127
    :cond_0
    iget-object v3, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v3, p3}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Purchase;

    .line 128
    .local v1, purchase:Lcom/google/android/youtube/core/model/Purchase;
    iget-object v3, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->myRentals:Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;->getLastTouchPosition()[I

    move-result-object v2

    .line 129
    .local v2, touchPosition:[I
    iget-object v3, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->popupAnchor:Landroid/view/View;

    aget v4, v2, v6

    invoke-virtual {v3, v4}, Landroid/view/View;->setTop(I)V

    .line 130
    iget-object v3, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->popupAnchor:Landroid/view/View;

    aget v4, v2, v6

    invoke-virtual {v3, v4}, Landroid/view/View;->setBottom(I)V

    .line 131
    iget-object v3, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->popupAnchor:Landroid/view/View;

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setLeft(I)V

    .line 132
    iget-object v3, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->popupAnchor:Landroid/view/View;

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setRight(I)V

    .line 133
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v3, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->popupAnchor:Landroid/view/View;

    invoke-direct {v0, v3, v4}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 134
    .local v0, popup:Landroid/widget/PopupMenu;
    iget-object v3, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v3, p3}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isExpired(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f100001

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 139
    :goto_1
    new-instance v3, Lcom/google/android/youtube/videos/tablet/RentalsController$PopupMenuListener;

    invoke-direct {v3, p0, v1}, Lcom/google/android/youtube/videos/tablet/RentalsController$PopupMenuListener;-><init>(Lcom/google/android/youtube/videos/tablet/RentalsController;Lcom/google/android/youtube/core/model/Purchase;)V

    invoke-virtual {v0, v3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 140
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    move v3, v6

    .line 141
    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f100002

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_1
.end method

.method public onModeChange(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 275
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->offlineManagement:Z

    .line 276
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->topRentals:Lcom/google/android/youtube/core/ui/PagedGridView;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->topRentalsTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->topRentals:Lcom/google/android/youtube/core/ui/PagedGridView;

    if-eqz p1, :cond_2

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedGridView;->setVisibility(I)V

    .line 280
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 277
    goto :goto_0

    :cond_2
    move v1, v2

    .line 278
    goto :goto_1
.end method

.method public onNotAuthenticated()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 223
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 224
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 247
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->navigation:Lcom/google/android/youtube/videos/Navigation;

    invoke-static {p1, v0, v1}, Lcom/google/android/youtube/videos/VideosApplication;->onCommonOptionsItemSelected(Landroid/view/MenuItem;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 271
    :goto_0
    return v0

    .line 250
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v3

    .line 271
    goto :goto_0

    .line 252
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->startShopActivity(Landroid/app/Activity;Lcom/google/android/youtube/core/model/UserAuth;)V

    :cond_1
    move v0, v2

    .line 255
    goto :goto_0

    .line 257
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->offlineManagement:Z

    if-nez v0, :cond_2

    .line 258
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/videos/tablet/RentalsController;->setOfflineManagement(Z)V

    :cond_2
    move v0, v2

    .line 260
    goto :goto_0

    .line 262
    :pswitch_2
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_4

    .line 263
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->offlineManagement:Z

    if-eqz v0, :cond_3

    .line 264
    invoke-virtual {p0, v3}, Lcom/google/android/youtube/videos/tablet/RentalsController;->setOfflineManagement(Z)V

    .line 266
    :cond_3
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->signOut()V

    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/tablet/RentalsController;->reset(Ljava/lang/String;)V

    :cond_4
    move v0, v2

    .line 269
    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x7f08005a
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 241
    const v1, 0x7f08005a

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 242
    .local v0, item:Landroid/view/MenuItem;
    iget-boolean v1, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->offlineManagement:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 243
    return-void

    .line 242
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 174
    invoke-super {p0}, Lcom/google/android/youtube/core/tablet/Controller;->onStart()V

    .line 175
    iget-object v2, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->myRentals:Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;->resume()V

    .line 176
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/tablet/RentalsController;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 177
    .local v1, args:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v2, "authAccount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 178
    .local v0, accountName:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/tablet/RentalsController;->reset(Ljava/lang/String;)V

    .line 179
    return-void

    .line 177
    .end local v0           #accountName:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->myRentals:Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;->pause()V

    .line 201
    invoke-super {p0}, Lcom/google/android/youtube/core/tablet/Controller;->onStop()V

    .line 202
    return-void
.end method

.method public pinVideo(Ljava/lang/String;)V
    .locals 1
    .parameter "videoId"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinVideo(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public reset(Ljava/lang/String;)V
    .locals 2
    .parameter "accountName"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->topRentalsHelper:Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->topRentalsHelper:Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;->reset()V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->reset()V

    .line 195
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 196
    return-void
.end method

.method public setOfflineManagement(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/RentalsController;->myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->setOfflineManagement(Z)V

    .line 284
    return-void
.end method
