.class Lcom/google/android/music/RenamePlaylist$3$1;
.super Ljava/lang/Object;
.source "RenamePlaylist.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/RenamePlaylist$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mId:J

.field mName:Ljava/lang/String;

.field final synthetic this$1:Lcom/google/android/music/RenamePlaylist$3;


# direct methods
.method constructor <init>(Lcom/google/android/music/RenamePlaylist$3;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/android/music/RenamePlaylist$3$1;->this$1:Lcom/google/android/music/RenamePlaylist$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 191
    iget-object v5, p0, Lcom/google/android/music/RenamePlaylist$3$1;->this$1:Lcom/google/android/music/RenamePlaylist$3;

    iget-object v5, v5, Lcom/google/android/music/RenamePlaylist$3;->this$0:Lcom/google/android/music/RenamePlaylist;

    invoke-static {v5}, Lcom/google/android/music/RenamePlaylist;->access$400(Lcom/google/android/music/RenamePlaylist;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, name:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 193
    iput-object v2, p0, Lcom/google/android/music/RenamePlaylist$3$1;->mName:Ljava/lang/String;

    .line 194
    iget-object v5, p0, Lcom/google/android/music/RenamePlaylist$3$1;->this$1:Lcom/google/android/music/RenamePlaylist$3;

    iget-object v5, v5, Lcom/google/android/music/RenamePlaylist$3;->this$0:Lcom/google/android/music/RenamePlaylist;

    iget-object v6, p0, Lcom/google/android/music/RenamePlaylist$3$1;->mName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/android/music/RenamePlaylist;->access$500(Lcom/google/android/music/RenamePlaylist;Ljava/lang/String;)I

    move-result v5

    int-to-long v0, v5

    .line 195
    .local v0, id:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-ltz v5, :cond_1

    .line 206
    .end local v0           #id:J
    :cond_0
    :goto_0
    return-void

    .line 199
    .restart local v0       #id:J
    :cond_1
    iget-object v5, p0, Lcom/google/android/music/RenamePlaylist$3$1;->this$1:Lcom/google/android/music/RenamePlaylist$3;

    iget-object v5, v5, Lcom/google/android/music/RenamePlaylist$3;->this$0:Lcom/google/android/music/RenamePlaylist;

    invoke-virtual {v5}, Lcom/google/android/music/RenamePlaylist;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 200
    .local v3, resolver:Landroid/content/ContentResolver;
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 201
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "name"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v5, p0, Lcom/google/android/music/RenamePlaylist$3$1;->this$1:Lcom/google/android/music/RenamePlaylist$3;

    iget-object v5, v5, Lcom/google/android/music/RenamePlaylist$3;->this$0:Lcom/google/android/music/RenamePlaylist;

    invoke-static {v5}, Lcom/google/android/music/RenamePlaylist;->access$000(Lcom/google/android/music/RenamePlaylist;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5, v4, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public taskCompleted()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 210
    iget-object v2, p0, Lcom/google/android/music/RenamePlaylist$3$1;->this$1:Lcom/google/android/music/RenamePlaylist$3;

    iget-object v2, v2, Lcom/google/android/music/RenamePlaylist$3;->this$0:Lcom/google/android/music/RenamePlaylist;

    invoke-virtual {v2}, Lcom/google/android/music/RenamePlaylist;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0063

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, toastformat:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/music/RenamePlaylist$3$1;->mName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/music/RenamePlaylist$3$1;->this$1:Lcom/google/android/music/RenamePlaylist$3;

    iget-object v2, v2, Lcom/google/android/music/RenamePlaylist$3;->this$0:Lcom/google/android/music/RenamePlaylist;

    invoke-virtual {v2}, Lcom/google/android/music/RenamePlaylist;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 213
    return-void
.end method
