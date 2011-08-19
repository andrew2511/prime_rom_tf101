.class public Lcom/asus/Viewer/MovieView;
.super Landroid/app/Activity;
.source "MovieView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/Viewer/MovieView$RenderListAdapter;
    }
.end annotation


# static fields
.field private static final ACTION_DOWN:I = 0x31

.field private static final ACTION_HIDE:I = 0x30

.field private static final INTENT_KEY_ITEMNAME_LIST:Ljava/lang/String; = "ItemNameList"

.field private static final INTENT_KEY_ITEM_LIST:Ljava/lang/String; = "ItemList"

.field private static final INTENT_KEY_ITEM_NOWPOS:Ljava/lang/String; = "ItemNowPOS"

.field private static final INTENT_KEY_RENDER_LIST:Ljava/lang/String; = "RenderList"

.field private static final INTENT_KEY_RENDER_NOWPOS:Ljava/lang/String; = "RenderNowPOS"

.field private static final INTENT_KEY_SOURCE_NAME:Ljava/lang/String; = "SourceName"

.field private static final MODE_HIDE:I = 0x32

.field private static final MODE_SHOW_HIGH:I = 0x34

.field private static final MODE_SHOW_LOW:I = 0x33

.field private static final MSG_CHECK_PLAYING:I = 0x63

.field private static final MSG_HIDE_PANEL:I = 0x61

.field private static final MSG_OPEN_VIDEO:I = 0x60

.field private static final MSG_SHOW_PANEL:I = 0x62

.field private static final sDefaultTimeout:I = 0xbb8


# instance fields
.field private mAlertRenderList:Landroid/app/AlertDialog;

.field private mAnimating:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mCurrentUri:Landroid/net/Uri;

.field private mDragging:Z

.field mHandler:Landroid/os/Handler;

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mItemNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItemNowPOS:I

.field private mLoading:Landroid/view/View;

.field private mMuteButton:Landroid/widget/ImageButton;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mPanel:Landroid/view/View;

.field private mPanelRegion:Landroid/view/View;

.field private mPause:Z

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPlayToText:Landroid/widget/TextView;

.field private mPrepared:Z

.field private mRenderAdapter:Lcom/asus/Viewer/MovieView$RenderListAdapter;

.field private mRenderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRenderPosition:I

.field private mScrollindicator:Landroid/widget/ImageView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mServerText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field private mTotalTime:Landroid/widget/TextView;

.field private mVideoView:Landroid/widget/VideoView;

.field private showMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/asus/Viewer/MovieView;->mCurrentUri:Landroid/net/Uri;

    .line 60
    iput-object v0, p0, Lcom/asus/Viewer/MovieView;->mVideoView:Landroid/widget/VideoView;

    .line 61
    iput-object v0, p0, Lcom/asus/Viewer/MovieView;->mLoading:Landroid/view/View;

    .line 62
    iput-object v0, p0, Lcom/asus/Viewer/MovieView;->mPanel:Landroid/view/View;

    .line 64
    iput-object v0, p0, Lcom/asus/Viewer/MovieView;->mServerText:Landroid/widget/TextView;

    .line 65
    iput-object v0, p0, Lcom/asus/Viewer/MovieView;->mPlayToText:Landroid/widget/TextView;

    .line 66
    iput-object v0, p0, Lcom/asus/Viewer/MovieView;->mTitleText:Landroid/widget/TextView;

    .line 67
    iput-object v0, p0, Lcom/asus/Viewer/MovieView;->mPauseButton:Landroid/widget/ImageButton;

    .line 68
    iput-object v0, p0, Lcom/asus/Viewer/MovieView;->mMuteButton:Landroid/widget/ImageButton;

    .line 69
    iput-object v0, p0, Lcom/asus/Viewer/MovieView;->mCurrentTime:Landroid/widget/TextView;

    .line 70
    iput-object v0, p0, Lcom/asus/Viewer/MovieView;->mTotalTime:Landroid/widget/TextView;

    .line 71
    iput-object v0, p0, Lcom/asus/Viewer/MovieView;->mSeekBar:Landroid/widget/SeekBar;

    .line 74
    const/16 v0, 0x34

    iput v0, p0, Lcom/asus/Viewer/MovieView;->showMode:I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/Viewer/MovieView;->mRenderPosition:I

    .line 93
    new-instance v0, Lcom/asus/Viewer/MovieView$1;

    invoke-direct {v0, p0}, Lcom/asus/Viewer/MovieView$1;-><init>(Lcom/asus/Viewer/MovieView;)V

    iput-object v0, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    .line 522
    new-instance v0, Lcom/asus/Viewer/MovieView$7;

    invoke-direct {v0, p0}, Lcom/asus/Viewer/MovieView$7;-><init>(Lcom/asus/Viewer/MovieView;)V

    iput-object v0, p0, Lcom/asus/Viewer/MovieView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 528
    new-instance v0, Lcom/asus/Viewer/MovieView$8;

    invoke-direct {v0, p0}, Lcom/asus/Viewer/MovieView$8;-><init>(Lcom/asus/Viewer/MovieView;)V

    iput-object v0, p0, Lcom/asus/Viewer/MovieView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 540
    new-instance v0, Lcom/asus/Viewer/MovieView$9;

    invoke-direct {v0, p0}, Lcom/asus/Viewer/MovieView$9;-><init>(Lcom/asus/Viewer/MovieView;)V

    iput-object v0, p0, Lcom/asus/Viewer/MovieView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 558
    new-instance v0, Lcom/asus/Viewer/MovieView$10;

    invoke-direct {v0, p0}, Lcom/asus/Viewer/MovieView$10;-><init>(Lcom/asus/Viewer/MovieView;)V

    iput-object v0, p0, Lcom/asus/Viewer/MovieView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 739
    new-instance v0, Lcom/asus/Viewer/MovieView$11;

    invoke-direct {v0, p0}, Lcom/asus/Viewer/MovieView$11;-><init>(Lcom/asus/Viewer/MovieView;)V

    iput-object v0, p0, Lcom/asus/Viewer/MovieView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 907
    return-void
