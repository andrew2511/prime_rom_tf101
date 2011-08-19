.class Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$1;
.super Ljava/lang/Object;
.source "AsyncAlbumArtImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

.field final synthetic val$d:Landroid/graphics/drawable/Drawable;

.field final synthetic val$imageView:Lcom/google/android/music/AsyncAlbumArtImageView;


# direct methods
.method constructor <init>(Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;Lcom/google/android/music/AsyncAlbumArtImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$1;->this$0:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    iput-object p2, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$1;->val$imageView:Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object p3, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$1;->val$d:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$1;->val$imageView:Lcom/google/android/music/AsyncAlbumArtImageView;

    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$1;->val$d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$1100(Lcom/google/android/music/AsyncAlbumArtImageView;Landroid/graphics/drawable/Drawable;)V

    .line 418
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$1;->val$imageView:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$502(Lcom/google/android/music/AsyncAlbumArtImageView;Z)Z

    .line 419
    return-void
.end method
