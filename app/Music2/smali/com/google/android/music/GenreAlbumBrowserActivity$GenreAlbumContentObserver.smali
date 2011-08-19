.class Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumContentObserver;
.super Landroid/database/ContentObserver;
.source "GenreAlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/GenreAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenreAlbumContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/music/GenreAlbumBrowserActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 356
    iput-object p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumContentObserver;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    .line 357
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 358
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 362
    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumContentObserver;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getInstance(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/TopLevelActivity;

    move-result-object v1

    .line 364
    .local v1, top:Lcom/google/android/music/activitymanagement/TopLevelActivity;
    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumContentObserver;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$200(Lcom/google/android/music/GenreAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 365
    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumContentObserver;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$200(Lcom/google/android/music/GenreAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 366
    .local v0, count:I
    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumContentObserver;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$300(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/NoContentListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumContentObserver;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$300(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/NoContentListener;

    move-result-object v2

    if-lez v0, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v2, v3}, Lcom/google/android/music/NoContentListener;->setMusicFound(Z)V

    .line 370
    .end local v0           #count:I
    :cond_0
    return-void

    .line 367
    .restart local v0       #count:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
