.class final Lcom/google/android/music/medialist/UriSongList$1;
.super Ljava/lang/Object;
.source "UriSongList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/medialist/UriSongList;
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
        "Lcom/google/android/music/medialist/UriSongList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/music/medialist/UriSongList;
    .locals 2
    .parameter "in"

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 63
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Lcom/google/android/music/medialist/UriSongList;

    invoke-direct {v1, v0}, Lcom/google/android/music/medialist/UriSongList;-><init>(Landroid/net/Uri;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/UriSongList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/music/medialist/UriSongList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/music/medialist/UriSongList;
    .locals 1
    .parameter "size"

    .prologue
    .line 67
    new-array v0, p1, [Lcom/google/android/music/medialist/UriSongList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/UriSongList$1;->newArray(I)[Lcom/google/android/music/medialist/UriSongList;

    move-result-object v0

    return-object v0
.end method
