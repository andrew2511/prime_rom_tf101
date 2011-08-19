.class Lcom/android/gallery3d/app/CropImage$LoadMediaItem;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMediaItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/android/gallery3d/data/MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/CropImage;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "uri"

    .prologue
    .line 836
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$LoadMediaItem;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 837
    iput-object p2, p0, Lcom/android/gallery3d/app/CropImage$LoadMediaItem;->mUri:Landroid/net/Uri;

    .line 838
    return-void
.end method


# virtual methods
.method public call()Lcom/android/gallery3d/data/MediaItem;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 841
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage$LoadMediaItem;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/CropImage;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 842
    .local v0, manager:Lcom/android/gallery3d/data/DataManager;
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage$LoadMediaItem;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 843
    const-string v2, "CropImage"

    const-string v3, "no data given"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 851
    .end local p0
    :goto_0
    return-object v2

    .line 846
    .restart local p0
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage$LoadMediaItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 847
    .local v1, path:Lcom/android/gallery3d/data/Path;
    if-nez v1, :cond_1

    .line 848
    const-string v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get path for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage$LoadMediaItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 849
    goto :goto_0

    .line 851
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery3d/data/MediaItem;

    move-object v2, p0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage$LoadMediaItem;->call()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method
