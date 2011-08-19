.class Lcom/google/android/music/albumwall/Model$5$1;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Lcom/google/android/music/albumwall/AlbumWallCallback$BitmapReply;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/Model$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/albumwall/Model$5;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/Model$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1299
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$5$1;->this$1:Lcom/google/android/music/albumwall/Model$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reply(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "bitmap"

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$5$1;->this$1:Lcom/google/android/music/albumwall/Model$5;

    iget-object v0, v0, Lcom/google/android/music/albumwall/Model$5;->this$0:Lcom/google/android/music/albumwall/Model;

    invoke-static {v0}, Lcom/google/android/music/albumwall/Model;->access$700(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$5$1;->this$1:Lcom/google/android/music/albumwall/Model$5;

    iget-object v1, v1, Lcom/google/android/music/albumwall/Model$5;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iget-object v2, p0, Lcom/google/android/music/albumwall/Model$5$1;->this$1:Lcom/google/android/music/albumwall/Model$5;

    iget v2, v2, Lcom/google/android/music/albumwall/Model$5;->val$type:I

    iget-object v3, p0, Lcom/google/android/music/albumwall/Model$5$1;->this$1:Lcom/google/android/music/albumwall/Model$5;

    iget-object v3, v3, Lcom/google/android/music/albumwall/Model$5;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iget-object v4, p0, Lcom/google/android/music/albumwall/Model$5$1;->this$1:Lcom/google/android/music/albumwall/Model$5;

    iget-boolean v4, v4, Lcom/google/android/music/albumwall/Model$5;->val$expanded:Z

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallView;->setPileLabelTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLandroid/graphics/Bitmap;)V

    .line 1303
    return-void
.end method
