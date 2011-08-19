.class final Lcom/google/android/music/medialist/ArtistAlbumList$1;
.super Ljava/lang/Object;
.source "ArtistAlbumList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/medialist/ArtistAlbumList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/music/medialist/ArtistAlbumList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/music/medialist/ArtistAlbumList;
    .locals 3
    .parameter "in"

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 97
    .local v0, id:J
    new-instance v2, Lcom/google/android/music/medialist/ArtistAlbumList;

    invoke-direct {v2, v0, v1}, Lcom/google/android/music/medialist/ArtistAlbumList;-><init>(J)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/ArtistAlbumList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/music/medialist/ArtistAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/music/medialist/ArtistAlbumList;
    .locals 1
    .parameter "size"

    .prologue
    .line 101
    new-array v0, p1, [Lcom/google/android/music/medialist/ArtistAlbumList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/ArtistAlbumList$1;->newArray(I)[Lcom/google/android/music/medialist/ArtistAlbumList;

    move-result-object v0

    return-object v0
.end method
