.class Lcom/asus/DLNA/MediaControl;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/DLNA/MediaControl$RenderServer;,
        Lcom/asus/DLNA/MediaControl$SourceServer;,
        Lcom/asus/DLNA/MediaControl$MediaPlayerState;,
        Lcom/asus/DLNA/MediaControl$Defs;,
        Lcom/asus/DLNA/MediaControl$FilterType;
    }
.end annotation


# static fields
.field private static final MUSIC_PLAYBACK_NEXT:Ljava/lang/String; = "music.playback.next"

.field private static final MUSIC_PLAYBACK_PREVIOUS:Ljava/lang/String; = "music.playback.previous"

.field public static final NOTIFY_UPDATE_SEEEKBAR_INLOOP:I = 0x1f4

.field private static final SEEK_INCREMENT:I = 0xa28


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mControlPanerlLL:Landroid/widget/LinearLayout;

.field mCurrentMuteState:Z

.field private mCurrentType:I

.field private mFF:Landroid/widget/ImageButton;

.field private mFilterType:I

.field private mLocalContentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/DLNA/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaPlayStateCallbackHandler:Landroid/os/Handler;

.field private mMediaPlayerState:I

.field private mMuteButton:Landroid/widget/ImageButton;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNowPlayingPOS:I

.field private mPlayToButton:Landroid/widget/Button;

.field private mPreviousButton:Landroid/widget/ImageButton;

.field private mRemoteContentList:Lcom/asus/DLNA/ItemList;

.field private mRender:I

.field private mRewind:Landroid/widget/ImageButton;

.field private mScrollIndicator:Landroid/widget/ImageView;

.field private mSeekBarLL:Landroid/widget/LinearLayout;

.field private mSendMediaPlayerCMD:Lcom/asus/DLNA/SendMediaPlayerCMD;

.field private mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

.field private mService:Lcom/asus/DLNA/IMusicPlaybackService;

.field private mSource:I

.field private mStopButton:Landroid/widget/ImageButton;

.field private mSubControlPanerlLL:Landroid/widget/LinearLayout;

.field private mVolDownButton:Landroid/widget/ImageButton;

.field private mVolUpButton:Landroid/widget/ImageButton;

.field private mbHidingCTLPanel:Z

.field private sFormatBuilder:Ljava/lang/StringBuilder;

.field private sFormatter:Ljava/util/Formatter;

.field private final sTimeArgs:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .parameter "at"

    .prologue
    .line 989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    const-string v0, "Utils.MediaControl"

    iput-object v0, p0, Lcom/asus/DLNA/MediaControl;->TAG:Ljava/lang/String;

    .line 968
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    .line 1032
    new-instance v0, Lcom/asus/DLNA/MediaControl$1;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/MediaControl$1;-><init>(Lcom/asus/DLNA/MediaControl;)V

    iput-object v0, p0, Lcom/asus/DLNA/MediaControl;->mConnection:Landroid/content/ServiceConnection;

    .line 1440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/asus/DLNA/MediaControl;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 1441
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/asus/DLNA/MediaControl;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/asus/DLNA/MediaControl;->sFormatter:Ljava/util/Formatter;

    .line 1442
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/asus/DLNA/MediaControl;->sTimeArgs:[Ljava/lang/Object;

    .line 990
    iput-object p1, p0, Lcom/asus/DLNA/MediaControl;->mActivity:Landroid/app/Activity;

    .line 991
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    if-nez v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/asus/DLNA/MediaControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/asus/DLNA/MusicPlaybackService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/asus/DLNA/MediaControl;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 996
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/asus/DLNA/MediaControl;->mAudioManager:Landroid/media/AudioManager;

    .line 997
    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/asus/DLNA/MediaControl;Lcom/asus/DLNA/IMusicPlaybackService;)Lcom/asus/DLNA/IMusicPlaybackService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 914
    iput-object p1, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    return-object p1
.end method

.method private isLocalLocalMusic()Z
    .locals 3

    .prologue
    .line 1411
    const/4 v0, 0x0

    .line 1412
    .local v0, bRes:Z
    iget v1, p0, Lcom/asus/DLNA/MediaControl;->mSource:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/asus/DLNA/MediaControl;->mRender:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/asus/DLNA/MediaControl;->getCurrentMediaFileType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1415
    const/4 v0, 0x1

    .line 1417
    :cond_0
    return v0
.end method

.method private isRemoteLocalMusic()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1421
    const/4 v0, 0x0

    .line 1422
    .local v0, bRes:Z
    iget v1, p0, Lcom/asus/DLNA/MediaControl;->mSource:I

    if-ne v2, v1, :cond_0

    iget v1, p0, Lcom/asus/DLNA/MediaControl;->mRender:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/asus/DLNA/MediaControl;->getCurrentMediaFileType()I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 1425
    const/4 v0, 0x1

    .line 1427
    :cond_0
    return v0
.end method

