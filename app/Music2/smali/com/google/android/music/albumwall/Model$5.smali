.class Lcom/google/android/music/albumwall/Model$5;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/Model;->getPileTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)Lcom/google/android/music/albumwall/Model$RequestableTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/Model;

.field final synthetic val$config:Lcom/google/android/music/albumwall/AlbumWallConfig;

.field final synthetic val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

.field final synthetic val$expanded:Z

.field final synthetic val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/AlbumWallConfig;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1292
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$5;->this$0:Lcom/google/android/music/albumwall/Model;

    iput-object p2, p0, Lcom/google/android/music/albumwall/Model$5;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iput p3, p0, Lcom/google/android/music/albumwall/Model$5;->val$type:I

    iput-object p4, p0, Lcom/google/android/music/albumwall/Model$5;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iput-boolean p5, p0, Lcom/google/android/music/albumwall/Model$5;->val$expanded:Z

    iput-object p6, p0, Lcom/google/android/music/albumwall/Model$5;->val$config:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$5;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$5;->this$0:Lcom/google/android/music/albumwall/Model;

    invoke-static {v1}, Lcom/google/android/music/albumwall/Model;->access$600(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/Model$Epoch;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$5;->this$0:Lcom/google/android/music/albumwall/Model;

    invoke-static {v0}, Lcom/google/android/music/albumwall/Model;->access$700(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$5;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iget v2, p0, Lcom/google/android/music/albumwall/Model$5;->val$type:I

    iget-object v3, p0, Lcom/google/android/music/albumwall/Model$5;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iget-boolean v4, p0, Lcom/google/android/music/albumwall/Model$5;->val$expanded:Z

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallView;->setPileLabelTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLandroid/graphics/Bitmap;)V

    .line 1305
    :goto_0
    return-void

    .line 1298
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$5;->this$0:Lcom/google/android/music/albumwall/Model;

    invoke-static {v0}, Lcom/google/android/music/albumwall/Model;->access$800(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallCallback;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/albumwall/Model$5;->val$type:I

    iget-object v2, p0, Lcom/google/android/music/albumwall/Model$5;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iget-boolean v3, p0, Lcom/google/android/music/albumwall/Model$5;->val$expanded:Z

    iget-object v4, p0, Lcom/google/android/music/albumwall/Model$5;->val$config:Lcom/google/android/music/albumwall/AlbumWallConfig;

    new-instance v5, Lcom/google/android/music/albumwall/Model$5$1;

    invoke-direct {v5, p0}, Lcom/google/android/music/albumwall/Model$5$1;-><init>(Lcom/google/android/music/albumwall/Model$5;)V

    invoke-interface/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallCallback;->onRequestPileLabelTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/AlbumWallConfig;Lcom/google/android/music/albumwall/AlbumWallCallback$BitmapReply;)V

    goto :goto_0
.end method
