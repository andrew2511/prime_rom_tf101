.class Lcom/asus/DLNA/SendServerCMD;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final KEY_EVENT:Ljava/lang/String; = "key_event"

.field private static final KEY_PARA1:Ljava/lang/String; = "key_para1"

.field private static final KEY_PARA2:Ljava/lang/String; = "key_para2"

.field private static final KEY_POSITION:Ljava/lang/String; = "key_position"

.field private static final SERVER_CMD_CPFF:I = 0x13

.field private static final SERVER_CMD_CPGO:I = 0x6

.field private static final SERVER_CMD_CPINFO:I = 0x5

.field private static final SERVER_CMD_CPMUTE:I = 0x19

.field private static final SERVER_CMD_CPPAUSE:I = 0x10

.field private static final SERVER_CMD_CPPLAY:I = 0xf

.field private static final SERVER_CMD_CPPUSHURI:I = 0xa

.field private static final SERVER_CMD_CPQUERYMUTESTATE:I = 0x1a

.field private static final SERVER_CMD_CPRENDER:I = 0x1

.field private static final SERVER_CMD_CPREQUERYAGAIN:I = 0x4

.field private static final SERVER_CMD_CPREWIND:I = 0x12

.field private static final SERVER_CMD_CPSERVER:I = 0x0

.field private static final SERVER_CMD_CPSETSEEKBAR:I = 0xd

.field private static final SERVER_CMD_CPSETURI:I = 0xb

.field private static final SERVER_CMD_CPSTOP:I = 0x11

.field private static final SERVER_CMD_CPSTOPQUERYING:I = 0x3

.field private static final SERVER_CMD_CPTOP:I = 0x7

.field private static final SERVER_CMD_CPUP:I = 0x8

.field private static final SERVER_CMD_CPUPDATESEEKBAR:I = 0xe

.field private static final SERVER_CMD_CPVOLDOWN:I = 0x1c

.field private static final SERVER_CMD_CPVOLUP:I = 0x1b

.field private static final SERVER_CMD_UPDATEFILTER:I = 0x2


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDLNAServer:Lcom/asus/DLNA/DLNAServer;

.field private mDLNAServerCMDQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field final runnableSendCMDNOW:Ljava/lang/Runnable;

.field private tDoCMDThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    const-string v0, "Utils.SendServerCMD"

    iput-object v0, p0, Lcom/asus/DLNA/SendServerCMD;->TAG:Ljava/lang/String;

    .line 604
    iput-object v1, p0, Lcom/asus/DLNA/SendServerCMD;->tDoCMDThread:Ljava/lang/Thread;

    .line 630
    new-instance v0, Lcom/asus/DLNA/SendServerCMD$2;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/SendServerCMD$2;-><init>(Lcom/asus/DLNA/SendServerCMD;)V

    iput-object v0, p0, Lcom/asus/DLNA/SendServerCMD;->runnableSendCMDNOW:Ljava/lang/Runnable;

    .line 409
    iput-object v1, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServer:Lcom/asus/DLNA/DLNAServer;

    .line 410
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    .line 411
    return-void
.end method

.method private LaunchDecodeThread()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/asus/DLNA/SendServerCMD;->tDoCMDThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 608
    invoke-direct {p0}, Lcom/asus/DLNA/SendServerCMD;->runDoCMDInBackground()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/DLNA/SendServerCMD;->tDoCMDThread:Ljava/lang/Thread;

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    sget-object v0, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    iget-object v1, p0, Lcom/asus/DLNA/SendServerCMD;->tDoCMDThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/DLNA/SendServerCMD;->tDoCMDThread:Ljava/lang/Thread;

    .line 612
    invoke-direct {p0}, Lcom/asus/DLNA/SendServerCMD;->runDoCMDInBackground()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/DLNA/SendServerCMD;->tDoCMDThread:Ljava/lang/Thread;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/asus/DLNA/SendServerCMD;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/DLNA/SendServerCMD;)Lcom/asus/DLNA/DLNAServer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServer:Lcom/asus/DLNA/DLNAServer;

    return-object v0
.end method

.method private runDoCMDInBackground()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 618
    new-instance v0, Lcom/asus/DLNA/SendServerCMD$1;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/SendServerCMD$1;-><init>(Lcom/asus/DLNA/SendServerCMD;)V

    .line 626
    .local v0, DoCMDThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 627
    return-object v0
.end method


