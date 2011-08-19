.class public Lcom/google/android/youtube/videos/phone/VideosActivity;
.super Landroid/app/Activity;
.source "VideosActivity.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;
.implements Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;


# instance fields
.field private localVideosAdapter:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

.field private localVideosHelper:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

.field private localVideositems:Landroid/widget/GridView;

.field private myRentals:Lcom/google/android/youtube/core/ui/PagedGridView;

.field private myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

.field private navigation:Lcom/google/android/youtube/videos/Navigation;

.field private offlineManagement:Z

.field private shopButton:Landroid/widget/Button;

.field private topRentals:Lcom/google/android/youtube/core/ui/PagedGridView;

.field private topRentalsHelper:Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;

.field private topRentalsTitle:Landroid/widget/TextView;

.field private topRentalsView:Landroid/view/View;

.field private userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private workspace:Lcom/google/android/youtube/core/ui/Workspace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/phone/VideosActivity;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/videos/Requesters;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/videos/phone/VideosActivity;->initTopRentals(Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/videos/Requesters;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/phone/VideosActivity;)Lcom/google/android/youtube/core/ui/PagedGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->myRentals:Lcom/google/android/youtube/core/ui/PagedGridView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/phone/VideosActivity;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/phone/VideosActivity;->showRentalsView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/youtube/videos/phone/VideosActivity;)Lcom/google/android/youtube/core/async/UserAuthorizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter "context"

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/videos/phone/VideosActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createLocalVideosIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter "context"

    .prologue
    .line 76
    invoke-static {p0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selected_tab_id"

    const v2, 0x7f080040

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createRentalsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter "context"

    .prologue
    .line 68
    invoke-static {p0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selected_tab_id"

    const v2, 0x7f08003f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private initTopRentals(Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/videos/Requesters;)V
    .locals 4
    .parameter "userAuth"
    .parameter "requesters"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->topRentalsView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->showRentalsView(Landroid/view/View;)V

    .line 320
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->topRentalsHelper:Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;

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

    .line 323
    return-void
.end method

.method private layoutForOrientation(I)V
    .locals 6
    .parameter "orientation"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 262
    iget-object v2, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->shopButton:Landroid/widget/Button;

    if-ne p1, v5, :cond_0

    const v3, 0x7f0c0005

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/videos/phone/VideosActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 265
    if-ne p1, v4, :cond_1

    move v1, v4

    .line 266
    .local v1, rentalsNumColumns:I
    :goto_1
    iget-object v2, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->myRentals:Lcom/google/android/youtube/core/ui/PagedGridView;

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/ui/PagedGridView;->setNumColumns(I)V

    .line 267
    iget-object v2, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->topRentals:Lcom/google/android/youtube/core/ui/PagedGridView;

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/ui/PagedGridView;->setNumColumns(I)V

    .line 269
    if-ne p1, v4, :cond_2

    move v0, v5

    .line 270
    .local v0, localVideosNumColumns:I
    :goto_2
    iget-object v2, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->localVideositems:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 271
    return-void

    .line 262
    .end local v0           #localVideosNumColumns:I
    .end local v1           #rentalsNumColumns:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move v1, v5

    .line 265
    goto :goto_1

    .line 269
    .restart local v1       #rentalsNumColumns:I
    :cond_2
    const/4 v2, 0x3

    move v0, v2

    goto :goto_2
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->reset()V

    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->topRentalsHelper:Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;->reset()V

    .line 193
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->myRentals:Lcom/google/android/youtube/core/ui/PagedGridView;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->showRentalsView(Landroid/view/View;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->localVideosHelper:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->reset()V

    .line 195
    return-void
.end method

.method private setOfflineManagement(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->setOfflineManagement(Z)V

    .line 240
    return-void
.end method

.method private showRentalsView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 326
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->myRentals:Lcom/google/android/youtube/core/ui/PagedGridView;

    iget-object v1, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->myRentals:Lcom/google/android/youtube/core/ui/PagedGridView;

    if-ne p1, v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedGridView;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->topRentalsView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->topRentalsView:Landroid/view/View;

    if-ne p1, v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    return-void

    :cond_0
    move v1, v3

    .line 326
    goto :goto_0

    :cond_1
    move v1, v3

    .line 327
    goto :goto_1
.end method


# virtual methods
.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 2
    .parameter "userAuth"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->init(Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->shopButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/youtube/videos/phone/VideosActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/videos/phone/VideosActivity$3;-><init>(Lcom/google/android/youtube/videos/phone/VideosActivity;Lcom/google/android/youtube/core/model/UserAuth;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    return-void
.end method

.method public onAuthenticationError(Ljava/lang/Exception;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 224
    const-string v0, "Error authenticating"

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->finish()V

    .line 226
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->offlineManagement:Z

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->setOfflineManagement(Z)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 258
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->layoutForOrientation(I)V

    .line 259
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const v0, 0x7f040014

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->setContentView(I)V

    .line 103
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->getApplication()Landroid/app/Application;

    move-result-object v12

    check-cast v12, Lcom/google/android/youtube/videos/VideosApplication;

    .line 104
    .local v12, application:Lcom/google/android/youtube/videos/VideosApplication;
    invoke-virtual {v12}, Lcom/google/android/youtube/videos/VideosApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 105
    new-instance v0, Lcom/google/android/youtube/videos/phone/PhoneNavigation;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/videos/phone/PhoneNavigation;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->navigation:Lcom/google/android/youtube/videos/Navigation;

    .line 107
    const v0, 0x7f08003e

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/google/android/youtube/core/ui/Workspace;

    iput-object p1, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->workspace:Lcom/google/android/youtube/core/ui/Workspace;

    .line 108
    const v0, 0x7f08003d

    const v1, 0x7f08003e

    invoke-static {p0, v0, v1}, Lcom/google/android/youtube/core/ui/Workspace;->setTabRowToWorkspace(Landroid/app/Activity;II)V

    .line 110
    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->shopButton:Landroid/widget/Button;

    .line 112
    invoke-virtual {v12}, Lcom/google/android/youtube/videos/VideosApplication;->getRequesters()Lcom/google/android/youtube/videos/Requesters;

    move-result-object v8

    .line 113
    .local v8, requesters:Lcom/google/android/youtube/videos/Requesters;
    const v0, 0x7f080034

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->topRentalsTitle:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/youtube/core/ui/PagedGridView;

    iput-object p1, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->myRentals:Lcom/google/android/youtube/core/ui/PagedGridView;

    .line 115
    new-instance v0, Lcom/google/android/youtube/videos/phone/VideosActivity$1;

    iget-object v3, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->navigation:Lcom/google/android/youtube/videos/Navigation;

    invoke-virtual {v12}, Lcom/google/android/youtube/videos/VideosApplication;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/videos/phone/VideosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->myRentals:Lcom/google/android/youtube/core/ui/PagedGridView;

    new-instance v7, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    const v1, 0x7f040007

    invoke-direct {v7, p0, v1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v12}, Lcom/google/android/youtube/videos/VideosApplication;->getDrmManager()Lcom/google/android/youtube/videos/DrmManager;

    move-result-object v9

    move-object v1, p0

    move-object v2, p0

    move-object v10, p0

    move-object v11, v8

    invoke-direct/range {v0 .. v11}, Lcom/google/android/youtube/videos/phone/VideosActivity$1;-><init>(Lcom/google/android/youtube/videos/phone/VideosActivity;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/content/SharedPreferences;Landroid/view/View;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;Lcom/google/android/youtube/videos/Requesters;Lcom/google/android/youtube/videos/DrmManager;Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;Lcom/google/android/youtube/videos/Requesters;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    .line 131
    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->topRentalsView:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->topRentalsView:Landroid/view/View;

    const v1, 0x7f080033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/youtube/core/ui/PagedGridView;

    iput-object p1, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->topRentals:Lcom/google/android/youtube/core/ui/PagedGridView;

    .line 133
    new-instance v0, Lcom/google/android/youtube/videos/phone/VideosActivity$2;

    iget-object v3, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->topRentals:Lcom/google/android/youtube/core/ui/PagedGridView;

    new-instance v4, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;

    const v1, 0x7f040007

    invoke-direct {v4, p0, v1}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;-><init>(Landroid/content/Context;I)V

    invoke-interface {v8}, Lcom/google/android/youtube/videos/Requesters;->getMostPopularMoviesRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    invoke-interface {v8}, Lcom/google/android/youtube/videos/Requesters;->getPosterArtRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/videos/phone/VideosActivity$2;-><init>(Lcom/google/android/youtube/videos/phone/VideosActivity;Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/videos/adapter/MovieListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->topRentalsHelper:Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;

    .line 145
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 146
    .local v13, localVideosView:Landroid/view/View;
    new-instance v0, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->localVideosAdapter:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    .line 147
    const v0, 0x7f080012

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->localVideositems:Landroid/widget/GridView;

    .line 148
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->localVideositems:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->localVideosAdapter:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    new-instance v0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    iget-object v1, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->localVideosAdapter:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    invoke-direct {v0, p0, v13, v1}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->localVideosHelper:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->localVideositems:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->localVideosHelper:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 152
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->layoutForOrientation(I)V

    .line 153
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 246
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 252
    .end local v0           #dialog:Landroid/app/Dialog;
    :goto_0
    return-object v1

    .line 248
    .restart local v0       #dialog:Landroid/app/Dialog;
    :cond_0
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v1, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->onCreateDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 252
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 276
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 277
    const/high16 v1, 0x7f10

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 278
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onDestroy()V

    .line 315
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 316
    return-void
.end method

.method public onModeChange(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 233
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->offlineManagement:Z

    .line 234
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->topRentalsTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->topRentals:Lcom/google/android/youtube/core/ui/PagedGridView;

    if-eqz p1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedGridView;->setVisibility(I)V

    .line 236
    return-void

    :cond_0
    move v1, v2

    .line 234
    goto :goto_0

    :cond_1
    move v1, v2

    .line 235
    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const v7, 0x7f08003e

    const v6, 0x7f08003d

    const/4 v5, 0x0

    const-string v4, "offline_mode"

    const-string v8, "download_video_id"

    .line 163
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 164
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/phone/VideosActivity;->setIntent(Landroid/content/Intent;)V

    .line 166
    invoke-direct {p0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->reset()V

    .line 167
    const-string v3, "authAccount"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, accountName:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v3, p0, v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, defaultToRentalsTab:Z
    const-string v3, "offline_mode"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    const-string v3, "offline_mode"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/youtube/videos/phone/VideosActivity;->setOfflineManagement(Z)V

    .line 173
    const/4 v1, 0x1

    .line 175
    :cond_0
    const-string v3, "download_video_id"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    iget-object v3, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    const-string v4, "download_video_id"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinVideo(Ljava/lang/String;)V

    .line 177
    const/4 v1, 0x1

    .line 180
    :cond_1
    const-string v3, "selected_tab_id"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 181
    const-string v3, "selected_tab_id"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 182
    .local v2, id:I
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->closeOptionsMenu()V

    .line 183
    invoke-static {p0, v6, v7, v2}, Lcom/google/android/youtube/core/ui/Workspace;->setTabRowToWorkspace(Landroid/app/Activity;III)V

    .line 188
    .end local v2           #id:I
    :cond_2
    :goto_0
    return-void

    .line 184
    :cond_3
    if-eqz v1, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->closeOptionsMenu()V

    .line 186
    const v3, 0x7f08003f

    invoke-static {p0, v6, v7, v3}, Lcom/google/android/youtube/core/ui/Workspace;->setTabRowToWorkspace(Landroid/app/Activity;III)V

    goto :goto_0
.end method

.method public onNotAuthenticated()V
    .locals 0

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->finish()V

    .line 230
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 295
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->navigation:Lcom/google/android/youtube/videos/Navigation;

    invoke-static {p1, p0, v0}, Lcom/google/android/youtube/videos/VideosApplication;->onCommonOptionsItemSelected(Landroid/view/MenuItem;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 308
    :goto_0
    return v0

    .line 298
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 308
    const/4 v0, 0x0

    goto :goto_0

    .line 300
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->reset()V

    .line 301
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->signOut()V

    .line 302
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    move v0, v1

    .line 303
    goto :goto_0

    .line 305
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/google/android/youtube/videos/phone/VideosActivity;->setOfflineManagement(Z)V

    move v0, v1

    .line 306
    goto :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x7f08005a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 283
    iget-object v2, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->workspace:Lcom/google/android/youtube/core/ui/Workspace;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/ui/Workspace;->getCurrentScreen()I

    move-result v2

    if-nez v2, :cond_0

    move v1, v3

    .line 284
    .local v1, onRentalsTab:Z
    :goto_0
    const v2, 0x7f08005a

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 285
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/google/android/youtube/videos/phone/VideosActivity;->offlineManagement:Z

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 286
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 287
    const v2, 0x7f08005b

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 288
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 289
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 290
    return v3

    .end local v0           #item:Landroid/view/MenuItem;
    .end local v1           #onRentalsTab:Z
    :cond_0
    move v1, v4

    .line 283
    goto :goto_0

    .restart local v0       #item:Landroid/view/MenuItem;
    .restart local v1       #onRentalsTab:Z
    :cond_1
    move v2, v4

    .line 285
    goto :goto_1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 158
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 159
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->reset()V

    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 210
    return-void
.end method
