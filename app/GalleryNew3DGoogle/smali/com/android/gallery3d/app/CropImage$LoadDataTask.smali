.class Lcom/android/gallery3d/app/CropImage$LoadDataTask;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field mItem:Lcom/android/gallery3d/data/MediaItem;

.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter
    .parameter "item"

    .prologue
    .line 811
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$LoadDataTask;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    iput-object p2, p0, Lcom/android/gallery3d/app/CropImage$LoadDataTask;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 813
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
    .locals 1
    .parameter "jc"

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$LoadDataTask;->mItem:Lcom/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$LoadDataTask;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/gallery3d/util/ThreadPool$Job;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/BitmapRegionDecoder;

    move-object v0, p0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 808
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/CropImage$LoadDataTask;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method
