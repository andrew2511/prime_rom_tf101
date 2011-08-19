.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CardRecord"
.end annotation


# static fields
.field public static final TYPE_ALBUM:I = 0x1

.field public static final TYPE_PLAYLIST:I = 0x2

.field public static final TYPE_SHUFFLE_ALL:I


# instance fields
.field mAlbum:Ljava/lang/String;

.field mAlbumId:J

.field mArtist:Ljava/lang/String;

.field mListId:J

.field mListName:Ljava/lang/String;

.field mType:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createAlbumCardRecord(JLjava/lang/String;Ljava/lang/String;)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    .locals 2
    .parameter "albumId"
    .parameter "album"
    .parameter "artist"

    .prologue
    .line 159
    new-instance v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    invoke-direct {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;-><init>()V

    .line 160
    .local v0, c:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    .line 161
    iput-wide p0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    .line 162
    iput-object p2, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbum:Ljava/lang/String;

    .line 163
    iput-object p3, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mArtist:Ljava/lang/String;

    .line 164
    return-object v0
.end method

.method static createListCardRecord(JLjava/lang/String;)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    .locals 2
    .parameter "listId"
    .parameter "listName"

    .prologue
    .line 168
    new-instance v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    invoke-direct {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;-><init>()V

    .line 169
    .local v0, c:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    .line 170
    iput-wide p0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    .line 171
    iput-object p2, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListName:Ljava/lang/String;

    .line 172
    return-object v0
.end method

.method static createShuffleAllCardRecord()Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    invoke-direct {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;-><init>()V

    .line 154
    .local v0, c:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    .line 155
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "other"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 177
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    move-object v1, v0

    .line 178
    .local v1, o:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    iget v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    iget v3, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    if-eq v2, v3, :cond_0

    move v2, v6

    .line 189
    :goto_0
    return v2

    .line 181
    :cond_0
    iget v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 192
    new-instance v2, Ljava/lang/InternalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    move v2, v7

    .line 183
    goto :goto_0

    .line 185
    :pswitch_1
    iget-wide v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    iget-wide v4, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbum:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mArtist:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mArtist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v7

    goto :goto_0

    :cond_1
    move v2, v6

    goto :goto_0

    .line 189
    :pswitch_2
    iget-wide v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    iget-wide v4, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListName:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v7

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 198
    iget v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 206
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :pswitch_0
    const/4 v0, 0x0

    .line 204
    :goto_0
    return v0

    .line 202
    :pswitch_1
    iget-wide v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    long-to-int v0, v0

    goto :goto_0

    .line 204
    :pswitch_2
    iget-wide v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    long-to-int v0, v0

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 211
    iget v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 219
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :pswitch_0
    const-string v0, "ShuffleAll"

    .line 217
    :goto_0
    return-object v0

    .line 215
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Album("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mArtist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 217
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Playlist("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
