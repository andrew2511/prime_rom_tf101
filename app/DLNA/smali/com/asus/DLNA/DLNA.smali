.class public Lcom/asus/DLNA/DLNA;
.super Landroid/app/Activity;
.source "DLNA.java"

# interfaces
.implements Lcom/asus/DLNA/MediaControl$FilterType;
.implements Lcom/asus/DLNA/MediaControl$Defs;
.implements Lcom/asus/DLNA/MediaControl$MediaPlayerState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;,
        Lcom/asus/DLNA/DLNA$LocalContentListAdapter;,
        Lcom/asus/DLNA/DLNA$RenderListAdapter;,
        Lcom/asus/DLNA/DLNA$DeviceListAdapter;,
        Lcom/asus/DLNA/DLNA$NodeInfo;
    }
.end annotation


# static fields
.field private static final DMS_CMD_DISABLE:Ljava/lang/String; = "dms.cmd.disable"

.field private static final DMS_CMD_ENABLE:Ljava/lang/String; = "dms.cmd.enable"

.field private static final INTENT_KEY_ITEMNAME_LIST:Ljava/lang/String; = "ItemNameList"

.field private static final INTENT_KEY_ITEM_LIST:Ljava/lang/String; = "ItemList"

.field private static final INTENT_KEY_ITEM_NOWPOS:Ljava/lang/String; = "ItemNowPOS"

.field private static final INTENT_KEY_RENDER_LIST:Ljava/lang/String; = "RenderList"

.field private static final INTENT_KEY_RENDER_NOWPOS:Ljava/lang/String; = "RenderNowPOS"

.field private static final INTENT_KEY_SOURCE_NAME:Ljava/lang/String; = "SourceName"

.field private static final MESG_DELAY_TIME:I = 0xbb8

.field private static final MUSIC_PLAYBACK_COMPLETED:Ljava/lang/String; = "music.playback.complete"

.field private static final MUSIC_PLAYBACK_ERROR:Ljava/lang/String; = "music.playback.error"

.field private static final MUSIC_PLAYBACK_NEXT:Ljava/lang/String; = "music.playback.next"

.field private static final MUSIC_PLAYBACK_PREPARED:Ljava/lang/String; = "music.playback.prepared"

.field private static final MUSIC_PLAYBACK_PREVIOUS:Ljava/lang/String; = "music.playback.previous"

.field private static final NOTIFY_CHECK_DLNA_DEVICES:I = 0x14

.field private static final NOTIFY_CHECK_DMS_SETTINGS:I = 0x15

.field private static final NOTIFY_HIDE_CONTROL_PANEL:I = 0x0

.field private static final NOTIFY_SHOW_CONTROL_PANEL:I = 0x1

.field private static final PREFS_NAME:Ljava/lang/String; = "DLNAPrefsFile"

.field private static final PREV_CURRENT_PLAYING_PATH:Ljava/lang/String; = "PreCurrentPlayingPath"

.field private static final PREV_CURRENT_PLAYING_POS:Ljava/lang/String; = "PreCurrentPlayingPos"

.field private static final PREV_CURRENT_PLAYING_RENDER:Ljava/lang/String; = "PreCurrentPlayingRender"

.field private static final PREV_CURRENT_PLAYING_SERVER:Ljava/lang/String; = "PreCurrentPlayingServer"

.field private static final PREV_CURRENT_PLAYING_TYPE:Ljava/lang/String; = "PreCurrentPlayingType"

.field private static final PREV_FILTER:Ljava/lang/String; = "PreviousFilter"

.field private static final PREV_SHOW_NO_DLNADEVICES_ALERT:Ljava/lang/String; = "ShowNoDLNADeviceAlert"

.field private static final PREV_SHOW_NO_DMSSETTINGS_ALERT:Ljava/lang/String; = "ShowNoDMSSettinsAlert"

.field private static final REQUESTCODE_LL_PHOTO:I = 0x384

.field private static final REQUESTCODE_LL_VIDEO:I = 0x385

.field private static final REQUESTCODE_RL_PHOTO:I = 0x386

.field private static final REQUESTCODE_RL_VIDEO:I = 0x387

.field private static final TAG:Ljava/lang/String; = "DLNA"

.field private static mbReViewedAlert:Z


# instance fields
.field private ControlPanerClick:Landroid/view/View$OnClickListener;

.field private FfwdListener:Landroid/view/View$OnClickListener;

.field private ICON_FOLDER:I

.field private ICON_IMAGE:I

.field private ICON_MUSIC:I

.field private ICON_VIDEO:I

.field private PlaytoButtonClick:Landroid/view/View$OnClickListener;

.field private RewListener:Landroid/view/View$OnClickListener;

.field private backBTNCallback:Landroid/view/View$OnClickListener;

.field private bmNowPlayingList:Z

.field private final constBitmapLimitNumber:I

.field private contentItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private deviceItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mAlertAbout:Landroid/app/AlertDialog;

.field private mAlertNoDLNADevice:Landroid/app/AlertDialog;

.field private mAlertNotifyEnableDMSSetting:Landroid/app/AlertDialog;

.field private mAlertRenderList:Landroid/app/AlertDialog;

.field private mBackbtn:Landroid/widget/ImageButton;

.field private mBitmapMap:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/asus/DLNA/DLNA$NodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field mCTLPanelHandler:Landroid/os/Handler;

.field private mCheckWiFiAlert:Landroid/app/AlertDialog;

.field private mContentLV:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field private mControlPanerlLL:Landroid/widget/LinearLayout;

.field private mCurrenttime:Landroid/widget/TextView;

.field private mDLNAServer:Lcom/asus/DLNA/DLNAServer;

.field mDLNAServerCallbackHandler:Landroid/os/Handler;

.field private mDeviceAdapter:Lcom/asus/DLNA/DLNA$DeviceListAdapter;

.field private mDeviceLV:Landroid/widget/ListView;

.field private mDuration:J

.field private mFF:Landroid/widget/ImageButton;

.field private mFileName:Landroid/widget/TextView;

.field private mFilterTab:Landroid/widget/TabWidget;

.field private mFolderPathView:Landroid/widget/TextView;

.field private mFromTouch:Z

.field private mLastSeekEventTime:J

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

.field private mLocalContentListAdapter:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

.field private mLocalDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/DLNA/DeviceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalRenderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/DLNA/DeviceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaControl:Lcom/asus/DLNA/MediaControl;

.field mMediaPlayStateCallbackHandler:Landroid/os/Handler;

.field private mMeidaPlayerWaiting:Landroid/app/ProgressDialog;

.field private mMuteButton:Landroid/widget/ImageButton;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mOptionMenuButton:Landroid/widget/ImageButton;

.field private mPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/DLNA/DeviceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPathUtils:Lcom/asus/DLNA/PathUtils;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPlaybackListener:Landroid/content/BroadcastReceiver;

.field private mPlayto:Landroid/widget/Button;

.field private mPosOverride:J

.field private mPreviousButton:Landroid/widget/ImageButton;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRemoteContentAdapter:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

.field private mRemoteContentList:Lcom/asus/DLNA/ItemList;

.field private mRemoteDeviceList:Lcom/asus/DLNA/ServerList;

.field private mRemoteRenderList:Lcom/asus/DLNA/RendererList;

.field private mRenderAdapter:Lcom/asus/DLNA/DLNA$RenderListAdapter;

.field private mRenderDeviceName:Landroid/widget/TextView;

.field private mRewind:Landroid/widget/ImageButton;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mScrollIndicator:Landroid/widget/ImageView;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

.field private mSourceDeviceName:Landroid/widget/TextView;

.field private mStopButton:Landroid/widget/ImageButton;

.field private mTotaltime:Landroid/widget/TextView;

.field private mVolDownButton:Landroid/widget/ImageButton;

.field private mVolUpButton:Landroid/widget/ImageButton;

.field private mWaiting:Landroid/app/ProgressDialog;

.field private mbNOTShowDMSSettingsAlert:Z

.field private mbNOTShowNoDLNAAlert:Z

.field private menupopup:Landroid/widget/PopupMenu;

.field private miRestoreCurrentPOS:I

.field private miRestoreCurrentPath:Ljava/lang/String;

.field private miRestoreCurrentPlayingRender:I

.field private miRestoreCurrentPlayingServer:I

.field private miRestoreCurrentPlayingType:I

.field private miRestoreFilterType:I

.field private muteButtonClick:Landroid/view/View$OnClickListener;

.field private nextButtonClick:Landroid/view/View$OnClickListener;

.field private optionMenuButtonClick:Landroid/view/View$OnClickListener;

.field private pauseButtonClick:Landroid/view/View$OnClickListener;

.field private pauseButtonTouch:Landroid/view/View$OnTouchListener;

.field private previousButtonClick:Landroid/view/View$OnClickListener;

.field private renderItemClick:Landroid/content/DialogInterface$OnClickListener;

.field final runCheckRestore:Ljava/lang/Runnable;

.field private stopButtonClick:Landroid/view/View$OnClickListener;

.field private tempBufferTime:J

.field private volDownButtonClick:Landroid/view/View$OnClickListener;

