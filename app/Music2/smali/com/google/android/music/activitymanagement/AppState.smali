.class public Lcom/google/android/music/activitymanagement/AppState;
.super Ljava/lang/Object;
.source "AppState.java"

# interfaces
.implements Lcom/google/android/music/RepresentativeAlbumChangeListener;
.implements Lcom/google/android/music/NoContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;
    }
.end annotation


# static fields
.field private static final KEY_APP_STATE_ID:Ljava/lang/String; = "stateId"

.field private static final TAG:Ljava/lang/String; = "AppState"

.field private static sAppControllerId:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

.field private mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

.field private mControllerId:J

.field private mCurrentAlbumForBackground:J

.field private final mId:Ljava/lang/String;

.field private mIsManageMusicBarEnabled:Z

.field private mIsNoMusicViewEnabled:Z

.field private mIsNowPlayingBarEnabled:Z

.field private mMainTitle:Ljava/lang/CharSequence;

.field private mSavedState:Landroid/os/Bundle;

.field private final mStateIntent:Landroid/content/Intent;

.field private mSubTitleStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

.field private mUseFullScreen:Z

.field private mUseSystemBackground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/google/android/music/activitymanagement/AppState;->sAppControllerId:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Landroid/content/Intent;Lcom/google/android/music/activitymanagement/TopLevelActivity;)V
    .locals 4
    .parameter "intent"
    .parameter "topLevelActivity"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mMainTitle:Ljava/lang/CharSequence;

    .line 59
    iput-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mSubTitleStack:Ljava/util/LinkedList;

    .line 61
    iput-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    .line 62
    iput-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    .line 63
    iput-wide v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mControllerId:J

    .line 65
    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/AppState;->mUseSystemBackground:Z

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mUseFullScreen:Z

    .line 68
    iput-wide v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mCurrentAlbumForBackground:J

    .line 97
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/AppState;->mStateIntent:Landroid/content/Intent;

    .line 98
    invoke-static {p1, p2}, Lcom/google/android/music/activitymanagement/AppState;->createId(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mId:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/google/android/music/activitymanagement/AppState;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    .line 100
    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/AppState;->mIsNowPlayingBarEnabled:Z

    .line 101
    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/AppState;->mIsManageMusicBarEnabled:Z

    .line 102
    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/AppState;->mIsNoMusicViewEnabled:Z

    .line 103
    new-instance v0, Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    invoke-direct {v0, p0}, Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;-><init>(Lcom/google/android/music/activitymanagement/AppState;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/activitymanagement/AppState;)Lcom/google/android/music/activitymanagement/TopLevelActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    return-object v0
.end method

.method private arePlaylistsAvailableOnDevice(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 611
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v7

    .line 613
    .local v2, countProjection:[Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/google/android/music/store/MusicContent$Playlists;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 616
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 617
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    move v0, v8

    .line 620
    :goto_0
    if-eqz v6, :cond_0

    .line 621
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 626
    .end local v6           #c:Landroid/database/Cursor;
    :cond_0
    :goto_1
    return v0

    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1
    move v0, v7

    .line 617
    goto :goto_0

    .line 620
    :cond_2
    if-eqz v6, :cond_3

    .line 621
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    :goto_2
    move v0, v7

    .line 626
    goto :goto_1

    .line 620
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 621
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 624
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private static createId(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "intent"
    .parameter "context"

    .prologue
    .line 386
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 387
    .local v0, component:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 388
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 392
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final getAppState(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/AppState;
    .locals 1
    .parameter "currentActivity"

    .prologue
    .line 360
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/music/activitymanagement/AppState;->getAppState(Landroid/app/Activity;Landroid/content/Intent;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v0

    return-object v0
.end method

.method public static final getAppState(Landroid/app/Activity;Landroid/content/Intent;)Lcom/google/android/music/activitymanagement/AppState;
    .locals 5
    .parameter "currentActivity"
    .parameter "intent"

    .prologue
    const-wide/16 v3, -0x1

    .line 368
    const-string v2, "stateId"

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 369
    .local v0, appStateId:J
    cmp-long v2, v0, v3

    if-nez v2, :cond_0

    .line 370
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was not started via TopLevelActivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 373
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    instance-of v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;

    if-nez v2, :cond_1

    .line 374
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p0

    goto :goto_0

    .line 377
    :cond_1
    if-nez p0, :cond_2

    .line 378
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "All activities should be within the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 381
    :cond_2
    check-cast p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;

    .end local p0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getAppState(J)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v2

    return-object v2
.end method

.method private isMusicAvailableOnDevice(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 591
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$XAudio;->hasAudio(Landroid/content/ContentResolver;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 594
    :goto_0
    return v0

    .line 592
    :catch_0
    move-exception v0

    .line 594
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public asyncCheckForMusic(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 578
    new-instance v0, Lcom/google/android/music/activitymanagement/AppState$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/activitymanagement/AppState$4;-><init>(Lcom/google/android/music/activitymanagement/AppState;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 583
    return-void
.end method

.method public asyncCheckForPlaylists(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 599
    new-instance v0, Lcom/google/android/music/activitymanagement/AppState$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/activitymanagement/AppState$5;-><init>(Lcom/google/android/music/activitymanagement/AppState;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 604
    return-void
.end method

.method public cancelBackgroundChange()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->cancelBackgroundAlbum()V

    .line 517
    return-void
.end method

.method public checkForMusic(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/AppState;->isMusicAvailableOnDevice(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/AppState;->setMusicFound(Z)V

    .line 587
    return-void
.end method

.method public checkForPlaylists(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 607
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/AppState;->arePlaylistsAvailableOnDevice(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/AppState;->setPlaylistsFound(Z)V

    .line 608
    return-void
.end method

.method final destroy(Landroid/app/LocalActivityManager;Z)V
    .locals 5
    .parameter "activityManager"
    .parameter "saveState"

    .prologue
    const/4 v4, 0x0

    .line 200
    const-string v1, "AppState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 202
    .local v0, activity:Landroid/app/Activity;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;

    if-eqz v1, :cond_0

    .line 203
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/activitymanagement/AppState;->mSavedState:Landroid/os/Bundle;

    .line 204
    check-cast v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;

    .end local v0           #activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/AppState;->mSavedState:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;->getState(Landroid/os/Bundle;)V

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/AppState;->mId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 207
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    iput-object v4, v1, Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;->mActivity:Landroid/app/Activity;

    .line 209
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    iput-object v4, v1, Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;->mWindow:Landroid/view/Window;

    .line 211
    :cond_1
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/music/activitymanagement/AppState;->mControllerId:J

    .line 212
    iput-object v4, p0, Lcom/google/android/music/activitymanagement/AppState;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    .line 213
    return-void
.end method

.method final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ActionBarController should never be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    return-object v0
.end method

.method final getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;->mActivity:Landroid/app/Activity;

    .line 308
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActivityManager()Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getMusicActivityManager()Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getBackgroundAlbumId()J
    .locals 2

    .prologue
    .line 488
    iget-wide v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mCurrentAlbumForBackground:J

    return-wide v0
.end method

.method getControllerId()J
    .locals 4

    .prologue
    .line 287
    iget-wide v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mControllerId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 288
    sget-object v0, Lcom/google/android/music/activitymanagement/AppState;->sAppControllerId:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 289
    :try_start_0
    sget-object v1, Lcom/google/android/music/activitymanagement/AppState;->sAppControllerId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/music/activitymanagement/AppState;->mControllerId:J

    .line 290
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :cond_0
    iget-wide v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mControllerId:J

    return-wide v0

    .line 290
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mStateIntent:Landroid/content/Intent;

    return-object v0
.end method

.method getPrimaryTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mSubTitleStack:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mSubTitleStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mMainTitle:Ljava/lang/CharSequence;

    .line 497
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mSubTitleStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    move-object v0, p0

    goto :goto_0
.end method

.method getSecondaryTitle()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mSubTitleStack:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mSubTitleStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    :cond_0
    const/4 v0, 0x0

    .line 507
    .end local p0
    :goto_0
    return-object v0

    .line 504
    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mSubTitleStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 505
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mMainTitle:Ljava/lang/CharSequence;

    goto :goto_0

    .line 507
    :cond_2
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mSubTitleStack:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/AppState;->mSubTitleStack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    move-object v0, p0

    goto :goto_0
.end method

.method final getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideNoMusicView()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    .line 535
    .local v0, topLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/AppState;->mIsNoMusicViewEnabled:Z

    .line 536
    if-eqz v0, :cond_0

    .line 537
    new-instance v1, Lcom/google/android/music/activitymanagement/AppState$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/activitymanagement/AppState$1;-><init>(Lcom/google/android/music/activitymanagement/AppState;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->post(Ljava/lang/Runnable;)V

    .line 545
    :cond_0
    return-void
.end method

.method public isActionBarControllerSet()Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isClearTop()Z
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mStateIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManageMusicBarEnabled()Z
    .locals 1

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mIsManageMusicBarEnabled:Z

    return v0
.end method

.method public isNoMusicViewEnabled()Z
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mIsNoMusicViewEnabled:Z

    return v0
.end method

.method public isNowPlayingBarEnabled()Z
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mIsNowPlayingBarEnabled:Z

    return v0
.end method

.method isSameActivity(Landroid/app/Activity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSameActivity(Lcom/google/android/music/activitymanagement/AppState;)Z
    .locals 2
    .parameter "state"

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSameComponentClass(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 317
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 318
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/activitymanagement/AppState;->isSameComponentClass(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isSameComponentClass(Lcom/google/android/music/activitymanagement/AppState;)Z
    .locals 2
    .parameter "state"

    .prologue
    .line 312
    iget-object v1, p1, Lcom/google/android/music/activitymanagement/AppState;->mStateIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 313
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/activitymanagement/AppState;->isSameComponentClass(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isSameComponentClass(Ljava/lang/Class;)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 322
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/AppState;->isSameComponentClass(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isSameComponentClass(Ljava/lang/String;)Z
    .locals 2
    .parameter "className"

    .prologue
    .line 326
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/AppState;->mStateIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 327
    .local v0, component:Landroid/content/ComponentName;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isSingleTop()Z
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mStateIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTopLevel()Z
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getMusicActivityManager()Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isTopLevel(Lcom/google/android/music/activitymanagement/AppState;)Z

    move-result v0

    return v0
.end method

.method public isUseSystemBackground()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mUseSystemBackground:Z

    return v0
.end method

.method final launch(Landroid/app/LocalActivityManager;)V
    .locals 4
    .parameter "activityManager"

    .prologue
    .line 107
    const-string v0, "AppState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppState.launch(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->createNewTopBarController(Lcom/google/android/music/activitymanagement/AppState;)Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mStateIntent:Landroid/content/Intent;

    const-string v1, "stateId"

    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getControllerId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 114
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/AppState;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mStateIntent:Landroid/content/Intent;

    invoke-virtual {p1, v1, v2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;->mWindow:Landroid/view/Window;

    .line 115
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_1

    .line 116
    const-string v0, "AppState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launch(): startActivity failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to start the activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    invoke-virtual {p1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;->mActivity:Landroid/app/Activity;

    .line 120
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/AppState;->mSavedState:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;->restoreState(Landroid/os/Bundle;)V

    .line 126
    :cond_3
    const-string v0, "AppState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    iget-object v2, v2, Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " controllerId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mControllerId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method final launchFrom(Lcom/google/android/music/activitymanagement/AppState;Landroid/app/LocalActivityManager;)V
    .locals 5
    .parameter "parent"
    .parameter "activityManager"

    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/AppState;->saveState()V

    .line 170
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getControllerId()J

    move-result-wide v0

    .line 171
    .local v0, controllerId:J
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    if-nez v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v2, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->createNewTopBarController(Lcom/google/android/music/activitymanagement/AppState;)Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    .line 175
    :cond_0
    iget-object v2, p1, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    iput-object v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    .line 177
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 182
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mStateIntent:Landroid/content/Intent;

    const-string v3, "stateId"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 183
    const-string v2, "AppState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No previous activity, launching new, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/AppState;->mId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/music/activitymanagement/AppState;->mStateIntent:Landroid/content/Intent;

    invoke-virtual {p2, v3, v4}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;->mWindow:Landroid/view/Window;

    .line 185
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    invoke-virtual {p2}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;->mActivity:Landroid/app/Activity;

    .line 197
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;

    if-eqz v2, :cond_2

    .line 187
    const-string v2, "AppState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launched with new state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "stateId"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 191
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mStateIntent:Landroid/content/Intent;

    const-string v3, "stateId"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/AppState;->mStateIntent:Landroid/content/Intent;

    invoke-interface {v2, v3}, Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;->onNewState(Landroid/content/Intent;)V

    goto :goto_0

    .line 194
    :cond_2
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can only change state of StatefulActivities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method refreshTopLevelActivity(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 216
    const-string v0, "AppState"

    const-string v1, "refreshTopLevelActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/AppState;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    .line 218
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    iput-object v2, v0, Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;->mActivity:Landroid/app/Activity;

    .line 219
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    iput-object v2, v0, Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;->mWindow:Landroid/view/Window;

    .line 220
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mControllerId:J

    .line 221
    iput-object v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    .line 222
    return-void
.end method

.method restoreState()V
    .locals 4

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->createNewTopBarController(Lcom/google/android/music/activitymanagement/AppState;)Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "stateId"

    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getControllerId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 233
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mSavedState:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/AppState;->mStateIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;->onNewState(Landroid/content/Intent;)V

    .line 242
    const-string v0, "AppState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restored from intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mStateIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_0
    return-void

    .line 243
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;

    if-eqz v0, :cond_2

    .line 244
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/AppState;->mSavedState:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;->restoreState(Landroid/os/Bundle;)V

    .line 245
    const-string v0, "AppState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restored state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can only restore the state of StatefulActivities"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method saveState()V
    .locals 3

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;

    if-eqz v0, :cond_1

    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mSavedState:Landroid/os/Bundle;

    .line 134
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/AppState;->mSavedState:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;->getState(Landroid/os/Bundle;)V

    .line 135
    const-string v0, "AppState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can only save the state of StatefulActivities"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final sendNewIntent(Landroid/app/LocalActivityManager;Landroid/content/Intent;)V
    .locals 5
    .parameter "activityManager"
    .parameter "i"

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getControllerId()J

    move-result-wide v0

    .line 144
    .local v0, controllerId:J
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    if-nez v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v2, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->createNewTopBarController(Lcom/google/android/music/activitymanagement/AppState;)Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mStateIntent:Landroid/content/Intent;

    const-string v3, "stateId"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 153
    const-string v2, "AppState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No previous activity, launching new, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/AppState;->mId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/music/activitymanagement/AppState;->mStateIntent:Landroid/content/Intent;

    invoke-virtual {p1, v3, v4}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;->mWindow:Landroid/view/Window;

    .line 155
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mActivityHolder:Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;

    invoke-virtual {p1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/music/activitymanagement/AppState$ActivityHolder;->mActivity:Landroid/app/Activity;

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;

    if-eqz v2, :cond_2

    .line 158
    const-string v2, "AppState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launched with new state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;

    invoke-interface {p0, p2}, Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;->onNewState(Landroid/content/Intent;)V

    .line 164
    return-void

    .line 161
    .restart local p0
    :cond_2
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can only change state of StatefulActivities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setBackgroundAlbum(JZ)V
    .locals 1
    .parameter "id"
    .parameter "fromScroll"

    .prologue
    .line 483
    iput-wide p1, p0, Lcom/google/android/music/activitymanagement/AppState;->mCurrentAlbumForBackground:J

    .line 484
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0, p3}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->updateBackgroundAlbum(Z)V

    .line 485
    return-void
.end method

.method public setBottomBarEnabled(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 432
    iput-boolean p1, p0, Lcom/google/android/music/activitymanagement/AppState;->mIsNowPlayingBarEnabled:Z

    .line 433
    iput-boolean p1, p0, Lcom/google/android/music/activitymanagement/AppState;->mIsManageMusicBarEnabled:Z

    .line 434
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getMusicActivityManager()Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->notifyModeChanged()V

    .line 437
    :cond_0
    return-void
.end method

.method public setManageMusicBarEnabled(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 447
    iput-boolean p1, p0, Lcom/google/android/music/activitymanagement/AppState;->mIsManageMusicBarEnabled:Z

    .line 448
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getMusicActivityManager()Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->notifyModeChanged()V

    .line 451
    :cond_0
    return-void
.end method

.method public setMusicFound(Z)V
    .locals 2
    .parameter "musicFound"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    .line 554
    .local v0, topLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;
    if-eqz v0, :cond_0

    .line 555
    new-instance v1, Lcom/google/android/music/activitymanagement/AppState$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/activitymanagement/AppState$2;-><init>(Lcom/google/android/music/activitymanagement/AppState;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->post(Ljava/lang/Runnable;)V

    .line 563
    :cond_0
    return-void
.end method

.method public setNowPlayingBarEnabled(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 440
    iput-boolean p1, p0, Lcom/google/android/music/activitymanagement/AppState;->mIsNowPlayingBarEnabled:Z

    .line 441
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getMusicActivityManager()Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->notifyModeChanged()V

    .line 444
    :cond_0
    return-void
.end method

.method public setPlaylistsFound(Z)V
    .locals 2
    .parameter "playlistsFound"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    .line 568
    .local v0, topLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;
    if-eqz v0, :cond_0

    .line 569
    new-instance v1, Lcom/google/android/music/activitymanagement/AppState$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/activitymanagement/AppState$3;-><init>(Lcom/google/android/music/activitymanagement/AppState;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->post(Ljava/lang/Runnable;)V

    .line 575
    :cond_0
    return-void
.end method

.method public setRepresentativeAlbum(JZ)V
    .locals 0
    .parameter "albumId"
    .parameter "fromScroll"

    .prologue
    .line 512
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/music/activitymanagement/AppState;->setBackgroundAlbum(JZ)V

    .line 513
    return-void
.end method

.method public setSecondaryTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "seq"

    .prologue
    .line 413
    if-nez p1, :cond_1

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mSubTitleStack:Ljava/util/LinkedList;

    .line 424
    :goto_0
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->updateTitles()V

    .line 427
    :cond_0
    return-void

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mSubTitleStack:Ljava/util/LinkedList;

    if-nez v0, :cond_2

    .line 417
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mSubTitleStack:Ljava/util/LinkedList;

    .line 421
    :goto_1
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mSubTitleStack:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mSubTitleStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_1
.end method

.method public setTitle(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 404
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/AppState;->setTitle(Ljava/lang/CharSequence;)V

    .line 405
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 397
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/AppState;->mMainTitle:Ljava/lang/CharSequence;

    .line 398
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->updateTitles()V

    .line 401
    :cond_0
    return-void
.end method

.method public setUseFullScreen(Z)V
    .locals 0
    .parameter "fullscreen"

    .prologue
    .line 466
    iput-boolean p1, p0, Lcom/google/android/music/activitymanagement/AppState;->mUseFullScreen:Z

    .line 467
    return-void
.end method

.method public setUseSystemBackground(Z)V
    .locals 0
    .parameter "useSysBg"

    .prologue
    .line 470
    iput-boolean p1, p0, Lcom/google/android/music/activitymanagement/AppState;->mUseSystemBackground:Z

    .line 471
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AppState {activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mStateIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " extras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mStateIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/AppState;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " clear_top="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->isClearTop()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " single_top="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/AppState;->isSingleTop()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useFullScreen()Z
    .locals 1

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/AppState;->mUseFullScreen:Z

    return v0
.end method