.end method

.method static synthetic access$000(Lcom/asus/Viewer/MovieView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/asus/Viewer/MovieView;->mPrepared:Z

    return v0
.end method

.method static synthetic access$002(Lcom/asus/Viewer/MovieView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/asus/Viewer/MovieView;->mPrepared:Z

    return p1
.end method

.method static synthetic access$100(Lcom/asus/Viewer/MovieView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mLoading:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/asus/Viewer/MovieView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/asus/Viewer/MovieView;->mItemNowPOS:I

    return v0
.end method

.method static synthetic access$1002(Lcom/asus/Viewer/MovieView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/asus/Viewer/MovieView;->mItemNowPOS:I

    return p1
.end method

.method static synthetic access$1102(Lcom/asus/Viewer/MovieView;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/asus/Viewer/MovieView;->mCurrentUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/asus/Viewer/MovieView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mItemNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/asus/Viewer/MovieView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mTitleText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/asus/Viewer/MovieView;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/asus/Viewer/MovieView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/asus/Viewer/MovieView;->updatePausePlay()V

    return-void
.end method

.method static synthetic access$1600(Lcom/asus/Viewer/MovieView;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/asus/Viewer/MovieView;)Lcom/asus/Viewer/MovieView$RenderListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mRenderAdapter:Lcom/asus/Viewer/MovieView$RenderListAdapter;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/asus/Viewer/MovieView;Lcom/asus/Viewer/MovieView$RenderListAdapter;)Lcom/asus/Viewer/MovieView$RenderListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/asus/Viewer/MovieView;->mRenderAdapter:Lcom/asus/Viewer/MovieView$RenderListAdapter;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/asus/Viewer/MovieView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/asus/Viewer/MovieView;->mRenderPosition:I

    return p1
.end method

.method static synthetic access$1900(Lcom/asus/Viewer/MovieView;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mAlertRenderList:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/asus/Viewer/MovieView;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/asus/Viewer/MovieView;->mAlertRenderList:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/asus/Viewer/MovieView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/asus/Viewer/MovieView;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/asus/Viewer/MovieView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/asus/Viewer/MovieView;->toggleMediaControlsVisiblity()V

    return-void
.end method

.method static synthetic access$2100(Lcom/asus/Viewer/MovieView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/asus/Viewer/MovieView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mRenderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/asus/Viewer/MovieView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/asus/Viewer/MovieView;->mDragging:Z

    return v0
.end method

.method static synthetic access$302(Lcom/asus/Viewer/MovieView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/asus/Viewer/MovieView;->mDragging:Z

    return p1
.end method

.method static synthetic access$400(Lcom/asus/Viewer/MovieView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/asus/Viewer/MovieView;->mAnimating:Z

    return v0
.end method

.method static synthetic access$402(Lcom/asus/Viewer/MovieView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/asus/Viewer/MovieView;->mAnimating:Z

    return p1
.end method

.method static synthetic access$500(Lcom/asus/Viewer/MovieView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/asus/Viewer/MovieView;->showMode:I

    return v0
.end method

.method static synthetic access$502(Lcom/asus/Viewer/MovieView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/asus/Viewer/MovieView;->showMode:I

    return p1
.end method

.method static synthetic access$600(Lcom/asus/Viewer/MovieView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mScrollindicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/asus/Viewer/MovieView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/asus/Viewer/MovieView;)Landroid/widget/VideoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/asus/Viewer/MovieView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private buildVideoListFromUri(Landroid/net/Uri;)Ljava/util/ArrayList;
    .locals 1
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, VideoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    return-object v0
.end method

.method public static formatDuration(Landroid/content/Context;I)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "durationMs"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 895
    div-int/lit16 v0, p1, 0x3e8

    .line 896
    .local v0, duration:I
    div-int/lit16 v2, v0, 0xe10

    .line 897
    .local v2, h:I
    mul-int/lit16 v5, v2, 0xe10

    sub-int v5, v0, v5

    div-int/lit8 v3, v5, 0x3c

    .line 898
    .local v3, m:I
    mul-int/lit16 v5, v2, 0xe10

    mul-int/lit8 v6, v3, 0x3c

    add-int/2addr v5, v6

    sub-int v4, v0, v5

    .line 900
    .local v4, s:I
    if-nez v2, :cond_0

    .line 901
    const v5, 0x7f070037

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 905
    .local v1, durationValue:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 903
    .end local v1           #durationValue:Ljava/lang/String;
    :cond_0
    const v5, 0x7f070038

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #durationValue:Ljava/lang/String;
    goto :goto_0
.end method

.method private init(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 137
    if-nez p1, :cond_0

    move v1, v2

    .line 145
    :goto_0
    return v1

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/asus/Viewer/MovieView;->mItemList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/asus/Viewer/MovieView;->buildVideoListFromUri(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/asus/Viewer/MovieView;->mItemList:Ljava/util/ArrayList;

    .line 141
    iget-object v1, p0, Lcom/asus/Viewer/MovieView;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 142
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    move v1, v2

    .line 143
    goto :goto_0

    .line 138
    .end local v0           #index:I
    :cond_1
    iget-object v1, p0, Lcom/asus/Viewer/MovieView;->mItemList:Ljava/util/ArrayList;

    goto :goto_1

    .line 145
    .restart local v0       #index:I
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setProgress()I
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 330
    iget-object v5, p0, Lcom/asus/Viewer/MovieView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/asus/Viewer/MovieView;->mDragging:Z

    if-eqz v5, :cond_1

    :cond_0
    move v5, v6

    .line 358
    :goto_0
    return v5

    .line 333
    :cond_1
    iget-object v5, p0, Lcom/asus/Viewer/MovieView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v4

    .line 334
    .local v4, position:I
    iget-object v5, p0, Lcom/asus/Viewer/MovieView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 335
    .local v0, duration:I
    iget-object v5, p0, Lcom/asus/Viewer/MovieView;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v5, :cond_3

    .line 336
    if-lez v0, :cond_6

    .line 338
    const-wide/16 v5, 0x3e8

    int-to-long v7, v4

    mul-long/2addr v5, v7

    int-to-long v7, v0

    div-long v2, v5, v7

    .line 339
    .local v2, pos:J
    iget-object v5, p0, Lcom/asus/Viewer/MovieView;->mSeekBar:Landroid/widget/SeekBar;

    long-to-int v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 348
    .end local v2           #pos:J
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/asus/Viewer/MovieView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5}, Landroid/widget/VideoView;->getBufferPercentage()I

    move-result v1

    .line 349
    .local v1, percent:I
    iget-object v5, p0, Lcom/asus/Viewer/MovieView;->mSeekBar:Landroid/widget/SeekBar;

    mul-int/lit8 v6, v1, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 352
    .end local v1           #percent:I
    :cond_3
    iget-object v5, p0, Lcom/asus/Viewer/MovieView;->mTotalTime:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 353
    iget-object v5, p0, Lcom/asus/Viewer/MovieView;->mTotalTime:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/asus/Viewer/MovieView;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    :cond_4
    iget-object v5, p0, Lcom/asus/Viewer/MovieView;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 355
    iget-object v5, p0, Lcom/asus/Viewer/MovieView;->mCurrentTime:Landroid/widget/TextView;

    invoke-static {p0, v4}, Lcom/asus/Viewer/MovieView;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    :cond_5
    invoke-direct {p0}, Lcom/asus/Viewer/MovieView;->updatePausePlay()V

    move v5, v4

    .line 358
    goto :goto_0

    .line 342
    :cond_6
    iget-boolean v5, p0, Lcom/asus/Viewer/MovieView;->mPrepared:Z

    if-nez v5, :cond_2

    .line 343
    const/4 v4, 0x0

    .line 344
    const/4 v0, 0x0

    .line 345
    iget-object v5, p0, Lcom/asus/Viewer/MovieView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 2

    .prologue
    .line 887
    iget v0, p0, Lcom/asus/Viewer/MovieView;->showMode:I

    const/16 v1, 0x34

    if-ne v0, v1, :cond_0

    .line 888
    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Lcom/asus/Viewer/MovieView;->hide(I)V

    .line 892
    :goto_0
    return-void

    .line 890
    :cond_0
    invoke-virtual {p0}, Lcom/asus/Viewer/MovieView;->show()V

    goto :goto_0
.end method

.method private updateMuteState()V
    .locals 3

    .prologue
    .line 718
    const/4 v0, 0x0

    .line 720
    .local v0, isMute:I
    iget-object v1, p0, Lcom/asus/Viewer/MovieView;->mMuteButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 721
    iget-object v1, p0, Lcom/asus/Viewer/MovieView;->mMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    iget-object v1, p0, Lcom/asus/Viewer/MovieView;->mMuteButton:Landroid/widget/ImageButton;

    const v2, 0x7f02004b

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 727
    :goto_0
    return-void

    .line 724
    :cond_0
    iget-object v1, p0, Lcom/asus/Viewer/MovieView;->mMuteButton:Landroid/widget/ImageButton;

    const v2, 0x7f02004d

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private updatePausePlay()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public clickOnMuteBTN()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 729
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/asus/Viewer/MovieView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 731
    invoke-direct {p0}, Lcom/asus/Viewer/MovieView;->updateMuteState()V

    .line 737
    :goto_0
    return-void

    .line 733
    :cond_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/asus/Viewer/MovieView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v3, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 734
    invoke-direct {p0}, Lcom/asus/Viewer/MovieView;->updateMuteState()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 304
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 305
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 296
    .local v0, i:Landroid/content/Intent;
    const-string v1, "RenderNowPOS"

    iget v2, p0, Lcom/asus/Viewer/MovieView;->mRenderPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    const-string v1, "ItemNowPOS"

    iget v2, p0, Lcom/asus/Viewer/MovieView;->mItemNowPOS:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/asus/Viewer/MovieView;->setResult(ILandroid/content/Intent;)V

    .line 299
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 300
    return-void
.end method

.method public hide(I)V
    .locals 12
    .parameter "action"

    .prologue
    const/16 v11, 0x61

    const-wide/16 v9, 0x1f4

    const/16 v8, 0x34

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 440
    iget-boolean v4, p0, Lcom/asus/Viewer/MovieView;->mAnimating:Z

    if-eqz v4, :cond_1

    .line 519
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 443
    .restart local p0
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 471
    :pswitch_0
    iget v4, p0, Lcom/asus/Viewer/MovieView;->showMode:I

    const/16 v5, 0x33

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/asus/Viewer/MovieView;->showMode:I

    if-ne v4, v8, :cond_0

    .line 472
    :cond_2
    iput-boolean v7, p0, Lcom/asus/Viewer/MovieView;->mAnimating:Z

    .line 473
    iget-object v4, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x62

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 474
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    invoke-direct {v1, v4, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 475
    .local v1, hide:Landroid/view/animation/Animation;
    invoke-virtual {v1, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 477
    iget v4, p0, Lcom/asus/Viewer/MovieView;->showMode:I

    if-ne v4, v8, :cond_3

    .line 478
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-object v4, p0, Lcom/asus/Viewer/MovieView;->mPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v6, v6, v6, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 479
    .local v2, moveDown:Landroid/view/animation/Animation;
    invoke-virtual {v2, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 480
    invoke-virtual {v2, v7}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 481
    const v4, 0x10a0004

    invoke-virtual {v2, p0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 482
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 483
    .local v0, aset:Landroid/view/animation/AnimationSet;
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 484
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 485
    new-instance v4, Lcom/asus/Viewer/MovieView$5;

    invoke-direct {v4, p0}, Lcom/asus/Viewer/MovieView$5;-><init>(Lcom/asus/Viewer/MovieView;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 498
    iget-object v4, p0, Lcom/asus/Viewer/MovieView;->mPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 445
    .end local v0           #aset:Landroid/view/animation/AnimationSet;
    .end local v1           #hide:Landroid/view/animation/Animation;
    .end local v2           #moveDown:Landroid/view/animation/Animation;
    .restart local p0
    :pswitch_1
    iget v4, p0, Lcom/asus/Viewer/MovieView;->showMode:I

    if-ne v4, v8, :cond_0

    .line 446
    iput-boolean v7, p0, Lcom/asus/Viewer/MovieView;->mAnimating:Z

    .line 447
    iget-object v4, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x62

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 448
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-object v4, p0, Lcom/asus/Viewer/MovieView;->mPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v6, v6, v6, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 449
    .restart local v2       #moveDown:Landroid/view/animation/Animation;
    invoke-virtual {v2, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 450
    invoke-virtual {v2, v7}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 451
    const v4, 0x10a0004

    invoke-virtual {v2, p0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 452
    new-instance v4, Lcom/asus/Viewer/MovieView$4;

    invoke-direct {v4, p0}, Lcom/asus/Viewer/MovieView$4;-><init>(Lcom/asus/Viewer/MovieView;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 462
    iget-object v4, p0, Lcom/asus/Viewer/MovieView;->mPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 463
    iget-object v4, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 464
    .local v3, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 465
    iget-object v4, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 500
    .end local v2           #moveDown:Landroid/view/animation/Animation;
    .end local v3           #msg:Landroid/os/Message;
    .restart local v1       #hide:Landroid/view/animation/Animation;
    :cond_3
    new-instance v4, Lcom/asus/Viewer/MovieView$6;

    invoke-direct {v4, p0}, Lcom/asus/Viewer/MovieView$6;-><init>(Lcom/asus/Viewer/MovieView;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 511
    iget-object v4, p0, Lcom/asus/Viewer/MovieView;->mPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 443
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const v10, 0x7f08000f

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 150
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    const v6, 0x7f030009

    invoke-virtual {p0, v6}, Lcom/asus/Viewer/MovieView;->setContentView(I)V

    .line 155
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/asus/Viewer/MovieView;->mItemList:Ljava/util/ArrayList;

    .line 158
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v6, "for_photo_video_player"

    invoke-virtual {p0, v6}, Lcom/asus/Viewer/MovieView;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    const-string v7, "ISO-8859-1"

    invoke-direct {v2, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 159
    .local v2, in:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 162
    .local v0, br:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, strTemp:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 164
    iget-object v6, p0, Lcom/asus/Viewer/MovieView;->mItemList:Ljava/util/ArrayList;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 171
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #in:Ljava/io/InputStreamReader;
    .end local v5           #strTemp:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 172
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 179
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :goto_1
    invoke-virtual {p0}, Lcom/asus/Viewer/MovieView;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "RenderList"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/asus/Viewer/MovieView;->mRenderList:Ljava/util/ArrayList;

    .line 180
    invoke-virtual {p0}, Lcom/asus/Viewer/MovieView;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "ItemNameList"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/asus/Viewer/MovieView;->mItemNameList:Ljava/util/ArrayList;

    .line 181
    invoke-virtual {p0}, Lcom/asus/Viewer/MovieView;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/asus/Viewer/MovieView;->mAudioManager:Landroid/media/AudioManager;

    .line 182
    invoke-virtual {p0}, Lcom/asus/Viewer/MovieView;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "SourceName"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, mSourceName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/asus/Viewer/MovieView;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "ItemNowPOS"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/asus/Viewer/MovieView;->mItemNowPOS:I

    .line 185
    iget v6, p0, Lcom/asus/Viewer/MovieView;->mItemNowPOS:I

    if-ne v6, v8, :cond_0

    .line 186
    const/4 v4, 0x0

    .line 187
    .local v4, message:I
    const v4, 0x7f070036

    .line 188
    invoke-static {p0, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 189
    invoke-virtual {p0}, Lcom/asus/Viewer/MovieView;->finish()V

    .line 192
    .end local v4           #message:I
    :cond_0
    iget-object v6, p0, Lcom/asus/Viewer/MovieView;->mItemList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/asus/Viewer/MovieView;->mItemNowPOS:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iput-object v6, p0, Lcom/asus/Viewer/MovieView;->mCurrentUri:Landroid/net/Uri;

    .line 193
    iget-object v6, p0, Lcom/asus/Viewer/MovieView;->mCurrentUri:Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/asus/Viewer/MovieView;->init(Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 194
    invoke-virtual {p0}, Lcom/asus/Viewer/MovieView;->finish()V

    .line 231
    .end local p0
    :goto_2
    return-void

    .line 167
    .end local v3           #mSourceName:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/InputStreamReader;
    .restart local v5       #strTemp:Ljava/lang/String;
    .restart local p0
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 168
    const/4 v0, 0x0

    .line 169
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 170
    const/4 v2, 0x0

    goto :goto_1

    .line 173
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #in:Ljava/io/InputStreamReader;
    .end local v5           #strTemp:Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 174
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 198
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #mSourceName:Ljava/lang/String;
    :cond_2
    const v6, 0x7f080034

    invoke-virtual {p0, v6}, Lcom/asus/Viewer/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/VideoView;

    iput-object v6, p0, Lcom/asus/Viewer/MovieView;->mVideoView:Landroid/widget/VideoView;

    .line 199
    const v6, 0x7f08001c

    invoke-virtual {p0, v6}, Lcom/asus/Viewer/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/asus/Viewer/MovieView;->mLoading:Landroid/view/View;

    .line 200
    const v6, 0x7f08002d

    invoke-virtual {p0, v6}, Lcom/asus/Viewer/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/asus/Viewer/MovieView;->mPanel:Landroid/view/View;

    .line 201
    iget-object v6, p0, Lcom/asus/Viewer/MovieView;->mPanel:Landroid/view/View;

    iget-object v7, p0, Lcom/asus/Viewer/MovieView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const v6, 0x7f08002a

    invoke-virtual {p0, v6}, Lcom/asus/Viewer/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/asus/Viewer/MovieView;->mServerText:Landroid/widget/TextView;

    .line 203
    iget-object v6, p0, Lcom/asus/Viewer/MovieView;->mServerText:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f070010

    invoke-virtual {p0, v8}, Lcom/asus/Viewer/MovieView;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    const v6, 0x7f08002c

    invoke-virtual {p0, v6}, Lcom/asus/Viewer/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/asus/Viewer/MovieView;->mPlayToText:Landroid/widget/TextView;

    .line 205
    iget-object v7, p0, Lcom/asus/Viewer/MovieView;->mPlayToText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f070003

    invoke-virtual {p0, v8}, Lcom/asus/Viewer/MovieView;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/asus/Viewer/MovieView;->mRenderList:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    const v6, 0x7f08002b

    invoke-virtual {p0, v6}, Lcom/asus/Viewer/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/asus/Viewer/MovieView;->mTitleText:Landroid/widget/TextView;

    .line 207
    invoke-virtual {p0, v10}, Lcom/asus/Viewer/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/asus/Viewer/MovieView;->mPauseButton:Landroid/widget/ImageButton;

    .line 208
    const v6, 0x7f080032

    invoke-virtual {p0, v6}, Lcom/asus/Viewer/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/asus/Viewer/MovieView;->mCurrentTime:Landroid/widget/TextView;

    .line 209
    const v6, 0x7f080033

    invoke-virtual {p0, v6}, Lcom/asus/Viewer/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/asus/Viewer/MovieView;->mTotalTime:Landroid/widget/TextView;

    .line 210
    const v6, 0x7f080031

    invoke-virtual {p0, v6}, Lcom/asus/Viewer/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    iput-object v6, p0, Lcom/asus/Viewer/MovieView;->mSeekBar:Landroid/widget/SeekBar;

    .line 211
    iget-object v6, p0, Lcom/asus/Viewer/MovieView;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 212
    iget-object v6, p0, Lcom/asus/Viewer/MovieView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/asus/Viewer/MovieView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 213
    const v6, 0x7f080012

    invoke-virtual {p0, v6}, Lcom/asus/Viewer/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/asus/Viewer/MovieView;->mMuteButton:Landroid/widget/ImageButton;

    .line 214
    iget-object v6, p0, Lcom/asus/Viewer/MovieView;->mMuteButton:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/asus/Viewer/MovieView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const v6, 0x7f08002e

    invoke-virtual {p0, v6}, Lcom/asus/Viewer/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/Viewer/MovieView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v6, 0x7f08002f

    invoke-virtual {p0, v6}, Lcom/asus/Viewer/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/Viewer/MovieView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const v6, 0x7f08000e

    invoke-virtual {p0, v6}, Lcom/asus/Viewer/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/Viewer/MovieView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    invoke-virtual {p0, v10}, Lcom/asus/Viewer/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/Viewer/MovieView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    const v6, 0x7f080030

    invoke-virtual {p0, v6}, Lcom/asus/Viewer/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/Viewer/MovieView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v6, 0x7f080011

    invoke-virtual {p0, v6}, Lcom/asus/Viewer/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/Viewer/MovieView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const v6, 0x7f080029

    invoke-virtual {p0, v6}, Lcom/asus/Viewer/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/asus/Viewer/MovieView;->mPanelRegion:Landroid/view/View;

    .line 223
    iget-object v6, p0, Lcom/asus/Viewer/MovieView;->mPanelRegion:Landroid/view/View;

    iget-object v7, p0, Lcom/asus/Viewer/MovieView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    const v6, 0x7f080013

    invoke-virtual {p0, v6}, Lcom/asus/Viewer/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/Viewer/MovieView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    const v6, 0x7f080014

    invoke-virtual {p0, v6}, Lcom/asus/Viewer/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/Viewer/MovieView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    const v6, 0x7f080015

    invoke-virtual {p0, v6}, Lcom/asus/Viewer/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/Viewer/MovieView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    const v6, 0x7f080007

    invoke-virtual {p0, v6}, Lcom/asus/Viewer/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/asus/Viewer/MovieView;->mScrollindicator:Landroid/widget/ImageView;

    .line 229
    invoke-direct {p0}, Lcom/asus/Viewer/MovieView;->updateMuteState()V

    .line 230
    iget-object v6, p0, Lcom/asus/Viewer/MovieView;->mTitleText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/asus/Viewer/MovieView;->mItemNameList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/asus/Viewer/MovieView;->mItemNowPOS:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 175
    .end local v3           #mSourceName:Ljava/lang/String;
    .restart local p0
    :catch_2
    move-exception v6

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 270
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 272
    iput-object v1, p0, Lcom/asus/Viewer/MovieView;->mItemList:Ljava/util/ArrayList;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mRenderList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mRenderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 276
    iput-object v1, p0, Lcom/asus/Viewer/MovieView;->mRenderList:Ljava/util/ArrayList;

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mItemNameList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mItemNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 280
    iput-object v1, p0, Lcom/asus/Viewer/MovieView;->mItemNameList:Ljava/util/ArrayList;

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mAlertRenderList:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mAlertRenderList:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 284
    iput-object v1, p0, Lcom/asus/Viewer/MovieView;->mAlertRenderList:Landroid/app/AlertDialog;

    .line 286
    :cond_3
    iput-object v1, p0, Lcom/asus/Viewer/MovieView;->mRenderAdapter:Lcom/asus/Viewer/MovieView$RenderListAdapter;

    .line 287
    iput-object v1, p0, Lcom/asus/Viewer/MovieView;->mVideoView:Landroid/widget/VideoView;

    .line 288
    iput-object v1, p0, Lcom/asus/Viewer/MovieView;->mAudioManager:Landroid/media/AudioManager;

    .line 289
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 290
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 291
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v4, 0x32

    const/16 v8, 0x60

    const/4 v7, 0x0

    const/16 v5, 0x61

    const/4 v6, 0x1

    .line 792
    const/4 v3, 0x4

    if-eq p1, v3, :cond_2

    const/16 v3, 0x18

    if-eq p1, v3, :cond_2

    const/16 v3, 0x19

    if-eq p1, v3, :cond_2

    const/16 v3, 0xa4

    if-eq p1, v3, :cond_2

    const/16 v3, 0x52

    if-eq p1, v3, :cond_2

    const/4 v3, 0x5

    if-eq p1, v3, :cond_2

    const/4 v3, 0x6

    if-eq p1, v3, :cond_2

    move v0, v6

    .line 799
    .local v0, isKeyCodeSupported:Z
    :goto_0
    if-eqz v0, :cond_12

    .line 800
    const/16 v3, 0x4f

    if-eq p1, v3, :cond_0

    const/16 v3, 0x55

    if-ne p1, v3, :cond_5

    .line 802
    :cond_0
    iget v3, p0, Lcom/asus/Viewer/MovieView;->showMode:I

    if-eq v3, v4, :cond_1

    .line 803
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x62

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 804
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 805
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 806
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 808
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mLoading:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    move v3, v6

    .line 883
    :goto_1
    return v3

    .end local v0           #isKeyCodeSupported:Z
    :cond_2
    move v0, v7

    .line 792
    goto :goto_0

    .line 811
    .restart local v0       #isKeyCodeSupported:Z
    :cond_3
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 812
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->pause()V

    .line 816
    :goto_2
    invoke-direct {p0}, Lcom/asus/Viewer/MovieView;->updatePausePlay()V

    move v3, v6

    .line 817
    goto :goto_1

    .line 814
    :cond_4
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->start()V

    goto :goto_2

    .line 818
    :cond_5
    const/16 v3, 0x58

    if-ne p1, v3, :cond_b

    .line 819
    iget v3, p0, Lcom/asus/Viewer/MovieView;->showMode:I

    if-ne v3, v4, :cond_7

    .line 820
    const/16 v3, 0xbb8

    invoke-virtual {p0, v3}, Lcom/asus/Viewer/MovieView;->show(I)V

    .line 828
    :goto_3
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mItemList:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_8

    :cond_6
    move v3, v6

    goto :goto_1

    .line 823
    :cond_7
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x62

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 824
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 825
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 826
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 829
    .end local v1           #msg:Landroid/os/Message;
    :cond_8
    iget v3, p0, Lcom/asus/Viewer/MovieView;->mItemNowPOS:I

    if-lez v3, :cond_a

    .line 830
    iget v3, p0, Lcom/asus/Viewer/MovieView;->mItemNowPOS:I

    sub-int/2addr v3, v6

    iput v3, p0, Lcom/asus/Viewer/MovieView;->mItemNowPOS:I

    .line 831
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mItemList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/asus/Viewer/MovieView;->mItemNowPOS:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/asus/Viewer/MovieView;->mCurrentUri:Landroid/net/Uri;

    .line 832
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x63

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 833
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 834
    iget-object v4, p0, Lcom/asus/Viewer/MovieView;->mTitleText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mItemNameList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/asus/Viewer/MovieView;->mItemNowPOS:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 836
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mLoading:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_9

    .line 837
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mLoading:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 840
    :cond_9
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v3, v6

    .line 846
    goto/16 :goto_1

    :cond_a
    move v3, v6

    .line 844
    goto/16 :goto_1

    .line 847
    :cond_b
    const/16 v3, 0x57

    if-ne p1, v3, :cond_11

    .line 848
    iget v3, p0, Lcom/asus/Viewer/MovieView;->showMode:I

    if-ne v3, v4, :cond_d

    .line 849
    const/16 v3, 0xbb8

    invoke-virtual {p0, v3}, Lcom/asus/Viewer/MovieView;->show(I)V

    .line 857
    :goto_4
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mItemList:Ljava/util/ArrayList;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_e

    :cond_c
    move v3, v6

    goto/16 :goto_1

    .line 852
    :cond_d
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x62

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 853
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 854
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 855
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    .line 858
    .end local v1           #msg:Landroid/os/Message;
    :cond_e
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 859
    .local v2, size:I
    iget v3, p0, Lcom/asus/Viewer/MovieView;->mItemNowPOS:I

    sub-int v4, v2, v6

    if-ge v3, v4, :cond_10

    .line 860
    iget v3, p0, Lcom/asus/Viewer/MovieView;->mItemNowPOS:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/asus/Viewer/MovieView;->mItemNowPOS:I

    .line 861
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mItemList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/asus/Viewer/MovieView;->mItemNowPOS:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/asus/Viewer/MovieView;->mCurrentUri:Landroid/net/Uri;

    .line 862
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x63

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 863
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 864
    iget-object v4, p0, Lcom/asus/Viewer/MovieView;->mTitleText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mItemNameList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/asus/Viewer/MovieView;->mItemNowPOS:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 866
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mLoading:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_f

    .line 867
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mLoading:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 870
    :cond_f
    iget-object v3, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v3, v6

    .line 875
    goto/16 :goto_1

    :cond_10
    move v3, v6

    .line 873
    goto/16 :goto_1

    .line 878
    .end local v2           #size:I
    :cond_11
    invoke-direct {p0}, Lcom/asus/Viewer/MovieView;->toggleMediaControlsVisiblity()V

    move v3, v6

    .line 879
    goto/16 :goto_1

    .line 883
    :cond_12
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 236
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 238
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/Viewer/MovieView;->mPause:Z

    .line 240
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 244
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 245
    iget-boolean v0, p0, Lcom/asus/Viewer/MovieView;->mPause:Z

    if-eqz v0, :cond_3

    .line 246
    iput-boolean v2, p0, Lcom/asus/Viewer/MovieView;->mPrepared:Z

    .line 247
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mLoading:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 251
    iput-boolean v2, p0, Lcom/asus/Viewer/MovieView;->mPause:Z

    .line 255
    :goto_0
    iget v0, p0, Lcom/asus/Viewer/MovieView;->showMode:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/asus/Viewer/MovieView;->showMode:I

    const/16 v1, 0x33

    if-ne v0, v1, :cond_2

    .line 256
    :cond_1
    const/16 v0, 0x34

    iput v0, p0, Lcom/asus/Viewer/MovieView;->showMode:I

    .line 257
    invoke-direct {p0}, Lcom/asus/Viewer/MovieView;->updateMuteState()V

    .line 258
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mPanel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setSystemUiVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mScrollindicator:Landroid/widget/ImageView;

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    :cond_2
    invoke-virtual {p0}, Lcom/asus/Viewer/MovieView;->show()V

    .line 264
    iget-object v0, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x63

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 265
    return-void

    .line 253
    :cond_3
    invoke-virtual {p0}, Lcom/asus/Viewer/MovieView;->openVideo()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 783
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 784
    invoke-direct {p0}, Lcom/asus/Viewer/MovieView;->toggleMediaControlsVisiblity()V

    .line 786
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method openVideo()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 307
    iput-boolean v2, p0, Lcom/asus/Viewer/MovieView;->mPrepared:Z

    .line 308
    iget-object v1, p0, Lcom/asus/Viewer/MovieView;->mLoading:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 309
    iget-object v1, p0, Lcom/asus/Viewer/MovieView;->mLoading:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/asus/Viewer/MovieView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, scheme:Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "rtsp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    :cond_1
    iget-object v1, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x63

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 319
    :goto_0
    iget-object v1, p0, Lcom/asus/Viewer/MovieView;->mVideoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/asus/Viewer/MovieView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 320
    iget-object v1, p0, Lcom/asus/Viewer/MovieView;->mVideoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/asus/Viewer/MovieView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 321
    iget-object v1, p0, Lcom/asus/Viewer/MovieView;->mVideoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/asus/Viewer/MovieView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 322
    iget-object v1, p0, Lcom/asus/Viewer/MovieView;->mVideoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/asus/Viewer/MovieView;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 324
    iget-object v1, p0, Lcom/asus/Viewer/MovieView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->requestFocus()Z

    .line 325
    iget-object v1, p0, Lcom/asus/Viewer/MovieView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 327
    return-void

    .line 317
    :cond_2
    iget-object v1, p0, Lcom/asus/Viewer/MovieView;->mLoading:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 373
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/asus/Viewer/MovieView;->show(I)V

    .line 374
    return-void
.end method

.method public show(I)V
    .locals 9
    .parameter "timeout"

    .prologue
    const-wide/16 v7, 0x1f4

    const/16 v6, 0x61

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 377
    iget-boolean v2, p0, Lcom/asus/Viewer/MovieView;->mAnimating:Z

    if-eqz v2, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-direct {p0}, Lcom/asus/Viewer/MovieView;->setProgress()I

    .line 381
    iget v2, p0, Lcom/asus/Viewer/MovieView;->showMode:I

    packed-switch v2, :pswitch_data_0

    .line 430
    :goto_1
    iget-object v2, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x62

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 432
    iget-object v2, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 433
    .local v1, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    .line 434
    iget-object v2, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 435
    iget-object v2, p0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    int-to-long v3, p1

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 383
    .end local v1           #msg:Landroid/os/Message;
    :pswitch_0
    invoke-direct {p0}, Lcom/asus/Viewer/MovieView;->updateMuteState()V

    .line 384
    iget-object v2, p0, Lcom/asus/Viewer/MovieView;->mPanel:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v2, p0, Lcom/asus/Viewer/MovieView;->mScrollindicator:Landroid/widget/ImageView;

    const v3, 0x7f02001c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 386
    iput-boolean v5, p0, Lcom/asus/Viewer/MovieView;->mAnimating:Z

    .line 387
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/asus/Viewer/MovieView;->mPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 388
    .local v0, moveUp:Landroid/view/animation/Animation;
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 389
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 390
    const v2, 0x10a0004

    invoke-virtual {v0, p0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 391
    new-instance v2, Lcom/asus/Viewer/MovieView$2;

    invoke-direct {v2, p0}, Lcom/asus/Viewer/MovieView$2;-><init>(Lcom/asus/Viewer/MovieView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 399
    iget-object v2, p0, Lcom/asus/Viewer/MovieView;->mPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 403
    .end local v0           #moveUp:Landroid/view/animation/Animation;
    :pswitch_1
    invoke-direct {p0}, Lcom/asus/Viewer/MovieView;->updateMuteState()V

    .line 404
    iget-object v2, p0, Lcom/asus/Viewer/MovieView;->mPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 405
    iget-object v2, p0, Lcom/asus/Viewer/MovieView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setSystemUiVisibility(I)V

    .line 406
    iget-object v2, p0, Lcom/asus/Viewer/MovieView;->mPanel:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object v2, p0, Lcom/asus/Viewer/MovieView;->mScrollindicator:Landroid/widget/ImageView;

    const v3, 0x7f02001d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 408
    iput-boolean v5, p0, Lcom/asus/Viewer/MovieView;->mAnimating:Z

    .line 409
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    invoke-direct {v0, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 411
    .restart local v0       #moveUp:Landroid/view/animation/Animation;
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 413
    new-instance v2, Lcom/asus/Viewer/MovieView$3;

    invoke-direct {v2, p0}, Lcom/asus/Viewer/MovieView$3;-><init>(Lcom/asus/Viewer/MovieView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 421
    iget-object v2, p0, Lcom/asus/Viewer/MovieView;->mPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 381
    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
