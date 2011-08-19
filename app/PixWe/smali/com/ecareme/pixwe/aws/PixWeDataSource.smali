.class public Lcom/ecareme/pixwe/aws/PixWeDataSource;
.super Ljava/lang/Object;
.source "PixWeDataSource.java"

# interfaces
.implements Lcom/ecareme/pixwe/media/DataSource;


# static fields
.field private static final TAG:Ljava/lang/String; = "TAG"

.field public static final sThumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;


# instance fields
.field folderInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private keyword:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDone:Z

.field private mIncludeImages:Z

.field private mIncludeVideos:Z

.field private mProviderClient:Landroid/content/ContentProviderClient;

.field numOfAlbum:I

.field pwdh:Lnet/yostore/aws/handler/PixWeDataHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/ecareme/pixwe/media/DiskCache;

    const-string v1, "pixwe-thumbs"

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/DiskCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->sThumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->numOfAlbum:I

    .line 52
    iput-object p1, p0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mContext:Landroid/content/Context;

    .line 53
    iget-object v0, p0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.ecareme.contentprovider.pixwe"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/pixwe/aws/PixWeDataSource;->query(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method private addItemsToFeed(Lcom/ecareme/pixwe/media/MediaFeed;Lcom/ecareme/pixwe/media/MediaSet;II)V
    .locals 21
    .parameter "feed"
    .parameter "set"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mProviderClient:Landroid/content/ContentProviderClient;

    move-object v3, v0

    .line 130
    .local v3, client:Landroid/content/ContentProviderClient;
    const/4 v12, 0x0

    .line 131
    .local v12, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "PixWePrefs"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 132
    .local v18, mPrefs:Landroid/content/SharedPreferences;
    invoke-static/range {v18 .. v18}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v9

    .line 133
    .local v9, apicfg:Lnet/yostore/aws/api/ApiConfig;
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    move-wide v15, v0

    .line 135
    .local v15, id:J
    :try_start_0
    sget-object v4, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->MEDIA_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    move-wide v5, v0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 136
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 137
    .local v11, count:I
    move v0, v11

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 138
    move/from16 p4, v11

    .line 140
    :cond_0
    move-object/from16 v0, p2

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaSet;->setNumExpectedItems(I)V

    .line 141
    const/4 v4, 0x1

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaSet;->generateTitle(Z)V

    .line 143
    add-int/lit8 v20, p3, 0x1

    .line 144
    .local v20, newIndex:I
    move/from16 v0, v20

    move v1, v11

    if-gt v0, v1, :cond_1

    move-object v0, v12

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->move(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 145
    :cond_1
    const/16 p4, 0x0

    .line 146
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 147
    invoke-virtual/range {p2 .. p2}, Lcom/ecareme/pixwe/media/MediaSet;->updateNumExpectedItems()V

    .line 148
    const/4 v4, 0x1

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaSet;->generateTitle(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    if-eqz v12, :cond_2

    .line 208
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 211
    .end local v11           #count:I
    .end local v20           #newIndex:I
    :cond_2
    :goto_0
    return-void

    .line 151
    .restart local v11       #count:I
    .restart local v20       #newIndex:I
    :cond_3
    :try_start_1
    move-object/from16 v0, p2

    iget v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mNumItemsLoaded:I

    move v4, v0

    if-nez v4, :cond_4

    .line 152
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 154
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_5

    .line 155
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move v0, v14

    move/from16 v1, p4

    if-lt v0, v1, :cond_6

    .line 207
    .end local v14           #i:I
    :cond_5
    if-eqz v12, :cond_2

    .line 208
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 170
    .restart local v14       #i:I
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/aws/PixWeDataSource;->createMediaInfoBean(Landroid/database/Cursor;)Lnet/yostore/aws/handler/entity/MediaInfoBean;

    move-result-object v19

    .line 171
    .local v19, media:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    new-instance v17, Lcom/ecareme/pixwe/media/MediaItem;

    invoke-direct/range {v17 .. v17}, Lcom/ecareme/pixwe/media/MediaItem;-><init>()V

    .line 172
    .local v17, item:Lcom/ecareme/pixwe/media/MediaItem;
    invoke-virtual/range {v19 .. v19}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getI()J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    .line 173
    new-instance v10, Lnet/yostore/aws/handler/AwsPhotoThumb;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-direct {v10, v9, v4}, Lnet/yostore/aws/handler/AwsPhotoThumb;-><init>(Lnet/yostore/aws/api/ApiConfig;Landroid/content/Context;)V

    .line 174
    .local v10, apt:Lnet/yostore/aws/handler/AwsPhotoThumb;
    move-object v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/AwsPhotoThumb;->getLargeImg(Lnet/yostore/aws/handler/entity/MediaInfoBean;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    .line 176
    move-object v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/AwsPhotoThumb;->getLargeImg(Lnet/yostore/aws/handler/entity/MediaInfoBean;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MediaItem;->mScreennailUri:Ljava/lang/String;

    .line 177
    move-object v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/AwsPhotoThumb;->getThumb(Lnet/yostore/aws/handler/entity/MediaInfoBean;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MediaItem;->mThumbnailUri:Ljava/lang/String;

    .line 179
    invoke-virtual/range {v19 .. v19}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getD()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MediaItem;->mCaption:Ljava/lang/String;

    .line 180
    invoke-virtual/range {v19 .. v19}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getR()I

    move-result v4

    int-to-float v4, v4

    move v0, v4

    move-object/from16 v1, v17

    iput v0, v1, Lcom/ecareme/pixwe/media/MediaItem;->mRotation:F

    .line 181
    invoke-virtual/range {v19 .. v19}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getUs()I

    move-result v4

    move v0, v4

    move-object/from16 v1, v17

    iput v0, v1, Lcom/ecareme/pixwe/media/MediaItem;->mUploadState:I

    .line 182
    invoke-virtual/range {v19 .. v19}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getEn()I

    move-result v4

    move v0, v4

    move-object/from16 v1, v17

    iput v0, v1, Lcom/ecareme/pixwe/media/MediaItem;->mVideoTranscodeState:I

    .line 183
    invoke-virtual/range {v19 .. v19}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getTy()I

    move-result v4

    if-nez v4, :cond_7

    .line 184
    const-string v4, "image/jpeg"

    move-object v0, v4

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MediaItem;->mMimeType:Ljava/lang/String;

    .line 185
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v17

    iput v0, v1, Lcom/ecareme/pixwe/media/MediaItem;->mMediaType:I

    .line 192
    :goto_2
    invoke-virtual/range {v19 .. v19}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getDa()J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/ecareme/pixwe/media/MediaItem;->mDateModifiedInSec:J

    .line 193
    invoke-virtual/range {v19 .. v19}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getNo()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MediaItem;->mDescription:Ljava/lang/String;

    .line 194
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MediaItem;->mFilePath:Ljava/lang/String;

    .line 196
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/MediaFeed;->addItemToMediaSet(Lcom/ecareme/pixwe/media/MediaItem;Lcom/ecareme/pixwe/media/MediaSet;)V

    .line 197
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 155
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 188
    :cond_7
    const-string v4, "image/mp4"

    move-object v0, v4

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MediaItem;->mMimeType:Ljava/lang/String;

    .line 189
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, v17

    iput v0, v1, Lcom/ecareme/pixwe/media/MediaItem;->mMediaType:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 204
    .end local v10           #apt:Lnet/yostore/aws/handler/AwsPhotoThumb;
    .end local v11           #count:I
    .end local v14           #i:I
    .end local v17           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v19           #media:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    .end local v20           #newIndex:I
    :catch_0
    move-exception v4

    move-object v13, v4

    .line 205
    .local v13, e:Ljava/lang/Exception;
    :try_start_3
    const-string v4, "TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error occurred loading photos for album "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 207
    if-eqz v12, :cond_2

    .line 208
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 206
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 207
    if-eqz v12, :cond_8

    .line 208
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_8
    throw v4
.end method

.method private createFolderInfo(Landroid/database/Cursor;)Lnet/yostore/aws/api/entity/FolderInfo;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 311
    new-instance v0, Lnet/yostore/aws/api/entity/FolderInfo;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/FolderInfo;-><init>()V

    .line 312
    .local v0, album:Lnet/yostore/aws/api/entity/FolderInfo;
    const-string v1, "album_folder"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setId(Ljava/lang/String;)V

    .line 313
    const-string v1, "album_folder_dispaly"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setDisplay(Ljava/lang/String;)V

    .line 315
    return-object v0
.end method

.method private createMediaInfo(Landroid/database/Cursor;)Lnet/yostore/aws/api/entity/MediaInfoEntity;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 279
    new-instance v0, Lnet/yostore/aws/api/entity/MediaInfoEntity;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/MediaInfoEntity;-><init>()V

    .line 280
    .local v0, media:Lnet/yostore/aws/api/entity/MediaInfoEntity;
    const-string v1, "file_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->setI(J)V

    .line 281
    const-string v1, "file_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->setD(Ljava/lang/String;)V

    .line 282
    const-string v1, "file_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->setTy(I)V

    .line 283
    const-string v1, "note"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->setNo(Ljava/lang/String;)V

    .line 284
    const-string v1, "file_modify_time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->setDa(J)V

    .line 285
    const-string v1, "rotate"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->setR(I)V

    .line 286
    const-string v1, "transcode_status"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->setEn(I)V

    .line 287
    const-string v1, "upload_status"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->setUs(I)V

    .line 288
    const-string v1, "import_from"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->setFr(I)V

    .line 290
    return-object v0
.end method

.method private createMediaInfoBean(Landroid/database/Cursor;)Lnet/yostore/aws/handler/entity/MediaInfoBean;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 294
    new-instance v0, Lnet/yostore/aws/handler/entity/MediaInfoBean;

    invoke-direct {v0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;-><init>()V

    .line 295
    .local v0, mediaInfoBean:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setId(J)V

    .line 296
    const-string v1, "album_folder"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setMediaInfoFolder(J)V

    .line 297
    const-string v1, "username"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUserName(Ljava/lang/String;)V

    .line 298
    const-string v1, "file_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setI(J)V

    .line 299
    const-string v1, "file_modify_time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setDa(J)V

    .line 300
    const-string v1, "file_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setD(Ljava/lang/String;)V

    .line 301
    const-string v1, "file_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setTy(I)V

    .line 302
    const-string v1, "rotate"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setR(I)V

    .line 303
    const-string v1, "note"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setNo(Ljava/lang/String;)V

    .line 304
    const-string v1, "transcode_status"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setEn(I)V

    .line 305
    const-string v1, "upload_status"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUs(I)V

    .line 306
    const-string v1, "import_from"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setFr(I)V

    .line 307
    return-object v0
.end method

.method public static getBucketId(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 439
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method private getMediasFromCloudGallery()V
    .locals 19

    .prologue
    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mContext:Landroid/content/Context;

    move-object v2, v0

    const-string v3, "PixWePrefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 446
    .local v16, mPrefs:Landroid/content/SharedPreferences;
    invoke-static/range {v16 .. v16}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v8

    .line 447
    .local v8, apicfg:Lnet/yostore/aws/api/ApiConfig;
    new-instance v2, Lnet/yostore/aws/handler/PixWeDataHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-direct {v2, v3, v8}, Lnet/yostore/aws/handler/PixWeDataHandler;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/aws/PixWeDataSource;->pwdh:Lnet/yostore/aws/handler/PixWeDataHandler;

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->pwdh:Lnet/yostore/aws/handler/PixWeDataHandler;

    move-object v2, v0

    invoke-virtual {v2}, Lnet/yostore/aws/handler/PixWeDataHandler;->getAlbums()Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/aws/PixWeDataSource;->folderInfos:Ljava/util/List;

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->folderInfos:Ljava/util/List;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/aws/PixWeDataSource;->numOfAlbum:I

    .line 452
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->numOfAlbum:I

    move v2, v0

    if-lt v13, v2, :cond_0

    .line 522
    return-void

    .line 453
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->folderInfos:Ljava/util/List;

    move-object v2, v0

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/yostore/aws/api/entity/FolderInfo;

    .line 471
    .local v12, folderInfo:Lnet/yostore/aws/api/entity/FolderInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mProviderClient:Landroid/content/ContentProviderClient;

    move-object v2, v0

    sget-object v3, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "album_folder="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 472
    .local v9, c:Landroid/database/Cursor;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 473
    .local v10, contentValues:Landroid/content/ContentValues;
    const-string v2, "album_folder"

    invoke-virtual {v12}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v2, "album_folder_dispaly"

    invoke-virtual {v12}, Lnet/yostore/aws/api/entity/FolderInfo;->getDisplay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mProviderClient:Landroid/content/ContentProviderClient;

    move-object v2, v0

    sget-object v3, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v10}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 480
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #contentValues:Landroid/content/ContentValues;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->pwdh:Lnet/yostore/aws/handler/PixWeDataHandler;

    move-object v2, v0

    invoke-virtual {v12}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lnet/yostore/aws/handler/PixWeDataHandler;->getMediasInfoBeanList(J)Ljava/util/List;

    move-result-object v18

    .line 488
    .local v18, mediaInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v15

    .line 490
    .local v15, len:I
    const/4 v14, 0x0

    .local v14, j:I
    :goto_3
    if-lt v14, v15, :cond_2

    .line 452
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 478
    .end local v14           #j:I
    .end local v15           #len:I
    .end local v18           #mediaInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v10       #contentValues:Landroid/content/ContentValues;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mProviderClient:Landroid/content/ContentProviderClient;

    move-object v2, v0

    sget-object v3, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v10, v4, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 481
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #contentValues:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    move-object v11, v2

    .line 483
    .local v11, e:Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 491
    .end local v11           #e:Landroid/os/RemoteException;
    .restart local v14       #j:I
    .restart local v15       #len:I
    .restart local v18       #mediaInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    :cond_2
    move-object/from16 v0, v18

    move v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lnet/yostore/aws/api/entity/MediaInfoEntity;

    .line 504
    .local v17, mediaInfo:Lnet/yostore/aws/api/entity/MediaInfoEntity;
    :try_start_2
    sget-object v2, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->MEDIA_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->getI()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 505
    .local v3, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mProviderClient:Landroid/content/ContentProviderClient;

    move-object v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 506
    .restart local v9       #c:Landroid/database/Cursor;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 507
    .restart local v10       #contentValues:Landroid/content/ContentValues;
    const-string v2, "file_id"

    invoke-virtual/range {v17 .. v17}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->getI()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .end local v3           #uri:Landroid/net/Uri;
    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 508
    const-string v2, "album_folder"

    invoke-virtual {v12}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mProviderClient:Landroid/content/ContentProviderClient;

    move-object v2, v0

    sget-object v3, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->MEDIA_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v10}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 515
    .restart local v3       #uri:Landroid/net/Uri;
    :goto_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 490
    .end local v3           #uri:Landroid/net/Uri;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #contentValues:Landroid/content/ContentValues;
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 512
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v10       #contentValues:Landroid/content/ContentValues;
    :cond_3
    sget-object v2, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->MEDIA_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->getI()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 513
    .restart local v3       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mProviderClient:Landroid/content/ContentProviderClient;

    move-object v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v10, v4, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 516
    .end local v3           #uri:Landroid/net/Uri;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #contentValues:Landroid/content/ContentValues;
    :catch_1
    move-exception v2

    move-object v11, v2

    .line 518
    .restart local v11       #e:Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public static query(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.ecareme.contentprovider.pixwe"

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 72
    .local v0, cp:Landroid/content/ContentProviderClient;
    :try_start_0
    sget-object v1, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 73
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    :cond_0
    const-string v1, "album_folder_dispaly"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 76
    .local v11, name:Ljava/lang/String;
    const-string v1, "album_folder"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 77
    .local v9, id:J
    sget-object v1, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->ALBUM_MEDIAS_URI:Landroid/net/Uri;

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 78
    .local v7, c2:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    :cond_1
    const-string v1, "file_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 82
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 79
    if-nez v1, :cond_1

    .line 84
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 86
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 74
    if-nez v1, :cond_0

    .line 88
    .end local v7           #c2:Landroid/database/Cursor;
    .end local v9           #id:J
    .end local v11           #name:Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 91
    .local v8, e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getDatabaseUris()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->ALBUM_MEDIAS_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailCache()Lcom/ecareme/pixwe/media/DiskCache;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->sThumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;

    return-object v0
.end method

.method public loadItemsForSet(Lcom/ecareme/pixwe/media/MediaFeed;Lcom/ecareme/pixwe/media/MediaSet;II)V
    .locals 0
    .parameter "feed"
    .parameter "parentSet"
    .parameter "rangeStart"
    .parameter "rangeEnd"

    .prologue
    .line 110
    if-nez p2, :cond_0

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ecareme/pixwe/aws/PixWeDataSource;->addItemsToFeed(Lcom/ecareme/pixwe/media/MediaFeed;Lcom/ecareme/pixwe/media/MediaSet;II)V

    goto :goto_0
.end method

.method public loadMediaSets(Lcom/ecareme/pixwe/media/MediaFeed;)V
    .locals 1
    .parameter "feed"

    .prologue
    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ecareme/pixwe/aws/PixWeDataSource;->loadMediaSetsIntoFeed(Lcom/ecareme/pixwe/media/MediaFeed;Z)V

    .line 216
    return-void
.end method

.method protected loadMediaSetsIntoFeed(Lcom/ecareme/pixwe/media/MediaFeed;Z)V
    .locals 12
    .parameter "feed"
    .parameter "sync"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 221
    .local v0, client:Landroid/content/ContentProviderClient;
    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 225
    :cond_0
    const/4 v7, 0x0

    .line 226
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->keyword:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->keyword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 227
    :cond_1
    sget-object v1, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "album_folder_dispaly asc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 234
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 235
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 236
    .local v11, numAlbums:I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 239
    .local v10, medisSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    :cond_2
    invoke-direct {p0, v7}, Lcom/ecareme/pixwe/aws/PixWeDataSource;->createFolderInfo(Landroid/database/Cursor;)Lnet/yostore/aws/api/entity/FolderInfo;

    move-result-object v6

    .line 240
    .local v6, album:Lnet/yostore/aws/api/entity/FolderInfo;
    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/ecareme/pixwe/media/MediaFeed;->getMediaSet(J)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v9

    .line 241
    .local v9, mediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    if-nez v9, :cond_6

    .line 242
    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2, p0}, Lcom/ecareme/pixwe/media/MediaFeed;->addMediaSet(JLcom/ecareme/pixwe/media/DataSource;)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v9

    .line 243
    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/FolderInfo;->getDisplay()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    .line 244
    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/FolderInfo;->getIssharing()Z

    move-result v1

    iput-boolean v1, v9, Lcom/ecareme/pixwe/media/MediaSet;->isShared:Z

    .line 245
    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/FolderInfo;->getIsowner()Z

    move-result v1

    iput-boolean v1, v9, Lcom/ecareme/pixwe/media/MediaSet;->isOwner:Z

    .line 247
    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/ecareme/pixwe/media/MediaSet;->mIsLocal:Z

    .line 248
    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/FolderInfo;->getCreatedtime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 249
    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/FolderInfo;->getCreatedtime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v9, Lcom/ecareme/pixwe/media/MediaSet;->mMinTimestamp:J

    iput-wide v1, v9, Lcom/ecareme/pixwe/media/MediaSet;->mMaxTimestamp:J

    .line 251
    :cond_3
    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/FolderInfo;->getIsowner()Z

    move-result v1

    iput-boolean v1, v9, Lcom/ecareme/pixwe/media/MediaSet;->isOwner:Z

    .line 252
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lcom/ecareme/pixwe/media/MediaSet;->generateTitle(Z)V

    .line 256
    :goto_2
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 238
    if-nez v1, :cond_2

    .line 259
    .end local v6           #album:Lnet/yostore/aws/api/entity/FolderInfo;
    .end local v9           #mediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    .end local v10           #medisSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .end local v11           #numAlbums:I
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 260
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 261
    .local v8, e:Landroid/os/RemoteException;
    const-string v1, "TAG"

    const-string v2, "Error occurred loading albums"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 230
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_5
    :try_start_1
    sget-object v1, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->ALBUM_SEARCH_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->keyword:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "album_folder_dispaly asc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto/16 :goto_1

    .line 254
    .restart local v6       #album:Lnet/yostore/aws/api/entity/FolderInfo;
    .restart local v9       #mediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    .restart local v10       #medisSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .restart local v11       #numAlbums:I
    :cond_6
    invoke-virtual {v9, v11}, Lcom/ecareme/pixwe/media/MediaSet;->setNumExpectedItems(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)Z
    .locals 25
    .parameter "operation"
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaBucket;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 321
    .local p2, mediaBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 322
    .local v16, numBuckets:I
    packed-switch p1, :pswitch_data_0

    .line 408
    const/16 v22, 0x0

    :goto_0
    return v22

    .line 324
    :pswitch_0
    if-eqz p3, :cond_1

    .line 325
    move-object/from16 v0, p3

    check-cast v0, Lcom/ecareme/pixwe/media/MediaItem;

    move-object v10, v0

    .line 326
    .local v10, item:Lcom/ecareme/pixwe/media/MediaItem;
    move-object v0, v10

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    move-object/from16 v20, v0

    .line 327
    .local v20, set:Lcom/ecareme/pixwe/media/MediaSet;
    sget-object v22, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->MEDIA_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    move-object v0, v10

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 328
    .local v21, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 329
    .local v18, result:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    move-wide/from16 v23, v0

    invoke-static/range {v22 .. v24}, Lcom/ecareme/pixwe/PixWe;->updateDBFlg(Landroid/content/Context;J)V

    .line 330
    invoke-virtual/range {v20 .. v20}, Lcom/ecareme/pixwe/media/MediaSet;->updateNumExpectedItems()V

    .line 331
    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaSet;->generateTitle(Z)V

    .line 332
    invoke-static {}, Lcom/ecareme/pixwe/cache/CacheService;->markDirty()V

    .line 369
    .end local v10           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v18           #result:I
    .end local v20           #set:Lcom/ecareme/pixwe/media/MediaSet;
    .end local v21           #uri:Landroid/net/Uri;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/ecareme/pixwe/aws/PixWeDataSource;->query(Landroid/content/Context;)V

    .line 370
    const/16 v22, 0x1

    goto :goto_0

    .line 335
    :cond_1
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    move v0, v9

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 336
    move-object/from16 v0, p2

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ecareme/pixwe/media/MediaBucket;

    .line 337
    .local v6, bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    move-object v0, v6

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    move-object/from16 v20, v0

    .line 338
    .restart local v20       #set:Lcom/ecareme/pixwe/media/MediaSet;
    iget-object v11, v6, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 339
    .local v11, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    if-eqz v20, :cond_2

    if-nez v11, :cond_2

    .line 342
    sget-object v22, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 343
    .restart local v21       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 344
    .restart local v18       #result:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    move-wide/from16 v23, v0

    invoke-static/range {v22 .. v24}, Lcom/ecareme/pixwe/PixWe;->updateDBFlg(Landroid/content/Context;J)V

    .line 345
    invoke-static {}, Lcom/ecareme/pixwe/cache/CacheService;->markDirty()V

    .line 347
    .end local v18           #result:I
    .end local v21           #uri:Landroid/net/Uri;
    :cond_2
    if-eqz v20, :cond_3

    if-eqz v11, :cond_3

    .line 349
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 351
    .local v17, numItems:I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_2
    move v0, v12

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    .line 362
    :goto_3
    invoke-virtual/range {v20 .. v20}, Lcom/ecareme/pixwe/media/MediaSet;->updateNumExpectedItems()V

    .line 363
    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaSet;->generateTitle(Z)V

    .line 364
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Lcom/ecareme/pixwe/cache/CacheService;->markDirty(J)V

    .line 335
    .end local v12           #j:I
    .end local v17           #numItems:I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 352
    .restart local v12       #j:I
    .restart local v17       #numItems:I
    :cond_4
    :try_start_0
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ecareme/pixwe/media/MediaItem;

    .line 353
    .restart local v10       #item:Lcom/ecareme/pixwe/media/MediaItem;
    sget-object v22, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->MEDIA_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    move-object v0, v10

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 354
    .restart local v21       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 356
    .restart local v18       #result:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    move-wide/from16 v23, v0

    invoke-static/range {v22 .. v24}, Lcom/ecareme/pixwe/PixWe;->updateDBFlg(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 358
    .end local v10           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v18           #result:I
    .end local v21           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v22

    move-object/from16 v8, v22

    .line 360
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 372
    .end local v6           #bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #i:I
    .end local v11           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v12           #j:I
    .end local v17           #numItems:I
    .end local v20           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :pswitch_1
    const/4 v4, 0x0

    .line 373
    .local v4, angleToRotate:F
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v15, mediaInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "PixWePrefs"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 375
    .local v13, mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v13}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v5

    .line 376
    .local v5, apicfg:Lnet/yostore/aws/api/ApiConfig;
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_4
    move v0, v9

    move/from16 v1, v16

    if-lt v0, v1, :cond_6

    .line 400
    const/high16 v22, 0x42b4

    cmpl-float v22, v4, v22

    if-nez v22, :cond_a

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move-object v1, v15

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/ecareme/pixwe/PixWe;->rotate(Landroid/content/Context;Ljava/util/List;I)V

    .line 405
    :cond_5
    :goto_5
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 377
    :cond_6
    move-object/from16 v0, p2

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ecareme/pixwe/media/MediaBucket;

    .line 378
    .restart local v6       #bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    iget-object v11, v6, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 379
    .restart local v11       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    if-nez v11, :cond_8

    .line 376
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 382
    :cond_8
    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Float;

    move-object v4, v0

    .end local v4           #angleToRotate:F
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 383
    .restart local v4       #angleToRotate:F
    const/16 v22, 0x0

    cmpl-float v22, v4, v22

    if-nez v22, :cond_9

    .line 384
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 386
    :cond_9
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 387
    .restart local v17       #numItems:I
    const/4 v12, 0x0

    .restart local v12       #j:I
    :goto_6
    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 388
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ecareme/pixwe/media/MediaItem;

    .line 389
    .restart local v10       #item:Lcom/ecareme/pixwe/media/MediaItem;
    move-object v0, v10

    iget v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mRotation:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move v7, v0

    .line 390
    .local v7, currentOrientation:I
    move v0, v7

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v4, v4, v22

    .line 391
    invoke-static {v4}, Lcom/ecareme/pixwe/media/Shared;->normalizePositive(F)F

    move-result v19

    .line 392
    .local v19, rotation:F
    new-instance v14, Lnet/yostore/aws/handler/entity/MediaInfoBean;

    invoke-direct {v14, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;-><init>(Lnet/yostore/aws/api/ApiConfig;)V

    .line 393
    .local v14, media:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    move-object v0, v10

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    move-wide/from16 v22, v0

    move-object v0, v14

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setMediaInfoFolder(J)V

    .line 394
    move-object v0, v10

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    move-wide/from16 v22, v0

    move-object v0, v14

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setI(J)V

    .line 395
    move/from16 v0, v19

    move-object v1, v10

    iput v0, v1, Lcom/ecareme/pixwe/media/MediaItem;->mRotation:F

    .line 396
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 402
    .end local v6           #bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    .end local v7           #currentOrientation:I
    .end local v10           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v11           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v12           #j:I
    .end local v14           #media:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    .end local v17           #numItems:I
    .end local v19           #rotation:F
    :cond_a
    const/high16 v22, -0x3d4c

    cmpl-float v22, v4, v22

    if-nez v22, :cond_5

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, -0x1

    move-object/from16 v0, v22

    move-object v1, v15

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/ecareme/pixwe/PixWe;->rotate(Landroid/content/Context;Ljava/util/List;I)V

    goto/16 :goto_5

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public refresh(Lcom/ecareme/pixwe/media/MediaFeed;[Ljava/lang/String;)V
    .locals 7
    .parameter "feed"
    .parameter "databaseUris"

    .prologue
    .line 421
    iget-object v6, p0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/ecareme/pixwe/cache/CacheService;->computeDirtySets(Landroid/content/Context;)[J

    move-result-object v1

    .line 422
    .local v1, ids:[J
    array-length v3, v1

    .line 423
    .local v3, numDirtySets:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 430
    return-void

    .line 424
    :cond_0
    aget-wide v4, v1, v0

    .line 425
    .local v4, setId:J
    invoke-virtual {p1, v4, v5}, Lcom/ecareme/pixwe/media/MediaFeed;->getMediaSet(J)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 426
    invoke-virtual {p1, v4, v5, p0}, Lcom/ecareme/pixwe/media/MediaFeed;->replaceMediaSet(JLcom/ecareme/pixwe/media/DataSource;)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v2

    .line 427
    .local v2, newSet:Lcom/ecareme/pixwe/media/MediaSet;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/ecareme/pixwe/media/MediaSet;->generateTitle(Z)V

    .line 423
    .end local v2           #newSet:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .parameter "keyword"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->keyword:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 436
    return-void
.end method
