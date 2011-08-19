.class final Lcom/google/android/music/medialist/ArtistSongList$1;
.super Ljava/lang/Object;
.source "ArtistSongList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/medialist/ArtistSongList;
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
        "Lcom/google/android/music/medialist/ArtistSongList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/music/medialist/ArtistSongList;
    .locals 5
    .parameter "in"

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 101
    .local v0, id:J
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 103
    .local v3, sortOrder:I
    new-instance v4, Lcom/google/android/music/medialist/ArtistSongList;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/music/medialist/ArtistSongList;-><init>(JLjava/lang/String;I)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/ArtistSongList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/music/medialist/ArtistSongList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/music/medialist/ArtistSongList;
    .locals 1
    .parameter "size"

    .prologue
    .line 107
    new-array v0, p1, [Lcom/google/android/music/medialist/ArtistSongList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/ArtistSongList$1;->newArray(I)[Lcom/google/android/music/medialist/ArtistSongList;

    move-result-object v0

    return-object v0
.end method
