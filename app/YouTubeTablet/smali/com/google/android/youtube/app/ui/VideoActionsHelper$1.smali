.class Lcom/google/android/youtube/app/ui/VideoActionsHelper$1;
.super Ljava/lang/Object;
.source "VideoActionsHelper.java"

# interfaces
.implements Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$OnPlaylistCreatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/app/ui/VideoActionsHelper;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$1;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Lcom/google/android/youtube/core/model/Playlist;)V
    .locals 4
    .parameter "playlist"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$1;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->access$000(Lcom/google/android/youtube/app/ui/VideoActionsHelper;)Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$1;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToPlaylistVideoAction;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/VideoActionsHelper$1;->this$0:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-direct {v2, v3, p1}, Lcom/google/android/youtube/app/ui/VideoActionsHelper$AddToPlaylistVideoAction;-><init>(Lcom/google/android/youtube/app/ui/VideoActionsHelper;Lcom/google/android/youtube/core/model/Playlist;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 202
    return-void
.end method
