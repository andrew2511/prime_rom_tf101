.class abstract Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;
.super Ljava/lang/Object;
.source "MusicSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/google/MusicSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "DownstreamState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;
    }
.end annotation


# instance fields
.field protected mFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/sync/google/MusicSyncAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextFeedToSync()Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;->mFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    return-object v0
.end method

.method public abstract onDoneWithFeed()V
.end method
