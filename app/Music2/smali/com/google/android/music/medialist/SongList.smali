.class public abstract Lcom/google/android/music/medialist/SongList;
.super Lcom/google/android/music/medialist/MediaList;
.source "SongList.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/music/medialist/SongList;",
            ">;"
        }
    .end annotation
.end field

.field public static final SORT_BY_ALBUM:I = 0x2

.field public static final SORT_BY_ARTIST:I = 0x3

.field public static final SORT_BY_NATURAL_ORDER:I = 0x0

.field public static final SORT_BY_TITLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SongList"


# instance fields
.field protected mSortOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/music/medialist/SongList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "sortOrder"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/music/medialist/MediaList;-><init>()V

    .line 42
    iput p1, p0, Lcom/google/android/music/medialist/SongList;->mSortOrder:I

    .line 43
    return-void
.end method


# virtual methods
.method public appendToPlaylist(Landroid/content/ContentResolver;J)I
    .locals 2
    .parameter "resolver"
    .parameter "playlistId"

    .prologue
    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "appending to playlist not supported by base SongList"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public containsRemoteItems(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getItemLayout()I
    .locals 1

    .prologue
    .line 152
    const v0, 0x7f040032

    return v0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/music/medialist/SongList;->mSortOrder:I

    return v0
.end method

.method protected getSortParam()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    iget v1, p0, Lcom/google/android/music/medialist/SongList;->mSortOrder:I

    packed-switch v1, :pswitch_data_0

    .line 66
    const/4 v0, 0x0

    .line 69
    .local v0, sortParam:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 57
    .end local v0           #sortParam:Ljava/lang/String;
    :pswitch_0
    const-string v0, "name"

    .line 58
    .restart local v0       #sortParam:Ljava/lang/String;
    goto :goto_0

    .line 60
    .end local v0           #sortParam:Ljava/lang/String;
    :pswitch_1
    const-string v0, "album"

    .line 61
    .restart local v0       #sortParam:Ljava/lang/String;
    goto :goto_0

    .line 63
    .end local v0           #sortParam:Ljava/lang/String;
    :pswitch_2
    const-string v0, "artist"

    .line 64
    .restart local v0       #sortParam:Ljava/lang/String;
    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public abstract getValidSortOrders()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public hasMetaData()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public isSelectedForOfflineCaching(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public isSelectedForOfflineCaching(Landroid/content/Context;Lcom/google/android/music/OfflineMusicManager;)Z
    .locals 1
    .parameter "context"
    .parameter "offlineMusicManager"

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public modifyOfflineStatus(Lcom/google/android/music/OfflineMusicManager;Landroid/content/Context;Z)V
    .locals 0
    .parameter "offlineMusicManager"
    .parameter "context"
    .parameter "selected"

    .prologue
    .line 148
    return-void
.end method

.method public refreshMetaData(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no metadata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerMetaDataObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "context"
    .parameter "observer"

    .prologue
    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no metadata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSortOrder(I)V
    .locals 0
    .parameter "order"

    .prologue
    .line 46
    iput p1, p0, Lcom/google/android/music/medialist/SongList;->mSortOrder:I

    .line 47
    return-void
.end method

.method public abstract storeDefaultSortOrder(Landroid/content/Context;)V
.end method

.method public supportsOfflineCaching()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterMetaDataObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "context"
    .parameter "observer"

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 99
    return-void
.end method
