.class public Lcom/google/android/music/medialist/AllSongsList;
.super Lcom/google/android/music/medialist/SongList;
.source "AllSongsList.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/music/medialist/AllSongsList;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AllSongsList"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/google/android/music/medialist/AllSongsList$1;

    invoke-direct {v0}, Lcom/google/android/music/medialist/AllSongsList$1;-><init>()V

    sput-object v0, Lcom/google/android/music/medialist/AllSongsList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "sortOrder"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/music/medialist/SongList;-><init>(I)V

    .line 25
    return-void
.end method


# virtual methods
.method public getArgs()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/music/medialist/AllSongsList;->getSortOrder()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .parameter "context"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/android/music/medialist/AllSongsList;->getSortParam()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, sortParam:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$XAudio;->getAudioSorted(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getImage(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x0

    .line 67
    const/4 v1, 0x3

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p1

    move v5, p2

    move v6, p3

    move-object v8, v7

    invoke-static/range {v0 .. v8}, Lcom/google/android/music/utils/AlbumArtUtils;->getFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getItemLayout()I
    .locals 1

    .prologue
    .line 90
    const v0, 0x7f040032

    return v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    const-string v0, "All songs"

    return-object v0
.end method

.method public getSecondaryName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    const-string v0, ""

    return-object v0
.end method

.method public getValidSortOrders()Ljava/util/ArrayList;
    .locals 2
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
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v0, orders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    return-object v0
.end method

.method public storeDefaultSortOrder(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    invoke-static {p1}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/medialist/AllSongsList;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setAllSongsSortOrder(I)V

    .line 38
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/android/music/medialist/AllSongsList;->getSortOrder()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return-void
.end method
