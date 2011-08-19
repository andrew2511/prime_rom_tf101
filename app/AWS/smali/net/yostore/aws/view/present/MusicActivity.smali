.class public Lnet/yostore/aws/view/present/MusicActivity;
.super Landroid/app/ListActivity;
.source "MusicActivity.java"


# static fields
.field private static MIconList:I = 0x0

.field private static MIconList_:I = 0x0

.field private static MIconLoop:I = 0x0

.field private static MIconLoop_:I = 0x0

.field private static MIconNext:I = 0x0

.field private static MIconNext_:I = 0x0

.field private static MIconPlay:I = 0x0

.field private static MIconPlay_:I = 0x0

.field private static MIconPrev:I = 0x0

.field private static MIconPrev_:I = 0x0

.field private static MIconRandom:I = 0x0

.field private static MIconRandom_:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MusicActivity"


# instance fields
.field apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private handler:Landroid/os/Handler;

.field layCtrl:Landroid/widget/LinearLayout;

.field layList:Landroid/widget/LinearLayout;

.field layNow:Landroid/widget/LinearLayout;

.field private listReady:Ljava/lang/Runnable;

.field loop:Landroid/widget/ImageButton;

.field mNowFolder:Ljava/lang/String;

.field mNowFolderId:Ljava/lang/String;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mSpin:Landroid/app/ProgressDialog;

.field mp:Landroid/media/MediaPlayer;

.field next:Landroid/widget/ImageButton;

.field nowFile:Landroid/widget/TextView;

.field nowFolder:Landroid/widget/TextView;

.field play:Landroid/widget/ImageButton;

.field playlist:Landroid/widget/ImageButton;

.field plist:Lnet/yostore/aws/handler/entity/PlayList;

.field pre:Landroid/widget/ImageButton;

.field presentHandler:Lnet/yostore/aws/handler/PresentHandler;

