.class Lcom/google/android/music/albumwall/AlbumWallRenderer$2;
.super Ljava/lang/Object;
.source "AlbumWallRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

.field final synthetic val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$2;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iput-object p2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$2;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$2;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mDelegate:Lcom/google/android/music/albumwall/AlbumWallCallback;

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$2;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    invoke-interface {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallCallback;->onItemSelected(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 399
    return-void
.end method
