.class public Lcom/google/android/youtube/app/ui/VideoActionsHelper;
.super Ljava/lang/Object;
.source "VideoActionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToPlaylistVideoAction;,
        Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;,
        Lcom/google/android/youtube/app/ui/VideoActionsHelper$RemoveFromFavoritesVideoAction;,
        Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToFavoritesVideoAction;,
        Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;
    }
.end annotation


# instance fields
.field protected final activity:Landroid/app/Activity;

.field private final addToFavoritesRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;"
        }
    .end annotation
.end field

.field private final addToPlaylistRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private analytics:Lcom/google/android/youtube/core/Analytics;

.field private final createPlaylistHelper:Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;

.field private final createPlaylistRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Playlist;",
            ">;"
        }
    .end annotation
.end field

.field private dislikeButton:Landroid/view/View;

.field private favoriteImageView:Landroid/widget/ImageView;

.field private favoriteTextView:Landroid/widget/TextView;

.field private likeButton:Landroid/view/View;

.field private final myPlaylistsRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Playlist;",
            ">;>;"
        }
    .end annotation
.end field

.field private final platform:Lcom/google/android/youtube/app/Platform;

.field private final playlistsRetriever:Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;

.field private final rateRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final removeFromFavoritesRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private unfavoriteUri:Landroid/net/Uri;

.field private final userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private video:Lcom/google/android/youtube/core/model/Video;

