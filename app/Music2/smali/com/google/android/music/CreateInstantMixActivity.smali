.class public Lcom/google/android/music/CreateInstantMixActivity;
.super Landroid/app/Activity;
.source "CreateInstantMixActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/CreateInstantMixActivity$2;,
        Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;
    }
.end annotation


# static fields
.field private static final EXTRA_ALBUM_ID:Ljava/lang/String; = "albumId"

.field private static final EXTRA_ARTIST_ID:Ljava/lang/String; = "artistId"

.field private static final EXTRA_SONG_ID:Ljava/lang/String; = "songId"

.field private static final MSG_CHECK_PLAYLIST_SYNCED:I = 0x2

.field private static final MSG_CREATED_SUCCESSFULLY:I = 0x4

.field private static final MSG_CREATION_FAILED:I = 0x5

.field private static final MSG_START_INSTANT_MIX_CREATION:I = 0x1

.field private static final MSG_TIMEOUT_PLAYLIST_SYNCED:I = 0x3

.field private static final PLAYLIST_CREATION_TIMEOUT_MS:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "InstantMixActivity"


# instance fields
.field private mAsyncWorker:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mLoadingProgressBar:Landroid/view/View;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private final mPlaylistContentObserver:Landroid/database/ContentObserver;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 109
    new-instance v0, Lcom/google/android/music/CreateInstantMixActivity$1;

    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/CreateInstantMixActivity$1;-><init>(Lcom/google/android/music/CreateInstantMixActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mPlaylistContentObserver:Landroid/database/ContentObserver;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/CreateInstantMixActivity;)Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mAsyncWorker:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/CreateInstantMixActivity;)Lcom/google/android/music/jumper/MusicPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mLoadingProgressBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method public static createInstantPlaylistOnTrack(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "songid"

    .prologue
    .line 346
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/music/CreateInstantMixActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 347
    .local v0, i:Landroid/content/Intent;
    const-string v1, "songId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 349
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/google/android/music/CreateInstantMixActivity;->finish()V

    .line 343
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v0, 0x7f040008

    invoke-virtual {p0, v0}, Lcom/google/android/music/CreateInstantMixActivity;->setContentView(I)V

    .line 81
    const v0, 0x7f0f0036

    invoke-virtual {p0, v0}, Lcom/google/android/music/CreateInstantMixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mCancelButton:Landroid/widget/Button;

    .line 82
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v0, 0x7f0f0017

    invoke-virtual {p0, v0}, Lcom/google/android/music/CreateInstantMixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mLoadingProgressBar:Landroid/view/View;

    .line 84
    const v0, 0x7f0f0035

    invoke-virtual {p0, v0}, Lcom/google/android/music/CreateInstantMixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mText:Landroid/widget/TextView;

    .line 86
    iput-object p0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 89
    new-instance v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    invoke-direct {v0, p0}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;-><init>(Lcom/google/android/music/CreateInstantMixActivity;)V

    iput-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mAsyncWorker:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    .line 91
    invoke-virtual {p0}, Lcom/google/android/music/CreateInstantMixActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent$Playlists;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/music/CreateInstantMixActivity;->mPlaylistContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 94
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mAsyncWorker:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    invoke-virtual {v0, v3}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendEmptyMessage(I)Z

    .line 98
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mAsyncWorker:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    const/4 v1, 0x3

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendEmptyMessageDelayed(IJ)Z

    .line 100
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 105
    invoke-virtual {p0}, Lcom/google/android/music/CreateInstantMixActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/CreateInstantMixActivity;->mPlaylistContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 106
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity;->mAsyncWorker:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    invoke-virtual {v0}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->quit()V

    .line 107
    return-void
.end method
