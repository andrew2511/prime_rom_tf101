.class public Lcom/google/android/music/medialist/SingleSongList;
.super Lcom/google/android/music/medialist/SongList;
.source "SingleSongList.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/music/medialist/SingleSongList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mId:J

.field final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/google/android/music/medialist/SingleSongList$1;

    invoke-direct {v0}, Lcom/google/android/music/medialist/SingleSongList$1;-><init>()V

    sput-object v0, Lcom/google/android/music/medialist/SingleSongList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .parameter "songId"
    .parameter "name"

    .prologue
    .line 23
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/SongList;-><init>(I)V

    .line 24
    iput-wide p1, p0, Lcom/google/android/music/medialist/SingleSongList;->mId:J

    .line 25
    iput-object p3, p0, Lcom/google/android/music/medialist/SingleSongList;->mName:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getArgs()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/music/medialist/SingleSongList;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/music/medialist/SingleSongList;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/google/android/music/medialist/SingleSongList;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$XAudio;->getAudioUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/google/android/music/medialist/SingleSongList;->mId:J

    return-wide v0
.end method

.method public getItemLayout()I
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f040032

    return v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/medialist/SingleSongList;->mName:Ljava/lang/String;

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
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public storeDefaultSortOrder(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported for SingleSongList"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/android/music/medialist/SingleSongList;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    iget-object v0, p0, Lcom/google/android/music/medialist/SingleSongList;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return-void
.end method
