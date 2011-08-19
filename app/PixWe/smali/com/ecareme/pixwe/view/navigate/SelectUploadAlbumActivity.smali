.class public Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;
.super Landroid/app/Activity;
.source "SelectUploadAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$CreateAlbumTask;,
        Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$ImportTask;,
        Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;
    }
.end annotation


# static fields
.field private static final MAX_FILE_SIZE:I = 0x1400000

.field private static final MAX_UPLOADED_MEDIA:I = 0x1f4


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private albumId:J

.field private albumList:Landroid/widget/Spinner;

.field private albumThumbnail:Landroid/widget/ImageView;

.field private albumUri:Ljava/lang/String;

.field allowedMediaFormat:[Ljava/lang/String;

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field awsFolder:J

.field private cancelUploadBtn:Landroid/widget/Button;

.field private createAlbumBtn:Landroid/widget/ImageButton;

.field private defaultAlbumName:Ljava/lang/String;

.field private folderInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mediaInfoFolderId:J

.field private progressDialog:Landroid/app/ProgressDialog;

.field private pwdh:Lnet/yostore/aws/handler/PixWeDataHandler;

.field private serviceBinder:Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;

.field private startUploadBtn:Landroid/widget/Button;

.field private uploadFrom:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->awsFolder:J

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->mediaInfoFolderId:J

    .line 82
    iput v3, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->uploadFrom:I

    .line 346
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 347
    const-string v2, "image/png"

    aput-object v2, v0, v1

    .line 348
    const-string v1, "image/jpg"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    .line 349
    const-string v2, "image/jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 350
    const-string v2, "video/mpeg4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 351
    const-string v2, "video/mp4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 352
    const-string v2, "video/3gp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 353
    const-string v2, "video/3gpp2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 354
    const-string v2, "video/x-flv"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 355
    const-string v2, "application/x-flash-video"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->allowedMediaFormat:[Ljava/lang/String;

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Lnet/yostore/aws/handler/PixWeDataHandler;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->pwdh:Lnet/yostore/aws/handler/PixWeDataHandler;

    return-object v0
.end method

.method static synthetic access$10(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->mediaInfoFolderId:J

    return-void
.end method

.method static synthetic access$11(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->startUploadBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$12(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->defaultAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$14(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->adapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$15(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$16(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->albumList:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$17(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->serviceBinder:Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;

    return-void
.end method

.method static synthetic access$18(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->folderInfos:Ljava/util/List;

    return-void
.end method

.method static synthetic access$19(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->adapter:Landroid/widget/ArrayAdapter;

    return-void
.end method

.method static synthetic access$2(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->updateAlbumList()V

    return-void
.end method

.method static synthetic access$3(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 82
    iget v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->uploadFrom:I

    return v0
.end method

.method static synthetic access$5(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->mediaInfoFolderId:J

    return-wide v0
.end method

.method static synthetic access$6(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;Landroid/database/Cursor;)Lnet/yostore/aws/handler/entity/MediaInfoBean;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->createMediaInfo(Landroid/database/Cursor;)Lnet/yostore/aws/handler/entity/MediaInfoBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->isAllowedFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->serviceBinder:Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;

    return-object v0
.end method

.method static synthetic access$9(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->folderInfos:Ljava/util/List;

    return-object v0
.end method

.method private createMediaInfo(Landroid/database/Cursor;)Lnet/yostore/aws/handler/entity/MediaInfoBean;
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v4, 0x1

    .line 308
    new-instance v0, Lnet/yostore/aws/handler/entity/MediaInfoBean;

    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v0, v2}, Lnet/yostore/aws/handler/entity/MediaInfoBean;-><init>(Lnet/yostore/aws/api/ApiConfig;)V

    .line 310
    .local v0, media:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    iget-wide v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->mediaInfoFolderId:J

    invoke-virtual {v0, v2, v3}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setMediaInfoFolder(J)V

    .line 311
    invoke-virtual {v0, v4}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUs(I)V

    .line 312
    const-string v2, "title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setD(Ljava/lang/String;)V

    .line 313
    const-string v2, "mime_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, mediaType:Ljava/lang/String;
    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setTy(I)V

    .line 316
    const-string v2, "orientation"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setR(I)V

    .line 317
    const-string v2, "description"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setNo(Ljava/lang/String;)V

    .line 322
    :goto_0
    const-string v2, "date_modified"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setDa(J)V

    .line 323
    invoke-virtual {v0, v4}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setFr(I)V

    .line 326
    return-object v0

    .line 319
    :cond_0
    invoke-virtual {v0, v4}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setTy(I)V

    .line 320
    invoke-virtual {v0, v4}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setEn(I)V

    goto :goto_0
.end method

.method private isAllowedFormat(Ljava/lang/String;)Z
    .locals 4
    .parameter "mimeType"

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, found:Z
    iget-object v3, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->allowedMediaFormat:[Ljava/lang/String;

    array-length v2, v3

    .line 361
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 366
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 362
    :cond_0
    iget-object v3, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->allowedMediaFormat:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 363
    const/4 v3, 0x1

    goto :goto_1

    .line 361
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateAlbumList()V
    .locals 2

    .prologue
    .line 370
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$7;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$7;-><init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 392
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 393
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->setContentView(I)V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->folderInfos:Ljava/util/List;

    .line 96
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 97
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "albumName"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->defaultAlbumName:Ljava/lang/String;

    .line 98
    const-string v0, "albumUri"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->albumUri:Ljava/lang/String;

    .line 99
    const-string v0, "albumId"

    const-wide/16 v1, -0x1

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->albumId:J

    .line 100
    const-string v0, "awsFolderId"

    const-wide/16 v1, -0x3e7

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->awsFolder:J

    .line 101
    const-string v0, "uploadFrom"

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->uploadFrom:I

    .line 103
    const-string v0, "PixWePrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 104
    .local v11, mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v11}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 105
    new-instance v0, Lnet/yostore/aws/handler/PixWeDataHandler;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v0, p0, v1}, Lnet/yostore/aws/handler/PixWeDataHandler;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->pwdh:Lnet/yostore/aws/handler/PixWeDataHandler;

    .line 107
    const v0, 0x7f090039

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->albumList:Landroid/widget/Spinner;

    .line 108
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->albumList:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelected(Z)V

    .line 109
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->albumList:Landroid/widget/Spinner;

    new-instance v1, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$1;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$1;-><init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 124
    iget-wide v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->awsFolder:J

    const-wide/16 v2, -0x3e7

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 125
    const v0, 0x7f090038

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->albumThumbnail:Landroid/widget/ImageView;

    .line 127
    sget-object v0, Lcom/ecareme/pixwe/media/HudLayer;->selectedSet:Lcom/ecareme/pixwe/media/MediaSet;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v12, p1, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    .line 128
    .local v12, uri:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 129
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 131
    .local v9, index:I
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, filePath:Ljava/lang/String;
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->albumThumbnail:Landroid/widget/ImageView;

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    .end local v8           #filePath:Ljava/lang/String;
    .end local v9           #index:I
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 136
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v12           #uri:Ljava/lang/String;
    :cond_1
    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->createAlbumBtn:Landroid/widget/ImageButton;

    .line 137
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->createAlbumBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$2;-><init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const v0, 0x7f09003b

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->startUploadBtn:Landroid/widget/Button;

    .line 203
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->startUploadBtn:Landroid/widget/Button;

    iget-wide v1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->mediaInfoFolderId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->startUploadBtn:Landroid/widget/Button;

    new-instance v1, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$3;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$3;-><init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->cancelUploadBtn:Landroid/widget/Button;

    .line 223
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->cancelUploadBtn:Landroid/widget/Button;

    new-instance v1, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$4;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$4;-><init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    :try_start_0
    new-instance v0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;-><init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->handler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_1
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->updateAlbumList()V

    .line 287
    new-instance v0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$6;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$6;-><init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 303
    new-instance v6, Landroid/content/Intent;

    const-class v0, Lcom/ecareme/pixwe/service/UploadService;

    invoke-direct {v6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    .local v6, bindIntent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p0, v6, v0, v1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 305
    return-void

    .line 203
    .end local v6           #bindIntent:Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 330
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 331
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 332
    return-void
.end method
