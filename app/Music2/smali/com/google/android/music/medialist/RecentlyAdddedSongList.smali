.class public Lcom/google/android/music/medialist/RecentlyAdddedSongList;
.super Lcom/google/android/music/medialist/SongList;
.source "RecentlyAdddedSongList.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/music/medialist/RecentlyAdddedSongList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/google/android/music/medialist/RecentlyAdddedSongList$1;

    invoke-direct {v0}, Lcom/google/android/music/medialist/RecentlyAdddedSongList$1;-><init>()V

    sput-object v0, Lcom/google/android/music/medialist/RecentlyAdddedSongList;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/music/medialist/RecentlyAdddedSongList;->getSortOrder()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 4
    .parameter "context"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/android/music/medialist/RecentlyAdddedSongList;->getSortParam()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, sortParam:Ljava/lang/String;
    const-string v2, "numweeks"

    const/4 v3, 0x2

    invoke-static {p1, v2, v3}, Lcom/google/android/music/MusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    mul-int/lit8 v0, v2, 0x7

    .line 65
    .local v0, days:I
    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContent$XAudio;->getRecentAudioUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public getImage(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x1

    .line 57
    const-wide/16 v3, -0x1

    const v0, 0x7f0c0064

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, p1

    move v2, v1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v8}, Lcom/google/android/music/utils/AlbumArtUtils;->getFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getItemLayout()I
    .locals 1

    .prologue
    .line 87
    const v0, 0x7f040036

    return v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    const v0, 0x7f0c0065

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const v0, 0x7f0c009d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

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
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v0, orders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    return-object v0
.end method

.method public storeDefaultSortOrder(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    invoke-static {p1}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/medialist/RecentlyAdddedSongList;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setRecentlyAddedSongsSortOrder(I)V

    .line 48
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/android/music/medialist/RecentlyAdddedSongList;->getSortOrder()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    return-void
.end method
