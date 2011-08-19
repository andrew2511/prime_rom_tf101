.class final Lcom/google/android/music/medialist/AlbumSongList$1;
.super Ljava/lang/Object;
.source "AlbumSongList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/medialist/AlbumSongList;
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
        "Lcom/google/android/music/medialist/AlbumSongList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/music/medialist/AlbumSongList;
    .locals 3
    .parameter "in"

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 220
    .local v0, id:J
    new-instance v2, Lcom/google/android/music/medialist/AlbumSongList;

    invoke-direct {v2, v0, v1}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/AlbumSongList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/music/medialist/AlbumSongList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/music/medialist/AlbumSongList;
    .locals 1
    .parameter "size"

    .prologue
    .line 224
    new-array v0, p1, [Lcom/google/android/music/medialist/AlbumSongList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/AlbumSongList$1;->newArray(I)[Lcom/google/android/music/medialist/AlbumSongList;

    move-result-object v0

    return-object v0
.end method
