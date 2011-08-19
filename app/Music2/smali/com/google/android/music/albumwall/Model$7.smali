.class Lcom/google/android/music/albumwall/Model$7;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/Model;->getItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/Model$RequestableTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/Model;

.field final synthetic val$config:Lcom/google/android/music/albumwall/AlbumWallConfig;

.field final synthetic val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

.field final synthetic val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1445
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$7;->this$0:Lcom/google/android/music/albumwall/Model;

    iput-object p2, p0, Lcom/google/android/music/albumwall/Model$7;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iput p3, p0, Lcom/google/android/music/albumwall/Model$7;->val$type:I

    iput-object p4, p0, Lcom/google/android/music/albumwall/Model$7;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    iput-object p5, p0, Lcom/google/android/music/albumwall/Model$7;->val$config:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$7;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$7;->this$0:Lcom/google/android/music/albumwall/Model;

    invoke-static {v1}, Lcom/google/android/music/albumwall/Model;->access$600(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/Model$Epoch;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1449
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$7;->this$0:Lcom/google/android/music/albumwall/Model;

    invoke-static {v0}, Lcom/google/android/music/albumwall/Model;->access$700(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$7;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iget v2, p0, Lcom/google/android/music/albumwall/Model$7;->val$type:I

    iget-object v3, p0, Lcom/google/android/music/albumwall/Model$7;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/albumwall/AlbumWallView;->setItemTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V

    .line 1458
    :goto_0
    return-void

    .line 1451
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$7;->this$0:Lcom/google/android/music/albumwall/Model;

    invoke-static {v0}, Lcom/google/android/music/albumwall/Model;->access$800(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallCallback;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/albumwall/Model$7;->val$type:I

    iget-object v2, p0, Lcom/google/android/music/albumwall/Model$7;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    iget-object v3, p0, Lcom/google/android/music/albumwall/Model$7;->val$config:Lcom/google/android/music/albumwall/AlbumWallConfig;

    new-instance v4, Lcom/google/android/music/albumwall/Model$7$1;

    invoke-direct {v4, p0}, Lcom/google/android/music/albumwall/Model$7$1;-><init>(Lcom/google/android/music/albumwall/Model$7;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/music/albumwall/AlbumWallCallback;->onRequestItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;Lcom/google/android/music/albumwall/AlbumWallCallback$BitmapReply;)V

    goto :goto_0
.end method
