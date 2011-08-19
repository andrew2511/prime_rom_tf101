.class public Lcom/google/android/music/albumwall/MusicItem;
.super Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
.source "MusicItem.java"


# static fields
.field public static final TYPE_ALBUM:I = 0x0

.field public static final TYPE_ALL_SONGS_ARTIST:I = 0x1

.field public static final TYPE_ALL_SONGS_GENRE:I = 0x2

.field public static final TYPE_PLAYLIST:I = 0x3


# instance fields
.field private mAlbumId:J

.field private mArtistId:J

.field private mMainLabel:Ljava/lang/String;

.field private mOverlayLabel:Ljava/lang/String;

.field private mSubLabel:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "other"

    .prologue
    const/4 v6, 0x0

    .line 86
    instance-of v2, p1, Lcom/google/android/music/albumwall/MusicItem;

    if-nez v2, :cond_0

    move v2, v6

    .line 90
    :goto_0
    return v2

    .line 89
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/albumwall/MusicItem;

    move-object v1, v0

    .line 90
    .local v1, o:Lcom/google/android/music/albumwall/MusicItem;
    iget v2, v1, Lcom/google/android/music/albumwall/MusicItem;->mType:I

    iget v3, p0, Lcom/google/android/music/albumwall/MusicItem;->mType:I

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v6

    goto :goto_0
.end method

.method public getAlbumId()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/google/android/music/albumwall/MusicItem;->mAlbumId:J

    return-wide v0
.end method

.method public getArtistId()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/google/android/music/albumwall/MusicItem;->mArtistId:J

    return-wide v0
.end method

.method public getMainLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicItem;->mMainLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicItem;->mOverlayLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getSubLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicItem;->mSubLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/music/albumwall/MusicItem;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 95
    iget v0, p0, Lcom/google/android/music/albumwall/MusicItem;->mType:I

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v1

    long-to-int v1, v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isItemAllSongs()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 29
    iget v0, p0, Lcom/google/android/music/albumwall/MusicItem;->mType:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/music/albumwall/MusicItem;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    .line 32
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlbumId(J)V
    .locals 0
    .parameter "albumId"

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/google/android/music/albumwall/MusicItem;->mAlbumId:J

    .line 46
    return-void
.end method

.method public setArtistId(J)V
    .locals 0
    .parameter "artistId"

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/google/android/music/albumwall/MusicItem;->mArtistId:J

    .line 54
    return-void
.end method

.method public setMainLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "mainLabel"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicItem;->mMainLabel:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setOverlayLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "overlayLabel"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicItem;->mOverlayLabel:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setSubLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "subLabel"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicItem;->mSubLabel:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 37
    iput p1, p0, Lcom/google/android/music/albumwall/MusicItem;->mType:I

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyItem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/albumwall/MusicItem;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicItem;->mMainLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicItem;->mSubLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicItem;->getOverlayLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicItem;->getHasRemote()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicItem;->getKeepOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicItem;->getSortKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