.field private final watchInfoHelper:Lcom/google/android/youtube/app/ui/WatchInfoHelper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/Requesters;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/ui/WatchInfoHelper;Lcom/google/android/youtube/app/Platform;)V
    .locals 2
    .parameter "activity"
    .parameter "requesters"
    .parameter "userAuthorizer"
    .parameter "analytics"
    .parameter "watchInfoHelper"
    .parameter "platform"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    .line 87
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->analytics:Lcom/google/android/youtube/core/Analytics;

    .line 88
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 89
    invoke-static {p5}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/WatchInfoHelper;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->watchInfoHelper:Lcom/google/android/youtube/app/ui/WatchInfoHelper;

    .line 90
    invoke-static {p6}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/Platform;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->platform:Lcom/google/android/youtube/app/Platform;

    .line 92
    invoke-interface {p2}, Lcom/google/android/youtube/app/Requesters;->getRateRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->rateRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 93
    invoke-interface {p2}, Lcom/google/android/youtube/app/Requesters;->getAddToFavoritesRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->addToFavoritesRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 94
    invoke-interface {p2}, Lcom/google/android/youtube/app/Requesters;->getRemoveFromFavoritesRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->removeFromFavoritesRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 95
    invoke-interface {p2}, Lcom/google/android/youtube/app/Requesters;->getMyPlaylistsRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->myPlaylistsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 96
    invoke-interface {p2}, Lcom/google/android/youtube/app/Requesters;->getAddToPlaylistRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->addToPlaylistRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 97
    invoke-interface {p2}, Lcom/google/android/youtube/app/Requesters;->getCreatePlaylistRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->createPlaylistRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 99
    new-instance v0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;-><init>(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->playlistsRetriever:Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;

    .line 100
    new-instance v0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->createPlaylistRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-direct {v0, p1, p3, v1}, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/Requester;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->createPlaylistHelper:Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->unfavoriteUri:Landroid/net/Uri;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Lcom/google/android/youtube/core/async/UserAuthorizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->likeButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->unfavoriteUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->removeFromFavoritesRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->myPlaylistsRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->addToPlaylistRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/youtube/app/ui/VideoActionsHelper;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/youtube/app/ui/VideoActionsHelper;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->setViewSelectedState(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->dislikeButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Lcom/google/android/youtube/core/model/Video;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->video:Lcom/google/android/youtube/core/model/Video;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->rateRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/youtube/app/ui/VideoActionsHelper;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->showToast(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Lcom/google/android/youtube/app/ui/WatchInfoHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->watchInfoHelper:Lcom/google/android/youtube/app/ui/WatchInfoHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->addToFavoritesRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/youtube/app/ui/VideoActionsHelper;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->setUnfavoriteUri(Landroid/net/Uri;)V

    return-void
.end method

.method private setFavoriteIcon(I)V
    .locals 1
    .parameter "drawableId"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->favoriteImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->favoriteImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    :cond_0
    return-void
.end method

.method private setUnfavoriteUri(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->unfavoriteUri:Landroid/net/Uri;

    .line 172
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->isFavorite()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0d00c0

    move v0, v1

    .line 173
    .local v0, titleId:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->favoriteTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->favoriteTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->isFavorite()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f020098

    :goto_1
    invoke-direct {p0, v1}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->setFavoriteIcon(I)V

    .line 178
    return-void

    .line 172
    .end local v0           #titleId:I
    :cond_1
    const v1, 0x7f0d00bf

    move v0, v1

    goto :goto_0

    .line 177
    .restart local v0       #titleId:I
    :cond_2
    const v1, 0x7f020022

    goto :goto_1
.end method

.method private setViewSelectedState(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "selected"

    .prologue
    .line 210
    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 212
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 214
    :cond_0
    return-void

    .line 212
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2
    .parameter "messageId"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 218
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 222
    return-void
.end method


# virtual methods
.method public isFavorite()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->unfavoriteUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCopyUrl()V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "CopyURL"

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->platform:Lcom/google/android/youtube/app/Platform;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->watchUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/app/Platform;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    const v0, 0x7f0d0008

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->showToast(I)V

    .line 148
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 191
    sparse-switch p1, :sswitch_data_0

    .line 205
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 193
    :sswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00c1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->playlistsRetriever:Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;->playlistsTitles:[Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->playlistsRetriever:Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 198
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->createPlaylistHelper:Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;

    new-instance v1, Lcom/google/android/youtube/app/ui/VideoActionsHelper$1;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/ui/VideoActionsHelper$1;-><init>(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;->onCreateDialog(Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$OnPlaylistCreatedListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 191
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public onDislike()V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Dislike"

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;-><init>(Lcom/google/android/youtube/app/ui/VideoActionsHelper;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 137
    return-void
.end method

.method public onFavorite()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->unfavoriteUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Favorite"

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToFavoritesVideoAction;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToFavoritesVideoAction;-><init>(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Unfavorite"

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RemoveFromFavoritesVideoAction;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RemoveFromFavoritesVideoAction;-><init>(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    goto :goto_0
.end method

.method public onFlag()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Flag"

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->video:Lcom/google/android/youtube/core/model/Video;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->flagVideo(Landroid/content/Context;Lcom/google/android/youtube/core/model/Video;)V

    .line 153
    return-void
.end method

.method public onLike()V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Like"

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/google/android/youtube/app/ui/VideoActionsHelper$RateVideoAction;-><init>(Lcom/google/android/youtube/app/ui/VideoActionsHelper;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 132
    return-void
.end method

.method public onSaveToPlaylist()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "SaveToPlaylist"

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->playlistsRetriever:Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 168
    return-void
.end method

.method public onShare()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Share"

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->video:Lcom/google/android/youtube/core/model/Video;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->shareVideo(Landroid/content/Context;Lcom/google/android/youtube/core/model/Video;)V

    .line 142
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0, v0}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->reset(Lcom/google/android/youtube/core/model/Video;Landroid/net/Uri;)V

    .line 125
    return-void
.end method

.method public reset(Lcom/google/android/youtube/core/model/Video;Landroid/net/Uri;)V
    .locals 2
    .parameter "video"
    .parameter "unfavoriteUri"

    .prologue
    const/4 v1, 0x0

    .line 117
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->video:Lcom/google/android/youtube/core/model/Video;

    .line 118
    invoke-direct {p0, p2}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->setUnfavoriteUri(Landroid/net/Uri;)V

    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->likeButton:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->setViewSelectedState(Landroid/view/View;Z)V

    .line 120
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->dislikeButton:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->setViewSelectedState(Landroid/view/View;Z)V

    .line 121
    return-void
.end method

.method public setLikeDislikeViews(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "likeButton"
    .parameter "dislikeButton"

    .prologue
    .line 107
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->likeButton:Landroid/view/View;

    .line 108
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->dislikeButton:Landroid/view/View;

    .line 109
    return-void
.end method
