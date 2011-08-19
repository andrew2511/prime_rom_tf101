.class public Lcom/google/android/music/medialist/UriSongList;
.super Lcom/google/android/music/medialist/SongList;
.source "UriSongList.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/music/medialist/UriSongList;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UriSongList"


# instance fields
.field mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/google/android/music/medialist/UriSongList$1;

    invoke-direct {v0}, Lcom/google/android/music/medialist/UriSongList$1;-><init>()V

    sput-object v0, Lcom/google/android/music/medialist/UriSongList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 22
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/SongList;-><init>(I)V

    .line 23
    iput-object p1, p0, Lcom/google/android/music/medialist/UriSongList;->mUri:Landroid/net/Uri;

    .line 24
    return-void
.end method


# virtual methods
.method public getArgs()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, uriString:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/music/medialist/UriSongList;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/google/android/music/medialist/UriSongList;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/music/medialist/UriSongList;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getItemLayout()I
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f040032

    return v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValidSortOrders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public storeDefaultSortOrder(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported for UriSongList"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/music/medialist/UriSongList;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return-void
.end method
