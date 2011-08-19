.class Lcom/google/android/music/TabbedLists$TabbedNoContentListener;
.super Ljava/lang/Object;
.source "TabbedLists.java"

# interfaces
.implements Lcom/google/android/music/NoContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TabbedLists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabbedNoContentListener"
.end annotation


# instance fields
.field private mIsActive:Z

.field private mMusicFound:Z

.field private mPlaylistsFound:Z

.field private mShowPlaylistsState:Z

.field private final mSuperListener:Lcom/google/android/music/NoContentListener;


# direct methods
.method public constructor <init>(Lcom/google/android/music/NoContentListener;)V
    .locals 2
    .parameter "superListener"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-boolean v0, p0, Lcom/google/android/music/TabbedLists$TabbedNoContentListener;->mIsActive:Z

    .line 289
    iput-boolean v1, p0, Lcom/google/android/music/TabbedLists$TabbedNoContentListener;->mMusicFound:Z

    .line 290
    iput-boolean v1, p0, Lcom/google/android/music/TabbedLists$TabbedNoContentListener;->mPlaylistsFound:Z

    .line 291
    iput-boolean v0, p0, Lcom/google/android/music/TabbedLists$TabbedNoContentListener;->mShowPlaylistsState:Z

    .line 294
    iput-object p1, p0, Lcom/google/android/music/TabbedLists$TabbedNoContentListener;->mSuperListener:Lcom/google/android/music/NoContentListener;

    .line 295
    return-void
.end method


# virtual methods
.method public setActive(Z)V
    .locals 2
    .parameter "isActive"

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/google/android/music/TabbedLists$TabbedNoContentListener;->mIsActive:Z

    if-eq p1, v0, :cond_0

    .line 311
    iput-boolean p1, p0, Lcom/google/android/music/TabbedLists$TabbedNoContentListener;->mIsActive:Z

    .line 312
    iget-boolean v0, p0, Lcom/google/android/music/TabbedLists$TabbedNoContentListener;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 313
    iget-boolean v0, p0, Lcom/google/android/music/TabbedLists$TabbedNoContentListener;->mShowPlaylistsState:Z

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/google/android/music/TabbedLists$TabbedNoContentListener;->mSuperListener:Lcom/google/android/music/NoContentListener;

    iget-boolean v1, p0, Lcom/google/android/music/TabbedLists$TabbedNoContentListener;->mPlaylistsFound:Z

    invoke-interface {v0, v1}, Lcom/google/android/music/NoContentListener;->setPlaylistsFound(Z)V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/TabbedLists$TabbedNoContentListener;->mSuperListener:Lcom/google/android/music/NoContentListener;

    iget-boolean v1, p0, Lcom/google/android/music/TabbedLists$TabbedNoContentListener;->mMusicFound:Z

    invoke-interface {v0, v1}, Lcom/google/android/music/NoContentListener;->setMusicFound(Z)V

    goto :goto_0
.end method

.method public setMusicFound(Z)V
    .locals 1
    .parameter "found"

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/google/android/music/TabbedLists$TabbedNoContentListener;->mMusicFound:Z

    .line 298
    iget-boolean v0, p0, Lcom/google/android/music/TabbedLists$TabbedNoContentListener;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/google/android/music/TabbedLists$TabbedNoContentListener;->mSuperListener:Lcom/google/android/music/NoContentListener;

    invoke-interface {v0, p1}, Lcom/google/android/music/NoContentListener;->setMusicFound(Z)V

    .line 301
    :cond_0
    return-void
.end method

.method public setPlaylistsFound(Z)V
    .locals 1
    .parameter "found"

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/google/android/music/TabbedLists$TabbedNoContentListener;->mPlaylistsFound:Z

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/TabbedLists$TabbedNoContentListener;->mShowPlaylistsState:Z

    .line 305
    iget-boolean v0, p0, Lcom/google/android/music/TabbedLists$TabbedNoContentListener;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/google/android/music/TabbedLists$TabbedNoContentListener;->mSuperListener:Lcom/google/android/music/NoContentListener;

    invoke-interface {v0, p1}, Lcom/google/android/music/NoContentListener;->setPlaylistsFound(Z)V

    .line 308
    :cond_0
    return-void
.end method