.field private volUpButtonClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 120
    const v0, 0x7f020028

    iput v0, p0, Lcom/asus/DLNA/DLNA;->ICON_FOLDER:I

    .line 121
    const v0, 0x7f02002a

    iput v0, p0, Lcom/asus/DLNA/DLNA;->ICON_MUSIC:I

    .line 122
    const v0, 0x7f02002b

    iput v0, p0, Lcom/asus/DLNA/DLNA;->ICON_IMAGE:I

    .line 123
    const v0, 0x7f020029

    iput v0, p0, Lcom/asus/DLNA/DLNA;->ICON_VIDEO:I

    .line 175
    const/16 v0, 0xf

    iput v0, p0, Lcom/asus/DLNA/DLNA;->constBitmapLimitNumber:I

    .line 504
    new-instance v0, Lcom/asus/DLNA/DLNA$9;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$9;-><init>(Lcom/asus/DLNA/DLNA;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->runCheckRestore:Ljava/lang/Runnable;

    .line 511
    new-instance v0, Lcom/asus/DLNA/DLNA$10;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$10;-><init>(Lcom/asus/DLNA/DLNA;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mCTLPanelHandler:Landroid/os/Handler;

    .line 673
    new-instance v0, Lcom/asus/DLNA/DLNA$11;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$11;-><init>(Lcom/asus/DLNA/DLNA;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 710
    new-instance v0, Lcom/asus/DLNA/DLNA$12;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$12;-><init>(Lcom/asus/DLNA/DLNA;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mPlaybackListener:Landroid/content/BroadcastReceiver;

    .line 875
    new-instance v0, Lcom/asus/DLNA/DLNA$13;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$13;-><init>(Lcom/asus/DLNA/DLNA;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mDLNAServerCallbackHandler:Landroid/os/Handler;

    .line 1054
    new-instance v0, Lcom/asus/DLNA/DLNA$14;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$14;-><init>(Lcom/asus/DLNA/DLNA;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mMediaPlayStateCallbackHandler:Landroid/os/Handler;

    .line 2273
    new-instance v0, Lcom/asus/DLNA/DLNA$19;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$19;-><init>(Lcom/asus/DLNA/DLNA;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->backBTNCallback:Landroid/view/View$OnClickListener;

    .line 2303
    new-instance v0, Lcom/asus/DLNA/DLNA$20;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$20;-><init>(Lcom/asus/DLNA/DLNA;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->optionMenuButtonClick:Landroid/view/View$OnClickListener;

    .line 2362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/DLNA/DLNA;->mFromTouch:Z

    .line 2363
    iput-wide v1, p0, Lcom/asus/DLNA/DLNA;->mPosOverride:J

    .line 2364
    iput-wide v1, p0, Lcom/asus/DLNA/DLNA;->tempBufferTime:J

    .line 2366
    new-instance v0, Lcom/asus/DLNA/DLNA$21;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$21;-><init>(Lcom/asus/DLNA/DLNA;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 2396
    new-instance v0, Lcom/asus/DLNA/DLNA$22;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$22;-><init>(Lcom/asus/DLNA/DLNA;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->ControlPanerClick:Landroid/view/View$OnClickListener;

    .line 2446
    new-instance v0, Lcom/asus/DLNA/DLNA$23;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$23;-><init>(Lcom/asus/DLNA/DLNA;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->pauseButtonClick:Landroid/view/View$OnClickListener;

    .line 2484
    new-instance v0, Lcom/asus/DLNA/DLNA$24;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$24;-><init>(Lcom/asus/DLNA/DLNA;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->pauseButtonTouch:Landroid/view/View$OnTouchListener;

    .line 2495
    new-instance v0, Lcom/asus/DLNA/DLNA$25;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$25;-><init>(Lcom/asus/DLNA/DLNA;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->stopButtonClick:Landroid/view/View$OnClickListener;

    .line 2507
    new-instance v0, Lcom/asus/DLNA/DLNA$26;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$26;-><init>(Lcom/asus/DLNA/DLNA;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->previousButtonClick:Landroid/view/View$OnClickListener;

    .line 2541
    new-instance v0, Lcom/asus/DLNA/DLNA$27;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$27;-><init>(Lcom/asus/DLNA/DLNA;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->nextButtonClick:Landroid/view/View$OnClickListener;

    .line 2573
    new-instance v0, Lcom/asus/DLNA/DLNA$28;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$28;-><init>(Lcom/asus/DLNA/DLNA;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->RewListener:Landroid/view/View$OnClickListener;

    .line 2580
    new-instance v0, Lcom/asus/DLNA/DLNA$29;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$29;-><init>(Lcom/asus/DLNA/DLNA;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->FfwdListener:Landroid/view/View$OnClickListener;

    .line 2587
    new-instance v0, Lcom/asus/DLNA/DLNA$30;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$30;-><init>(Lcom/asus/DLNA/DLNA;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->muteButtonClick:Landroid/view/View$OnClickListener;

    .line 2595
    new-instance v0, Lcom/asus/DLNA/DLNA$31;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$31;-><init>(Lcom/asus/DLNA/DLNA;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->volUpButtonClick:Landroid/view/View$OnClickListener;

    .line 2603
    new-instance v0, Lcom/asus/DLNA/DLNA$32;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$32;-><init>(Lcom/asus/DLNA/DLNA;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->volDownButtonClick:Landroid/view/View$OnClickListener;

    .line 2611
    new-instance v0, Lcom/asus/DLNA/DLNA$33;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$33;-><init>(Lcom/asus/DLNA/DLNA;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->PlaytoButtonClick:Landroid/view/View$OnClickListener;

    .line 2622
    new-instance v0, Lcom/asus/DLNA/DLNA$34;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$34;-><init>(Lcom/asus/DLNA/DLNA;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->deviceItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 2668
    new-instance v0, Lcom/asus/DLNA/DLNA$35;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$35;-><init>(Lcom/asus/DLNA/DLNA;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->renderItemClick:Landroid/content/DialogInterface$OnClickListener;

    .line 2702
    new-instance v0, Lcom/asus/DLNA/DLNA$36;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$36;-><init>(Lcom/asus/DLNA/DLNA;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->contentItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private HandleServerUpnpStackError(I)V
    .locals 6
    .parameter "ierrorCode"

    .prologue
    const v5, 0x7f07000a

    const/4 v4, 0x0

    .line 1025
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error message from DLNA server = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_Cancelled:I

    if-ne p1, v1, :cond_1

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 1029
    :cond_1
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_ConnectionDeleted:I

    if-ne p1, v1, :cond_2

    .line 1030
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1031
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1032
    .end local v0           #str:Ljava/lang/String;
    :cond_2
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_ConnectionFailed:I

    if-ne p1, v1, :cond_3

    .line 1033
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1034
    .restart local v0       #str:Ljava/lang/String;
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1035
    .end local v0           #str:Ljava/lang/String;
    :cond_3
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_DeviceNoMoreAvailable:I

    if-eq p1, v1, :cond_0

    .line 1036
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_EventSubscriptionIncomplete:I

    if-eq p1, v1, :cond_0

    .line 1037
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_InvalidResponse:I

    if-eq p1, v1, :cond_0

    .line 1038
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_ServiceUnavailable:I

    if-eq p1, v1, :cond_0

    .line 1039
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_InvalidXML:I

    if-eq p1, v1, :cond_0

    .line 1040
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_InvalidDIDL:I

    if-eq p1, v1, :cond_0

    .line 1041
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_StackNotRunning:I

    if-eq p1, v1, :cond_0

    .line 1042
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_TransferFailed:I

    if-eq p1, v1, :cond_0

    .line 1043
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_InvalidClass:I

    if-eq p1, v1, :cond_0

    .line 1044
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_TransferInterrupted:I

    if-eq p1, v1, :cond_0

    .line 1045
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_FunctionUnavailable:I

    if-eq p1, v1, :cond_0

    .line 1046
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_EventUnSubscriptionIncomplete:I

    if-eq p1, v1, :cond_0

    .line 1047
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_OperationAlreadyInProgress:I

    if-eq p1, v1, :cond_0

    .line 1048
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_UnSubscriptionInProgress:I

    if-eq p1, v1, :cond_0

    .line 1049
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_SubscriptionInProgress:I

    if-ne p1, v1, :cond_0

    goto :goto_0
.end method

.method private TabWidgetListener()V
    .locals 4

    .prologue
    .line 1158
    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->mFilterTab:Landroid/widget/TabWidget;

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1159
    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->mFilterTab:Landroid/widget/TabWidget;

    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1160
    .local v1, v:Landroid/view/View;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1161
    new-instance v2, Lcom/asus/DLNA/DLNA$15;

    invoke-direct {v2, p0}, Lcom/asus/DLNA/DLNA$15;-><init>(Lcom/asus/DLNA/DLNA;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1174
    new-instance v2, Lcom/asus/DLNA/DLNA$16;

    invoke-direct {v2, p0}, Lcom/asus/DLNA/DLNA$16;-><init>(Lcom/asus/DLNA/DLNA;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1158
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1236
    .end local v1           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/asus/DLNA/DLNA;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/asus/DLNA/DLNA;->mbNOTShowNoDLNAAlert:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/asus/DLNA/DLNA;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/asus/DLNA/DLNA;->doNextFN()V

    return-void
.end method

.method static synthetic access$102(Lcom/asus/DLNA/DLNA;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/asus/DLNA/DLNA;->mbNOTShowDMSSettingsAlert:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/asus/DLNA/DLNA;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/asus/DLNA/DLNA;->doPreviousFN()V

    return-void
.end method

.method static synthetic access$1200(Lcom/asus/DLNA/DLNA;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/asus/DLNA/DLNA;->doStopFN()V

    return-void
.end method

.method static synthetic access$1300(Lcom/asus/DLNA/DLNA;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/asus/DLNA/DLNA;->fnshowFailedtoLoadToast()V

    return-void
.end method

.method static synthetic access$1400(Lcom/asus/DLNA/DLNA;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/asus/DLNA/DLNA;->fnShowMediaPlayerWaitingDialog(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ServerList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mRemoteDeviceList:Lcom/asus/DLNA/ServerList;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/asus/DLNA/DLNA;Lcom/asus/DLNA/ServerList;)Lcom/asus/DLNA/ServerList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/asus/DLNA/DLNA;->mRemoteDeviceList:Lcom/asus/DLNA/ServerList;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$DeviceListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mDeviceAdapter:Lcom/asus/DLNA/DLNA$DeviceListAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/SendServerCMD;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/asus/DLNA/DLNA;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mDeviceLV:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/asus/DLNA/DLNA;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/asus/DLNA/DLNA;->fnShowWaitingDialog(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/RendererList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mRemoteRenderList:Lcom/asus/DLNA/RendererList;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/asus/DLNA/DLNA;Lcom/asus/DLNA/RendererList;)Lcom/asus/DLNA/RendererList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/asus/DLNA/DLNA;->mRemoteRenderList:Lcom/asus/DLNA/RendererList;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RenderListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mRenderAdapter:Lcom/asus/DLNA/DLNA$RenderListAdapter;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ItemList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mRemoteContentList:Lcom/asus/DLNA/ItemList;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/asus/DLNA/DLNA;Lcom/asus/DLNA/ItemList;)Lcom/asus/DLNA/ItemList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/asus/DLNA/DLNA;->mRemoteContentList:Lcom/asus/DLNA/ItemList;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mRemoteContentAdapter:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/asus/DLNA/DLNA;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/asus/DLNA/DLNA;->HandleServerUpnpStackError(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/asus/DLNA/DLNA;Landroid/os/Message;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/asus/DLNA/DLNA;->updateSeekBarNow(Landroid/os/Message;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2600(Lcom/asus/DLNA/DLNA;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/asus/DLNA/DLNA;->queueNextRefresh(J)V

    return-void
.end method

.method static synthetic access$2700(Lcom/asus/DLNA/DLNA;)Landroid/widget/TabWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mFilterTab:Landroid/widget/TabWidget;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/asus/DLNA/DLNA;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/asus/DLNA/DLNA;->resetSeekBar()V

    return-void
.end method

.method static synthetic access$2900(Lcom/asus/DLNA/DLNA;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/asus/DLNA/DLNA;->bmNowPlayingList:Z

    return v0
.end method

.method static synthetic access$300(Lcom/asus/DLNA/DLNA;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/asus/DLNA/DLNA;->miRestoreCurrentPlayingServer:I

    return v0
.end method

.method static synthetic access$3000(Lcom/asus/DLNA/DLNA;Z[J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/asus/DLNA/DLNA;->fnquerylocaldata(Z[J)V

    return-void
.end method

.method static synthetic access$3102(Lcom/asus/DLNA/DLNA;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/asus/DLNA/DLNA;->miRestoreFilterType:I

    return p1
.end method

.method static synthetic access$3200(Lcom/asus/DLNA/DLNA;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mWaiting:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/asus/DLNA/DLNA;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mMeidaPlayerWaiting:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/asus/DLNA/DLNA;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mLocalDeviceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/asus/DLNA/DLNA;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mSourceDeviceName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/asus/DLNA/DLNA;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mLocalRenderList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/asus/DLNA/DLNA;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mRenderDeviceName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/asus/DLNA/DLNA;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mAlertRenderList:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/asus/DLNA/DLNA;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/asus/DLNA/DLNA;->miRestoreCurrentPlayingRender:I

    return v0
.end method

.method static synthetic access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mBitmapMap:Ljava/util/SortedMap;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/asus/DLNA/DLNA;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/asus/DLNA/DLNA;->ICON_MUSIC:I

    return v0
.end method

.method static synthetic access$4200(Lcom/asus/DLNA/DLNA;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/asus/DLNA/DLNA;->ICON_IMAGE:I

    return v0
.end method

.method static synthetic access$4300(Lcom/asus/DLNA/DLNA;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/asus/DLNA/DLNA;->ICON_VIDEO:I

    return v0
.end method

.method static synthetic access$4500(Lcom/asus/DLNA/DLNA;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mFileName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/asus/DLNA/DLNA;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/asus/DLNA/DLNA;->updatePreCurrentInfo(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/asus/DLNA/DLNA;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mContentLV:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/asus/DLNA/DLNA;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/asus/DLNA/DLNA;->miRestoreCurrentPlayingType:I

    return v0
.end method

.method static synthetic access$5400(Lcom/asus/DLNA/DLNA;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/asus/DLNA/DLNA;->fnCheckFileExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/asus/DLNA/DLNA;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/asus/DLNA/DLNA;->ICON_FOLDER:I

    return v0
.end method

.method static synthetic access$600(Lcom/asus/DLNA/DLNA;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/asus/DLNA/DLNA;->isItemSelected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/PathUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mPathUtils:Lcom/asus/DLNA/PathUtils;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/asus/DLNA/DLNA;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/asus/DLNA/DLNA;->fnpreparelocaldata(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/asus/DLNA/DLNA;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->menupopup:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$6802(Lcom/asus/DLNA/DLNA;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/asus/DLNA/DLNA;->menupopup:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method static synthetic access$6900(Lcom/asus/DLNA/DLNA;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mAlertAbout:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$6902(Lcom/asus/DLNA/DLNA;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/asus/DLNA/DLNA;->mAlertAbout:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/asus/DLNA/DLNA;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mLocalContentList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/asus/DLNA/DLNA;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/asus/DLNA/DLNA;->mLastSeekEventTime:J

    return-wide v0
.end method

.method static synthetic access$7002(Lcom/asus/DLNA/DLNA;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/asus/DLNA/DLNA;->mLastSeekEventTime:J

    return-wide p1
.end method

.method static synthetic access$7102(Lcom/asus/DLNA/DLNA;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/asus/DLNA/DLNA;->mFromTouch:Z

    return p1
.end method

.method static synthetic access$7200(Lcom/asus/DLNA/DLNA;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/asus/DLNA/DLNA;->mPosOverride:J

    return-wide v0
.end method

.method static synthetic access$7202(Lcom/asus/DLNA/DLNA;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/asus/DLNA/DLNA;->mPosOverride:J

    return-wide p1
.end method

.method static synthetic access$7300(Lcom/asus/DLNA/DLNA;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/asus/DLNA/DLNA;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$7400(Lcom/asus/DLNA/DLNA;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/asus/DLNA/DLNA;->tempBufferTime:J

    return-wide v0
.end method

.method static synthetic access$7402(Lcom/asus/DLNA/DLNA;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/asus/DLNA/DLNA;->tempBufferTime:J

    return-wide p1
.end method

.method static synthetic access$7500(Lcom/asus/DLNA/DLNA;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/asus/DLNA/DLNA;->searchTheFirstFileTobePlayed()I

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Lcom/asus/DLNA/DLNA;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p5}, Lcom/asus/DLNA/DLNA;->handleLocalToLocalEvent(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$7700(Lcom/asus/DLNA/DLNA;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p5}, Lcom/asus/DLNA/DLNA;->handleLocalToRemoteEvent(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$7800(Lcom/asus/DLNA/DLNA;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p5}, Lcom/asus/DLNA/DLNA;->handleRemoteToLocalEvent(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$7900(Lcom/asus/DLNA/DLNA;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p5}, Lcom/asus/DLNA/DLNA;->handleRemoteToRemoteEvent(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$800(Lcom/asus/DLNA/DLNA;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/asus/DLNA/DLNA;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p5}, Lcom/asus/DLNA/DLNA;->doPlayTo(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$900(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/DLNA$LocalContentListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mLocalContentListAdapter:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    return-object v0
.end method

.method private doNextFN()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 2549
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mDeviceAdapter:Lcom/asus/DLNA/DLNA$DeviceListAdapter;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->isSourceLocalDeviceNow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2550
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mLocalContentListAdapter:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->getNowPOS()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 2571
    :cond_0
    :goto_0
    return-void

    .line 2551
    :cond_1
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mLocalContentListAdapter:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->nextPOSIndicator()V

    .line 2553
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mRenderAdapter:Lcom/asus/DLNA/DLNA$RenderListAdapter;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$RenderListAdapter;->isRenderLocalDeviceNow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2554
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mLocalContentListAdapter:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->getNowPOS()I

    move-result v3

    .local v3, iItemPOS:I
    move-object v0, p0

    move-object v2, v1

    .line 2555
    invoke-direct/range {v0 .. v5}, Lcom/asus/DLNA/DLNA;->handleLocalToLocalEvent(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 2560
    .end local v3           #iItemPOS:I
    :cond_2
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mRemoteContentAdapter:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->getNowPOS()I

    move-result v0

    if-eq v2, v0, :cond_0

    .line 2561
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mRemoteContentAdapter:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->nextPOSIndicator()V

    .line 2563
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mRenderAdapter:Lcom/asus/DLNA/DLNA$RenderListAdapter;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$RenderListAdapter;->isRenderLocalDeviceNow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2564
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mRemoteContentAdapter:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->getNowPOS()I

    move-result v3

    .restart local v3       #iItemPOS:I
    move-object v0, p0

    move-object v2, v1

    .line 2565
    invoke-direct/range {v0 .. v5}, Lcom/asus/DLNA/DLNA;->handleRemoteToLocalEvent(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 2570
    .end local v3           #iItemPOS:I
    :cond_3
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    invoke-virtual {v0}, Lcom/asus/DLNA/MediaControl;->clickOnNextBTN()V

    goto :goto_0
.end method

.method private doPlayTo(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2713
    if-gez p3, :cond_0

    .line 2742
    :goto_0
    return-void

    .line 2718
    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mDeviceAdapter:Lcom/asus/DLNA/DLNA$DeviceListAdapter;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->isSourceLocalDeviceNow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2720
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mRenderAdapter:Lcom/asus/DLNA/DLNA$RenderListAdapter;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$RenderListAdapter;->isRenderLocalDeviceNow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2722
    iget v3, p0, Lcom/asus/DLNA/DLNA;->miRestoreFilterType:I

    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mPathUtils:Lcom/asus/DLNA/PathUtils;

    invoke-virtual {v0}, Lcom/asus/DLNA/PathUtils;->getfolderpath()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v2, v1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/asus/DLNA/DLNA;->savePreCurrentInfo(IIILjava/lang/String;I)V

    .line 2723
    invoke-direct/range {p0 .. p5}, Lcom/asus/DLNA/DLNA;->handleLocalToLocalEvent(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 2727
    :cond_1
    iget v3, p0, Lcom/asus/DLNA/DLNA;->miRestoreFilterType:I

    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mPathUtils:Lcom/asus/DLNA/PathUtils;

    invoke-virtual {v0}, Lcom/asus/DLNA/PathUtils;->getfolderpath()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/asus/DLNA/DLNA;->savePreCurrentInfo(IIILjava/lang/String;I)V

    .line 2728
    invoke-direct/range {p0 .. p5}, Lcom/asus/DLNA/DLNA;->handleLocalToRemoteEvent(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 2732
    :cond_2
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mRenderAdapter:Lcom/asus/DLNA/DLNA$RenderListAdapter;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$RenderListAdapter;->isRenderLocalDeviceNow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2733
    iget v6, p0, Lcom/asus/DLNA/DLNA;->miRestoreFilterType:I

    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mPathUtils:Lcom/asus/DLNA/PathUtils;

    invoke-virtual {v0}, Lcom/asus/DLNA/PathUtils;->getfolderpath()Ljava/lang/String;

    move-result-object v7

    move-object v3, p0

    move v4, v2

    move v5, v1

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/asus/DLNA/DLNA;->savePreCurrentInfo(IIILjava/lang/String;I)V

    .line 2735
    invoke-direct/range {p0 .. p5}, Lcom/asus/DLNA/DLNA;->handleRemoteToLocalEvent(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 2737
    :cond_3
    iget v4, p0, Lcom/asus/DLNA/DLNA;->miRestoreFilterType:I

    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mPathUtils:Lcom/asus/DLNA/PathUtils;

    invoke-virtual {v0}, Lcom/asus/DLNA/PathUtils;->getfolderpath()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move v3, v2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/asus/DLNA/DLNA;->savePreCurrentInfo(IIILjava/lang/String;I)V

    .line 2739
    invoke-direct/range {p0 .. p5}, Lcom/asus/DLNA/DLNA;->handleRemoteToRemoteEvent(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method private doPreviousFN()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 2516
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mDeviceAdapter:Lcom/asus/DLNA/DLNA$DeviceListAdapter;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->isSourceLocalDeviceNow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2517
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mLocalContentListAdapter:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->getNowPOS()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 2539
    :cond_0
    :goto_0
    return-void

    .line 2518
    :cond_1
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mLocalContentListAdapter:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->previousPOSIndicator()V

    .line 2520
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mRenderAdapter:Lcom/asus/DLNA/DLNA$RenderListAdapter;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$RenderListAdapter;->isRenderLocalDeviceNow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2521
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mLocalContentListAdapter:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->getNowPOS()I

    move-result v3

    .local v3, iItemPOS:I
    move-object v0, p0

    move-object v2, v1

    .line 2522
    invoke-direct/range {v0 .. v5}, Lcom/asus/DLNA/DLNA;->handleLocalToLocalEvent(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 2527
    .end local v3           #iItemPOS:I
    :cond_2
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mRemoteContentAdapter:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->getNowPOS()I

    move-result v0

    if-eq v2, v0, :cond_0

    .line 2528
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mRemoteContentAdapter:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->previousPOSIndicator()V

    .line 2530
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mRenderAdapter:Lcom/asus/DLNA/DLNA$RenderListAdapter;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$RenderListAdapter;->isRenderLocalDeviceNow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2531
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mRemoteContentAdapter:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->getNowPOS()I

    move-result v3

    .restart local v3       #iItemPOS:I
    move-object v0, p0

    move-object v2, v1

    .line 2532
    invoke-direct/range {v0 .. v5}, Lcom/asus/DLNA/DLNA;->handleRemoteToLocalEvent(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 2538
    .end local v3           #iItemPOS:I
    :cond_3
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    invoke-virtual {v0}, Lcom/asus/DLNA/MediaControl;->clickOnPreviousBTN()V

    goto :goto_0
.end method

.method private doStopFN()V
    .locals 1

    .prologue
    .line 2503
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    invoke-virtual {v0}, Lcom/asus/DLNA/MediaControl;->clickOnStopBTN()V

    .line 2504
    invoke-direct {p0}, Lcom/asus/DLNA/DLNA;->resetSeekBar()V

    .line 2505
    return-void
.end method

.method private fnCheckEntryPoint(Landroid/content/Intent;I)V
    .locals 2
    .parameter "it"
    .parameter "iPrevFilter"

    .prologue
    .line 740
    const-string v1, "filtertype"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, strFilterType:Ljava/lang/String;
    new-instance v1, Lcom/asus/DLNA/MediaControl;

    invoke-direct {v1, p0}, Lcom/asus/DLNA/MediaControl;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    .line 742
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    invoke-virtual {v1, v0, p2}, Lcom/asus/DLNA/MediaControl;->checkFilterType(Ljava/lang/String;I)V

    .line 743
    return-void
.end method

.method private fnCheckFileExist(Ljava/lang/String;)Z
    .locals 2
    .parameter "filepath"

    .prologue
    .line 1242
    const/4 v0, 0x0

    .line 1243
    .local v0, bExist:Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1244
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1245
    const/4 v1, 0x0

    .line 1246
    return v0
.end method

.method private fnCheckRestoreMusicPlaying()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 480
    iget v0, p0, Lcom/asus/DLNA/DLNA;->miRestoreCurrentPlayingServer:I

    if-ne v1, v0, :cond_0

    iget v0, p0, Lcom/asus/DLNA/DLNA;->miRestoreCurrentPlayingRender:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/asus/DLNA/DLNA;->miRestoreCurrentPlayingType:I

    if-ne v1, v0, :cond_0

    .line 485
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/asus/DLNA/DLNA$8;

    invoke-direct {v1, p0}, Lcom/asus/DLNA/DLNA$8;-><init>(Lcom/asus/DLNA/DLNA;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 502
    :cond_0
    return-void
.end method

.method private fnFindView()V
    .locals 1

    .prologue
    .line 746
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mFilterTab:Landroid/widget/TabWidget;

    .line 748
    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mFolderPathView:Landroid/widget/TextView;

    .line 749
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mBackbtn:Landroid/widget/ImageButton;

    .line 751
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mDeviceLV:Landroid/widget/ListView;

    .line 752
    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mContentLV:Landroid/widget/ListView;

    .line 753
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mOptionMenuButton:Landroid/widget/ImageButton;

    .line 755
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mControlPanerlLL:Landroid/widget/LinearLayout;

    .line 756
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mScrollIndicator:Landroid/widget/ImageView;

    .line 757
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mPreviousButton:Landroid/widget/ImageButton;

    .line 758
    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mRewind:Landroid/widget/ImageButton;

    .line 759
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mStopButton:Landroid/widget/ImageButton;

    .line 760
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mPauseButton:Landroid/widget/ImageButton;

    .line 761
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mFF:Landroid/widget/ImageButton;

    .line 762
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mNextButton:Landroid/widget/ImageButton;

    .line 763
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mMuteButton:Landroid/widget/ImageButton;

    .line 764
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mVolUpButton:Landroid/widget/ImageButton;

    .line 765
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mVolDownButton:Landroid/widget/ImageButton;

    .line 766
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mPlayto:Landroid/widget/Button;

    .line 768
    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mProgress:Landroid/widget/ProgressBar;

    .line 769
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mCurrenttime:Landroid/widget/TextView;

    .line 770
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mTotaltime:Landroid/widget/TextView;

    .line 772
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mSourceDeviceName:Landroid/widget/TextView;

    .line 773
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mFileName:Landroid/widget/TextView;

    .line 774
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mRenderDeviceName:Landroid/widget/TextView;

    .line 775
    return-void
.end method

.method private fnInitData(Landroid/content/Intent;)V
    .locals 7
    .parameter "it"

    .prologue
    const/4 v6, 0x0

    const v3, 0x7f030001

    const/4 v5, 0x0

    .line 778
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    invoke-virtual {v0}, Lcom/asus/DLNA/MediaControl;->getNowFilterType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 782
    :pswitch_0
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mFilterTab:Landroid/widget/TabWidget;

    invoke-virtual {v0, v5}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 785
    :goto_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mBitmapMap:Ljava/util/SortedMap;

    .line 786
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mLocalDeviceList:Ljava/util/List;

    .line 787
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mLocalRenderList:Ljava/util/List;

    .line 788
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mLocalContentList:Ljava/util/List;

    .line 789
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mPathList:Ljava/util/List;

    .line 791
    new-instance v0, Lcom/asus/DLNA/PathUtils;

    invoke-direct {v0}, Lcom/asus/DLNA/PathUtils;-><init>()V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mPathUtils:Lcom/asus/DLNA/PathUtils;

    .line 792
    new-instance v0, Lcom/asus/DLNA/SendServerCMD;

    invoke-direct {v0}, Lcom/asus/DLNA/SendServerCMD;-><init>()V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    .line 794
    new-instance v0, Lcom/asus/DLNA/DLNA$DeviceListAdapter;

    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mContext:Landroid/content/Context;

    const v2, 0x7f030003

    invoke-direct {v0, p0, v1, v2}, Lcom/asus/DLNA/DLNA$DeviceListAdapter;-><init>(Lcom/asus/DLNA/DLNA;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mDeviceAdapter:Lcom/asus/DLNA/DLNA$DeviceListAdapter;

    .line 795
    new-instance v0, Lcom/asus/DLNA/DLNA$RenderListAdapter;

    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/asus/DLNA/DLNA$RenderListAdapter;-><init>(Lcom/asus/DLNA/DLNA;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mRenderAdapter:Lcom/asus/DLNA/DLNA$RenderListAdapter;

    .line 796
    new-instance v0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v3}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;-><init>(Lcom/asus/DLNA/DLNA;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mRemoteContentAdapter:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    .line 797
    new-instance v0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v3}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;-><init>(Lcom/asus/DLNA/DLNA;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mLocalContentListAdapter:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    .line 800
    new-instance v0, Lcom/asus/DLNA/DLNAServer;

    invoke-direct {v0}, Lcom/asus/DLNA/DLNAServer;-><init>()V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mDLNAServer:Lcom/asus/DLNA/DLNAServer;

    .line 801
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mDLNAServer:Lcom/asus/DLNA/DLNAServer;

    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mDLNAServerCallbackHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->mMediaPlayStateCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/asus/DLNA/DLNAServer;->setCallback(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 802
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mDLNAServer:Lcom/asus/DLNA/DLNAServer;

    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    invoke-virtual {v2}, Lcom/asus/DLNA/MediaControl;->getNowFilterType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/asus/DLNA/DLNAServer;->InitDLNAService(Landroid/content/Context;I)V

    .line 804
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mPathUtils:Lcom/asus/DLNA/PathUtils;

    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->mFolderPathView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/asus/DLNA/DLNA;->mPathList:Ljava/util/List;

    iget-object v4, p0, Lcom/asus/DLNA/DLNA;->mDeviceLV:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/asus/DLNA/PathUtils;->Initdata(Landroid/content/Context;Landroid/widget/TextView;Ljava/util/List;Landroid/widget/ListView;)V

    .line 805
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mPathUtils:Lcom/asus/DLNA/PathUtils;

    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mLocalDeviceList:Ljava/util/List;

    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->mLocalRenderList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/asus/DLNA/PathUtils;->AddLocaldeviceToList(Ljava/util/List;Ljava/util/List;)V

    .line 806
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mDLNAServer:Lcom/asus/DLNA/DLNAServer;

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/SendServerCMD;->init(Lcom/asus/DLNA/DLNAServer;)V

    .line 807
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->mMediaPlayStateCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/asus/DLNA/MediaControl;->init(Lcom/asus/DLNA/SendServerCMD;Landroid/os/Handler;)V

    .line 808
    iput-object v6, p0, Lcom/asus/DLNA/DLNA;->mAlertRenderList:Landroid/app/AlertDialog;

    .line 809
    iput-object v6, p0, Lcom/asus/DLNA/DLNA;->menupopup:Landroid/widget/PopupMenu;

    .line 811
    sput-boolean v5, Lcom/asus/DLNA/DLNA;->mbReViewedAlert:Z

    .line 814
    invoke-direct {p0, p1}, Lcom/asus/DLNA/DLNA;->fnpreparelocaldata(Landroid/content/Intent;)V

    .line 816
    return-void

    .line 779
    :pswitch_1
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mFilterTab:Landroid/widget/TabWidget;

    invoke-virtual {v0, v5}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    goto/16 :goto_0

    .line 780
    :pswitch_2
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mFilterTab:Landroid/widget/TabWidget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    goto/16 :goto_0

    .line 781
    :pswitch_3
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mFilterTab:Landroid/widget/TabWidget;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    goto/16 :goto_0

    .line 778
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private fnSetListener()V
    .locals 3

    .prologue
    .line 1129
    invoke-direct {p0}, Lcom/asus/DLNA/DLNA;->TabWidgetListener()V

    .line 1130
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mBackbtn:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->backBTNCallback:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1131
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mDeviceLV:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->deviceItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1132
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mContentLV:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->contentItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1133
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mOptionMenuButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->optionMenuButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1135
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mControlPanerlLL:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->ControlPanerClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1136
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mPreviousButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->previousButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1137
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mRewind:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->RewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1138
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mStopButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->stopButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1139
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->pauseButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1140
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->pauseButtonTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1141
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mFF:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->FfwdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1142
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mNextButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->nextButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1143
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mMuteButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->muteButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1144
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mVolUpButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->volUpButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1145
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mVolDownButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->volDownButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1146
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mPlayto:Landroid/widget/Button;

    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->PlaytoButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1148
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mProgress:Landroid/widget/ProgressBar;

    instance-of v1, v1, Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mProgress:Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/SeekBar;

    .line 1150
    .local v0, seeker:Landroid/widget/SeekBar;
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1152
    .end local v0           #seeker:Landroid/widget/SeekBar;
    :cond_0
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1153
    return-void
.end method

.method private fnShowMediaPlayerWaitingDialog(Z)V
    .locals 2
    .parameter "bShow"

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mMeidaPlayerWaiting:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 1270
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/asus/DLNA/DLNA;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mMeidaPlayerWaiting:Landroid/app/ProgressDialog;

    .line 1271
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mMeidaPlayerWaiting:Landroid/app/ProgressDialog;

    const v1, 0x7f070035

    invoke-virtual {p0, v1}, Lcom/asus/DLNA/DLNA;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1272
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mMeidaPlayerWaiting:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1273
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mMeidaPlayerWaiting:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/asus/DLNA/DLNA$18;

    invoke-direct {v1, p0}, Lcom/asus/DLNA/DLNA$18;-><init>(Lcom/asus/DLNA/DLNA;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1281
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    .line 1282
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mMeidaPlayerWaiting:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 1283
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mMeidaPlayerWaiting:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1290
    :cond_1
    :goto_0
    return-void

    .line 1286
    :cond_2
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mMeidaPlayerWaiting:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 1287
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mMeidaPlayerWaiting:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    goto :goto_0
.end method

.method private fnShowWaitingDialog(Z)V
    .locals 2
    .parameter "bShow"

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mWaiting:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 1251
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/asus/DLNA/DLNA;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA;->mWaiting:Landroid/app/ProgressDialog;

    .line 1252
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mWaiting:Landroid/app/ProgressDialog;

    const v1, 0x7f070035

    invoke-virtual {p0, v1}, Lcom/asus/DLNA/DLNA;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1253
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mWaiting:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1254
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mWaiting:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/asus/DLNA/DLNA$17;

    invoke-direct {v1, p0}, Lcom/asus/DLNA/DLNA$17;-><init>(Lcom/asus/DLNA/DLNA;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1261
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    .line 1262
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mWaiting:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mWaiting:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1266
    :cond_1
    :goto_0
    return-void

    .line 1264
    :cond_2
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mWaiting:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mWaiting:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    goto :goto_0
.end method

.method private fnpreparelocaldata(Landroid/content/Intent;)V
    .locals 7
    .parameter "it"

    .prologue
    const/4 v6, 0x0

    .line 820
    iput-boolean v6, p0, Lcom/asus/DLNA/DLNA;->bmNowPlayingList:Z

    .line 821
    const/4 v0, 0x0

    .line 822
    .local v0, itemlists:[J
    const-wide/16 v1, 0x0

    .line 824
    .local v1, lNowPlayingIndex:J
    if-nez p1, :cond_0

    .line 825
    iput-boolean v6, p0, Lcom/asus/DLNA/DLNA;->bmNowPlayingList:Z

    .line 836
    :goto_0
    iget-boolean v3, p0, Lcom/asus/DLNA/DLNA;->bmNowPlayingList:Z

    invoke-direct {p0, v3, v0}, Lcom/asus/DLNA/DLNA;->fnquerylocaldata(Z[J)V

    .line 837
    return-void

    .line 827
    :cond_0
    const-string v3, "items"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 828
    const-string v3, "nowplayingitem"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 829
    if-nez v0, :cond_1

    .line 830
    iput-boolean v6, p0, Lcom/asus/DLNA/DLNA;->bmNowPlayingList:Z

    goto :goto_0

    .line 832
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/asus/DLNA/DLNA;->bmNowPlayingList:Z

    goto :goto_0
.end method

.method private fnquerylocaldata(Z[J)V
    .locals 3
    .parameter "bmNowPlayingList"
    .parameter "itemlists"

    .prologue
    const/4 v2, 0x0

    .line 840
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    invoke-virtual {v0}, Lcom/asus/DLNA/MediaControl;->getNowFilterType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 871
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mLocalContentListAdapter:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->notifyDataSetChanged()V

    .line 872
    return-void

    .line 842
    :pswitch_1
    if-eqz p1, :cond_1

    .line 843
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mLocalContentList:Ljava/util/List;

    invoke-static {v0, v1, p2, v2}, Lcom/asus/DLNA/DB;->queryNowPlayingSongs(Landroid/content/Context;Ljava/util/List;[JI)V

    goto :goto_0

    .line 845
    :cond_1
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mLocalContentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 846
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mLocalContentList:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/asus/DLNA/DB;->queryAllSongs(Landroid/content/Context;Ljava/util/List;I)V

    goto :goto_0

    .line 850
    :pswitch_2
    if-nez p1, :cond_0

    .line 851
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mLocalContentList:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/asus/DLNA/DB;->queryAllImagesAndVideos(Landroid/content/Context;Ljava/util/List;I)V

    goto :goto_0

    .line 854
    :pswitch_3
    if-eqz p1, :cond_2

    .line 855
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mLocalContentList:Ljava/util/List;

    invoke-static {v0, v1, p2, v2}, Lcom/asus/DLNA/DB;->queryNowPlayingImages(Landroid/content/Context;Ljava/util/List;[JI)V

    goto :goto_0

    .line 857
    :cond_2
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mLocalContentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 858
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mLocalContentList:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/asus/DLNA/DB;->queryAllImages(Landroid/content/Context;Ljava/util/List;I)V

    goto :goto_0

    .line 862
    :pswitch_4
    if-eqz p1, :cond_3

    .line 863
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mLocalContentList:Ljava/util/List;

    invoke-static {v0, v1, p2, v2}, Lcom/asus/DLNA/DB;->queryNowPlayingVideos(Landroid/content/Context;Ljava/util/List;[JI)V

    goto :goto_0

    .line 865
    :cond_3
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mLocalContentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 866
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mLocalContentList:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/asus/DLNA/DB;->queryAllVideos(Landroid/content/Context;Ljava/util/List;I)V

    goto :goto_0

    .line 840
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private fnshowFailedtoLoadToast()V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mContext:Landroid/content/Context;

    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 737
    return-void
.end method

.method private handleLocalToLocalEvent(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 26
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2746
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/asus/DLNA/MediaControl;->hideControllerPannel(Z)V

    .line 2747
    invoke-direct/range {p0 .. p0}, Lcom/asus/DLNA/DLNA;->resetSeekBar()V

    .line 2749
    const-string v19, ""

    .line 2750
    .local v19, strtype:Ljava/lang/String;
    sget-object v21, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 2752
    .local v21, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mLocalContentListAdapter:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->updateNowPlayingIndicator(I)V

    .line 2753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/asus/DLNA/MediaControl;->updateSourceRenderDevice(II)V

    .line 2756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mLocalContentList:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1           #parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    check-cast p1, Lcom/asus/DLNA/DataItem;

    invoke-virtual/range {p1 .. p1}, Lcom/asus/DLNA/DataItem;->getminetype()Ljava/lang/String;

    move-result-object v19

    .line 2757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mLocalContentList:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/asus/DLNA/DataItem;

    invoke-virtual/range {p1 .. p1}, Lcom/asus/DLNA/DataItem;->geturi()Landroid/net/Uri;

    move-result-object v21

    .line 2760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mLocalContentList:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/asus/DLNA/DataItem;

    invoke-virtual/range {p1 .. p1}, Lcom/asus/DLNA/DataItem;->getpath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/asus/DLNA/DLNA;->fnCheckFileExist(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 2853
    :cond_0
    :goto_0
    return-void

    .line 2766
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2768
    .local v13, itemNamelist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v18, 0x0

    .line 2769
    .local v18, strItem:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mLocalContentList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v8

    .line 2770
    .local v8, iContentCount:I
    const/4 v15, 0x0

    .local v15, pos:I
    :goto_1
    if-ge v15, v8, :cond_2

    .line 2771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mLocalContentList:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v15

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asus/DLNA/DataItem;

    .line 2773
    .local v5, di:Lcom/asus/DLNA/DataItem;
    invoke-virtual {v5}, Lcom/asus/DLNA/DataItem;->getname()Ljava/lang/String;

    move-result-object v18

    .line 2775
    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2770
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2779
    .end local v5           #di:Lcom/asus/DLNA/DataItem;
    :cond_2
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2780
    .local v16, renderlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mLocalRenderList:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/asus/DLNA/DeviceItem;

    invoke-virtual/range {p1 .. p1}, Lcom/asus/DLNA/DeviceItem;->getMFriendlyName()Ljava/lang/String;

    move-result-object v17

    .line 2781
    .local v17, str:Ljava/lang/String;
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mRemoteRenderList:Lcom/asus/DLNA/RendererList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 2784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mRemoteRenderList:Lcom/asus/DLNA/RendererList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/asus/DLNA/RendererList;->size()I

    move-result v9

    .line 2785
    .local v9, iRenderCount:I
    const/4 v15, 0x0

    :goto_2
    if-ge v15, v9, :cond_3

    .line 2786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mRemoteRenderList:Lcom/asus/DLNA/RendererList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/RendererList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual/range {p1 .. p1}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v17

    .line 2787
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2785
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 2791
    .end local v9           #iRenderCount:I
    :cond_3
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 2792
    .local v12, intent_activity:Landroid/content/Intent;
    const/high16 v22, 0x400

    move-object v0, v12

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2794
    const-string v22, "ItemNowPOS"

    move-object v0, v12

    move-object/from16 v1, v22

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mDeviceAdapter:Lcom/asus/DLNA/DLNA$DeviceListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->getNowPOS()I

    move-result v10

    .line 2797
    .local v10, iSourcePOS:I
    if-nez v10, :cond_4

    .line 2798
    const-string v22, "SourceName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mLocalDeviceList:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/asus/DLNA/DeviceItem;

    invoke-virtual/range {p1 .. p1}, Lcom/asus/DLNA/DeviceItem;->getMFriendlyName()Ljava/lang/String;

    move-result-object v23

    move-object v0, v12

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2803
    :goto_3
    const-string v22, "RenderList"

    move-object v0, v12

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2805
    const-string v22, "ItemNameList"

    move-object v0, v12

    move-object/from16 v1, v22

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2809
    :try_start_0
    new-instance v14, Ljava/io/OutputStreamWriter;

    const-string v22, "for_photo_video_player"

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/asus/DLNA/DLNA;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v22

    const-string v23, "ISO-8859-1"

    move-object v0, v14

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2811
    .local v14, out:Ljava/io/OutputStreamWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mLocalContentList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v11

    .line 2812
    .local v11, iTempCount:I
    const/16 v20, 0x0

    .line 2813
    .local v20, tempUri:Landroid/net/Uri;
    const/4 v15, 0x0

    :goto_4
    if-ge v15, v11, :cond_5

    .line 2814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mLocalContentList:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v15

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/asus/DLNA/DataItem;

    invoke-virtual/range {p1 .. p1}, Lcom/asus/DLNA/DataItem;->geturi()Landroid/net/Uri;

    move-result-object v20

    .line 2815
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move-object v0, v14

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2813
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 2800
    .end local v11           #iTempCount:I
    .end local v14           #out:Ljava/io/OutputStreamWriter;
    .end local v20           #tempUri:Landroid/net/Uri;
    :cond_4
    const-string v22, "SourceName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mRemoteDeviceList:Lcom/asus/DLNA/ServerList;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    sub-int v24, v10, v24

    invoke-virtual/range {v23 .. v24}, Lcom/asus/DLNA/ServerList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/awox/jUPnPCP/UPnPContentServer;

    invoke-virtual/range {p1 .. p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v23

    move-object v0, v12

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 2818
    .restart local v11       #iTempCount:I
    .restart local v14       #out:Ljava/io/OutputStreamWriter;
    .restart local v20       #tempUri:Landroid/net/Uri;
    :cond_5
    :try_start_1
    invoke-virtual {v14}, Ljava/io/OutputStreamWriter;->flush()V

    .line 2819
    invoke-virtual {v14}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2832
    .end local v11           #iTempCount:I
    .end local v14           #out:Ljava/io/OutputStreamWriter;
    .end local v20           #tempUri:Landroid/net/Uri;
    :goto_5
    const/16 v22, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/asus/DLNA/MediaControl;->getNowFilterType()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 2833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mLocalContentList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/asus/DLNA/MediaControl;->setDataSource(IILjava/lang/Object;I)V

    .line 2834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/asus/DLNA/MediaControl;->clickOnPlayPauseBTN()V

    .line 2835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/asus/DLNA/DLNA;->isItemSelected()Z

    move-result v24

    invoke-virtual/range {v22 .. v24}, Lcom/asus/DLNA/MediaControl;->hideControllerPannel(ZZ)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2847
    :catch_0
    move-exception v22

    move-object/from16 v6, v22

    .line 2848
    .local v6, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v6}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 2849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f070036

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2820
    .end local v6           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v22

    move-object/from16 v7, v22

    .line 2821
    .local v7, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_5

    .line 2822
    .end local v7           #e1:Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v22

    move-object/from16 v7, v22

    .line 2823
    .local v7, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_5

    .line 2824
    .end local v7           #e1:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v22

    move-object/from16 v6, v22

    .line 2825
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 2836
    .end local v6           #e:Ljava/io/IOException;
    :cond_6
    const/16 v22, 0x2

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/asus/DLNA/MediaControl;->getNowFilterType()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 2837
    const-string v22, "image/*"

    move-object v0, v12

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2838
    const-string v22, "com.asus.DLNA"

    const-string v23, "com.asus.Viewer.ViewImage"

    move-object v0, v12

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2839
    const/16 v22, 0x384

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/asus/DLNA/DLNA;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2840
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/asus/DLNA/DLNA;->fnShowWaitingDialog(Z)V

    goto/16 :goto_0

    .line 2841
    :cond_7
    const/16 v22, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/asus/DLNA/MediaControl;->getNowFilterType()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 2842
    const-string v22, "video/*"

    move-object v0, v12

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2843
    const-string v22, "com.asus.DLNA"

    const-string v23, "com.asus.Viewer.MovieView"

    move-object v0, v12

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2844
    const/16 v22, 0x385

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/asus/DLNA/DLNA;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2845
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/asus/DLNA/DLNA;->fnShowWaitingDialog(Z)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method private handleLocalToRemoteEvent(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2858
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mLocalContentListAdapter:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    invoke-virtual {v0, p3}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->updateNowPlayingIndicator(I)V

    .line 2859
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    invoke-virtual {v0, v2, v3}, Lcom/asus/DLNA/MediaControl;->updateSourceRenderDevice(II)V

    .line 2864
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mLocalContentList:Ljava/util/List;

    invoke-virtual {v0, v2, v3, v1, p3}, Lcom/asus/DLNA/MediaControl;->setDataSource(IILjava/lang/Object;I)V

    .line 2866
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    invoke-virtual {v0}, Lcom/asus/DLNA/MediaControl;->clickOnPlayPauseBTN()V

    .line 2868
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    invoke-direct {p0}, Lcom/asus/DLNA/DLNA;->isItemSelected()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/asus/DLNA/MediaControl;->hideControllerPannel(ZZ)V

    .line 2869
    return-void
.end method

.method private handleRemoteToLocalEvent(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 31
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2874
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/asus/DLNA/MediaControl;->hideControllerPannel(Z)V

    .line 2875
    invoke-direct/range {p0 .. p0}, Lcom/asus/DLNA/DLNA;->resetSeekBar()V

    .line 2877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mRemoteContentList:Lcom/asus/DLNA/ItemList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/ItemList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1           #parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    check-cast p1, Lcom/asus/DLNA/Item;

    invoke-virtual/range {p1 .. p1}, Lcom/asus/DLNA/Item;->getEntryInfo()Lcom/awox/jUPnPCP/CDSEntryInfo;

    move-result-object v22

    .line 2878
    .local v22, theEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;
    sget v26, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Title:I

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v24

    .line 2879
    .local v24, theTitle:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcom/awox/jUPnPCP/CDSEntryInfo;->IsContainer()Z

    move-result v23

    .line 2881
    .local v23, theIsContainer:Z
    const/16 v26, 0x1

    move/from16 v0, v26

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 2883
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/asus/DLNA/DLNA;->fnShowWaitingDialog(Z)V

    .line 2884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mRemoteContentAdapter:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    move-object/from16 v26, v0

    const/16 v27, -0x1

    invoke-virtual/range {v26 .. v27}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->updateNowPlayingIndicator(I)V

    .line 2885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/SendServerCMD;->cpGo(I)V

    .line 2886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mPathUtils:Lcom/asus/DLNA/PathUtils;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/PathUtils;->addNodeToPathList(Ljava/lang/String;)V

    .line 3009
    :goto_0
    return-void

    .line 2889
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mRemoteContentAdapter:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->updateNowPlayingIndicator(I)V

    .line 2890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lcom/asus/DLNA/MediaControl;->updateSourceRenderDevice(II)V

    .line 2893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/SendServerCMD;->cpInfo(I)V

    .line 2894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mRemoteContentList:Lcom/asus/DLNA/ItemList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/ItemList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/asus/DLNA/Item;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-object/from16 v26, v0

    const-wide/16 v27, 0x0

    sget v29, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_URI:I

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    invoke-virtual/range {v26 .. v30}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsCString(JJ)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 2895
    .local v25, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mRemoteContentList:Lcom/asus/DLNA/ItemList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/ItemList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/asus/DLNA/Item;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-object/from16 v26, v0

    const-wide/16 v27, 0x0

    invoke-virtual/range {v26 .. v28}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetMimeTypeForResourceIndex(J)Ljava/lang/String;

    move-result-object v20

    .line 2897
    .local v20, strType:Ljava/lang/String;
    const-string v26, "DLNA"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "handleRemoteToLocalEvent - this item, uri= "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ",  position="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    const-string v26, "DLNA"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "handleRemoteToLocalEvent - this item, min-type= "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mRemoteContentList:Lcom/asus/DLNA/ItemList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/asus/DLNA/ItemList;->size()I

    move-result v8

    .line 2915
    .local v8, iContentCount:I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2916
    .local v13, itemNamelist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v19, 0x0

    .line 2917
    .local v19, strItem:Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, pos:I
    :goto_1
    if-ge v15, v8, :cond_1

    .line 2918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mRemoteContentList:Lcom/asus/DLNA/ItemList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/ItemList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/asus/DLNA/Item;

    invoke-virtual/range {p1 .. p1}, Lcom/asus/DLNA/Item;->getEntryInfo()Lcom/awox/jUPnPCP/CDSEntryInfo;

    move-result-object v7

    .line 2919
    .local v7, entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;
    sget v26, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Title:I

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object v0, v7

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v19

    .line 2920
    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2917
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2925
    .end local v7           #entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;
    :cond_1
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2926
    .local v16, renderlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mLocalRenderList:Ljava/util/List;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/asus/DLNA/DeviceItem;

    invoke-virtual/range {p1 .. p1}, Lcom/asus/DLNA/DeviceItem;->getMFriendlyName()Ljava/lang/String;

    move-result-object v18

    .line 2927
    .local v18, str:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mRemoteRenderList:Lcom/asus/DLNA/RendererList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    .line 2930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mRemoteRenderList:Lcom/asus/DLNA/RendererList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/asus/DLNA/RendererList;->size()I

    move-result v9

    .line 2931
    .local v9, iRenderCount:I
    const/4 v15, 0x0

    :goto_2
    if-ge v15, v9, :cond_2

    .line 2932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mRemoteRenderList:Lcom/asus/DLNA/RendererList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/RendererList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual/range {p1 .. p1}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v18

    .line 2933
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2931
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 2937
    .end local v9           #iRenderCount:I
    :cond_2
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 2938
    .local v12, intent_activity:Landroid/content/Intent;
    const/high16 v26, 0x400

    move-object v0, v12

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2940
    const-string v26, "ItemNowPOS"

    move-object v0, v12

    move-object/from16 v1, v26

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mDeviceAdapter:Lcom/asus/DLNA/DLNA$DeviceListAdapter;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->getNowPOS()I

    move-result v10

    .line 2943
    .local v10, iSourcePOS:I
    if-nez v10, :cond_3

    .line 2944
    const-string v26, "SourceName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mLocalDeviceList:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/asus/DLNA/DeviceItem;

    invoke-virtual/range {p1 .. p1}, Lcom/asus/DLNA/DeviceItem;->getMFriendlyName()Ljava/lang/String;

    move-result-object v27

    move-object v0, v12

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2948
    :goto_3
    const-string v26, "RenderList"

    move-object v0, v12

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2950
    const-string v26, "ItemNameList"

    move-object v0, v12

    move-object/from16 v1, v26

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2954
    :try_start_0
    new-instance v14, Ljava/io/OutputStreamWriter;

    const-string v26, "for_photo_video_player"

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/asus/DLNA/DLNA;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v26

    const-string v27, "ISO-8859-1"

    move-object v0, v14

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2956
    .local v14, out:Ljava/io/OutputStreamWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mRemoteContentList:Lcom/asus/DLNA/ItemList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/asus/DLNA/ItemList;->size()I

    move-result v11

    .line 2957
    .local v11, iTempCount:I
    const/16 v21, 0x0

    .line 2958
    .local v21, tempUri:Landroid/net/Uri;
    const/4 v15, 0x0

    :goto_4
    if-ge v15, v11, :cond_4

    .line 2959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mRemoteContentList:Lcom/asus/DLNA/ItemList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/ItemList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/asus/DLNA/Item;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-object/from16 v26, v0

    const-wide/16 v27, 0x0

    sget v29, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_URI:I

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    invoke-virtual/range {v26 .. v30}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsCString(JJ)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 2960
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, 0x1

    move-object v0, v14

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2958
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 2946
    .end local v11           #iTempCount:I
    .end local v14           #out:Ljava/io/OutputStreamWriter;
    .end local v21           #tempUri:Landroid/net/Uri;
    :cond_3
    const-string v26, "SourceName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mRemoteDeviceList:Lcom/asus/DLNA/ServerList;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    sub-int v28, v10, v28

    invoke-virtual/range {v27 .. v28}, Lcom/asus/DLNA/ServerList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/awox/jUPnPCP/UPnPContentServer;

    invoke-virtual/range {p1 .. p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v27

    move-object v0, v12

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 2963
    .restart local v11       #iTempCount:I
    .restart local v14       #out:Ljava/io/OutputStreamWriter;
    .restart local v21       #tempUri:Landroid/net/Uri;
    :cond_4
    :try_start_1
    invoke-virtual {v14}, Ljava/io/OutputStreamWriter;->flush()V

    .line 2964
    invoke-virtual {v14}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2978
    .end local v11           #iTempCount:I
    .end local v14           #out:Ljava/io/OutputStreamWriter;
    .end local v21           #tempUri:Landroid/net/Uri;
    :goto_5
    :try_start_2
    sget v26, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_ItemClassName:I

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v17

    .line 2979
    .local v17, s:Ljava/lang/String;
    const-string v26, "object.item.audioItem.musicTrack"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_5

    const-string v26, "object.item.audioItem"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 2981
    :cond_5
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/asus/DLNA/DLNA;->fnShowMediaPlayerWaitingDialog(Z)V

    .line 2982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mRemoteContentList:Lcom/asus/DLNA/ItemList;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v29

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/asus/DLNA/MediaControl;->setDataSource(IILjava/lang/Object;I)V

    .line 2983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/asus/DLNA/MediaControl;->clickOnPlayPauseBTN()V

    .line 2984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/asus/DLNA/DLNA;->isItemSelected()Z

    move-result v28

    invoke-virtual/range {v26 .. v28}, Lcom/asus/DLNA/MediaControl;->hideControllerPannel(ZZ)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 3005
    .end local v17           #s:Ljava/lang/String;
    :cond_6
    :goto_6
    const/16 v16, 0x0

    .line 3007
    const/4 v13, 0x0

    .line 3009
    goto/16 :goto_0

    .line 2965
    :catch_0
    move-exception v26

    move-object/from16 v6, v26

    .line 2966
    .local v6, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_5

    .line 2967
    .end local v6           #e1:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v26

    move-object/from16 v6, v26

    .line 2968
    .local v6, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_5

    .line 2969
    .end local v6           #e1:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v26

    move-object/from16 v5, v26

    .line 2970
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 2985
    .end local v5           #e:Ljava/io/IOException;
    .restart local v17       #s:Ljava/lang/String;
    :cond_7
    :try_start_3
    const-string v26, "object.item.imageItem.photo"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_8

    const-string v26, "object.item.imageItem"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 2987
    :cond_8
    const-string v26, "image/*"

    move-object v0, v12

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2988
    const-string v26, "com.asus.DLNA"

    const-string v27, "com.asus.Viewer.ViewImage"

    move-object v0, v12

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2989
    const/16 v26, 0x386

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/asus/DLNA/DLNA;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2990
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/asus/DLNA/DLNA;->fnShowWaitingDialog(Z)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    .line 2999
    .end local v17           #s:Ljava/lang/String;
    :catch_3
    move-exception v26

    move-object/from16 v5, v26

    .line 3001
    .local v5, e:Landroid/content/ActivityNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f070036

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 2992
    .end local v5           #e:Landroid/content/ActivityNotFoundException;
    .restart local v17       #s:Ljava/lang/String;
    :cond_9
    :try_start_4
    const-string v26, "object.item.videoItem.movie"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_a

    const-string v26, "object.item.videoItem"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 2994
    :cond_a
    const-string v26, "video/*"

    move-object v0, v12

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2995
    const-string v26, "com.asus.DLNA"

    const-string v27, "com.asus.Viewer.MovieView"

    move-object v0, v12

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2996
    const/16 v26, 0x387

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/asus/DLNA/DLNA;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2997
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/asus/DLNA/DLNA;->fnShowWaitingDialog(Z)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_6
.end method

.method private handleRemoteToRemoteEvent(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 3015
    iget-object v3, p0, Lcom/asus/DLNA/DLNA;->mRemoteContentList:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v3, p3}, Lcom/asus/DLNA/ItemList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/DLNA/Item;

    invoke-virtual {v3}, Lcom/asus/DLNA/Item;->getEntryInfo()Lcom/awox/jUPnPCP/CDSEntryInfo;

    move-result-object v0

    .line 3016
    .local v0, theEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;
    sget v3, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Title:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v2

    .line 3017
    .local v2, theTitle:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/awox/jUPnPCP/CDSEntryInfo;->IsContainer()Z

    move-result v1

    .line 3019
    .local v1, theIsContainer:Z
    if-ne v5, v1, :cond_0

    .line 3021
    invoke-direct {p0, v5}, Lcom/asus/DLNA/DLNA;->fnShowWaitingDialog(Z)V

    .line 3022
    invoke-virtual {p0}, Lcom/asus/DLNA/DLNA;->fnClearBitmapItems()V

    .line 3023
    iget-object v3, p0, Lcom/asus/DLNA/DLNA;->mRemoteContentAdapter:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->updateNowPlayingIndicator(I)V

    .line 3024
    iget-object v3, p0, Lcom/asus/DLNA/DLNA;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    invoke-virtual {v3, p3}, Lcom/asus/DLNA/SendServerCMD;->cpGo(I)V

    .line 3025
    iget-object v3, p0, Lcom/asus/DLNA/DLNA;->mPathUtils:Lcom/asus/DLNA/PathUtils;

    invoke-virtual {v3, v2}, Lcom/asus/DLNA/PathUtils;->addNodeToPathList(Ljava/lang/String;)V

    .line 3040
    :goto_0
    return-void

    .line 3028
    :cond_0
    iget-object v3, p0, Lcom/asus/DLNA/DLNA;->mRemoteContentAdapter:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-virtual {v3, p3}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->updateNowPlayingIndicator(I)V

    .line 3029
    iget-object v3, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    invoke-virtual {v3, v5, v5}, Lcom/asus/DLNA/MediaControl;->updateSourceRenderDevice(II)V

    .line 3035
    iget-object v3, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    iget-object v4, p0, Lcom/asus/DLNA/DLNA;->mRemoteContentList:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v3, v5, v5, v4, p3}, Lcom/asus/DLNA/MediaControl;->setDataSource(IILjava/lang/Object;I)V

    .line 3037
    iget-object v3, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    invoke-virtual {v3}, Lcom/asus/DLNA/MediaControl;->clickOnPlayPauseBTN()V

    .line 3038
    iget-object v3, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/asus/DLNA/DLNA;->isItemSelected()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/asus/DLNA/MediaControl;->hideControllerPannel(ZZ)V

    goto :goto_0
.end method

.method private isItemSelected()Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 2410
    const/4 v0, 0x1

    .line 2411
    .local v0, bSelected:Z
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mDeviceAdapter:Lcom/asus/DLNA/DLNA$DeviceListAdapter;

    invoke-virtual {v1}, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->isSourceLocalDeviceNow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2412
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mLocalContentListAdapter:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    invoke-virtual {v1}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->getNowPOS()I

    move-result v1

    if-ne v2, v1, :cond_0

    const/4 v0, 0x0

    .line 2417
    :cond_0
    :goto_0
    return v0

    .line 2414
    :cond_1
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mRemoteContentAdapter:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-virtual {v1}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->getNowPOS()I

    move-result v1

    if-ne v2, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queueNextRefresh(J)V
    .locals 4
    .parameter "delay"

    .prologue
    const/16 v3, 0x6f

    .line 1116
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    invoke-virtual {v2}, Lcom/asus/DLNA/MediaControl;->getCurrentState()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1118
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mMediaPlayStateCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1119
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mMediaPlayStateCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1120
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mMediaPlayStateCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1125
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1121
    :cond_1
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    invoke-virtual {v1}, Lcom/asus/DLNA/MediaControl;->getCurrentState()I

    move-result v1

    if-nez v1, :cond_0

    .line 1122
    const-string v1, "DLNA"

    const-string v2, "(Loop?) Not in playing state, don\'t query seeek bar again"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    invoke-direct {p0}, Lcom/asus/DLNA/DLNA;->resetSeekBar()V

    goto :goto_0
.end method

.method private resetSeekBar()V
    .locals 2

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mCurrenttime:Landroid/widget/TextView;

    const-string v1, "--:--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1110
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mTotaltime:Landroid/widget/TextView;

    const-string v1, "--:--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1111
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1112
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/asus/DLNA/DLNA;->mPosOverride:J

    .line 1113
    return-void
.end method

.method private savePreCurrentInfo(IIILjava/lang/String;I)V
    .locals 0
    .parameter "iServer"
    .parameter "iRender"
    .parameter "iType"
    .parameter "strPath"
    .parameter "iPOS"

    .prologue
    .line 2257
    iput p1, p0, Lcom/asus/DLNA/DLNA;->miRestoreCurrentPlayingServer:I

    .line 2258
    iput p2, p0, Lcom/asus/DLNA/DLNA;->miRestoreCurrentPlayingRender:I

    .line 2259
    iput p3, p0, Lcom/asus/DLNA/DLNA;->miRestoreCurrentPlayingType:I

    .line 2260
    iput-object p4, p0, Lcom/asus/DLNA/DLNA;->miRestoreCurrentPath:Ljava/lang/String;

    .line 2261
    iput p5, p0, Lcom/asus/DLNA/DLNA;->miRestoreCurrentPOS:I

    .line 2262
    return-void
.end method

.method private searchTheFirstFileTobePlayed()I
    .locals 3

    .prologue
    .line 2421
    const/4 v1, -0x1

    .line 2423
    .local v1, iFirst:I
    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->mDeviceAdapter:Lcom/asus/DLNA/DLNA$DeviceListAdapter;

    invoke-virtual {v2}, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->isSourceLocalDeviceNow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2424
    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->mLocalContentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2425
    const/4 v1, 0x0

    .line 2426
    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->mLocalContentListAdapter:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    invoke-virtual {v2, v1}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->updateNowPlayingIndicator(I)V

    .line 2443
    :cond_0
    :goto_0
    return v1

    .line 2430
    :cond_1
    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->mRemoteContentList:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v2}, Lcom/asus/DLNA/ItemList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2431
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->mRemoteContentList:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v2}, Lcom/asus/DLNA/ItemList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2433
    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->mRemoteContentList:Lcom/asus/DLNA/ItemList;

    invoke-virtual {v2, v0}, Lcom/asus/DLNA/ItemList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/DLNA/Item;

    invoke-virtual {v2}, Lcom/asus/DLNA/Item;->getEntryInfo()Lcom/awox/jUPnPCP/CDSEntryInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/awox/jUPnPCP/CDSEntryInfo;->IsContainer()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2434
    move v1, v0

    .line 2435
    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->mRemoteContentAdapter:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-virtual {v2, v1}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->updateNowPlayingIndicator(I)V

    goto :goto_0

    .line 2431
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updatePreCurrentInfo(I)V
    .locals 0
    .parameter "iPOS"

    .prologue
    .line 2265
    iput p1, p0, Lcom/asus/DLNA/DLNA;->miRestoreCurrentPOS:I

    .line 2266
    return-void
.end method

.method private updateSeekBarNow(Landroid/os/Message;)J
    .locals 11
    .parameter "msg"

    .prologue
    const-wide/16 v8, 0x0

    .line 1088
    iget v6, p1, Landroid/os/Message;->arg1:I

    int-to-long v6, v6

    iput-wide v6, p0, Lcom/asus/DLNA/DLNA;->mDuration:J

    .line 1089
    iget v6, p1, Landroid/os/Message;->arg2:I

    int-to-long v0, v6

    .line 1090
    .local v0, curPOS:J
    const-wide/16 v4, 0x1f4

    .line 1092
    .local v4, remaining:J
    iget-wide v6, p0, Lcom/asus/DLNA/DLNA;->mPosOverride:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    move-wide v2, v0

    .line 1094
    .local v2, pos:J
    :goto_0
    iget-wide v6, p0, Lcom/asus/DLNA/DLNA;->mPosOverride:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    iget-wide v6, p0, Lcom/asus/DLNA/DLNA;->mPosOverride:J

    cmp-long v6, v6, v0

    if-nez v6, :cond_0

    .line 1095
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/asus/DLNA/DLNA;->mPosOverride:J

    .line 1097
    :cond_0
    cmp-long v6, v2, v8

    if-ltz v6, :cond_2

    iget-wide v6, p0, Lcom/asus/DLNA/DLNA;->mDuration:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 1098
    iget-object v6, p0, Lcom/asus/DLNA/DLNA;->mCurrenttime:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    invoke-virtual {v7, p0, v2, v3}, Lcom/asus/DLNA/MediaControl;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    iget-object v6, p0, Lcom/asus/DLNA/DLNA;->mTotaltime:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    iget-wide v8, p0, Lcom/asus/DLNA/DLNA;->mDuration:J

    invoke-virtual {v7, p0, v8, v9}, Lcom/asus/DLNA/MediaControl;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    iget-object v6, p0, Lcom/asus/DLNA/DLNA;->mProgress:Landroid/widget/ProgressBar;

    const-wide/16 v7, 0x3e8

    mul-long/2addr v7, v2

    iget-wide v9, p0, Lcom/asus/DLNA/DLNA;->mDuration:J

    div-long/2addr v7, v9

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1105
    :goto_1
    return-wide v4

    .line 1092
    .end local v2           #pos:J
    :cond_1
    iget-wide v6, p0, Lcom/asus/DLNA/DLNA;->mPosOverride:J

    move-wide v2, v6

    goto :goto_0

    .line 1102
    .restart local v2       #pos:J
    :cond_2
    invoke-direct {p0}, Lcom/asus/DLNA/DLNA;->resetSeekBar()V

    goto :goto_1
.end method


# virtual methods
.method public doReadSharePrefData()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 278
    const-string v1, "DLNAPrefsFile"

    invoke-virtual {p0, v1, v3}, Lcom/asus/DLNA/DLNA;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 279
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "PreviousFilter"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/asus/DLNA/DLNA;->miRestoreFilterType:I

    .line 280
    const-string v1, "PreCurrentPlayingServer"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/asus/DLNA/DLNA;->miRestoreCurrentPlayingServer:I

    .line 281
    const-string v1, "PreCurrentPlayingRender"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/asus/DLNA/DLNA;->miRestoreCurrentPlayingRender:I

    .line 282
    const-string v1, "PreCurrentPlayingType"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/asus/DLNA/DLNA;->miRestoreCurrentPlayingType:I

    .line 283
    const-string v1, "PreCurrentPlayingPath"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/DLNA/DLNA;->miRestoreCurrentPath:Ljava/lang/String;

    .line 284
    const-string v1, "PreCurrentPlayingPos"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/asus/DLNA/DLNA;->miRestoreCurrentPOS:I

    .line 285
    const-string v1, "ShowNoDLNADeviceAlert"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/asus/DLNA/DLNA;->mbNOTShowNoDLNAAlert:Z

    .line 286
    const-string v1, "ShowNoDMSSettinsAlert"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/asus/DLNA/DLNA;->mbNOTShowDMSSettingsAlert:Z

    .line 287
    return-void
.end method

.method public doSaveSharePrefData()V
    .locals 4

    .prologue
    .line 639
    const-string v2, "DLNAPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/asus/DLNA/DLNA;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 640
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 641
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "PreviousFilter"

    iget v3, p0, Lcom/asus/DLNA/DLNA;->miRestoreFilterType:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 642
    const-string v2, "PreCurrentPlayingServer"

    iget v3, p0, Lcom/asus/DLNA/DLNA;->miRestoreCurrentPlayingServer:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 643
    const-string v2, "PreCurrentPlayingRender"

    iget v3, p0, Lcom/asus/DLNA/DLNA;->miRestoreCurrentPlayingRender:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 644
    const-string v2, "PreCurrentPlayingType"

    iget v3, p0, Lcom/asus/DLNA/DLNA;->miRestoreCurrentPlayingType:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 645
    const-string v2, "PreCurrentPlayingPath"

    iget-object v3, p0, Lcom/asus/DLNA/DLNA;->miRestoreCurrentPath:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 646
    const-string v2, "PreCurrentPlayingPos"

    iget v3, p0, Lcom/asus/DLNA/DLNA;->miRestoreCurrentPOS:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 647
    const-string v2, "ShowNoDLNADeviceAlert"

    iget-boolean v3, p0, Lcom/asus/DLNA/DLNA;->mbNOTShowNoDLNAAlert:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 648
    const-string v2, "ShowNoDMSSettinsAlert"

    iget-boolean v3, p0, Lcom/asus/DLNA/DLNA;->mbNOTShowDMSSettingsAlert:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 649
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 650
    return-void
.end method

.method public fnCheckWiFiNetwork()V
    .locals 7

    .prologue
    .line 309
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/asus/DLNA/DLNA;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 310
    .local v3, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 312
    .local v0, bAlreadyEnableWifi:Z
    const/4 v4, 0x1

    if-ne v4, v0, :cond_0

    .line 314
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 315
    .local v2, msg:Landroid/os/Message;
    const/16 v4, 0x14

    iput v4, v2, Landroid/os/Message;->what:I

    .line 316
    iget-object v4, p0, Lcom/asus/DLNA/DLNA;->mDLNAServerCallbackHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 344
    .end local v2           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v4, p0, Lcom/asus/DLNA/DLNA;->mCheckWiFiAlert:Landroid/app/AlertDialog;

    if-nez v4, :cond_1

    .line 322
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 323
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f070031

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070032

    new-instance v6, Lcom/asus/DLNA/DLNA$2;

    invoke-direct {v6, p0}, Lcom/asus/DLNA/DLNA$2;-><init>(Lcom/asus/DLNA/DLNA;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070033

    new-instance v6, Lcom/asus/DLNA/DLNA$1;

    invoke-direct {v6, p0}, Lcom/asus/DLNA/DLNA$1;-><init>(Lcom/asus/DLNA/DLNA;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 340
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/asus/DLNA/DLNA;->mCheckWiFiAlert:Landroid/app/AlertDialog;

    .line 343
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    iget-object v4, p0, Lcom/asus/DLNA/DLNA;->mCheckWiFiAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public fnClearBitmapItems()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 655
    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->mBitmapMap:Ljava/util/SortedMap;

    if-nez v2, :cond_1

    .line 656
    const-string v2, "DLNA"

    const-string v3, "mBitmapMap is NULL!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_0
    return-void

    .line 660
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->mBitmapMap:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 661
    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->mBitmapMap:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 662
    .local v0, iFirst:I
    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->mBitmapMap:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/DLNA/DLNA$NodeInfo;

    .line 663
    .local v1, ni:Lcom/asus/DLNA/DLNA$NodeInfo;
    if-eqz v1, :cond_3

    .line 664
    iget-object v2, v1, Lcom/asus/DLNA/DLNA$NodeInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/asus/DLNA/DLNA$NodeInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 665
    :cond_2
    iput-object v4, v1, Lcom/asus/DLNA/DLNA$NodeInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 666
    iput-object v4, v1, Lcom/asus/DLNA/DLNA$NodeInfo;->mStrUri:Ljava/lang/String;

    .line 668
    :cond_3
    const/4 v1, 0x0

    .line 669
    iget-object v2, p0, Lcom/asus/DLNA/DLNA;->mBitmapMap:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public fnShowNoDLNADevice()V
    .locals 6

    .prologue
    .line 349
    iget-boolean v3, p0, Lcom/asus/DLNA/DLNA;->mbNOTShowNoDLNAAlert:Z

    if-nez v3, :cond_3

    .line 350
    iget-object v3, p0, Lcom/asus/DLNA/DLNA;->mRemoteDeviceList:Lcom/asus/DLNA/ServerList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/asus/DLNA/DLNA;->mRemoteDeviceList:Lcom/asus/DLNA/ServerList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/asus/DLNA/DLNA;->mRemoteDeviceList:Lcom/asus/DLNA/ServerList;

    invoke-virtual {v3}, Lcom/asus/DLNA/ServerList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 364
    :cond_0
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/asus/DLNA/DLNA;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 365
    .local v1, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f03000a

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 367
    .local v2, textEntryView:Landroid/view/View;
    iget-object v3, p0, Lcom/asus/DLNA/DLNA;->mAlertNoDLNADevice:Landroid/app/AlertDialog;

    if-nez v3, :cond_1

    .line 368
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 369
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x1010355

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x7f07

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/asus/DLNA/DLNA$4;

    invoke-direct {v4, p0, v2}, Lcom/asus/DLNA/DLNA$4;-><init>(Lcom/asus/DLNA/DLNA;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/asus/DLNA/DLNA$3;

    invoke-direct {v5, p0, v2}, Lcom/asus/DLNA/DLNA$3;-><init>(Lcom/asus/DLNA/DLNA;Landroid/view/View;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 398
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/asus/DLNA/DLNA;->mAlertNoDLNADevice:Landroid/app/AlertDialog;

    .line 401
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    iget-object v3, p0, Lcom/asus/DLNA/DLNA;->mAlertNoDLNADevice:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 402
    .end local v1           #factory:Landroid/view/LayoutInflater;
    .end local v2           #textEntryView:Landroid/view/View;
    :goto_0
    return-void

    .line 354
    :cond_2
    invoke-virtual {p0}, Lcom/asus/DLNA/DLNA;->nextcheck_DMSSettings()V

    goto :goto_0

    .line 359
    :cond_3
    invoke-virtual {p0}, Lcom/asus/DLNA/DLNA;->nextcheck_DMSSettings()V

    goto :goto_0
.end method

.method public fnShowNotifyEnableDMSSetting()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 416
    iget-boolean v3, p0, Lcom/asus/DLNA/DLNA;->mbNOTShowDMSSettingsAlert:Z

    if-ne v5, v3, :cond_0

    .line 476
    :goto_0
    return-void

    .line 421
    :cond_0
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/asus/DLNA/DLNA;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 422
    .local v1, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f030004

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 424
    .local v2, textEntryView:Landroid/view/View;
    iget-object v3, p0, Lcom/asus/DLNA/DLNA;->mAlertNotifyEnableDMSSetting:Landroid/app/AlertDialog;

    if-nez v3, :cond_1

    .line 425
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 426
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x1010355

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x7f07

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/asus/DLNA/DLNA$7;

    invoke-direct {v4, p0, v2}, Lcom/asus/DLNA/DLNA$7;-><init>(Lcom/asus/DLNA/DLNA;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070033

    new-instance v5, Lcom/asus/DLNA/DLNA$6;

    invoke-direct {v5, p0, v2}, Lcom/asus/DLNA/DLNA$6;-><init>(Lcom/asus/DLNA/DLNA;Landroid/view/View;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070032

    new-instance v5, Lcom/asus/DLNA/DLNA$5;

    invoke-direct {v5, p0, v2}, Lcom/asus/DLNA/DLNA$5;-><init>(Lcom/asus/DLNA/DLNA;Landroid/view/View;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 472
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/asus/DLNA/DLNA;->mAlertNotifyEnableDMSSetting:Landroid/app/AlertDialog;

    .line 475
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    iget-object v3, p0, Lcom/asus/DLNA/DLNA;->mAlertNotifyEnableDMSSetting:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public nextcheck_DMSSettings()V
    .locals 4

    .prologue
    .line 406
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 407
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    .line 408
    iget-object v1, p0, Lcom/asus/DLNA/DLNA;->mDLNAServerCallbackHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 409
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 3045
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 3047
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/asus/DLNA/DLNA;->fnShowWaitingDialog(Z)V

    .line 3049
    if-nez p3, :cond_1

    .line 3086
    :cond_0
    :goto_0
    return-void

    .line 3055
    :cond_1
    const-string v0, "ItemNowPOS"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 3056
    .local v3, iItemPOS:I
    const-string v0, "RenderNowPOS"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 3060
    .local v6, iRenderPOS:I
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mRenderAdapter:Lcom/asus/DLNA/DLNA$RenderListAdapter;

    invoke-virtual {v0, v6}, Lcom/asus/DLNA/DLNA$RenderListAdapter;->updateNowPlayingIndicator(I)V

    .line 3062
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3065
    :pswitch_0
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mLocalContentListAdapter:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    invoke-virtual {v0, v3}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->updateNowPlayingIndicator(I)V

    .line 3066
    if-eqz v6, :cond_0

    move-object v0, p0

    move-object v2, v1

    .line 3070
    invoke-direct/range {v0 .. v5}, Lcom/asus/DLNA/DLNA;->handleLocalToRemoteEvent(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 3076
    :pswitch_1
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mRemoteContentAdapter:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-virtual {v0, v3}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->updateNowPlayingIndicator(I)V

    .line 3077
    if-eqz v6, :cond_0

    move-object v0, p0

    move-object v2, v1

    .line 3081
    invoke-direct/range {v0 .. v5}, Lcom/asus/DLNA/DLNA;->handleRemoteToRemoteEvent(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 3062
    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 529
    const/4 v1, 0x0

    sput-boolean v1, Lcom/asus/DLNA/DLNA;->mbReViewedAlert:Z

    .line 531
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 532
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->startActivity(Landroid/content/Intent;)V

    .line 536
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 540
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 218
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 219
    const-string v4, "DLNA"

    const-string v5, ">> onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 224
    .local v1, f:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v4, "file"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 229
    iget-object v4, p0, Lcom/asus/DLNA/DLNA;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/asus/DLNA/DLNA;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 232
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 233
    .local v2, fPlayback:Landroid/content/IntentFilter;
    const-string v4, "music.playback.complete"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string v4, "music.playback.error"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v4, "music.playback.prepared"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    const-string v4, "music.playback.next"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string v4, "music.playback.previous"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    iget-object v4, p0, Lcom/asus/DLNA/DLNA;->mPlaybackListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/asus/DLNA/DLNA;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0}, Lcom/asus/DLNA/DLNA;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/asus/DLNA/DLNA;->mContext:Landroid/content/Context;

    .line 241
    const v4, 0x7f030007

    invoke-virtual {p0, v4}, Lcom/asus/DLNA/DLNA;->setContentView(I)V

    .line 243
    invoke-virtual {p0}, Lcom/asus/DLNA/DLNA;->doReadSharePrefData()V

    .line 245
    invoke-virtual {p0}, Lcom/asus/DLNA/DLNA;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 246
    .local v3, it:Landroid/content/Intent;
    iget v4, p0, Lcom/asus/DLNA/DLNA;->miRestoreFilterType:I

    invoke-direct {p0, v3, v4}, Lcom/asus/DLNA/DLNA;->fnCheckEntryPoint(Landroid/content/Intent;I)V

    .line 247
    invoke-direct {p0}, Lcom/asus/DLNA/DLNA;->fnFindView()V

    .line 248
    invoke-direct {p0, v3}, Lcom/asus/DLNA/DLNA;->fnInitData(Landroid/content/Intent;)V

    .line 249
    invoke-direct {p0}, Lcom/asus/DLNA/DLNA;->fnSetListener()V

    .line 251
    iget-object v4, p0, Lcom/asus/DLNA/DLNA;->mDeviceLV:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/asus/DLNA/DLNA;->mDeviceAdapter:Lcom/asus/DLNA/DLNA$DeviceListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 252
    iget-object v4, p0, Lcom/asus/DLNA/DLNA;->mContentLV:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/asus/DLNA/DLNA;->mLocalContentListAdapter:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 256
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f070017

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/DLNA/DLNA;->mRenderAdapter:Lcom/asus/DLNA/DLNA$RenderListAdapter;

    iget-object v6, p0, Lcom/asus/DLNA/DLNA;->renderItemClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 258
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/asus/DLNA/DLNA;->mAlertRenderList:Landroid/app/AlertDialog;

    .line 260
    iget-object v5, p0, Lcom/asus/DLNA/DLNA;->mPathUtils:Lcom/asus/DLNA/PathUtils;

    iget-object v4, p0, Lcom/asus/DLNA/DLNA;->mLocalDeviceList:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/DLNA/DeviceItem;

    invoke-virtual {v4}, Lcom/asus/DLNA/DeviceItem;->getMFriendlyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/asus/DLNA/PathUtils;->resetRootPath(Ljava/lang/String;)V

    .line 261
    iget-boolean v4, p0, Lcom/asus/DLNA/DLNA;->bmNowPlayingList:Z

    if-eqz v4, :cond_0

    .line 262
    iget-object v4, p0, Lcom/asus/DLNA/DLNA;->mPathUtils:Lcom/asus/DLNA/PathUtils;

    invoke-virtual {v4}, Lcom/asus/DLNA/PathUtils;->AddNowPlayingToFolderPath()V

    .line 268
    :goto_0
    iget-object v4, p0, Lcom/asus/DLNA/DLNA;->mRenderAdapter:Lcom/asus/DLNA/DLNA$RenderListAdapter;

    invoke-virtual {v4, v7}, Lcom/asus/DLNA/DLNA$RenderListAdapter;->updateNowPlayingIndicator(I)V

    .line 269
    iget-object v4, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    invoke-virtual {v4, v7}, Lcom/asus/DLNA/MediaControl;->updateRenderDevice(I)V

    .line 271
    invoke-direct {p0}, Lcom/asus/DLNA/DLNA;->fnCheckRestoreMusicPlaying()V

    .line 273
    iget-object v4, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/asus/DLNA/MediaControl;->hideControllerPannel(Z)V

    .line 274
    return-void

    .line 265
    :cond_0
    iget-object v4, p0, Lcom/asus/DLNA/DLNA;->mDeviceAdapter:Lcom/asus/DLNA/DLNA$DeviceListAdapter;

    invoke-virtual {v4, v7}, Lcom/asus/DLNA/DLNA$DeviceListAdapter;->updateNowPlayingIndicator(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 545
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 546
    const-string v0, "DLNA"

    const-string v1, ">> onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 548
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mPlaybackListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 550
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mWaiting:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mWaiting:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 552
    iput-object v2, p0, Lcom/asus/DLNA/DLNA;->mWaiting:Landroid/app/ProgressDialog;

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mMeidaPlayerWaiting:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mMeidaPlayerWaiting:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 557
    iput-object v2, p0, Lcom/asus/DLNA/DLNA;->mMeidaPlayerWaiting:Landroid/app/ProgressDialog;

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mCheckWiFiAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 561
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mCheckWiFiAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 562
    iput-object v2, p0, Lcom/asus/DLNA/DLNA;->mCheckWiFiAlert:Landroid/app/AlertDialog;

    .line 565
    :cond_2
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mAlertNoDLNADevice:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 566
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mAlertNoDLNADevice:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 567
    iput-object v2, p0, Lcom/asus/DLNA/DLNA;->mAlertNoDLNADevice:Landroid/app/AlertDialog;

    .line 570
    :cond_3
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mAlertNotifyEnableDMSSetting:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 571
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mAlertNotifyEnableDMSSetting:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 572
    iput-object v2, p0, Lcom/asus/DLNA/DLNA;->mAlertNotifyEnableDMSSetting:Landroid/app/AlertDialog;

    .line 575
    :cond_4
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mAlertRenderList:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 576
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mAlertRenderList:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 577
    iput-object v2, p0, Lcom/asus/DLNA/DLNA;->mAlertRenderList:Landroid/app/AlertDialog;

    .line 580
    :cond_5
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->menupopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_6

    .line 581
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->menupopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 582
    iput-object v2, p0, Lcom/asus/DLNA/DLNA;->menupopup:Landroid/widget/PopupMenu;

    .line 585
    :cond_6
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mAlertAbout:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 586
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mAlertAbout:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 587
    iput-object v2, p0, Lcom/asus/DLNA/DLNA;->mAlertAbout:Landroid/app/AlertDialog;

    .line 590
    :cond_7
    invoke-virtual {p0}, Lcom/asus/DLNA/DLNA;->doSaveSharePrefData()V

    .line 592
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mDLNAServer:Lcom/asus/DLNA/DLNAServer;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNAServer;->DeInitDLNAService()V

    .line 593
    iput-object v2, p0, Lcom/asus/DLNA/DLNA;->mDLNAServer:Lcom/asus/DLNA/DLNAServer;

    .line 595
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mDeviceLV:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 596
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mContentLV:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 598
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mLocalContentListAdapter:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mLocalContentListAdapter:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->doClearAllQueuedCMD()V

    .line 599
    :cond_8
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mRemoteContentAdapter:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mRemoteContentAdapter:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-virtual {v0}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->doClearAllQueuedCMD()V

    .line 601
    :cond_9
    iput-object v2, p0, Lcom/asus/DLNA/DLNA;->mDeviceAdapter:Lcom/asus/DLNA/DLNA$DeviceListAdapter;

    .line 602
    iput-object v2, p0, Lcom/asus/DLNA/DLNA;->mRenderAdapter:Lcom/asus/DLNA/DLNA$RenderListAdapter;

    .line 603
    iput-object v2, p0, Lcom/asus/DLNA/DLNA;->mLocalContentListAdapter:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    .line 604
    iput-object v2, p0, Lcom/asus/DLNA/DLNA;->mRemoteContentAdapter:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    .line 606
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 607
    iput-object v2, p0, Lcom/asus/DLNA/DLNA;->mPathList:Ljava/util/List;

    .line 608
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mLocalDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 609
    iput-object v2, p0, Lcom/asus/DLNA/DLNA;->mLocalDeviceList:Ljava/util/List;

    .line 610
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mLocalRenderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 611
    iput-object v2, p0, Lcom/asus/DLNA/DLNA;->mLocalRenderList:Ljava/util/List;

    .line 612
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mLocalContentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 613
    iput-object v2, p0, Lcom/asus/DLNA/DLNA;->mLocalContentList:Ljava/util/List;

    .line 615
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mBitmapMap:Ljava/util/SortedMap;

    if-eqz v0, :cond_a

    .line 616
    invoke-virtual {p0}, Lcom/asus/DLNA/DLNA;->fnClearBitmapItems()V

    .line 617
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mBitmapMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    .line 618
    iput-object v2, p0, Lcom/asus/DLNA/DLNA;->mBitmapMap:Ljava/util/SortedMap;

    .line 621
    :cond_a
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    if-eqz v0, :cond_b

    .line 622
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    invoke-virtual {v0}, Lcom/asus/DLNA/MediaControl;->deinit()V

    .line 623
    iput-object v2, p0, Lcom/asus/DLNA/DLNA;->mMediaControl:Lcom/asus/DLNA/MediaControl;

    .line 626
    :cond_b
    iput-object v2, p0, Lcom/asus/DLNA/DLNA;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 627
    iput-object v2, p0, Lcom/asus/DLNA/DLNA;->mPlaybackListener:Landroid/content/BroadcastReceiver;

    .line 629
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    if-eqz v0, :cond_c

    .line 630
    iget-object v0, p0, Lcom/asus/DLNA/DLNA;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    invoke-virtual {v0}, Lcom/asus/DLNA/SendServerCMD;->deinit()V

    .line 631
    iput-object v2, p0, Lcom/asus/DLNA/DLNA;->mSendServerCMD:Lcom/asus/DLNA/SendServerCMD;

    .line 635
    :cond_c
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 636
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 292
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 293
    sget-boolean v0, Lcom/asus/DLNA/DLNA;->mbReViewedAlert:Z

    if-nez v0, :cond_0

    .line 294
    const/4 v0, 0x1

    sput-boolean v0, Lcom/asus/DLNA/DLNA;->mbReViewedAlert:Z

    .line 295
    invoke-virtual {p0}, Lcom/asus/DLNA/DLNA;->fnCheckWiFiNetwork()V

    .line 297
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/asus/DLNA/DLNA;->doSaveSharePrefData()V

    .line 302
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 303
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 304
    return-void
.end method
