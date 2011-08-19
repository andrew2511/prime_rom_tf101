.class Lcom/google/android/music/albumwall/AlbumWallRenderer$4;
.super Ljava/lang/Object;
.source "AlbumWallRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectItemLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

.field final synthetic val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

.field final synthetic val$pt:Lcom/google/android/opengl/glview/Point;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/Point;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$4;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iput-object p2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$4;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    iput-object p3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$4;->val$pt:Lcom/google/android/opengl/glview/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$4;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mDelegate:Lcom/google/android/music/albumwall/AlbumWallCallback;

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$4;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$4;->val$pt:Lcom/google/android/opengl/glview/Point;

    iget v2, v2, Lcom/google/android/opengl/glview/Point;->x:F

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$4;->val$pt:Lcom/google/android/opengl/glview/Point;

    iget v3, v3, Lcom/google/android/opengl/glview/Point;->y:F

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/AlbumWallCallback;->onItemLabelSelected(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;FF)V

    .line 424
    return-void
.end method
