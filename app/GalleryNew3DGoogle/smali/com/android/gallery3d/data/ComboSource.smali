.class Lcom/android/gallery3d/data/ComboSource;
.super Lcom/android/gallery3d/data/MediaSource;
.source "ComboSource.java"


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 1
    .parameter "application"

    .prologue
    .line 25
    const-string v0, "combo"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/android/gallery3d/data/ComboSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 27
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 5
    .parameter "path"

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, segments:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 34
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/data/ComboSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 38
    .local v0, dataManager:Lcom/android/gallery3d/data/DataManager;
    new-instance v2, Lcom/android/gallery3d/data/ComboAlbumSet;

    iget-object v3, p0, Lcom/android/gallery3d/data/ComboSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lcom/android/gallery3d/data/ComboAlbumSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;[Lcom/android/gallery3d/data/MediaSet;)V

    return-object v2
.end method
