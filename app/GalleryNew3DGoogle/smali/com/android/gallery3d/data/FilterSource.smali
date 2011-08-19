.class Lcom/android/gallery3d/data/FilterSource;
.super Lcom/android/gallery3d/data/MediaSource;
.source "FilterSource.java"


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mMatcher:Lcom/android/gallery3d/data/PathMatcher;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 3
    .parameter "application"

    .prologue
    .line 29
    const-string v0, "filter"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/android/gallery3d/data/FilterSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 31
    new-instance v0, Lcom/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/filter/mediatype/*/*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 8
    .parameter "path"

    .prologue
    const/4 v7, 0x0

    .line 40
    iget-object v5, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v5, p1}, Lcom/android/gallery3d/data/PathMatcher;->match(Lcom/android/gallery3d/data/Path;)I

    move-result v1

    .line 41
    .local v1, matchType:I
    iget-object v5, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v2

    .line 42
    .local v2, mediaType:I
    iget-object v5, p0, Lcom/android/gallery3d/data/FilterSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v4

    .line 43
    .local v4, setsName:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/data/FilterSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 44
    .local v0, dataManager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 45
    .local v3, sets:[Lcom/android/gallery3d/data/MediaSet;
    packed-switch v1, :pswitch_data_0

    .line 49
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 47
    :pswitch_0
    new-instance v5, Lcom/android/gallery3d/data/FilterSet;

    aget-object v6, v3, v7

    invoke-direct {v5, p1, v0, v6, v2}, Lcom/android/gallery3d/data/FilterSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/data/MediaSet;I)V

    return-object v5

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
