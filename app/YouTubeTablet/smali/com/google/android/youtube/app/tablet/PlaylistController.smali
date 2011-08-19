.class public Lcom/google/android/youtube/app/tablet/PlaylistController;
.super Lcom/google/android/youtube/app/tablet/YouTubeController;
.source "PlaylistController.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;


# instance fields
.field private final authenticate:Z

.field private final musicVideosRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/MusicVideo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final playlistUri:Landroid/net/Uri;

.field private final playlistVideosRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;"
        }
    .end annotation
.end field

.field private final thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private videos:Lcom/google/android/youtube/core/ui/PagedView;

.field private videosHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Landroid/os/Bundle;)V
    .locals 2
    .parameter "application"
    .parameter "activity"
    .parameter "navigation"
    .parameter "launchBundle"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/app/tablet/YouTubeController;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Landroid/os/Bundle;)V

    .line 82
    const v1, 0x7f0d00e4

    invoke-virtual {p2, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 84
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/PlaylistController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 85
    const-string v1, "playlist_uri"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/PlaylistController;->playlistUri:Landroid/net/Uri;

    .line 86
    const-string v1, "authenticate"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/youtube/app/tablet/PlaylistController;->authenticate:Z

    .line 88
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->getRequesters()Lcom/google/android/youtube/app/Requesters;

    move-result-object v0

    .line 90
    .local v0, requesters:Lcom/google/android/youtube/app/Requesters;
    iget-boolean v1, p0, Lcom/google/android/youtube/app/tablet/PlaylistController;->authenticate:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/youtube/app/Requesters;->getMyPlaylistVideosRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/PlaylistController;->playlistVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 94
    invoke-interface {v0}, Lcom/google/android/youtube/app/Requesters;->getMusicVideosRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/PlaylistController;->musicVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 95
    invoke-interface {v0}, Lcom/google/android/youtube/app/Requesters;->getThumbnailRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/PlaylistController;->thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 96
    return-void

    .line 90
    :cond_0
    invoke-interface {v0}, Lcom/google/android/youtube/app/Requesters;->getPlaylistVideosRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    goto :goto_0
.end method

.method public static createArguments(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/os/Bundle;
    .locals 2
    .parameter "playlistUri"
    .parameter "title"
    .parameter "summary"
    .parameter "author"
    .parameter "size"
    .parameter "authenticate"

    .prologue
    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "playlist_uri"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    const-string v1, "playlist_title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "playlist_description"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "playlist_author"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "playlist_size"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    const-string v1, "authenticate"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    return-object v0
.end method

.method public static createArguments(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 2
    .parameter "playlistUri"
    .parameter "title"
    .parameter "authenticate"

    .prologue
    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "playlist_uri"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 70
    const-string v1, "playlist_title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "authenticate"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    return-object v0
.end method


# virtual methods
.method protected getContentViewId()I
    .locals 1

    .prologue
    .line 100
    const v0, 0x7f04001e

    return v0
.end method

.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 4
    .parameter "userAuth"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/PlaylistController;->playlistUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/PlaylistController;->videosHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/tablet/PlaylistController;->playlistUri:Landroid/net/Uri;

    invoke-static {v3, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->init([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 179
    :cond_0
    return-void
.end method

.method public onAuthenticationError(Ljava/lang/Exception;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/PlaylistController;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 183
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/PlaylistController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 184
    return-void
.end method

.method protected onCreate(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 21
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 105
    invoke-super/range {p0 .. p2}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onCreate(Landroid/view/View;Landroid/os/Bundle;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/PlaylistController;->playlistUri:Landroid/net/Uri;

    move-object v2, v0

    if-nez v2, :cond_0

    .line 107
    const-string v2, "Playlist Uri not set"

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/PlaylistController;->activity:Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 112
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/tablet/PlaylistController;->getArguments()Landroid/os/Bundle;

    move-result-object v13

    .line 113
    .local v13, arguments:Landroid/os/Bundle;
    const-string v2, "playlist_title"

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 114
    .local v19, title:Ljava/lang/String;
    const-string v2, "playlist_description"

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 115
    .local v17, summary:Ljava/lang/String;
    const-string v2, "playlist_author"

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 116
    .local v14, author:Ljava/lang/String;
    const-string v2, "playlist_size"

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 118
    .local v16, size:I
    const v2, 0x7f080015

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/TextView;

    invoke-static/range {p2 .. p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 120
    .local v20, titleTextView:Landroid/widget/TextView;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const v2, 0x7f08003b

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static/range {p2 .. p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 124
    .local v18, summaryTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 125
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const/4 v2, 0x0

    move-object/from16 v0, v18

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    :goto_0
    const v2, 0x7f08003a

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static/range {p2 .. p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 133
    .local v15, detailsTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 134
    if-nez v16, :cond_2

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/PlaylistController;->activity:Landroid/app/Activity;

    move-object v2, v0

    const v3, 0x7f0d00b3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v14, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :goto_2
    const v2, 0x7f080014

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/google/android/youtube/core/ui/PagedView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/PlaylistController;->videos:Lcom/google/android/youtube/core/ui/PagedView;

    .line 152
    new-instance v2, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/PlaylistController;->activity:Landroid/app/Activity;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/PlaylistController;->navigation:Lcom/google/android/youtube/app/Navigation;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/PlaylistController;->videos:Lcom/google/android/youtube/core/ui/PagedView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/PlaylistController;->activity:Landroid/app/Activity;

    move-object v6, v0

    invoke-static {v6}, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->create(Landroid/content/Context;)Lcom/google/android/youtube/app/adapter/VideoListAdapter;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/PlaylistController;->playlistVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/PlaylistController;->musicVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/PlaylistController;->thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;

    move-object v9, v0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/PlaylistController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object v11, v0

    sget-object v12, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Playlist:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    invoke-direct/range {v2 .. v12}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/VideoListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/PlaylistController;->videosHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    .line 163
    return-void

    .line 128
    .end local v15           #detailsTextView:Landroid/widget/TextView;
    .restart local p1
    :cond_1
    const/16 v2, 0x8

    move-object/from16 v0, v18

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 137
    .restart local v15       #detailsTextView:Landroid/widget/TextView;
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, v16

    move v1, v2

    if-ne v0, v1, :cond_3

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/PlaylistController;->activity:Landroid/app/Activity;

    move-object v2, v0

    const v3, 0x7f0d00b4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v14, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 143
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/PlaylistController;->activity:Landroid/app/Activity;

    move-object v2, v0

    const v3, 0x7f0d00b5

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v14, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 148
    :cond_4
    const/16 v2, 0x8

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 199
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 200
    const v0, 0x7f100005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 201
    return-void
.end method

.method public onNotAuthenticated()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/PlaylistController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 189
    return-void
.end method

.method protected onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 205
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 210
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 207
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/PlaylistController;->navigation:Lcom/google/android/youtube/app/Navigation;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/PlaylistController;->playlistUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/google/android/youtube/app/tablet/PlaylistController;->authenticate:Z

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/app/Navigation;->toWatchPlaylist(Landroid/net/Uri;Z)V

    .line 208
    const/4 v0, 0x1

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x7f08008f
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 167
    invoke-super {p0}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onStart()V

    .line 168
    iget-boolean v0, p0, Lcom/google/android/youtube/app/tablet/PlaylistController;->authenticate:Z

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/PlaylistController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/PlaylistController;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/PlaylistController;->videosHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/tablet/PlaylistController;->playlistUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->init([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/PlaylistController;->videosHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->reset()V

    .line 194
    invoke-super {p0}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onStop()V

    .line 195
    return-void
.end method
