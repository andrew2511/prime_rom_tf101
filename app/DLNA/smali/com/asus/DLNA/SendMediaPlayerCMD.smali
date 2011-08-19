.class Lcom/asus/DLNA/SendMediaPlayerCMD;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final KEY_EVENT:Ljava/lang/String; = "key_event"

.field private static final KEY_PARA1:Ljava/lang/String; = "key_para1"

.field private static final KEY_PARA2:Ljava/lang/String; = "key_para2"

.field private static final MP_CMD_GET_DURATION:I = 0xa

.field private static final MP_CMD_PAUSE:I = 0x2

.field private static final MP_CMD_PLAY:I = 0x1

.field private static final MP_CMD_SETDATASOURCE:I = 0x0

.field private static final MP_CMD_STOP:I = 0x3


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCMDQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/asus/DLNA/IMusicPlaybackService;

.field final runnableSendCMDNOW:Ljava/lang/Runnable;

.field private tDoCMDThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    const-string v0, "Utils.SendMediaPlayerCMD"

    iput-object v0, p0, Lcom/asus/DLNA/SendMediaPlayerCMD;->TAG:Ljava/lang/String;

    .line 744
    iput-object v1, p0, Lcom/asus/DLNA/SendMediaPlayerCMD;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    .line 816
    iput-object v1, p0, Lcom/asus/DLNA/SendMediaPlayerCMD;->tDoCMDThread:Ljava/lang/Thread;

    .line 842
    new-instance v0, Lcom/asus/DLNA/SendMediaPlayerCMD$2;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/SendMediaPlayerCMD$2;-><init>(Lcom/asus/DLNA/SendMediaPlayerCMD;)V

    iput-object v0, p0, Lcom/asus/DLNA/SendMediaPlayerCMD;->runnableSendCMDNOW:Ljava/lang/Runnable;

    .line 748
    return-void
.end method

.method private LaunchDecodeThread()V
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/asus/DLNA/SendMediaPlayerCMD;->tDoCMDThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 820
    invoke-direct {p0}, Lcom/asus/DLNA/SendMediaPlayerCMD;->runDoCMDInBackground()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/DLNA/SendMediaPlayerCMD;->tDoCMDThread:Ljava/lang/Thread;

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 822
    :cond_1
    sget-object v0, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    iget-object v1, p0, Lcom/asus/DLNA/SendMediaPlayerCMD;->tDoCMDThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 823
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/DLNA/SendMediaPlayerCMD;->tDoCMDThread:Ljava/lang/Thread;

    .line 824
    invoke-direct {p0}, Lcom/asus/DLNA/SendMediaPlayerCMD;->runDoCMDInBackground()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/DLNA/SendMediaPlayerCMD;->tDoCMDThread:Ljava/lang/Thread;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/asus/DLNA/SendMediaPlayerCMD;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/asus/DLNA/SendMediaPlayerCMD;->mCMDQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/DLNA/SendMediaPlayerCMD;)Lcom/asus/DLNA/IMusicPlaybackService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/asus/DLNA/SendMediaPlayerCMD;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    return-object v0
.end method

.method private runDoCMDInBackground()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 830
    new-instance v0, Lcom/asus/DLNA/SendMediaPlayerCMD$1;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/SendMediaPlayerCMD$1;-><init>(Lcom/asus/DLNA/SendMediaPlayerCMD;)V

    .line 838
    .local v0, DoCMDThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 839
    return-object v0
.end method


# virtual methods
.method public cpGetDuration(Lcom/asus/DLNA/IMusicPlaybackService;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 809
    iput-object p1, p0, Lcom/asus/DLNA/SendMediaPlayerCMD;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    .line 810
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 811
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 812
    iget-object v1, p0, Lcom/asus/DLNA/SendMediaPlayerCMD;->mCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    invoke-direct {p0}, Lcom/asus/DLNA/SendMediaPlayerCMD;->LaunchDecodeThread()V

    .line 814
    return-void
.end method

.method public cpPause(Lcom/asus/DLNA/IMusicPlaybackService;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 793
    iput-object p1, p0, Lcom/asus/DLNA/SendMediaPlayerCMD;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    .line 794
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 795
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 796
    iget-object v1, p0, Lcom/asus/DLNA/SendMediaPlayerCMD;->mCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 797
    invoke-direct {p0}, Lcom/asus/DLNA/SendMediaPlayerCMD;->LaunchDecodeThread()V

    .line 798
    return-void
.end method

.method public cpPlay(Lcom/asus/DLNA/IMusicPlaybackService;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 785
    iput-object p1, p0, Lcom/asus/DLNA/SendMediaPlayerCMD;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    .line 786
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 787
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 788
    iget-object v1, p0, Lcom/asus/DLNA/SendMediaPlayerCMD;->mCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    invoke-direct {p0}, Lcom/asus/DLNA/SendMediaPlayerCMD;->LaunchDecodeThread()V

    .line 790
    return-void
.end method

.method public cpSetDataSource(Lcom/asus/DLNA/IMusicPlaybackService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "service"
    .parameter "struri"
    .parameter "strtitle"

    .prologue
    .line 775
    iput-object p1, p0, Lcom/asus/DLNA/SendMediaPlayerCMD;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    .line 776
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 777
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 778
    const-string v1, "key_para1"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const-string v1, "key_para2"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    iget-object v1, p0, Lcom/asus/DLNA/SendMediaPlayerCMD;->mCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    invoke-direct {p0}, Lcom/asus/DLNA/SendMediaPlayerCMD;->LaunchDecodeThread()V

    .line 782
    return-void
.end method

.method public cpStop(Lcom/asus/DLNA/IMusicPlaybackService;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 801
    iput-object p1, p0, Lcom/asus/DLNA/SendMediaPlayerCMD;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    .line 802
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 803
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "key_event"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 804
    iget-object v1, p0, Lcom/asus/DLNA/SendMediaPlayerCMD;->mCMDQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    invoke-direct {p0}, Lcom/asus/DLNA/SendMediaPlayerCMD;->LaunchDecodeThread()V

    .line 806
    return-void
.end method

.method public deinit()V
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/asus/DLNA/SendMediaPlayerCMD;->mCMDQueue:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/asus/DLNA/SendMediaPlayerCMD;->mCMDQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 757
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/DLNA/SendMediaPlayerCMD;->mCMDQueue:Ljava/util/List;

    .line 759
    :cond_0
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 751
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/asus/DLNA/SendMediaPlayerCMD;->mCMDQueue:Ljava/util/List;

    .line 752
    return-void
.end method
