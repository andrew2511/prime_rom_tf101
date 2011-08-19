.class public Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;
.super Landroid/app/Activity;
.source "AWSSelectUploadAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$CreateAlbumTask;,
        Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$ImportTask;
    }
.end annotation


# instance fields
.field adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field albumList:Landroid/widget/Spinner;

.field albumUri:Ljava/lang/String;

.field apicfg:Lnet/yostore/aws/api/ApiConfig;

.field awsFolder:J

.field cancelUploadBtn:Landroid/widget/Button;

.field createAlbumBtn:Landroid/widget/ImageButton;

.field defaultAlbumName:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field progressDialog:Landroid/app/ProgressDialog;

.field pwdh:Lnet/yostore/aws/handler/PixWeDataHandler;

.field startUploadBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->awsFolder:J

    .line 50
    return-void
.end method

.method private updateAlbumList()V
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$6;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$6;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 220
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 221
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v5, 0x7f03000b

    invoke-virtual {p0, v5}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 72
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "albumName"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->defaultAlbumName:Ljava/lang/String;

    .line 73
    const-string v5, "albumUri"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->albumUri:Ljava/lang/String;

    .line 74
    const-string v5, "awsFolderId"

    const-wide/16 v6, -0x3e7

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->awsFolder:J

    .line 76
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v5

    iput-object v5, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 78
    const v5, 0x7f090039

    invoke-virtual {p0, v5}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->albumList:Landroid/widget/Spinner;

    .line 79
    iget-object v5, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->albumList:Landroid/widget/Spinner;

    new-instance v6, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$1;

    invoke-direct {v6, p0}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$1;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 93
    const v5, 0x7f09003a

    invoke-virtual {p0, v5}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->createAlbumBtn:Landroid/widget/ImageButton;

    .line 94
    iget-object v5, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->createAlbumBtn:Landroid/widget/ImageButton;

    new-instance v6, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$2;

    invoke-direct {v6, p0}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$2;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v5, 0x7f09003b

    invoke-virtual {p0, v5}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->startUploadBtn:Landroid/widget/Button;

    .line 130
    iget-object v5, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->startUploadBtn:Landroid/widget/Button;

    new-instance v6, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$3;

    invoke-direct {v6, p0}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$3;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v5, 0x7f09003c

    invoke-virtual {p0, v5}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->cancelUploadBtn:Landroid/widget/Button;

    .line 140
    iget-object v5, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->cancelUploadBtn:Landroid/widget/Button;

    new-instance v6, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$4;

    invoke-direct {v6, p0}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$4;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    :try_start_0
    new-instance v5, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;

    invoke-direct {v5, p0}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;)V

    iput-object v5, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->handler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    new-instance v5, Lnet/yostore/aws/handler/PixWeDataHandler;

    iget-object v6, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v5, p0, v6}, Lnet/yostore/aws/handler/PixWeDataHandler;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    iput-object v5, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->pwdh:Lnet/yostore/aws/handler/PixWeDataHandler;

    .line 188
    iget-object v5, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->pwdh:Lnet/yostore/aws/handler/PixWeDataHandler;

    invoke-virtual {v5}, Lnet/yostore/aws/handler/PixWeDataHandler;->getAlbums()Ljava/util/List;

    move-result-object v1

    .line 189
    .local v1, folderInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 190
    .local v4, len:I
    new-array v0, v4, [Ljava/lang/String;

    .line 191
    .local v0, albumNames:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v4, :cond_0

    .line 194
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v5, p0, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->adapter:Landroid/widget/ArrayAdapter;

    .line 195
    iget-object v5, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->adapter:Landroid/widget/ArrayAdapter;

    const v6, 0x1090009

    invoke-virtual {v5, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 196
    iget-object v5, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->albumList:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 197
    return-void

    .line 192
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/yostore/aws/api/entity/FolderInfo;

    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FolderInfo;->getDisplay()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 184
    .end local v0           #albumNames:[Ljava/lang/String;
    .end local v1           #folderInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    .end local v2           #i:I
    .end local v4           #len:I
    :catch_0
    move-exception v5

    goto :goto_0
.end method
