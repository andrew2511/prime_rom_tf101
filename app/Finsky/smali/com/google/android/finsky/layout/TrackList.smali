.class public Lcom/google/android/finsky/layout/TrackList;
.super Landroid/widget/LinearLayout;
.source "TrackList.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/TrackList$PlaybackMode;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/finsky/adapters/TrackListAdapter;

.field private mCurrentPlaybackMode:Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

.field private mCurrentTrack:Lcom/google/android/finsky/model/Track;

.field private mCurrentTrackIndex:I

.field private mIsPreparing:Z

.field private mListView:Landroid/widget/ListView;

.field private final mOnTrackClickListener:Landroid/view/View$OnClickListener;

.field private mPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentTrackIndex:I

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/TrackList;->mIsPreparing:Z

    .line 257
    new-instance v0, Lcom/google/android/finsky/layout/TrackList$4;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/TrackList$4;-><init>(Lcom/google/android/finsky/layout/TrackList;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mOnTrackClickListener:Landroid/view/View$OnClickListener;

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/TrackList;->setOrientation(I)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/TrackList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentTrackIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/TrackList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/TrackList;->skipToSong(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/TrackList;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/finsky/layout/TrackList;Lcom/google/android/finsky/layout/TrackList$PlaybackMode;)Lcom/google/android/finsky/layout/TrackList$PlaybackMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentPlaybackMode:Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/finsky/layout/TrackList;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/layout/TrackList;Lcom/google/android/finsky/model/Track$TrackMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/TrackList;->updateCurrentTrackMode(Lcom/google/android/finsky/model/Track$TrackMode;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/layout/TrackList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/TrackList;->mIsPreparing:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/layout/TrackList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/TrackList;->playOneTrack(I)V

    return-void
.end method

.method private playOneTrack(I)V
    .locals 6
    .parameter "newTrack"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 199
    iget-boolean v2, p0, Lcom/google/android/finsky/layout/TrackList;->mIsPreparing:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentTrackIndex:I

    if-ne v2, p1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/layout/TrackList;->resetMediaPlayer()V

    .line 207
    iget v2, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentTrackIndex:I

    if-ltz v2, :cond_1

    .line 208
    sget-object v2, Lcom/google/android/finsky/model/Track$TrackMode;->READY:Lcom/google/android/finsky/model/Track$TrackMode;

    invoke-direct {p0, v2}, Lcom/google/android/finsky/layout/TrackList;->updateCurrentTrackMode(Lcom/google/android/finsky/model/Track$TrackMode;)V

    .line 209
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentTrackIndex:I

    .line 210
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentTrack:Lcom/google/android/finsky/model/Track;

    .line 214
    :cond_1
    iput p1, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentTrackIndex:I

    .line 215
    iget-object v2, p0, Lcom/google/android/finsky/layout/TrackList;->mAdapter:Lcom/google/android/finsky/adapters/TrackListAdapter;

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/adapters/TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/model/Track;

    iput-object v2, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentTrack:Lcom/google/android/finsky/model/Track;

    .line 218
    iget-object v2, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentTrack:Lcom/google/android/finsky/model/Track;

    iget-object v1, v2, Lcom/google/android/finsky/model/Track;->url:Ljava/lang/String;

    .line 221
    .local v1, previewUrl:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/TrackList;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/google/android/finsky/layout/TrackList;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 223
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/finsky/layout/TrackList;->mIsPreparing:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    :goto_1
    sget-object v2, Lcom/google/android/finsky/model/Track$TrackMode;->LOADING:Lcom/google/android/finsky/model/Track$TrackMode;

    invoke-direct {p0, v2}, Lcom/google/android/finsky/layout/TrackList;->updateCurrentTrackMode(Lcom/google/android/finsky/model/Track$TrackMode;)V

    goto :goto_0

    .line 224
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 227
    .local v0, e:Ljava/lang/IllegalStateException;
    goto :goto_0

    .line 228
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 229
    .local v0, e:Ljava/io/IOException;
    const-string v2, "Music preview playback error: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/TrackList;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/TrackList;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0039

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private resetMediaPlayer()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    sget-object v0, Lcom/google/android/finsky/model/Track$TrackMode;->READY:Lcom/google/android/finsky/model/Track$TrackMode;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/TrackList;->updateCurrentTrackMode(Lcom/google/android/finsky/model/Track$TrackMode;)V

    .line 299
    iget-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 303
    return-void
.end method

.method private setupLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/TrackList;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 112
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f04002b

    invoke-virtual {v0, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 116
    .local v1, mPlayerControls:Landroid/widget/LinearLayout;
    const v5, 0x7f090078

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 117
    .local v3, playAllButton:Landroid/widget/Button;
    new-instance v5, Lcom/google/android/finsky/layout/TrackList$1;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/layout/TrackList$1;-><init>(Lcom/google/android/finsky/layout/TrackList;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v5, 0x7f090077

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 126
    .local v4, prevButton:Landroid/widget/Button;
    new-instance v5, Lcom/google/android/finsky/layout/TrackList$2;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/layout/TrackList$2;-><init>(Lcom/google/android/finsky/layout/TrackList;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v5, 0x7f090079

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 136
    .local v2, nextButton:Landroid/widget/Button;
    new-instance v5, Lcom/google/android/finsky/layout/TrackList$3;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/layout/TrackList$3;-><init>(Lcom/google/android/finsky/layout/TrackList;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    new-instance v5, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/TrackList;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/finsky/layout/TrackList;->mListView:Landroid/widget/ListView;

    .line 146
    iget-object v5, p0, Lcom/google/android/finsky/layout/TrackList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v5, p0, Lcom/google/android/finsky/layout/TrackList;->mListView:Landroid/widget/ListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 148
    iget-object v5, p0, Lcom/google/android/finsky/layout/TrackList;->mListView:Landroid/widget/ListView;

    const v6, -0x333334

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 151
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/TrackList;->addView(Landroid/view/View;)V

    .line 152
    iget-object v5, p0, Lcom/google/android/finsky/layout/TrackList;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/TrackList;->addView(Landroid/view/View;)V

    .line 153
    return-void
.end method

.method private skipToSong(I)V
    .locals 2
    .parameter "newIndex"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentPlaybackMode:Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    sget-object v1, Lcom/google/android/finsky/layout/TrackList$PlaybackMode;->PLAY_ALL_TRACKS:Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    if-eq v0, v1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 179
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mAdapter:Lcom/google/android/finsky/adapters/TrackListAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/TrackListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 180
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/TrackList;->playOneTrack(I)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/layout/TrackList;->resetMediaPlayer()V

    .line 185
    sget-object v0, Lcom/google/android/finsky/model/Track$TrackMode;->READY:Lcom/google/android/finsky/model/Track$TrackMode;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/TrackList;->updateCurrentTrackMode(Lcom/google/android/finsky/model/Track$TrackMode;)V

    .line 187
    sget-object v0, Lcom/google/android/finsky/layout/TrackList$PlaybackMode;->PLAY_ONE_TRACK:Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    iput-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentPlaybackMode:Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentTrack:Lcom/google/android/finsky/model/Track;

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentTrackIndex:I

    goto :goto_0
.end method

.method private updateCurrentTrackMode(Lcom/google/android/finsky/model/Track$TrackMode;)V
    .locals 2
    .parameter "newMode"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentTrack:Lcom/google/android/finsky/model/Track;

    if-nez v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 245
    :cond_0
    sget-object v0, Lcom/google/android/finsky/model/Track$TrackMode;->LOADING:Lcom/google/android/finsky/model/Track$TrackMode;

    if-ne p1, v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentTrackIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentTrack:Lcom/google/android/finsky/model/Track;

    iput-object p1, v0, Lcom/google/android/finsky/model/Track;->mode:Lcom/google/android/finsky/model/Track$TrackMode;

    .line 250
    iget-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mAdapter:Lcom/google/android/finsky/adapters/TrackListAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/TrackListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 340
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mPlayer:Landroid/media/MediaPlayer;

    .line 341
    iget-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 344
    iget-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mAdapter:Lcom/google/android/finsky/adapters/TrackListAdapter;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mAdapter:Lcom/google/android/finsky/adapters/TrackListAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/TrackListAdapter;->notifyDataSetChanged()V

    .line 347
    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentPlaybackMode:Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    sget-object v1, Lcom/google/android/finsky/layout/TrackList$PlaybackMode;->PLAY_ONE_TRACK:Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    if-ne v0, v1, :cond_0

    .line 327
    sget-object v0, Lcom/google/android/finsky/model/Track$TrackMode;->READY:Lcom/google/android/finsky/model/Track$TrackMode;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/TrackList;->updateCurrentTrackMode(Lcom/google/android/finsky/model/Track$TrackMode;)V

    .line 332
    :goto_0
    return-void

    .line 331
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentTrackIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/TrackList;->skipToSong(I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/TrackList;->mIsPreparing:Z

    .line 356
    iget-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentTrack:Lcom/google/android/finsky/model/Track;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentTrack:Lcom/google/android/finsky/model/Track;

    sget-object v1, Lcom/google/android/finsky/model/Track$TrackMode;->READY:Lcom/google/android/finsky/model/Track$TrackMode;

    iput-object v1, v0, Lcom/google/android/finsky/model/Track;->mode:Lcom/google/android/finsky/model/Track$TrackMode;

    .line 359
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentTrack:Lcom/google/android/finsky/model/Track;

    .line 360
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentTrackIndex:I

    .line 361
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/TrackList;->mIsPreparing:Z

    .line 312
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 315
    sget-object v0, Lcom/google/android/finsky/model/Track$TrackMode;->PLAYING:Lcom/google/android/finsky/model/Track$TrackMode;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/TrackList;->updateCurrentTrackMode(Lcom/google/android/finsky/model/Track$TrackMode;)V

    .line 316
    return-void
.end method

.method public playAllTracks()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentPlaybackMode:Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    sget-object v1, Lcom/google/android/finsky/layout/TrackList$PlaybackMode;->PLAY_ALL_TRACKS:Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    if-ne v0, v1, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/google/android/finsky/layout/TrackList;->resetMediaPlayer()V

    .line 164
    :cond_0
    sget-object v0, Lcom/google/android/finsky/layout/TrackList$PlaybackMode;->PLAY_ALL_TRACKS:Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    iput-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentPlaybackMode:Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/TrackList;->playOneTrack(I)V

    .line 166
    return-void
.end method

.method public setTracks(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/model/Track;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, tracks:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/model/Track;>;"
    sget-object v0, Lcom/google/android/finsky/layout/TrackList$PlaybackMode;->PLAY_ONE_TRACK:Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    iput-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mCurrentPlaybackMode:Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    .line 97
    invoke-direct {p0}, Lcom/google/android/finsky/layout/TrackList;->setupLayout()V

    .line 99
    new-instance v0, Lcom/google/android/finsky/adapters/TrackListAdapter;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/TrackList;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040027

    iget-object v3, p0, Lcom/google/android/finsky/layout/TrackList;->mOnTrackClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/android/finsky/adapters/TrackListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mAdapter:Lcom/google/android/finsky/adapters/TrackListAdapter;

    .line 101
    iget-object v0, p0, Lcom/google/android/finsky/layout/TrackList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/TrackList;->mAdapter:Lcom/google/android/finsky/adapters/TrackListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    return-void
.end method
