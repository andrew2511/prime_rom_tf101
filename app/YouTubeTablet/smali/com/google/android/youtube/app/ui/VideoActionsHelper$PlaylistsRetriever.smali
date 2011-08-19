.class Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;
.super Lcom/google/android/youtube/core/ui/DefaultAuthenticatee;
.source "VideoActionsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/ui/VideoActionsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaylistsRetriever"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/ui/DefaultAuthenticatee;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/Page",
        "<",
        "Lcom/google/android/youtube/core/model/Playlist;",
        ">;>;",
        "Landroid/content/DialogInterface$OnClickListener;"
    }
.end annotation


# instance fields
.field private playlists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Playlist;",
            ">;"
        }
    .end annotation
.end field

.field public playlistsTitles:[Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)V
    .locals 1
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    .line 320
    iget-object v0, p1, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/DefaultAuthenticatee;-><init>(Landroid/content/Context;)V

    .line 321
    return-void
.end method


# virtual methods
.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 4
    .parameter "userAuth"

    .prologue
    .line 324
    invoke-static {p1}, Lcom/google/android/youtube/core/async/GDataRequests;->getMyPlaylistsRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    .line 325
    .local v0, request:Lcom/google/android/youtube/core/async/GDataRequest;
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$1200(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    iget-object v3, v3, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3, p0}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 327
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 352
    if-nez p2, :cond_0

    .line 353
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 359
    :goto_0
    return-void

    .line 355
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 356
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;->playlists:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Playlist;

    .line 357
    .local v0, playlist:Lcom/google/android/youtube/core/model/Playlist;
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$000(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    iget-object v2, v2, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToPlaylistVideoAction;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-direct {v3, v4, v0}, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToPlaylistVideoAction;-><init>(Lcom/google/android/youtube/app/ui/VideoActionsHelper;Lcom/google/android/youtube/core/model/Playlist;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    goto :goto_0
.end method

.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 1
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 347
    const-string v0, "Error retrieving user\'s playlists"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 348
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 349
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 311
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V
    .locals 7
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Playlist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p2, response:Lcom/google/android/youtube/core/model/Page;,"Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Playlist;>;"
    iget v4, p2, Lcom/google/android/youtube/core/model/Page;->totalResults:I

    if-nez v4, :cond_0

    .line 331
    iget-object v4, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    const v5, 0x7f0d002f

    invoke-static {v4, v5}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$600(Lcom/google/android/youtube/app/ui/VideoActionsHelper;I)V

    .line 344
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v4, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    iput-object v4, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;->playlists:Ljava/util/List;

    .line 336
    iget-object v4, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;->playlistsTitles:[Ljava/lang/String;

    .line 337
    const/4 v0, 0x0

    .line 339
    .local v0, i:I
    iget-object v4, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;->playlistsTitles:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    iget-object v5, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    iget-object v5, v5, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    const v6, 0x7f0d00d2

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 340
    iget-object v4, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/model/Playlist;

    .line 341
    .local v3, playlist:Lcom/google/android/youtube/core/model/Playlist;
    iget-object v4, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;->playlistsTitles:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    iget-object v5, v3, Lcom/google/android/youtube/core/model/Playlist;->title:Ljava/lang/String;

    aput-object v5, v4, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_1

    .line 343
    .end local v3           #playlist:Lcom/google/android/youtube/core/model/Playlist;
    :cond_1
    iget-object v4, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    iget-object v4, v4, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 311
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/VideoActionsHelper$PlaylistsRetriever;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V

    return-void
.end method