.field random:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 72
    iput-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 73
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->mp:Landroid/media/MediaPlayer;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->handler:Landroid/os/Handler;

    .line 80
    new-instance v0, Lnet/yostore/aws/handler/PresentHandler;

    invoke-direct {v0}, Lnet/yostore/aws/handler/PresentHandler;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->presentHandler:Lnet/yostore/aws/handler/PresentHandler;

    .line 82
    iput-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity;->plist:Lnet/yostore/aws/handler/entity/PlayList;

    .line 83
    iput-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity;->mNowFolder:Ljava/lang/String;

    .line 182
    new-instance v0, Lnet/yostore/aws/view/present/MusicActivity$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/present/MusicActivity$1;-><init>(Lnet/yostore/aws/view/present/MusicActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->listReady:Ljava/lang/Runnable;

    .line 405
    iput-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity;->mSpin:Landroid/app/ProgressDialog;

    .line 40
    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lnet/yostore/aws/view/present/MusicActivity;->MIconPlay_:I

    return v0
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/present/MusicActivity;Lnet/yostore/aws/handler/entity/PlayItem;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 355
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/view/present/MusicActivity;->play(Lnet/yostore/aws/handler/entity/PlayItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lnet/yostore/aws/view/present/MusicActivity;->MIconLoop:I

    return v0
.end method

.method static synthetic access$11()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lnet/yostore/aws/view/present/MusicActivity;->MIconLoop_:I

    return v0
.end method

.method static synthetic access$12()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lnet/yostore/aws/view/present/MusicActivity;->MIconRandom:I

    return v0
.end method

.method static synthetic access$13()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lnet/yostore/aws/view/present/MusicActivity;->MIconRandom_:I

    return v0
.end method

.method static synthetic access$14(Lnet/yostore/aws/view/present/MusicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    invoke-direct {p0}, Lnet/yostore/aws/view/present/MusicActivity;->showHidePlayList()V

    return-void
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/present/MusicActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 405
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->mSpin:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lnet/yostore/aws/view/present/MusicActivity;->MIconPlay:I

    return v0
.end method

.method static synthetic access$4(Lnet/yostore/aws/view/present/MusicActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lnet/yostore/aws/view/present/MusicActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->listReady:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lnet/yostore/aws/view/present/MusicActivity;->MIconPrev:I

    return v0
.end method

.method static synthetic access$7()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lnet/yostore/aws/view/present/MusicActivity;->MIconPrev_:I

    return v0
.end method

.method static synthetic access$8()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lnet/yostore/aws/view/present/MusicActivity;->MIconNext:I

    return v0
.end method

.method static synthetic access$9()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lnet/yostore/aws/view/present/MusicActivity;->MIconNext_:I

    return v0
.end method

.method private initControls()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->pre:Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/present/MusicActivity$7;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/MusicActivity$7;-><init>(Lnet/yostore/aws/view/present/MusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->next:Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/present/MusicActivity$8;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/MusicActivity$8;-><init>(Lnet/yostore/aws/view/present/MusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->play:Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/present/MusicActivity$9;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/MusicActivity$9;-><init>(Lnet/yostore/aws/view/present/MusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->loop:Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/present/MusicActivity$10;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/MusicActivity$10;-><init>(Lnet/yostore/aws/view/present/MusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->random:Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/present/MusicActivity$11;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/MusicActivity$11;-><init>(Lnet/yostore/aws/view/present/MusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->playlist:Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/present/MusicActivity$12;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/MusicActivity$12;-><init>(Lnet/yostore/aws/view/present/MusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->mp:Landroid/media/MediaPlayer;

    new-instance v1, Lnet/yostore/aws/view/present/MusicActivity$13;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/MusicActivity$13;-><init>(Lnet/yostore/aws/view/present/MusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 353
    return-void
.end method

.method private initHeader()V
    .locals 2

    .prologue
    .line 206
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 207
    new-instance v1, Lnet/yostore/aws/view/present/MusicActivity$5;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/MusicActivity$5;-><init>(Lnet/yostore/aws/view/present/MusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 214
    new-instance v1, Lnet/yostore/aws/view/present/MusicActivity$6;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/MusicActivity$6;-><init>(Lnet/yostore/aws/view/present/MusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    return-void
.end method

.method private initIcons(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 235
    return-void
.end method

.method private initSpin(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 407
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->mSpin:Landroid/app/ProgressDialog;

    .line 408
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->mSpin:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 409
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->mSpin:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->mSpin:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 411
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->mSpin:Landroid/app/ProgressDialog;

    new-instance v1, Lnet/yostore/aws/view/present/MusicActivity$14;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/MusicActivity$14;-><init>(Lnet/yostore/aws/view/present/MusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 420
    return-void
.end method

.method private play(Lnet/yostore/aws/handler/entity/PlayItem;Ljava/lang/String;)V
    .locals 4
    .parameter "pi"
    .parameter "msg"

    .prologue
    .line 356
    iget-object v2, p0, Lnet/yostore/aws/view/present/MusicActivity;->nowFile:Landroid/widget/TextView;

    iget-object v3, p1, Lnet/yostore/aws/handler/entity/PlayItem;->disp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    invoke-direct {p0, p2}, Lnet/yostore/aws/view/present/MusicActivity;->initSpin(Ljava/lang/String;)V

    .line 358
    iget-object v2, p0, Lnet/yostore/aws/view/present/MusicActivity;->mSpin:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 360
    :try_start_0
    iget-object v2, p0, Lnet/yostore/aws/view/present/MusicActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 361
    iget-object v2, p0, Lnet/yostore/aws/view/present/MusicActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 362
    iget-object v2, p0, Lnet/yostore/aws/view/present/MusicActivity;->mp:Landroid/media/MediaPlayer;

    iget-object v3, p1, Lnet/yostore/aws/handler/entity/PlayItem;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 364
    const-string v2, "MusicActivity"

    iget-object v3, p1, Lnet/yostore/aws/handler/entity/PlayItem;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v2, p0, Lnet/yostore/aws/view/present/MusicActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 390
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 369
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "MusicActivity"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :try_start_1
    iget-object v2, p0, Lnet/yostore/aws/view/present/MusicActivity;->mSpin:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 374
    :goto_1
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 373
    :catch_1
    move-exception v2

    move-object v1, v2

    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 375
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v1           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 376
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "MusicActivity"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :try_start_2
    iget-object v2, p0, Lnet/yostore/aws/view/present/MusicActivity;->mSpin:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 381
    :goto_2
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 380
    :catch_3
    move-exception v2

    move-object v1, v2

    .restart local v1       #ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 382
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v1           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    move-object v0, v2

    .line 383
    .local v0, e:Ljava/io/IOException;
    const-string v2, "MusicActivity"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :try_start_3
    iget-object v2, p0, Lnet/yostore/aws/view/present/MusicActivity;->mSpin:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 388
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 387
    :catch_5
    move-exception v2

    move-object v1, v2

    .restart local v1       #ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private showHidePlayList()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 393
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->layList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 394
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->playlist:Landroid/widget/ImageButton;

    sget v1, Lnet/yostore/aws/view/present/MusicActivity;->MIconList_:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 395
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->layList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->layNow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 403
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->playlist:Landroid/widget/ImageButton;

    sget v1, Lnet/yostore/aws/view/present/MusicActivity;->MIconList:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 400
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->layList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->layNow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected createAdapter()Landroid/widget/ListAdapter;
    .locals 6

    .prologue
    .line 239
    iget-object v4, p0, Lnet/yostore/aws/view/present/MusicActivity;->plist:Lnet/yostore/aws/handler/entity/PlayList;

    invoke-virtual {v4}, Lnet/yostore/aws/handler/entity/PlayList;->getPlayList()Ljava/util/List;

    move-result-object v3

    .line 240
    .local v3, mlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/PlayItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 241
    .local v2, itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/handler/entity/PlayItem;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v1, dsps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 246
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 247
    const v5, 0x7f030008

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 246
    invoke-direct {v0, p0, v5, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 248
    .local v0, adapter:Landroid/widget/ListAdapter;
    return-object v0

    .line 243
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/yostore/aws/handler/entity/PlayItem;

    iget-object v4, v4, Lnet/yostore/aws/handler/entity/PlayItem;->disp:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/MusicActivity;->setContentView(I)V

    .line 105
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 107
    invoke-direct {p0}, Lnet/yostore/aws/view/present/MusicActivity;->initHeader()V

    .line 109
    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->pre:Landroid/widget/ImageButton;

    .line 110
    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->next:Landroid/widget/ImageButton;

    .line 111
    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->play:Landroid/widget/ImageButton;

    .line 112
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->loop:Landroid/widget/ImageButton;

    .line 113
    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->random:Landroid/widget/ImageButton;

    .line 114
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->playlist:Landroid/widget/ImageButton;

    .line 115
    const v0, 0x7f090022

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->nowFolder:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->nowFile:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f090023

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->layList:Landroid/widget/LinearLayout;

    .line 118
    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->layNow:Landroid/widget/LinearLayout;

    .line 119
    const v0, 0x7f090024

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->layCtrl:Landroid/widget/LinearLayout;

    .line 121
    invoke-direct {p0, p0}, Lnet/yostore/aws/view/present/MusicActivity;->initIcons(Landroid/content/Context;)V

    .line 122
    invoke-direct {p0}, Lnet/yostore/aws/view/present/MusicActivity;->initControls()V

    .line 124
    invoke-virtual {p0}, Lnet/yostore/aws/view/present/MusicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nowFolder"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->mNowFolder:Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lnet/yostore/aws/view/present/MusicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nowFolderId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->mNowFolderId:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->nowFolder:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity;->mNowFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->nowFile:Landroid/widget/TextView;

    invoke-virtual {p0}, Lnet/yostore/aws/view/present/MusicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "nowPlay"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->mp:Landroid/media/MediaPlayer;

    new-instance v1, Lnet/yostore/aws/view/present/MusicActivity$2;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/MusicActivity$2;-><init>(Lnet/yostore/aws/view/present/MusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 140
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->mp:Landroid/media/MediaPlayer;

    new-instance v1, Lnet/yostore/aws/view/present/MusicActivity$3;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/MusicActivity$3;-><init>(Lnet/yostore/aws/view/present/MusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 168
    new-instance v0, Lnet/yostore/aws/view/present/MusicActivity$4;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/present/MusicActivity$4;-><init>(Lnet/yostore/aws/view/present/MusicActivity;)V

    .line 179
    invoke-virtual {v0}, Lnet/yostore/aws/view/present/MusicActivity$4;->start()V

    .line 181
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 87
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity;->plist:Lnet/yostore/aws/handler/entity/PlayList;

    invoke-virtual {v1, p3}, Lnet/yostore/aws/handler/entity/PlayList;->getPlayItem(I)Lnet/yostore/aws/handler/entity/PlayItem;

    move-result-object v0

    .line 88
    .local v0, pi:Lnet/yostore/aws/handler/entity/PlayItem;
    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity;->play:Landroid/widget/ImageButton;

    sget v2, Lnet/yostore/aws/view/present/MusicActivity;->MIconPlay_:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 91
    const v1, 0x7f06009a

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/present/MusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/yostore/aws/view/present/MusicActivity;->play(Lnet/yostore/aws/handler/entity/PlayItem;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lnet/yostore/aws/view/present/MusicActivity;->showHidePlayList()V

    .line 98
    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 99
    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity;->play:Landroid/widget/ImageButton;

    sget v2, Lnet/yostore/aws/view/present/MusicActivity;->MIconPlay:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 96
    const v1, 0x7f06009b

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/present/MusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->play:Landroid/widget/ImageButton;

    sget v1, Lnet/yostore/aws/view/present/MusicActivity;->MIconPlay:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 46
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 48
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 49
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 50
    return-void
.end method
