.class final Lcom/google/android/music/medialist/RecentlyAdddedSongList$1;
.super Ljava/lang/Object;
.source "RecentlyAdddedSongList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/medialist/RecentlyAdddedSongList;
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
        "Lcom/google/android/music/medialist/RecentlyAdddedSongList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/music/medialist/RecentlyAdddedSongList;
    .locals 2
    .parameter "in"

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .local v0, sortOrder:I
    new-instance v1, Lcom/google/android/music/medialist/RecentlyAdddedSongList;

    invoke-direct {v1, v0}, Lcom/google/android/music/medialist/RecentlyAdddedSongList;-><init>(I)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/RecentlyAdddedSongList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/music/medialist/RecentlyAdddedSongList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/music/medialist/RecentlyAdddedSongList;
    .locals 1
    .parameter "size"

    .prologue
    .line 81
    new-array v0, p1, [Lcom/google/android/music/medialist/RecentlyAdddedSongList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/RecentlyAdddedSongList$1;->newArray(I)[Lcom/google/android/music/medialist/RecentlyAdddedSongList;

    move-result-object v0

    return-object v0
.end method
