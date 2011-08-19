.class public Lcom/google/android/music/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final MUSIC_DOWNLOAD_STATUS:I = 0x12113

.field public static final MUSIC_PAUSE_PLAYBACK_REQUESTED:I = 0x12112

.field public static final MUSIC_START_PLAYBACK_REQUESTED:I = 0x12110

.field public static final MUSIC_STOP_PLAYBACK_REQUESTED:I = 0x12111


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeMusicDownloadStatus(I)V
    .locals 1
    .parameter "trackId"

    .prologue
    .line 38
    const v0, 0x12113

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 39
    return-void
.end method

.method public static writeMusicPausePlaybackRequested(I)V
    .locals 1
    .parameter "trackId"

    .prologue
    .line 34
    const v0, 0x12112

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 35
    return-void
.end method

.method public static writeMusicStartPlaybackRequested(I)V
    .locals 1
    .parameter "trackId"

    .prologue
    .line 26
    const v0, 0x12110

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 27
    return-void
.end method

.method public static writeMusicStopPlaybackRequested(I)V
    .locals 1
    .parameter "trackId"

    .prologue
    .line 30
    const v0, 0x12111

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 31
    return-void
.end method
