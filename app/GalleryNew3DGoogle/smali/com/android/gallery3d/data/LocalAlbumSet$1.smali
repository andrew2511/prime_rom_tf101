.class Lcom/android/gallery3d/data/LocalAlbumSet$1;
.super Ljava/lang/Object;
.source "LocalAlbumSet.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/LocalAlbumSet;->loadSubMediaSets()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/LocalAlbumSet;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/LocalAlbumSet;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/gallery3d/data/LocalAlbumSet$1;->this$0:Lcom/android/gallery3d/data/LocalAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;)I
    .locals 5
    .parameter "a"
    .parameter "b"

    .prologue
    .line 166
    iget-object v1, p1, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->bucketName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 167
    .local v0, result:I
    if-eqz v0, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    iget v1, p1, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->bucketId:I

    int-to-long v1, v1

    iget v3, p2, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->bucketId:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/android/gallery3d/util/Utils;->compare(JJ)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    check-cast p1, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    .end local p1
    check-cast p2, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/data/LocalAlbumSet$1;->compare(Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;)I

    move-result v0

    return v0
.end method
