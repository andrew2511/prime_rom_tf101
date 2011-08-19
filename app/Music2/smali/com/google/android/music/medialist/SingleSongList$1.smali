.class final Lcom/google/android/music/medialist/SingleSongList$1;
.super Ljava/lang/Object;
.source "SingleSongList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/medialist/SingleSongList;
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
        "Lcom/google/android/music/medialist/SingleSongList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/music/medialist/SingleSongList;
    .locals 4
    .parameter "in"

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 67
    .local v0, id:J
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, name:Ljava/lang/String;
    new-instance v3, Lcom/google/android/music/medialist/SingleSongList;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/music/medialist/SingleSongList;-><init>(JLjava/lang/String;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/SingleSongList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/music/medialist/SingleSongList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/music/medialist/SingleSongList;
    .locals 1
    .parameter "size"

    .prologue
    .line 72
    new-array v0, p1, [Lcom/google/android/music/medialist/SingleSongList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/SingleSongList$1;->newArray(I)[Lcom/google/android/music/medialist/SingleSongList;

    move-result-object v0

    return-object v0
.end method
