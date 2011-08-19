.class Lcom/google/android/music/PlaylistBrowserActivity$4;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/PlaylistBrowserActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/PlaylistBrowserActivity;

.field final synthetic val$playlistId:J


# direct methods
.method constructor <init>(Lcom/google/android/music/PlaylistBrowserActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/google/android/music/PlaylistBrowserActivity$4;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    iput-wide p2, p0, Lcom/google/android/music/PlaylistBrowserActivity$4;->val$playlistId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "d"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 379
    sget-object v1, Lcom/google/android/music/store/MusicContent$Playlists;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$4;->val$playlistId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 381
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity$4;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-virtual {v1}, Lcom/google/android/music/PlaylistBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 382
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity$4;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    const v2, 0x7f0c0061

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 384
    return-void
.end method
