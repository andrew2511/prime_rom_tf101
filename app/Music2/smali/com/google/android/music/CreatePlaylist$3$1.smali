.class Lcom/google/android/music/CreatePlaylist$3$1;
.super Ljava/lang/Object;
.source "CreatePlaylist.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/CreatePlaylist$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mId:J

.field mName:Ljava/lang/String;

.field final synthetic this$1:Lcom/google/android/music/CreatePlaylist$3;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/music/CreatePlaylist$3;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/android/music/CreatePlaylist$3$1;->this$1:Lcom/google/android/music/CreatePlaylist$3;

    iput-object p2, p0, Lcom/google/android/music/CreatePlaylist$3$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 5

    .prologue
    .line 202
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylist$3$1;->val$name:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/music/CreatePlaylist$3$1;->mName:Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylist$3$1;->this$1:Lcom/google/android/music/CreatePlaylist$3;

    iget-object v1, v1, Lcom/google/android/music/CreatePlaylist$3;->this$0:Lcom/google/android/music/CreatePlaylist;

    iget-object v2, p0, Lcom/google/android/music/CreatePlaylist$3$1;->val$name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/music/CreatePlaylist;->access$300(Lcom/google/android/music/CreatePlaylist;Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/google/android/music/CreatePlaylist$3$1;->mId:J

    .line 204
    iget-wide v1, p0, Lcom/google/android/music/CreatePlaylist$3$1;->mId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 212
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylist$3$1;->this$1:Lcom/google/android/music/CreatePlaylist$3;

    iget-object v1, v1, Lcom/google/android/music/CreatePlaylist$3;->this$0:Lcom/google/android/music/CreatePlaylist;

    invoke-virtual {v1}, Lcom/google/android/music/CreatePlaylist;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/CreatePlaylist$3$1;->mName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContent$Playlists;->createPlaylist(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 210
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/music/CreatePlaylist$3$1;->mId:J

    goto :goto_0
.end method

.method public taskCompleted()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 217
    iget-object v2, p0, Lcom/google/android/music/CreatePlaylist$3$1;->this$1:Lcom/google/android/music/CreatePlaylist$3;

    iget-object v2, v2, Lcom/google/android/music/CreatePlaylist$3;->this$0:Lcom/google/android/music/CreatePlaylist;

    invoke-static {v2}, Lcom/google/android/music/CreatePlaylist;->access$400(Lcom/google/android/music/CreatePlaylist;)Lcom/google/android/music/CreatePlaylist$Callback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/google/android/music/CreatePlaylist$3$1;->this$1:Lcom/google/android/music/CreatePlaylist$3;

    iget-object v2, v2, Lcom/google/android/music/CreatePlaylist$3;->this$0:Lcom/google/android/music/CreatePlaylist;

    invoke-static {v2}, Lcom/google/android/music/CreatePlaylist;->access$400(Lcom/google/android/music/CreatePlaylist;)Lcom/google/android/music/CreatePlaylist$Callback;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/music/CreatePlaylist$3$1;->mId:J

    iget-object v5, p0, Lcom/google/android/music/CreatePlaylist$3$1;->mName:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/music/CreatePlaylist$Callback;->onPlaylistCreated(JLjava/lang/String;)V

    .line 221
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/CreatePlaylist$3$1;->this$1:Lcom/google/android/music/CreatePlaylist$3;

    iget-object v2, v2, Lcom/google/android/music/CreatePlaylist$3;->this$0:Lcom/google/android/music/CreatePlaylist;

    invoke-static {v2}, Lcom/google/android/music/CreatePlaylist;->access$500(Lcom/google/android/music/CreatePlaylist;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 222
    iget-object v2, p0, Lcom/google/android/music/CreatePlaylist$3$1;->this$1:Lcom/google/android/music/CreatePlaylist$3;

    iget-object v2, v2, Lcom/google/android/music/CreatePlaylist$3;->this$0:Lcom/google/android/music/CreatePlaylist;

    invoke-virtual {v2}, Lcom/google/android/music/CreatePlaylist;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0062

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, toastformat:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/music/CreatePlaylist$3$1;->mName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/music/CreatePlaylist$3$1;->this$1:Lcom/google/android/music/CreatePlaylist$3;

    iget-object v2, v2, Lcom/google/android/music/CreatePlaylist$3;->this$0:Lcom/google/android/music/CreatePlaylist;

    invoke-virtual {v2}, Lcom/google/android/music/CreatePlaylist;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 227
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #toastformat:Ljava/lang/String;
    :cond_1
    return-void
.end method
