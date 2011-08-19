.class Lcom/google/android/music/albumwall/Model$7$1;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Lcom/google/android/music/albumwall/AlbumWallCallback$BitmapReply;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/Model$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/albumwall/Model$7;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/Model$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1452
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$7$1;->this$1:Lcom/google/android/music/albumwall/Model$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reply(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$7$1;->this$1:Lcom/google/android/music/albumwall/Model$7;

    iget-object v0, v0, Lcom/google/android/music/albumwall/Model$7;->this$0:Lcom/google/android/music/albumwall/Model;

    invoke-static {v0}, Lcom/google/android/music/albumwall/Model;->access$700(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$7$1;->this$1:Lcom/google/android/music/albumwall/Model$7;

    iget-object v1, v1, Lcom/google/android/music/albumwall/Model$7;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iget-object v2, p0, Lcom/google/android/music/albumwall/Model$7$1;->this$1:Lcom/google/android/music/albumwall/Model$7;

    iget v2, v2, Lcom/google/android/music/albumwall/Model$7;->val$type:I

    iget-object v3, p0, Lcom/google/android/music/albumwall/Model$7$1;->this$1:Lcom/google/android/music/albumwall/Model$7;

    iget-object v3, v3, Lcom/google/android/music/albumwall/Model$7;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/music/albumwall/AlbumWallView;->setItemTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V

    .line 1456
    return-void
.end method