.method private setDataSource_LocalLocalMusic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "struri"
    .parameter "strtitle"

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    if-eqz v0, :cond_0

    .line 1397
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSendMediaPlayerCMD:Lcom/asus/DLNA/SendMediaPlayerCMD;

    iget-object v1, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    invoke-virtual {v0, v1, p1, p2}, Lcom/asus/DLNA/SendMediaPlayerCMD;->cpSetDataSource(Lcom/asus/DLNA/IMusicPlaybackService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    :cond_0
    return-void
.end method

.method private setDataSource_RemoteLocalMusic()V
    .locals 8

    .prologue
    .line 1402
    iget-object v3, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    if-eqz v3, :cond_0

    .line 1403
    iget-object v3, p0, Lcom/asus/DLNA/MediaControl;->mRemoteContentList:Lcom/asus/DLNA/ItemList;

    iget v4, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    invoke-virtual {v3, v4}, Lcom/asus/DLNA/ItemList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/DLNA/Item;

    iget-object v3, v3, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    const-wide/16 v4, 0x0

    sget v6, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_URI:I

    int-to-long v6, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsCString(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1404
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/asus/DLNA/MediaControl;->mRemoteContentList:Lcom/asus/DLNA/ItemList;

    iget v4, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    invoke-virtual {v3, v4}, Lcom/asus/DLNA/ItemList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/DLNA/Item;

    invoke-virtual {v3}, Lcom/asus/DLNA/Item;->getEntryInfo()Lcom/awox/jUPnPCP/CDSEntryInfo;

    move-result-object v0

    .line 1405
    .local v0, theEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;
    sget v3, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Title:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v1

    .line 1406
    .local v1, theTitle:Ljava/lang/String;
    iget-object v3, p0, Lcom/asus/DLNA/MediaControl;->mSendMediaPlayerCMD:Lcom/asus/DLNA/SendMediaPlayerCMD;

    iget-object v4, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/asus/DLNA/SendMediaPlayerCMD;->cpSetDataSource(Lcom/asus/DLNA/IMusicPlaybackService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    .end local v0           #theEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;
    .end local v1           #theTitle:Ljava/lang/String;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private updateControllerIcons(II)V
    .locals 2
    .parameter "ViewID"
    .parameter "iRes"

    .prologue
    .line 1272
    iget-object v1, p0, Lcom/asus/DLNA/MediaControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1273
    .local v0, tempview:Landroid/widget/ImageButton;
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1274
    return-void
.end method

.method private updateCurrentState(I)V
    .locals 3
    .parameter "iNextState"

    .prologue
    const v2, 0x7f020033

    const v1, 0x7f08000f

    .line 1281
    packed-switch p1, :pswitch_data_0

    .line 1302
    :goto_0
    return-void

    .line 1283
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/asus/DLNA/MediaControl;->mMediaPlayerState:I

    .line 1284
    const v0, 0x7f02003d

    invoke-direct {p0, v1, v0}, Lcom/asus/DLNA/MediaControl;->updateControllerIcons(II)V

    goto :goto_0

    .line 1289
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/asus/DLNA/MediaControl;->mMediaPlayerState:I

    .line 1290
    invoke-direct {p0, v1, v2}, Lcom/asus/DLNA/MediaControl;->updateControllerIcons(II)V

    goto :goto_0

    .line 1295
    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/DLNA/MediaControl;->mMediaPlayerState:I

    .line 1296
    invoke-direct {p0, v1, v2}, Lcom/asus/DLNA/MediaControl;->updateControllerIcons(II)V

    goto :goto_0

    .line 1281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public TouchOnPlayPauseBTN(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const v1, 0x7f08000f

    .line 1307
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1324
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1309
    :pswitch_1
    iget v0, p0, Lcom/asus/DLNA/MediaControl;->mMediaPlayerState:I

    if-ne v3, v0, :cond_1

    .line 1310
    const v0, 0x7f02003f

    invoke-direct {p0, v1, v0}, Lcom/asus/DLNA/MediaControl;->updateControllerIcons(II)V

    goto :goto_0

    .line 1312
    :cond_1
    const v0, 0x7f020035

    invoke-direct {p0, v1, v0}, Lcom/asus/DLNA/MediaControl;->updateControllerIcons(II)V

    goto :goto_0

    .line 1315
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 1316
    :cond_2
    iget v0, p0, Lcom/asus/DLNA/MediaControl;->mMediaPlayerState:I

    if-ne v3, v0, :cond_3

    .line 1317
    const v0, 0x7f02003d

    invoke-direct {p0, v1, v0}, Lcom/asus/DLNA/MediaControl;->updateControllerIcons(II)V

    goto :goto_0

    .line 1319
    :cond_3
    const v0, 0x7f020033

    invoke-direct {p0, v1, v0}, Lcom/asus/DLNA/MediaControl;->updateControllerIcons(II)V

    goto :goto_0

    .line 1307
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public checkFilterType(Ljava/lang/String;I)V
    .locals 4
    .parameter "strtype"
    .parameter "iPrevFilter"

    .prologue
    const/4 v3, 0x2

    .line 1247
    if-nez p1, :cond_1

    .line 1248
    iput p2, p0, Lcom/asus/DLNA/MediaControl;->mFilterType:I

    .line 1263
    :cond_0
    :goto_0
    return-void

    .line 1252
    :cond_1
    const-string v0, "Utils.MediaControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter Type= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    const-string v0, "music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1254
    const/4 v0, 0x1

    iput v0, p0, Lcom/asus/DLNA/MediaControl;->mFilterType:I

    goto :goto_0

    .line 1255
    :cond_2
    const-string v0, "gallery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1256
    iput v3, p0, Lcom/asus/DLNA/MediaControl;->mFilterType:I

    goto :goto_0

    .line 1257
    :cond_3
    const-string v0, "image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 1258
    iput v3, p0, Lcom/asus/DLNA/MediaControl;->mFilterType:I

    goto :goto_0

    .line 1259
    :cond_4
    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1260
    const/4 v0, 0x4

    iput v0, p0, Lcom/asus/DLNA/MediaControl;->mFilterType:I

    goto :goto_0
.end method

.method public clickOnFFBTN()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1696
    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isRemoteLocalMusic()Z

    move-result v5

    if-eq v6, v5, :cond_0

    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isLocalLocalMusic()Z

    move-result v5

    if-ne v6, v5, :cond_2

    .line 1698
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    invoke-interface {v5}, Lcom/asus/DLNA/IMusicPlaybackService;->duration()I

    move-result v1

    .line 1699
    .local v1, duration:I
    iget-object v5, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    invoke-interface {v5}, Lcom/asus/DLNA/IMusicPlaybackService;->position()I

    move-result v0

    .line 1701
    .local v0, curPOS:I
    add-int/lit16 v4, v0, 0xa28

    .line 1702
    .local v4, newPos:I
    if-le v4, v1, :cond_1

    .line 1703
    new-instance v3, Landroid/content/Intent;

    const-string v5, "music.playback.next"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1704
    .local v3, i:Landroid/content/Intent;
    iget-object v5, p0, Lcom/asus/DLNA/MediaControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1713
    .end local v0           #curPOS:I
    .end local v1           #duration:I
    .end local v3           #i:Landroid/content/Intent;
    .end local v4           #newPos:I
    :goto_0
    return-void

    .line 1706
    .restart local v0       #curPOS:I
    .restart local v1       #duration:I
    .restart local v4       #newPos:I
    :cond_1
    iget-object v5, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    invoke-interface {v5, v4}, Lcom/asus/DLNA/IMusicPlaybackService;->seek(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1708
    .end local v0           #curPOS:I
    .end local v1           #duration:I
    .end local v4           #newPos:I
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 1709
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1712
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v5, p0, Lcom/asus/DLNA/MediaControl;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    invoke-virtual {v5}, Lcom/asus/DLNA/SendServerCMD;->cpscanForward()V

    goto :goto_0
.end method

.method public clickOnMuteBTN()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1605
    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isRemoteLocalMusic()Z

    move-result v0

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isLocalLocalMusic()Z

    move-result v0

    if-ne v1, v0, :cond_2

    .line 1606
    :cond_0
    iget-boolean v0, p0, Lcom/asus/DLNA/MediaControl;->mCurrentMuteState:Z

    if-ne v1, v0, :cond_1

    .line 1607
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 1608
    invoke-virtual {p0, v2}, Lcom/asus/DLNA/MediaControl;->updateMuteicon(Z)V

    .line 1609
    iput-boolean v2, p0, Lcom/asus/DLNA/MediaControl;->mCurrentMuteState:Z

    .line 1627
    :goto_0
    return-void

    .line 1611
    :cond_1
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 1612
    invoke-virtual {p0, v1}, Lcom/asus/DLNA/MediaControl;->updateMuteicon(Z)V

    .line 1613
    iput-boolean v1, p0, Lcom/asus/DLNA/MediaControl;->mCurrentMuteState:Z

    goto :goto_0

    .line 1617
    :cond_2
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    invoke-virtual {v0}, Lcom/asus/DLNA/SendServerCMD;->cpMute()V

    .line 1618
    iget-boolean v0, p0, Lcom/asus/DLNA/MediaControl;->mCurrentMuteState:Z

    if-ne v1, v0, :cond_3

    .line 1619
    invoke-virtual {p0, v2}, Lcom/asus/DLNA/MediaControl;->updateMuteicon(Z)V

    .line 1620
    iput-boolean v2, p0, Lcom/asus/DLNA/MediaControl;->mCurrentMuteState:Z

    goto :goto_0

    .line 1622
    :cond_3
    invoke-virtual {p0, v1}, Lcom/asus/DLNA/MediaControl;->updateMuteicon(Z)V

    .line 1623
    iput-boolean v1, p0, Lcom/asus/DLNA/MediaControl;->mCurrentMuteState:Z

    goto :goto_0
.end method

.method public clickOnNextBTN()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1576
    invoke-virtual {p0}, Lcom/asus/DLNA/MediaControl;->clickOnStopBTN()V

    .line 1578
    iget v1, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    .line 1579
    iget v1, p0, Lcom/asus/DLNA/MediaControl;->mSource:I

    packed-switch v1, :pswitch_data_0

    .line 1601
    :goto_0
    invoke-virtual {p0}, Lcom/asus/DLNA/MediaControl;->clickOnPlayPauseBTN()V

    .line 1602
    return-void

    .line 1581
    :pswitch_0
    iget v1, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    iget-object v2, p0, Lcom/asus/DLNA/MediaControl;->mLocalContentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    iput v4, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    .line 1583
    :cond_0
    iget-object v1, p0, Lcom/asus/DLNA/MediaControl;->mLocalContentList:Ljava/util/List;

    iget v2, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/DLNA/DataItem;

    invoke-virtual {v1}, Lcom/asus/DLNA/DataItem;->getpath()Ljava/lang/String;

    move-result-object v0

    .line 1584
    .local v0, strDataPath:Ljava/lang/String;
    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isLocalLocalMusic()Z

    move-result v1

    if-ne v3, v1, :cond_1

    .line 1585
    iget-object v1, p0, Lcom/asus/DLNA/MediaControl;->mLocalContentList:Ljava/util/List;

    iget v2, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/DLNA/DataItem;

    invoke-virtual {v1}, Lcom/asus/DLNA/DataItem;->getname()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/asus/DLNA/MediaControl;->setDataSource_LocalLocalMusic(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1587
    :cond_1
    iget-object v1, p0, Lcom/asus/DLNA/MediaControl;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/asus/DLNA/SendServerCMD;->cpPushURI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1592
    .end local v0           #strDataPath:Ljava/lang/String;
    :pswitch_1
    iget v1, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    iget-object v2, p0, Lcom/asus/DLNA/MediaControl;->mRemoteContentList:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v2}, Lcom/asus/DLNA/ItemList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_2

    iput v4, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    .line 1593
    :cond_2
    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isRemoteLocalMusic()Z

    move-result v1

    if-ne v3, v1, :cond_3

    .line 1594
    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->setDataSource_RemoteLocalMusic()V

    goto :goto_0

    .line 1596
    :cond_3
    iget-object v1, p0, Lcom/asus/DLNA/MediaControl;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    iget v2, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    invoke-virtual {v1, v2}, Lcom/asus/DLNA/SendServerCMD;->cpSetUri(I)V

    goto :goto_0

    .line 1579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public clickOnPlayPauseBTN()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1500
    iget v0, p0, Lcom/asus/DLNA/MediaControl;->mMediaPlayerState:I

    packed-switch v0, :pswitch_data_0

    .line 1532
    :goto_0
    return-void

    .line 1503
    :pswitch_0
    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isRemoteLocalMusic()Z

    move-result v0

    if-eq v2, v0, :cond_0

    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isLocalLocalMusic()Z

    move-result v0

    if-ne v2, v0, :cond_4

    .line 1504
    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    if-eqz v0, :cond_1

    .line 1505
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSendMediaPlayerCMD:Lcom/asus/DLNA/SendMediaPlayerCMD;

    iget-object v1, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/SendMediaPlayerCMD;->cpPlay(Lcom/asus/DLNA/IMusicPlaybackService;)V

    .line 1511
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isRemoteLocalMusic()Z

    move-result v0

    if-eq v2, v0, :cond_2

    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isLocalLocalMusic()Z

    move-result v0

    if-ne v2, v0, :cond_5

    .line 1513
    :cond_2
    iget v0, p0, Lcom/asus/DLNA/MediaControl;->mMediaPlayerState:I

    if-ne v3, v0, :cond_3

    .line 1514
    invoke-virtual {p0}, Lcom/asus/DLNA/MediaControl;->updateSeekBar()V

    .line 1518
    :cond_3
    :goto_2
    invoke-direct {p0, v2}, Lcom/asus/DLNA/MediaControl;->updateCurrentState(I)V

    goto :goto_0

    .line 1508
    :cond_4
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    invoke-virtual {v0}, Lcom/asus/DLNA/SendServerCMD;->cpPlay()V

    goto :goto_1

    .line 1516
    :cond_5
    invoke-virtual {p0}, Lcom/asus/DLNA/MediaControl;->updateSeekBar()V

    goto :goto_2

    .line 1522
    :pswitch_1
    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isRemoteLocalMusic()Z

    move-result v0

    if-eq v2, v0, :cond_6

    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isLocalLocalMusic()Z

    move-result v0

    if-ne v2, v0, :cond_8

    .line 1523
    :cond_6
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    if-eqz v0, :cond_7

    .line 1524
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSendMediaPlayerCMD:Lcom/asus/DLNA/SendMediaPlayerCMD;

    iget-object v1, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/SendMediaPlayerCMD;->cpPause(Lcom/asus/DLNA/IMusicPlaybackService;)V

    .line 1528
    :cond_7
    :goto_3
    invoke-direct {p0, v3}, Lcom/asus/DLNA/MediaControl;->updateCurrentState(I)V

    goto :goto_0

    .line 1527
    :cond_8
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    invoke-virtual {v0}, Lcom/asus/DLNA/SendServerCMD;->cpPause()V

    goto :goto_3

    .line 1500
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clickOnPreviousBTN()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1548
    invoke-virtual {p0}, Lcom/asus/DLNA/MediaControl;->clickOnStopBTN()V

    .line 1550
    iget v1, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    .line 1551
    iget v1, p0, Lcom/asus/DLNA/MediaControl;->mSource:I

    packed-switch v1, :pswitch_data_0

    .line 1572
    :goto_0
    invoke-virtual {p0}, Lcom/asus/DLNA/MediaControl;->clickOnPlayPauseBTN()V

    .line 1573
    return-void

    .line 1553
    :pswitch_0
    iget v1, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/asus/DLNA/MediaControl;->mLocalContentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    .line 1554
    :cond_0
    iget-object v1, p0, Lcom/asus/DLNA/MediaControl;->mLocalContentList:Ljava/util/List;

    iget v2, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/DLNA/DataItem;

    invoke-virtual {v1}, Lcom/asus/DLNA/DataItem;->getpath()Ljava/lang/String;

    move-result-object v0

    .line 1555
    .local v0, strDataPath:Ljava/lang/String;
    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isLocalLocalMusic()Z

    move-result v1

    if-ne v3, v1, :cond_1

    .line 1556
    iget-object v1, p0, Lcom/asus/DLNA/MediaControl;->mLocalContentList:Ljava/util/List;

    iget v2, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/DLNA/DataItem;

    invoke-virtual {v1}, Lcom/asus/DLNA/DataItem;->getname()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/asus/DLNA/MediaControl;->setDataSource_LocalLocalMusic(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1558
    :cond_1
    iget-object v1, p0, Lcom/asus/DLNA/MediaControl;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/asus/DLNA/SendServerCMD;->cpPushURI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1563
    .end local v0           #strDataPath:Ljava/lang/String;
    :pswitch_1
    iget v1, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/asus/DLNA/MediaControl;->mRemoteContentList:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v1}, Lcom/asus/DLNA/ItemList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    .line 1564
    :cond_2
    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isRemoteLocalMusic()Z

    move-result v1

    if-ne v3, v1, :cond_3

    .line 1565
    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->setDataSource_RemoteLocalMusic()V

    goto :goto_0

    .line 1567
    :cond_3
    iget-object v1, p0, Lcom/asus/DLNA/MediaControl;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    iget v2, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    invoke-virtual {v1, v2}, Lcom/asus/DLNA/SendServerCMD;->cpSetUri(I)V

    goto :goto_0

    .line 1551
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public clickOnRewindBTN()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1677
    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isRemoteLocalMusic()Z

    move-result v4

    if-eq v5, v4, :cond_0

    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isLocalLocalMusic()Z

    move-result v4

    if-ne v5, v4, :cond_2

    .line 1679
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    invoke-interface {v4}, Lcom/asus/DLNA/IMusicPlaybackService;->position()I

    move-result v0

    .line 1681
    .local v0, curPOS:I
    const/16 v4, 0xa28

    sub-int v3, v0, v4

    .line 1682
    .local v3, newPos:I
    if-gez v3, :cond_1

    .line 1683
    new-instance v2, Landroid/content/Intent;

    const-string v4, "music.playback.previous"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1684
    .local v2, i:Landroid/content/Intent;
    iget-object v4, p0, Lcom/asus/DLNA/MediaControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1694
    .end local v0           #curPOS:I
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #newPos:I
    :goto_0
    return-void

    .line 1686
    .restart local v0       #curPOS:I
    .restart local v3       #newPos:I
    :cond_1
    iget-object v4, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    invoke-interface {v4, v3}, Lcom/asus/DLNA/IMusicPlaybackService;->seek(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1688
    .end local v0           #curPOS:I
    .end local v3           #newPos:I
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1689
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1692
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v4, p0, Lcom/asus/DLNA/MediaControl;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    invoke-virtual {v4}, Lcom/asus/DLNA/SendServerCMD;->cpscanBackward()V

    goto :goto_0
.end method

.method public clickOnStopBTN()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1535
    iget v0, p0, Lcom/asus/DLNA/MediaControl;->mMediaPlayerState:I

    if-eqz v0, :cond_2

    .line 1536
    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isRemoteLocalMusic()Z

    move-result v0

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isLocalLocalMusic()Z

    move-result v0

    if-ne v1, v0, :cond_3

    .line 1537
    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    if-eqz v0, :cond_1

    .line 1538
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSendMediaPlayerCMD:Lcom/asus/DLNA/SendMediaPlayerCMD;

    iget-object v1, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/SendMediaPlayerCMD;->cpStop(Lcom/asus/DLNA/IMusicPlaybackService;)V

    .line 1542
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/asus/DLNA/MediaControl;->updateCurrentState(I)V

    .line 1544
    :cond_2
    return-void

    .line 1541
    :cond_3
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    invoke-virtual {v0}, Lcom/asus/DLNA/SendServerCMD;->cpStop()V

    goto :goto_0
.end method

.method public clickOnVoluDownBTN()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1670
    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isRemoteLocalMusic()Z

    move-result v0

    if-eq v3, v0, :cond_0

    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isLocalLocalMusic()Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 1671
    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 1674
    :goto_0
    return-void

    .line 1673
    :cond_1
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    invoke-virtual {v0}, Lcom/asus/DLNA/SendServerCMD;->cpVolDOWN()V

    goto :goto_0
.end method

.method public clickOnVoluUpBTN()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1663
    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isRemoteLocalMusic()Z

    move-result v0

    if-eq v2, v0, :cond_0

    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isLocalLocalMusic()Z

    move-result v0

    if-ne v2, v0, :cond_1

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 1667
    :goto_0
    return-void

    .line 1666
    :cond_1
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    invoke-virtual {v0}, Lcom/asus/DLNA/SendServerCMD;->cpVolUP()V

    goto :goto_0
.end method

.method protected deinit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1044
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/DLNA/MediaControl;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1046
    iput-object v2, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    .line 1047
    iput-object v2, p0, Lcom/asus/DLNA/MediaControl;->mConnection:Landroid/content/ServiceConnection;

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSendMediaPlayerCMD:Lcom/asus/DLNA/SendMediaPlayerCMD;

    if-eqz v0, :cond_1

    .line 1050
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSendMediaPlayerCMD:Lcom/asus/DLNA/SendMediaPlayerCMD;

    invoke-virtual {v0}, Lcom/asus/DLNA/SendMediaPlayerCMD;->deinit()V

    .line 1051
    iput-object v2, p0, Lcom/asus/DLNA/MediaControl;->mSendMediaPlayerCMD:Lcom/asus/DLNA/SendMediaPlayerCMD;

    .line 1053
    :cond_1
    iput-object v2, p0, Lcom/asus/DLNA/MediaControl;->mControlPanerlLL:Landroid/widget/LinearLayout;

    .line 1054
    iput-object v2, p0, Lcom/asus/DLNA/MediaControl;->mSubControlPanerlLL:Landroid/widget/LinearLayout;

    .line 1055
    iput-object v2, p0, Lcom/asus/DLNA/MediaControl;->mSeekBarLL:Landroid/widget/LinearLayout;

    .line 1056
    iput-object v2, p0, Lcom/asus/DLNA/MediaControl;->mScrollIndicator:Landroid/widget/ImageView;

    .line 1057
    iput-object v2, p0, Lcom/asus/DLNA/MediaControl;->mPreviousButton:Landroid/widget/ImageButton;

    .line 1058
    iput-object v2, p0, Lcom/asus/DLNA/MediaControl;->mRewind:Landroid/widget/ImageButton;

    .line 1059
    iput-object v2, p0, Lcom/asus/DLNA/MediaControl;->mStopButton:Landroid/widget/ImageButton;

    .line 1060
    iput-object v2, p0, Lcom/asus/DLNA/MediaControl;->mFF:Landroid/widget/ImageButton;

    .line 1061
    iput-object v2, p0, Lcom/asus/DLNA/MediaControl;->mNextButton:Landroid/widget/ImageButton;

    .line 1062
    iput-object v2, p0, Lcom/asus/DLNA/MediaControl;->mMuteButton:Landroid/widget/ImageButton;

    .line 1063
    iput-object v2, p0, Lcom/asus/DLNA/MediaControl;->mVolUpButton:Landroid/widget/ImageButton;

    .line 1064
    iput-object v2, p0, Lcom/asus/DLNA/MediaControl;->mVolDownButton:Landroid/widget/ImageButton;

    .line 1065
    iput-object v2, p0, Lcom/asus/DLNA/MediaControl;->mPlayToButton:Landroid/widget/Button;

    .line 1066
    iput-object v2, p0, Lcom/asus/DLNA/MediaControl;->mActivity:Landroid/app/Activity;

    .line 1067
    return-void
.end method

.method public doDisableControlBTN()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1169
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mPreviousButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1170
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mRewind:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1171
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1172
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mFF:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1173
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1174
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1175
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolUpButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1176
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolDownButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1177
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mPlayToButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1178
    return-void
.end method

.method public doEnableControlBTN()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1181
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mPreviousButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1182
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mRewind:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1183
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1184
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mFF:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1185
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1186
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1187
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolUpButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1188
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolDownButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1189
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mPlayToButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1190
    return-void
.end method

.method getCurrentMediaFileType()I
    .locals 1

    .prologue
    .line 1431
    iget v0, p0, Lcom/asus/DLNA/MediaControl;->mCurrentType:I

    return v0
.end method

.method public getCurrentMuteState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1631
    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isRemoteLocalMusic()Z

    move-result v0

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isLocalLocalMusic()Z

    move-result v0

    if-ne v1, v0, :cond_2

    .line 1633
    :cond_0
    iput-boolean v1, p0, Lcom/asus/DLNA/MediaControl;->mCurrentMuteState:Z

    .line 1635
    iget-boolean v0, p0, Lcom/asus/DLNA/MediaControl;->mCurrentMuteState:Z

    if-nez v0, :cond_1

    .line 1636
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/MediaControl;->updateMuteicon(Z)V

    .line 1642
    :goto_0
    return-void

    .line 1638
    :cond_1
    invoke-virtual {p0, v1}, Lcom/asus/DLNA/MediaControl;->updateMuteicon(Z)V

    goto :goto_0

    .line 1641
    :cond_2
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    invoke-virtual {v0}, Lcom/asus/DLNA/SendServerCMD;->cpQueryMuteState()V

    goto :goto_0
.end method

.method public getCurrentState()I
    .locals 1

    .prologue
    .line 1277
    iget v0, p0, Lcom/asus/DLNA/MediaControl;->mMediaPlayerState:I

    return v0
.end method

.method public getNowFilterType()I
    .locals 1

    .prologue
    .line 1265
    iget v0, p0, Lcom/asus/DLNA/MediaControl;->mFilterType:I

    return v0
.end method

.method public hideControllerPannel(Z)V
    .locals 4
    .parameter "bhide"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1112
    if-ne v3, p1, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSubControlPanerlLL:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1114
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mScrollIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02001d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1115
    iput-boolean v3, p0, Lcom/asus/DLNA/MediaControl;->mbHidingCTLPanel:Z

    .line 1136
    :goto_0
    return-void

    .line 1117
    :cond_0
    invoke-virtual {p0}, Lcom/asus/DLNA/MediaControl;->getCurrentMuteState()V

    .line 1118
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mScrollIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1121
    invoke-virtual {p0}, Lcom/asus/DLNA/MediaControl;->getNowFilterType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1133
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSubControlPanerlLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1134
    iput-boolean v2, p0, Lcom/asus/DLNA/MediaControl;->mbHidingCTLPanel:Z

    goto :goto_0

    .line 1123
    :pswitch_1
    invoke-virtual {p0}, Lcom/asus/DLNA/MediaControl;->switchToMusicPanel()V

    goto :goto_1

    .line 1126
    :pswitch_2
    invoke-virtual {p0}, Lcom/asus/DLNA/MediaControl;->switchToPhotoPanel()V

    goto :goto_1

    .line 1129
    :pswitch_3
    invoke-virtual {p0}, Lcom/asus/DLNA/MediaControl;->switchToVideoPanel()V

    goto :goto_1

    .line 1121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public hideControllerPannel(ZZ)V
    .locals 3
    .parameter "bhide"
    .parameter "bSelectedMediaFile"

    .prologue
    const/4 v2, 0x0

    .line 1139
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 1166
    :goto_0
    return-void

    .line 1141
    :cond_0
    invoke-virtual {p0}, Lcom/asus/DLNA/MediaControl;->getCurrentMuteState()V

    .line 1142
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mScrollIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1145
    invoke-virtual {p0}, Lcom/asus/DLNA/MediaControl;->getNowFilterType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1157
    :goto_1
    :pswitch_0
    if-nez p2, :cond_1

    .line 1158
    invoke-virtual {p0}, Lcom/asus/DLNA/MediaControl;->doDisableControlBTN()V

    .line 1163
    :goto_2
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSubControlPanerlLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1164
    iput-boolean v2, p0, Lcom/asus/DLNA/MediaControl;->mbHidingCTLPanel:Z

    goto :goto_0

    .line 1147
    :pswitch_1
    invoke-virtual {p0}, Lcom/asus/DLNA/MediaControl;->switchToMusicPanel()V

    goto :goto_1

    .line 1150
    :pswitch_2
    invoke-virtual {p0}, Lcom/asus/DLNA/MediaControl;->switchToPhotoPanel()V

    goto :goto_1

    .line 1153
    :pswitch_3
    invoke-virtual {p0}, Lcom/asus/DLNA/MediaControl;->switchToVideoPanel()V

    goto :goto_1

    .line 1160
    :cond_1
    invoke-virtual {p0}, Lcom/asus/DLNA/MediaControl;->doEnableControlBTN()V

    goto :goto_2

    .line 1145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public init(Lcom/asus/DLNA/SendServerCMD;Landroid/os/Handler;)V
    .locals 3
    .parameter "SS"
    .parameter "MediaPlayStateCallbackHandler"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1000
    iput-object p1, p0, Lcom/asus/DLNA/MediaControl;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    .line 1001
    new-instance v0, Lcom/asus/DLNA/SendMediaPlayerCMD;

    invoke-direct {v0}, Lcom/asus/DLNA/SendMediaPlayerCMD;-><init>()V

    iput-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSendMediaPlayerCMD:Lcom/asus/DLNA/SendMediaPlayerCMD;

    .line 1002
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSendMediaPlayerCMD:Lcom/asus/DLNA/SendMediaPlayerCMD;

    invoke-virtual {v0}, Lcom/asus/DLNA/SendMediaPlayerCMD;->init()V

    .line 1003
    iput v1, p0, Lcom/asus/DLNA/MediaControl;->mMediaPlayerState:I

    .line 1004
    iput v1, p0, Lcom/asus/DLNA/MediaControl;->mSource:I

    .line 1005
    iput-object v2, p0, Lcom/asus/DLNA/MediaControl;->mLocalContentList:Ljava/util/List;

    .line 1006
    iput-object v2, p0, Lcom/asus/DLNA/MediaControl;->mRemoteContentList:Lcom/asus/DLNA/ItemList;

    .line 1007
    iput v1, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    .line 1008
    iput v1, p0, Lcom/asus/DLNA/MediaControl;->mCurrentType:I

    .line 1009
    iput-boolean v1, p0, Lcom/asus/DLNA/MediaControl;->mCurrentMuteState:Z

    .line 1011
    iput-boolean v1, p0, Lcom/asus/DLNA/MediaControl;->mbHidingCTLPanel:Z

    .line 1012
    iput-object p2, p0, Lcom/asus/DLNA/MediaControl;->mMediaPlayStateCallbackHandler:Landroid/os/Handler;

    .line 1013
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/asus/DLNA/MediaControl;->mControlPanerlLL:Landroid/widget/LinearLayout;

    .line 1014
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSubControlPanerlLL:Landroid/widget/LinearLayout;

    .line 1015
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f080016

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSeekBarLL:Landroid/widget/LinearLayout;

    .line 1017
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/asus/DLNA/MediaControl;->mScrollIndicator:Landroid/widget/ImageView;

    .line 1018
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asus/DLNA/MediaControl;->mPreviousButton:Landroid/widget/ImageButton;

    .line 1019
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asus/DLNA/MediaControl;->mRewind:Landroid/widget/ImageButton;

    .line 1020
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asus/DLNA/MediaControl;->mStopButton:Landroid/widget/ImageButton;

    .line 1021
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asus/DLNA/MediaControl;->mFF:Landroid/widget/ImageButton;

    .line 1022
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asus/DLNA/MediaControl;->mNextButton:Landroid/widget/ImageButton;

    .line 1023
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asus/DLNA/MediaControl;->mMuteButton:Landroid/widget/ImageButton;

    .line 1024
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolUpButton:Landroid/widget/ImageButton;

    .line 1025
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolDownButton:Landroid/widget/ImageButton;

    .line 1026
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asus/DLNA/MediaControl;->mPlayToButton:Landroid/widget/Button;

    .line 1027
    return-void
.end method

.method public isHidingControllerPanel()Z
    .locals 1

    .prologue
    .line 1107
    iget-boolean v0, p0, Lcom/asus/DLNA/MediaControl;->mbHidingCTLPanel:Z

    return v0
.end method

.method public makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "secs"

    .prologue
    const-wide/16 v7, 0xe10

    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    .line 1445
    cmp-long v2, p2, v7

    if-gez v2, :cond_0

    const v2, 0x7f070037

    :goto_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1451
    .local v0, durationformat:Ljava/lang/String;
    iget-object v2, p0, Lcom/asus/DLNA/MediaControl;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1453
    iget-object v1, p0, Lcom/asus/DLNA/MediaControl;->sTimeArgs:[Ljava/lang/Object;

    .line 1454
    .local v1, timeArgs:[Ljava/lang/Object;
    div-long v2, p2, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1455
    const/4 v2, 0x1

    div-long v3, p2, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1456
    const/4 v2, 0x2

    div-long v3, p2, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1457
    const/4 v2, 0x3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1458
    const/4 v2, 0x4

    rem-long v3, p2, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1460
    iget-object v2, p0, Lcom/asus/DLNA/MediaControl;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1445
    .end local v0           #durationformat:Ljava/lang/String;
    .end local v1           #timeArgs:[Ljava/lang/Object;
    :cond_0
    const v2, 0x7f070038

    goto :goto_0
.end method

.method public restoreMusicPlaying(III)V
    .locals 7
    .parameter "iSource"
    .parameter "iRender"
    .parameter "iType"

    .prologue
    const/4 v6, 0x1

    .line 1070
    iput p1, p0, Lcom/asus/DLNA/MediaControl;->mSource:I

    .line 1071
    iput p2, p0, Lcom/asus/DLNA/MediaControl;->mRender:I

    .line 1072
    iput p3, p0, Lcom/asus/DLNA/MediaControl;->mCurrentType:I

    .line 1073
    const/4 v0, 0x0

    .line 1076
    .local v0, bIsPlaying:Z
    const/4 v2, 0x0

    .line 1077
    .local v2, iTryCount:I
    :goto_0
    iget-object v4, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    if-nez v4, :cond_0

    const/4 v4, 0x3

    if-ge v2, v4, :cond_0

    .line 1078
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 1079
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1082
    :cond_0
    iget-object v4, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    if-nez v4, :cond_1

    .line 1104
    :goto_1
    return-void

    .line 1087
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    invoke-interface {v4}, Lcom/asus/DLNA/IMusicPlaybackService;->isPlaying()Z

    move-result v0

    .line 1088
    iget-object v4, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    invoke-interface {v4}, Lcom/asus/DLNA/IMusicPlaybackService;->position()I

    move-result v4

    div-int/lit16 v3, v4, 0x3e8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    .local v3, icurPOS:I
    if-ne v6, v0, :cond_3

    .line 1096
    invoke-direct {p0, v6}, Lcom/asus/DLNA/MediaControl;->updateCurrentState(I)V

    .line 1103
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/asus/DLNA/MediaControl;->updateSeekBar()V

    goto :goto_1

    .line 1089
    .end local v3           #icurPOS:I
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1090
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1097
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v3       #icurPOS:I
    :cond_3
    if-eqz v3, :cond_4

    .line 1098
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/asus/DLNA/MediaControl;->updateCurrentState(I)V

    goto :goto_2

    .line 1099
    :cond_4
    if-eqz v3, :cond_2

    .line 1100
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/asus/DLNA/MediaControl;->updateCurrentState(I)V

    goto :goto_2
.end method

.method public setDataSource(IILjava/lang/Object;I)V
    .locals 6
    .parameter "iSource"
    .parameter "iRender"
    .parameter "objList"
    .parameter "iPOS"

    .prologue
    const/4 v5, 0x1

    .line 1352
    iput p1, p0, Lcom/asus/DLNA/MediaControl;->mSource:I

    .line 1353
    iput p2, p0, Lcom/asus/DLNA/MediaControl;->mRender:I

    .line 1354
    iput p4, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    .line 1356
    invoke-virtual {p0}, Lcom/asus/DLNA/MediaControl;->clickOnStopBTN()V

    .line 1358
    iget v2, p0, Lcom/asus/DLNA/MediaControl;->mSource:I

    packed-switch v2, :pswitch_data_0

    .line 1393
    .end local p3
    :goto_0
    return-void

    .line 1360
    .restart local p3
    :pswitch_0
    check-cast p3, Ljava/util/List;

    .end local p3
    iput-object p3, p0, Lcom/asus/DLNA/MediaControl;->mLocalContentList:Ljava/util/List;

    .line 1362
    iget-object v2, p0, Lcom/asus/DLNA/MediaControl;->mLocalContentList:Ljava/util/List;

    iget v3, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/DLNA/DataItem;

    invoke-virtual {v2}, Lcom/asus/DLNA/DataItem;->getcategory()I

    move-result v2

    iput v2, p0, Lcom/asus/DLNA/MediaControl;->mCurrentType:I

    .line 1364
    iget-object v2, p0, Lcom/asus/DLNA/MediaControl;->mLocalContentList:Ljava/util/List;

    iget v3, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/DLNA/DataItem;

    invoke-virtual {v2}, Lcom/asus/DLNA/DataItem;->getpath()Ljava/lang/String;

    move-result-object v1

    .line 1365
    .local v1, strDataPath:Ljava/lang/String;
    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isLocalLocalMusic()Z

    move-result v2

    if-ne v5, v2, :cond_0

    .line 1366
    iget-object v2, p0, Lcom/asus/DLNA/MediaControl;->mLocalContentList:Ljava/util/List;

    iget v3, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/DLNA/DataItem;

    invoke-virtual {v2}, Lcom/asus/DLNA/DataItem;->getname()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/asus/DLNA/MediaControl;->setDataSource_LocalLocalMusic(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1368
    :cond_0
    iget-object v2, p0, Lcom/asus/DLNA/MediaControl;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lcom/asus/DLNA/SendServerCMD;->cpPushURI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1375
    .end local v1           #strDataPath:Ljava/lang/String;
    .restart local p3
    :pswitch_1
    check-cast p3, Lcom/asus/DLNA/ItemList;

    .end local p3
    iput-object p3, p0, Lcom/asus/DLNA/MediaControl;->mRemoteContentList:Lcom/asus/DLNA/ItemList;

    .line 1377
    iget-object v2, p0, Lcom/asus/DLNA/MediaControl;->mRemoteContentList:Lcom/asus/DLNA/ItemList;

    iget v3, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    invoke-virtual {v2, v3}, Lcom/asus/DLNA/ItemList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/DLNA/Item;

    invoke-virtual {v2}, Lcom/asus/DLNA/Item;->getEntryInfo()Lcom/awox/jUPnPCP/CDSEntryInfo;

    move-result-object v2

    sget v3, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_ItemClassName:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v0

    .line 1378
    .local v0, sType:Ljava/lang/String;
    const-string v2, "object.item.audioItem.musicTrack"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "object.item.audioItem"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1379
    :cond_1
    iput v5, p0, Lcom/asus/DLNA/MediaControl;->mCurrentType:I

    .line 1385
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isRemoteLocalMusic()Z

    move-result v2

    if-ne v5, v2, :cond_7

    .line 1386
    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->setDataSource_RemoteLocalMusic()V

    goto :goto_0

    .line 1380
    :cond_3
    const-string v2, "object.item.imageItem.photo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "object.item.imageItem"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1381
    :cond_4
    const/4 v2, 0x2

    iput v2, p0, Lcom/asus/DLNA/MediaControl;->mCurrentType:I

    goto :goto_1

    .line 1382
    :cond_5
    const-string v2, "object.item.videoItem.movie"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "object.item.videoItem"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1383
    :cond_6
    const/4 v2, 0x4

    iput v2, p0, Lcom/asus/DLNA/MediaControl;->mCurrentType:I

    goto :goto_1

    .line 1388
    :cond_7
    iget-object v2, p0, Lcom/asus/DLNA/MediaControl;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    iget v3, p0, Lcom/asus/DLNA/MediaControl;->mNowPlayingPOS:I

    invoke-virtual {v2, v3}, Lcom/asus/DLNA/SendServerCMD;->cpSetUri(I)V

    goto/16 :goto_0

    .line 1358
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSeekBar(I)V
    .locals 3
    .parameter "NewPOS"

    .prologue
    const/4 v2, 0x1

    .line 1464
    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isRemoteLocalMusic()Z

    move-result v1

    if-eq v2, v1, :cond_0

    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isLocalLocalMusic()Z

    move-result v1

    if-ne v2, v1, :cond_1

    .line 1466
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    add-int/lit8 v2, p1, 0x3

    mul-int/lit16 v2, v2, 0x3e8

    invoke-interface {v1, v2}, Lcom/asus/DLNA/IMusicPlaybackService;->seek(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1472
    :goto_0
    return-void

    .line 1467
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1468
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1471
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/asus/DLNA/MediaControl;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    invoke-virtual {v1, p1}, Lcom/asus/DLNA/SendServerCMD;->cpSetSeekBar(I)V

    goto :goto_0
.end method

.method public switchToMusicPanel()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1193
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSeekBarLL:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSeekBarLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1194
    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mRewind:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mRewind:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1195
    :cond_1
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mStopButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1196
    :cond_2
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mFF:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mFF:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1198
    :cond_3
    iget v0, p0, Lcom/asus/DLNA/MediaControl;->mRender:I

    if-nez v0, :cond_8

    .line 1199
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mMuteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1200
    :cond_4
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolUpButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolUpButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1201
    :cond_5
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolDownButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolDownButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1202
    :cond_6
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mPlayToButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mPlayToButton:Landroid/widget/Button;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1209
    :cond_7
    :goto_0
    return-void

    .line 1204
    :cond_8
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mMuteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1205
    :cond_9
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolUpButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolUpButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1206
    :cond_a
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolDownButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolDownButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1207
    :cond_b
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mPlayToButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mPlayToButton:Landroid/widget/Button;

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public switchToPhotoPanel()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1213
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSeekBarLL:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSeekBarLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mRewind:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mRewind:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1215
    :cond_1
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mStopButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1216
    :cond_2
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mFF:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mFF:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1217
    :cond_3
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mMuteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1218
    :cond_4
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolUpButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolUpButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1219
    :cond_5
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolDownButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolDownButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1220
    :cond_6
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mPlayToButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mPlayToButton:Landroid/widget/Button;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1221
    :cond_7
    return-void
.end method

.method public switchToVideoPanel()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1225
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSeekBarLL:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSeekBarLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1226
    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mRewind:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mRewind:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1227
    :cond_1
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mStopButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1228
    :cond_2
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mFF:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mFF:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1230
    :cond_3
    iget v0, p0, Lcom/asus/DLNA/MediaControl;->mRender:I

    if-nez v0, :cond_8

    .line 1231
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mMuteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1232
    :cond_4
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolUpButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolUpButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1233
    :cond_5
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolDownButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolDownButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1234
    :cond_6
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mPlayToButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mPlayToButton:Landroid/widget/Button;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1242
    :cond_7
    :goto_0
    return-void

    .line 1236
    :cond_8
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mMuteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1237
    :cond_9
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolUpButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolUpButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1238
    :cond_a
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolDownButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mVolDownButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1239
    :cond_b
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mPlayToButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mPlayToButton:Landroid/widget/Button;

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public updateContentList(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "objLocalList"
    .parameter "objRemoteList"

    .prologue
    const/4 v0, 0x0

    .line 1327
    if-eqz p1, :cond_0

    .line 1328
    iput-object v0, p0, Lcom/asus/DLNA/MediaControl;->mLocalContentList:Ljava/util/List;

    .line 1329
    check-cast p1, Ljava/util/List;

    .end local p1
    iput-object p1, p0, Lcom/asus/DLNA/MediaControl;->mLocalContentList:Ljava/util/List;

    .line 1332
    :cond_0
    if-eqz p2, :cond_1

    .line 1333
    iput-object v0, p0, Lcom/asus/DLNA/MediaControl;->mRemoteContentList:Lcom/asus/DLNA/ItemList;

    .line 1334
    check-cast p2, Lcom/asus/DLNA/ItemList;

    .end local p2
    iput-object p2, p0, Lcom/asus/DLNA/MediaControl;->mRemoteContentList:Lcom/asus/DLNA/ItemList;

    .line 1337
    :cond_1
    return-void
.end method

.method public updateCurrentMuteState(Z)V
    .locals 1
    .parameter "bIsMute"

    .prologue
    .line 1646
    iput-boolean p1, p0, Lcom/asus/DLNA/MediaControl;->mCurrentMuteState:Z

    .line 1647
    iget-boolean v0, p0, Lcom/asus/DLNA/MediaControl;->mCurrentMuteState:Z

    if-nez v0, :cond_0

    .line 1648
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/MediaControl;->updateMuteicon(Z)V

    .line 1651
    :goto_0
    return-void

    .line 1650
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/MediaControl;->updateMuteicon(Z)V

    goto :goto_0
.end method

.method public updateMuteicon(Z)V
    .locals 2
    .parameter "bIsMute"

    .prologue
    .line 1654
    if-nez p1, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mMuteButton:Landroid/widget/ImageButton;

    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1660
    :goto_0
    return-void

    .line 1657
    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mMuteButton:Landroid/widget/ImageButton;

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateNowFilterType(I)V
    .locals 1
    .parameter "iNewFilterType"

    .prologue
    .line 1267
    iput p1, p0, Lcom/asus/DLNA/MediaControl;->mFilterType:I

    .line 1268
    iget-object v0, p0, Lcom/asus/DLNA/MediaControl;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    invoke-virtual {v0, p1}, Lcom/asus/DLNA/SendServerCMD;->cpUpdateFilter(I)V

    .line 1269
    return-void
.end method

.method public updateRenderDevice(I)V
    .locals 0
    .parameter "iRender"

    .prologue
    .line 1342
    iput p1, p0, Lcom/asus/DLNA/MediaControl;->mRender:I

    .line 1343
    return-void
.end method

.method public updateSeekBar()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1475
    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isRemoteLocalMusic()Z

    move-result v4

    if-eq v5, v4, :cond_0

    invoke-direct {p0}, Lcom/asus/DLNA/MediaControl;->isLocalLocalMusic()Z

    move-result v4

    if-ne v5, v4, :cond_2

    .line 1478
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    invoke-interface {v4}, Lcom/asus/DLNA/IMusicPlaybackService;->duration()I

    move-result v4

    div-int/lit16 v1, v4, 0x3e8

    .line 1479
    .local v1, duration:I
    iget-object v4, p0, Lcom/asus/DLNA/MediaControl;->mService:Lcom/asus/DLNA/IMusicPlaybackService;

    invoke-interface {v4}, Lcom/asus/DLNA/IMusicPlaybackService;->position()I

    move-result v4

    div-int/lit16 v0, v4, 0x3e8

    .line 1481
    .local v0, curPOS:I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 1482
    .local v3, msg:Landroid/os/Message;
    const/16 v4, 0x1f4

    iput v4, v3, Landroid/os/Message;->what:I

    .line 1484
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 1485
    iput v0, v3, Landroid/os/Message;->arg2:I

    .line 1486
    iget-object v4, p0, Lcom/asus/DLNA/MediaControl;->mMediaPlayStateCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1497
    .end local v0           #curPOS:I
    .end local v1           #duration:I
    .end local v3           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 1489
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 1490
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1494
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/asus/DLNA/MediaControl;->getCurrentMediaFileType()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 1495
    iget-object v4, p0, Lcom/asus/DLNA/MediaControl;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    invoke-virtual {v4}, Lcom/asus/DLNA/SendServerCMD;->cpUpdateSeekBar()V

    goto :goto_0
.end method

.method public updateSourceRenderDevice(II)V
    .locals 0
    .parameter "iSource"
    .parameter "iRender"

    .prologue
    .line 1346
    iput p1, p0, Lcom/asus/DLNA/MediaControl;->mSource:I

    .line 1347
    iput p2, p0, Lcom/asus/DLNA/MediaControl;->mRender:I

    .line 1348
    return-void
.end method
