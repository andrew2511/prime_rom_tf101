.class public Lcom/google/android/music/albumwall/MusicPile;
.super Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
.source "MusicPile.java"


# instance fields
.field private mLabel:Ljava/lang/String;

.field private mMode:I

.field private mOverlayLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "other"

    .prologue
    const/4 v6, 0x0

    .line 37
    if-nez p1, :cond_0

    move v2, v6

    .line 47
    :goto_0
    return v2

    .line 40
    :cond_0
    instance-of v2, p1, Lcom/google/android/music/albumwall/MusicPile;

    if-nez v2, :cond_1

    move v2, v6

    .line 41
    goto :goto_0

    .line 43
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/albumwall/MusicPile;

    move-object v1, v0

    .line 44
    .local v1, o:Lcom/google/android/music/albumwall/MusicPile;
    iget v2, v1, Lcom/google/android/music/albumwall/MusicPile;->mMode:I

    iget v3, p0, Lcom/google/android/music/albumwall/MusicPile;->mMode:I

    if-eq v2, v3, :cond_2

    move v2, v6

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicPile;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/google/android/music/albumwall/MusicPile;->mMode:I

    return v0
.end method

.method public getOverlayLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicPile;->mOverlayLabel:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 52
    iget v0, p0, Lcom/google/android/music/albumwall/MusicPile;->mMode:I

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    long-to-int v1, v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicPile;->mLabel:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 12
    iput p1, p0, Lcom/google/android/music/albumwall/MusicPile;->mMode:I

    .line 13
    return-void
.end method

.method public setOverlayLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "overlayLabel"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicPile;->mOverlayLabel:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyItem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/albumwall/MusicPile;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicPile;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicPile;->mOverlayLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicPile;->getSortKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
