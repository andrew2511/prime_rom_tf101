.class public Lcom/google/android/music/medialist/ArtistAlbumList;
.super Lcom/google/android/music/medialist/AlbumList;
.source "ArtistAlbumList.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/music/medialist/ArtistAlbumList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mArtistId:J

.field mArtistName:Ljava/lang/String;

.field mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/google/android/music/medialist/ArtistAlbumList$1;

    invoke-direct {v0}, Lcom/google/android/music/medialist/ArtistAlbumList$1;-><init>()V

    sput-object v0, Lcom/google/android/music/medialist/ArtistAlbumList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .parameter "artistId"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/music/medialist/AlbumList;-><init>()V

    .line 33
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid artist id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iput-wide p1, p0, Lcom/google/android/music/medialist/ArtistAlbumList;->mArtistId:J

    .line 37
    return-void
.end method

.method private getNames(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 50
    iget-object v0, p0, Lcom/google/android/music/medialist/ArtistAlbumList;->mArtistName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 51
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "artist"

    aput-object v0, v2, v7

    .line 54
    .local v2, cols:[Ljava/lang/String;
    iget-wide v0, p0, Lcom/google/android/music/medialist/ArtistAlbumList;->mArtistId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Artists;->getArtistsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 56
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 57
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 58
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/ArtistAlbumList;->mArtistName:Ljava/lang/String;

    .line 61
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/medialist/ArtistAlbumList;->mArtistName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    const v0, 0x7f0c0068

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/ArtistAlbumList;->mArtistName:Ljava/lang/String;

    .line 67
    .end local v2           #cols:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2
    return-void
.end method


# virtual methods
.method public getArgs()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/music/medialist/ArtistAlbumList;->mArtistId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/google/android/music/medialist/ArtistAlbumList;->mArtistId:J

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContent$Artists;->getAlbumsByArtistsUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemLayout()I
    .locals 1

    .prologue
    .line 107
    const v0, 0x7f040016

    return v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/music/medialist/ArtistAlbumList;->getNames(Landroid/content/Context;)V

    .line 72
    iget-object v0, p0, Lcom/google/android/music/medialist/ArtistAlbumList;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/google/android/music/medialist/ArtistAlbumList;->mArtistId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 91
    return-void
.end method
