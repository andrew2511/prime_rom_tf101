.class final Lcom/google/android/music/medialist/PlaylistSongList$1;
.super Ljava/lang/Object;
.source "PlaylistSongList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/medialist/PlaylistSongList;
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
        "Lcom/google/android/music/medialist/PlaylistSongList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/music/medialist/PlaylistSongList;
    .locals 4
    .parameter "in"

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 149
    .local v0, id:J
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, name:Ljava/lang/String;
    new-instance v3, Lcom/google/android/music/medialist/PlaylistSongList;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/PlaylistSongList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/music/medialist/PlaylistSongList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/music/medialist/PlaylistSongList;
    .locals 1
    .parameter "size"

    .prologue
    .line 154
    new-array v0, p1, [Lcom/google/android/music/medialist/PlaylistSongList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/PlaylistSongList$1;->newArray(I)[Lcom/google/android/music/medialist/PlaylistSongList;

    move-result-object v0

    return-object v0
.end method