# virtual methods
.method public cpGo(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 499
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 500
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 501
    const-string v1, "key_position"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 502
    iget-object v1, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    invoke-direct {p0}, Lcom/asus/DLNA/SendServerCMD;->LaunchDecodeThread()V

    .line 504
    return-void
.end method

.method public cpInfo(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 492
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 493
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 494
    const-string v1, "key_position"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 495
    iget-object v1, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-direct {p0}, Lcom/asus/DLNA/SendServerCMD;->LaunchDecodeThread()V

    .line 497
    return-void
.end method

.method public cpMute()V
    .locals 3

    .prologue
    .line 579
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 580
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 581
    iget-object v1, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    invoke-direct {p0}, Lcom/asus/DLNA/SendServerCMD;->LaunchDecodeThread()V

    .line 583
    return-void
.end method

.method public cpPause()V
    .locals 3

    .prologue
    .line 555
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 556
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 557
    iget-object v1, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-direct {p0}, Lcom/asus/DLNA/SendServerCMD;->LaunchDecodeThread()V

    .line 559
    return-void
.end method

.method public cpPlay()V
    .locals 3

    .prologue
    .line 549
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 550
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 551
    iget-object v1, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    invoke-direct {p0}, Lcom/asus/DLNA/SendServerCMD;->LaunchDecodeThread()V

    .line 553
    return-void
.end method

.method public cpPushURI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 518
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 519
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 520
    const-string v1, "key_para1"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v1, "key_para2"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v1, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    invoke-direct {p0}, Lcom/asus/DLNA/SendServerCMD;->LaunchDecodeThread()V

    .line 524
    return-void
.end method

.method public cpQueryMuteState()V
    .locals 3

    .prologue
    .line 586
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 587
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 588
    iget-object v1, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    invoke-direct {p0}, Lcom/asus/DLNA/SendServerCMD;->LaunchDecodeThread()V

    .line 590
    return-void
.end method

.method public cpReQueryAgain()V
    .locals 3

    .prologue
    .line 485
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 486
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 487
    iget-object v1, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    invoke-direct {p0}, Lcom/asus/DLNA/SendServerCMD;->LaunchDecodeThread()V

    .line 489
    return-void
.end method

.method public cpRenderer(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 463
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 464
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 465
    const-string v1, "key_position"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 466
    iget-object v1, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-direct {p0}, Lcom/asus/DLNA/SendServerCMD;->LaunchDecodeThread()V

    .line 468
    return-void
.end method

.method public cpServer(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 456
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 457
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 458
    const-string v1, "key_position"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 459
    iget-object v1, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-direct {p0}, Lcom/asus/DLNA/SendServerCMD;->LaunchDecodeThread()V

    .line 461
    return-void
.end method

.method public cpSetSeekBar(I)V
    .locals 3
    .parameter "NowPOS"

    .prologue
    .line 534
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 535
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 536
    const-string v1, "key_position"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 537
    iget-object v1, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    invoke-direct {p0}, Lcom/asus/DLNA/SendServerCMD;->LaunchDecodeThread()V

    .line 539
    return-void
.end method

.method public cpSetUri(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 526
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 527
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 528
    const-string v1, "key_position"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 529
    iget-object v1, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    invoke-direct {p0}, Lcom/asus/DLNA/SendServerCMD;->LaunchDecodeThread()V

    .line 531
    return-void
.end method

.method public cpStop()V
    .locals 3

    .prologue
    .line 561
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 562
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 563
    iget-object v1, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    invoke-direct {p0}, Lcom/asus/DLNA/SendServerCMD;->LaunchDecodeThread()V

    .line 565
    return-void
.end method

.method public cpStopQueryingContent()V
    .locals 3

    .prologue
    .line 478
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 479
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 480
    iget-object v1, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-direct {p0}, Lcom/asus/DLNA/SendServerCMD;->LaunchDecodeThread()V

    .line 482
    return-void
.end method

.method public cpTop()V
    .locals 3

    .prologue
    .line 506
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 507
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 508
    iget-object v1, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-direct {p0}, Lcom/asus/DLNA/SendServerCMD;->LaunchDecodeThread()V

    .line 510
    return-void
.end method

.method public cpUp()V
    .locals 3

    .prologue
    .line 512
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 513
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 514
    iget-object v1, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-direct {p0}, Lcom/asus/DLNA/SendServerCMD;->LaunchDecodeThread()V

    .line 516
    return-void
.end method

.method public cpUpdateFilter(I)V
    .locals 3
    .parameter "iFilter"

    .prologue
    .line 470
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 471
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 472
    const-string v1, "key_position"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 473
    iget-object v1, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    invoke-direct {p0}, Lcom/asus/DLNA/SendServerCMD;->LaunchDecodeThread()V

    .line 475
    return-void
.end method

.method public cpUpdateSeekBar()V
    .locals 3

    .prologue
    .line 542
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 543
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 544
    iget-object v1, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    invoke-direct {p0}, Lcom/asus/DLNA/SendServerCMD;->LaunchDecodeThread()V

    .line 546
    return-void
.end method

.method public cpVolDOWN()V
    .locals 3

    .prologue
    .line 598
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 599
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 600
    iget-object v1, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-direct {p0}, Lcom/asus/DLNA/SendServerCMD;->LaunchDecodeThread()V

    .line 602
    return-void
.end method

.method public cpVolUP()V
    .locals 3

    .prologue
    .line 592
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 593
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 594
    iget-object v1, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-direct {p0}, Lcom/asus/DLNA/SendServerCMD;->LaunchDecodeThread()V

    .line 596
    return-void
.end method

.method public cpscanBackward()V
    .locals 3

    .prologue
    .line 567
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 568
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 569
    iget-object v1, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    invoke-direct {p0}, Lcom/asus/DLNA/SendServerCMD;->LaunchDecodeThread()V

    .line 571
    return-void
.end method

.method public cpscanForward()V
    .locals 3

    .prologue
    .line 573
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 574
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 575
    iget-object v1, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-direct {p0}, Lcom/asus/DLNA/SendServerCMD;->LaunchDecodeThread()V

    .line 577
    return-void
.end method

.method public deinit()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServerCMDQueue:Ljava/util/List;

    .line 422
    :cond_0
    return-void
.end method

.method public init(Lcom/asus/DLNA/DLNAServer;)V
    .locals 0
    .parameter "DLNAServer"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/asus/DLNA/SendServerCMD;->mDLNAServer:Lcom/asus/DLNA/DLNAServer;

    .line 415
    return-void
.end method
