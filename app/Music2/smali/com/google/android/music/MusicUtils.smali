.class public Lcom/google/android/music/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/MusicUtils$BigCursor;,
        Lcom/google/android/music/MusicUtils$LogEntry;,
        Lcom/google/android/music/MusicUtils$QueryCallback;,
        Lcom/google/android/music/MusicUtils$ServiceBinder;,
        Lcom/google/android/music/MusicUtils$ServiceToken;,
        Lcom/google/android/music/MusicUtils$Defs;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final NAG_ABOUT_QUERIES_ON_THE_MAIN_THREAD:Z = false

.field private static final TAG:Ljava/lang/String; = "MusicUtils"

.field private static sAsyncQueryWorker:Lcom/google/android/music/Worker;

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/google/android/music/MusicUtils$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field private static sLastLogEntry:Lcom/google/android/music/MusicUtils$LogEntry;

.field private static sLogPtr:I

.field private static sMusicLog:[Lcom/google/android/music/MusicUtils$LogEntry;

.field private static sOrientationSwitchCount:I

.field static sPlaylistObserver:Landroid/database/ContentObserver;

.field private static sPlaylists:Lcom/google/android/music/AsyncCursor;

.field public static sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

.field private static sTime:Landroid/text/format/Time;

.field private static final sTimeArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 69
    const-string v0, "MusicUtils"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/MusicUtils;->LOGV:Z

    .line 162
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    .line 484
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    sput-object v0, Lcom/google/android/music/MusicUtils;->sAsyncQueryWorker:Lcom/google/android/music/Worker;

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/google/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 601
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/google/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    .line 602
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/android/music/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 768
    const/16 v0, 0xc8

    new-array v0, v0, [Lcom/google/android/music/MusicUtils$LogEntry;

    sput-object v0, Lcom/google/android/music/MusicUtils;->sMusicLog:[Lcom/google/android/music/MusicUtils$LogEntry;

    .line 769
    sput v3, Lcom/google/android/music/MusicUtils;->sLogPtr:I

    .line 770
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcom/google/android/music/MusicUtils;->sTime:Landroid/text/format/Time;

    .line 871
    sput v3, Lcom/google/android/music/MusicUtils;->sOrientationSwitchCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 806
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/music/AsyncCursor;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    return-object v0
.end method

.method static synthetic access$100()Landroid/text/format/Time;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/google/android/music/MusicUtils;->sTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/google/android/music/MusicUtils;->sOrientationSwitchCount:I

    return v0
.end method

.method static synthetic access$204()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/google/android/music/MusicUtils;->sOrientationSwitchCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/music/MusicUtils;->sOrientationSwitchCount:I

    return v0
.end method

.method public static addInstantMixMenuItem(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu;I)Z
    .locals 5
    .parameter "context"
    .parameter "menu"
    .parameter "order"

    .prologue
    .line 414
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    .line 415
    .local v2, preferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 416
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getNetworkMonitor(Landroid/content/Context;)Lcom/google/android/music/dl/NetworkMonitor;

    move-result-object v1

    .line 417
    .local v1, networkMonitor:Lcom/google/android/music/dl/NetworkMonitor;
    const/16 v3, 0x1b

    const v4, 0x7f0c00f0

    invoke-virtual {p1, v3, p2, v4}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    .line 419
    .local v0, item:Lcom/google/android/music/menu/MusicMenuItem;
    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 420
    const v3, 0x7f02014b

    invoke-virtual {v0, v3}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 422
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/music/dl/NetworkMonitor;->isConnected()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/music/menu/MusicMenuItem;->setEnabled(Z)V

    .line 423
    const/4 v3, 0x1

    .line 425
    .end local v0           #item:Lcom/google/android/music/menu/MusicMenuItem;
    .end local v1           #networkMonitor:Lcom/google/android/music/dl/NetworkMonitor;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static assertUiThread()V
    .locals 2

    .prologue
    .line 899
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 900
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not in UI thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 902
    :cond_0
    return-void
.end method

.method public static bindToService(Landroid/app/Activity;)Lcom/google/android/music/MusicUtils$ServiceToken;
    .locals 1
    .parameter "context"

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    return-object v0
.end method

.method public static bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;
    .locals 6
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, current:Landroid/app/Activity;
    move-object v2, p0

    .line 182
    .local v2, parent:Landroid/app/Activity;
    :goto_0
    if-eqz v2, :cond_0

    .line 183
    move-object v0, v2

    .line 184
    invoke-virtual {v2}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v2

    goto :goto_0

    .line 186
    :cond_0
    new-instance v1, Landroid/content/ContextWrapper;

    invoke-direct {v1, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 187
    .local v1, cw:Landroid/content/ContextWrapper;
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {v4, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v4}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 188
    new-instance v3, Lcom/google/android/music/MusicUtils$ServiceBinder;

    invoke-direct {v3, p1}, Lcom/google/android/music/MusicUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 189
    .local v3, sb:Lcom/google/android/music/MusicUtils$ServiceBinder;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v3, v5}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 190
    sget-object v4, Lcom/google/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v4, Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-direct {v4, v1}, Lcom/google/android/music/MusicUtils$ServiceToken;-><init>(Landroid/content/ContextWrapper;)V

    .line 194
    :goto_1
    return-object v4

    .line 193
    :cond_1
    const-string v4, "Music"

    const-string v5, "Failed to bind to service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;
    .locals 4
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 198
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 199
    .local v0, cw:Landroid/content/ContextWrapper;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 200
    new-instance v1, Lcom/google/android/music/MusicUtils$ServiceBinder;

    invoke-direct {v1, p1}, Lcom/google/android/music/MusicUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 201
    .local v1, sb:Lcom/google/android/music/MusicUtils$ServiceBinder;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    sget-object v2, Lcom/google/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v2, Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-direct {v2, v0}, Lcom/google/android/music/MusicUtils$ServiceToken;-><init>(Landroid/content/ContextWrapper;)V

    .line 206
    :goto_0
    return-object v2

    .line 205
    :cond_0
    const-string v2, "Music"

    const-string v3, "Failed to bind to service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cancelAsync(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 532
    sget-object v0, Lcom/google/android/music/MusicUtils;->sAsyncQueryWorker:Lcom/google/android/music/Worker;

    invoke-virtual {v0, p0}, Lcom/google/android/music/Worker;->removeMessages(I)V

    .line 533
    return-void
.end method

.method public static checkMainThread(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "message"

    .prologue
    .line 562
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 563
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 568
    const-string v1, "MusicUtils"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 570
    :cond_0
    return-void
.end method

.method public static clearPlaylist(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v3, 0x0

    .line 464
    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContent$Playlists$Members;->getPlaylistItemsUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 465
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 466
    return-void
.end method

.method public static closePlaylistCursor()V
    .locals 1

    .prologue
    .line 458
    sget-object v0, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    if-eqz v0, :cond_0

    .line 459
    sget-object v0, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncCursor;->close()V

    .line 461
    :cond_0
    return-void
.end method

.method static declared-synchronized debugDump(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "out"

    .prologue
    .line 790
    const-class v3, Lcom/google/android/music/MusicUtils;

    monitor-enter v3

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    sget-object v4, Lcom/google/android/music/MusicUtils;->sMusicLog:[Lcom/google/android/music/MusicUtils$LogEntry;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 791
    sget v4, Lcom/google/android/music/MusicUtils;->sLogPtr:I

    add-int v2, v4, v1

    .line 792
    .local v2, idx:I
    sget-object v4, Lcom/google/android/music/MusicUtils;->sMusicLog:[Lcom/google/android/music/MusicUtils$LogEntry;

    array-length v4, v4

    if-lt v2, v4, :cond_0

    .line 793
    sget-object v4, Lcom/google/android/music/MusicUtils;->sMusicLog:[Lcom/google/android/music/MusicUtils$LogEntry;

    array-length v4, v4

    sub-int/2addr v2, v4

    .line 795
    :cond_0
    sget-object v4, Lcom/google/android/music/MusicUtils;->sMusicLog:[Lcom/google/android/music/MusicUtils$LogEntry;

    aget-object v0, v4, v2

    .line 796
    .local v0, entry:Lcom/google/android/music/MusicUtils$LogEntry;
    if-eqz v0, :cond_1

    .line 797
    invoke-virtual {v0, p0}, Lcom/google/android/music/MusicUtils$LogEntry;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 800
    .end local v0           #entry:Lcom/google/android/music/MusicUtils$LogEntry;
    .end local v2           #idx:I
    :cond_2
    monitor-exit v3

    return-void

    .line 790
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method static declared-synchronized debugLog(Ljava/lang/Object;)V
    .locals 8
    .parameter "o"

    .prologue
    .line 774
    const-class v1, Lcom/google/android/music/MusicUtils;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/google/android/music/MusicUtils$LogEntry;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicUtils$LogEntry;-><init>(Ljava/lang/Object;)V

    .line 775
    .local v0, newEntry:Lcom/google/android/music/MusicUtils$LogEntry;
    sget-object v2, Lcom/google/android/music/MusicUtils;->sLastLogEntry:Lcom/google/android/music/MusicUtils$LogEntry;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/android/music/MusicUtils;->sLastLogEntry:Lcom/google/android/music/MusicUtils$LogEntry;

    iget-object v2, v2, Lcom/google/android/music/MusicUtils$LogEntry;->item:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/music/MusicUtils$LogEntry;->item:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, v0, Lcom/google/android/music/MusicUtils$LogEntry;->time:J

    sget-object v4, Lcom/google/android/music/MusicUtils;->sLastLogEntry:Lcom/google/android/music/MusicUtils$LogEntry;

    iget-wide v4, v4, Lcom/google/android/music/MusicUtils$LogEntry;->time:J

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 777
    sget-object v2, Lcom/google/android/music/MusicUtils;->sLastLogEntry:Lcom/google/android/music/MusicUtils$LogEntry;

    iget-wide v3, v2, Lcom/google/android/music/MusicUtils$LogEntry;->count:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/google/android/music/MusicUtils$LogEntry;->count:J

    .line 778
    sget-object v2, Lcom/google/android/music/MusicUtils;->sLastLogEntry:Lcom/google/android/music/MusicUtils$LogEntry;

    iget-wide v3, v0, Lcom/google/android/music/MusicUtils$LogEntry;->time:J

    iput-wide v3, v2, Lcom/google/android/music/MusicUtils$LogEntry;->time:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 781
    :cond_1
    :try_start_1
    sget-object v2, Lcom/google/android/music/MusicUtils;->sMusicLog:[Lcom/google/android/music/MusicUtils$LogEntry;

    sget v3, Lcom/google/android/music/MusicUtils;->sLogPtr:I

    aput-object v0, v2, v3

    .line 782
    sput-object v0, Lcom/google/android/music/MusicUtils;->sLastLogEntry:Lcom/google/android/music/MusicUtils$LogEntry;

    .line 783
    sget v2, Lcom/google/android/music/MusicUtils;->sLogPtr:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/google/android/music/MusicUtils;->sLogPtr:I

    .line 784
    sget v2, Lcom/google/android/music/MusicUtils;->sLogPtr:I

    sget-object v3, Lcom/google/android/music/MusicUtils;->sMusicLog:[Lcom/google/android/music/MusicUtils$LogEntry;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 785
    const/4 v2, 0x0

    sput v2, Lcom/google/android/music/MusicUtils;->sLogPtr:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 774
    .end local v0           #newEntry:Lcom/google/android/music/MusicUtils$LogEntry;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static doInternalSearch(Landroid/content/Context;Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V
    .locals 0
    .parameter "context"
    .parameter "appController"

    .prologue
    .line 677
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startGlobalSearch()V

    .line 678
    return-void
.end method

.method public static getAsyncHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 487
    sget-object v0, Lcom/google/android/music/MusicUtils;->sAsyncQueryWorker:Lcom/google/android/music/Worker;

    return-object v0
.end method

.method public static getCurrentAlbumId()J
    .locals 2

    .prologue
    .line 263
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getAlbumId()J

    move-result-wide v0

    .line 266
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentArtistId()J
    .locals 2

    .prologue
    .line 270
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getArtistId()J

    move-result-wide v0

    .line 273
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentAudioId()J
    .locals 2

    .prologue
    .line 277
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v0, :cond_0

    .line 278
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getAudioId()J

    move-result-wide v0

    .line 280
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentShuffleMode()I
    .locals 2

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, mode:I
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v1, :cond_0

    .line 286
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getShuffleMode()I

    move-result v0

    .line 288
    :cond_0
    return v0
.end method

.method public static getIntPref(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 681
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 683
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getMediaPlayerIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter "context"

    .prologue
    .line 668
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/music/MediaPlaybackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getPlaylistCount()I
    .locals 2

    .prologue
    .line 429
    sget-object v0, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    monitor-enter v0

    .line 430
    :try_start_0
    sget-object v1, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    invoke-virtual {v1}, Lcom/google/android/music/AsyncCursor;->getCount()I

    move-result v1

    monitor-exit v0

    return v1

    .line 431
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getRepresentativeAlbumIdForGenre(Landroid/content/Context;J)J
    .locals 10
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 316
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v0, "album_id"

    aput-object v0, v2, v4

    .line 320
    .local v2, ccols:[Ljava/lang/String;
    const/4 v6, 0x1

    .line 323
    .local v6, ALBUM_ID_INDEX:I
    invoke-static {p1, p2}, Lcom/google/android/music/store/MusicContent$Genres;->getGenreMembersUri(J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 327
    .local v9, cursor:Landroid/database/Cursor;
    const-wide/16 v7, 0x0

    .line 328
    .local v7, albumId:J
    if-eqz v9, :cond_1

    .line 330
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 334
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 337
    :cond_1
    return-wide v7

    .line 334
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isPlaying()Z
    .locals 1

    .prologue
    .line 250
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v0, :cond_0

    .line 251
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->isPlaying()Z

    move-result v0

    .line 253
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStreaming()Z
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v0, :cond_0

    .line 257
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->isStreaming()Z

    move-result v0

    .line 259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnknown(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 159
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "<unknown>"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeSongAndAlbumCountLabel(Landroid/content/Context;II)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "numSongs"
    .parameter "numAlbums"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 149
    .local v2, r:Landroid/content/res/Resources;
    const/high16 v4, 0x7f0b

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v4, p1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, songCountText:Ljava/lang/String;
    if-ge p2, v9, :cond_0

    move-object v4, v3

    .line 155
    :goto_0
    return-object v4

    .line 153
    :cond_0
    const v4, 0x7f0b0001

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v4, p2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, albumCountText:Ljava/lang/String;
    const/high16 v4, 0x7f0c

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v3, v5, v7

    aput-object v0, v5, v8

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, combined:Ljava/lang/String;
    move-object v4, v1

    .line 155
    goto :goto_0
.end method

.method public static makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "secs"

    .prologue
    const-wide/16 v7, 0xe10

    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    .line 605
    cmp-long v2, p1, v7

    if-gez v2, :cond_0

    const v2, 0x7f0c0009

    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, durationformat:Ljava/lang/String;
    sget-object v2, Lcom/google/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 613
    sget-object v1, Lcom/google/android/music/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 614
    .local v1, timeArgs:[Ljava/lang/Object;
    div-long v2, p1, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 615
    const/4 v2, 0x1

    div-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 616
    const/4 v2, 0x2

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 617
    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 618
    const/4 v2, 0x4

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 620
    sget-object v2, Lcom/google/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 605
    .end local v0           #durationformat:Ljava/lang/String;
    .end local v1           #timeArgs:[Ljava/lang/Object;
    :cond_0
    const v2, 0x7f0c000a

    goto :goto_0
.end method

.method public static openPlaylistCursor(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 438
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "name"

    aput-object v1, v3, v0

    .line 440
    .local v3, cols:[Ljava/lang/String;
    new-instance v0, Lcom/google/android/music/AsyncCursor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/store/MusicContent$Playlists;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/AsyncCursor;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    .line 443
    new-instance v0, Lcom/google/android/music/MusicUtils$1;

    sget-object v1, Lcom/google/android/music/MusicUtils;->sAsyncQueryWorker:Lcom/google/android/music/Worker;

    invoke-direct {v0, v1}, Lcom/google/android/music/MusicUtils$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/google/android/music/MusicUtils;->sPlaylistObserver:Landroid/database/ContentObserver;

    .line 452
    sget-object v0, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    sget-object v1, Lcom/google/android/music/MusicUtils;->sPlaylistObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/music/AsyncCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 453
    return-void
.end method

.method public static playMediaList(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/medialist/SongList;IZ)V
    .locals 2
    .parameter "activityManager"
    .parameter "list"
    .parameter "position"
    .parameter "showPlaybackActivity"

    .prologue
    .line 646
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-nez v0, :cond_1

    .line 647
    const-string v0, "MusicUtils"

    const-string v1, "service not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->setShuffleMode(I)V

    .line 651
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->openAndPlay(Lcom/google/android/music/medialist/SongList;I)V

    .line 652
    if-eqz p3, :cond_0

    .line 653
    invoke-static {p0}, Lcom/google/android/music/MusicUtils;->startMediaPlayer(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V

    goto :goto_0
.end method

.method public static populateAddToPlaylistMenu(Lcom/google/android/music/menu/MusicMenu;II)V
    .locals 2
    .parameter "menu"
    .parameter "iconResId"
    .parameter "order"

    .prologue
    .line 382
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/android/music/MusicUtils;->populateAddToPlaylistMenuExcluding(Lcom/google/android/music/menu/MusicMenu;IIJ)V

    .line 383
    return-void
.end method

.method public static populateAddToPlaylistMenuExcluding(Lcom/google/android/music/menu/MusicMenu;IIJ)V
    .locals 8
    .parameter "menu"
    .parameter "iconResId"
    .parameter "order"
    .parameter "excludedId"

    .prologue
    const v7, 0x7f0c0071

    const/4 v6, 0x1

    .line 388
    const-wide/16 v4, -0x1

    cmp-long v4, p3, v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    move v3, v4

    .line 390
    .local v3, maxPlaylistCountForShortcut:I
    :goto_0
    invoke-static {}, Lcom/google/android/music/MusicUtils;->getPlaylistCount()I

    move-result v4

    if-gt v4, v3, :cond_2

    .line 392
    const/4 v4, 0x5

    invoke-virtual {p0, v4, p2, v7}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    .line 394
    .local v0, addToNewPlaylistItem:Lcom/google/android/music/menu/MusicMenuItem;
    if-eqz p1, :cond_0

    .line 395
    invoke-virtual {v0, p1}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 411
    .end local v0           #addToNewPlaylistItem:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_0
    :goto_1
    return-void

    .end local v3           #maxPlaylistCountForShortcut:I
    :cond_1
    move v3, v6

    .line 388
    goto :goto_0

    .line 400
    .restart local v3       #maxPlaylistCountForShortcut:I
    :cond_2
    invoke-virtual {p0, v6, p2, v7}, Lcom/google/android/music/menu/MusicMenu;->addSubMenu(III)Lcom/google/android/music/menu/MusicMenu;

    move-result-object v2

    .line 402
    .local v2, addToPlaylistMenu:Lcom/google/android/music/menu/MusicMenu;
    invoke-virtual {v2}, Lcom/google/android/music/menu/MusicMenu;->getItem()Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v1

    .line 403
    .local v1, addToPlaylistItem:Lcom/google/android/music/menu/MusicMenuItem;
    if-eqz p1, :cond_3

    .line 404
    invoke-virtual {v1, p1}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 406
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0073

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/music/menu/MusicMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 408
    invoke-static {v2}, Lcom/google/android/music/MusicUtils;->populatePlaylistListMenuItems(Lcom/google/android/music/menu/MusicMenu;)V

    .line 409
    invoke-static {v2, p3, p4}, Lcom/google/android/music/MusicUtils;->populatePlaylistListMenuItems(Lcom/google/android/music/menu/MusicMenu;J)V

    goto :goto_1
.end method

.method public static populatePlaylistListMenuItems(Lcom/google/android/music/menu/MusicMenu;)V
    .locals 2
    .parameter "sub"

    .prologue
    .line 350
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/music/MusicUtils;->populatePlaylistListMenuItems(Lcom/google/android/music/menu/MusicMenu;J)V

    .line 351
    return-void
.end method

.method private static populatePlaylistListMenuItems(Lcom/google/android/music/menu/MusicMenu;J)V
    .locals 10
    .parameter "sub"
    .parameter "excluding"

    .prologue
    .line 354
    sget-object v6, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    monitor-enter v6

    .line 355
    :try_start_0
    sget-object v7, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    const-string v8, "_id"

    invoke-virtual {v7, v8}, Lcom/google/android/music/AsyncCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 356
    .local v2, id_idx:I
    sget-object v7, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    const-string v8, "name"

    invoke-virtual {v7, v8}, Lcom/google/android/music/AsyncCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 358
    .local v5, name_idx:I
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicMenu;->clear()V

    .line 359
    const/4 v7, 0x5

    const/4 v8, 0x0

    const v9, 0x7f0c0075

    invoke-virtual {p0, v7, v8, v9}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 360
    invoke-static {}, Lcom/google/android/music/MusicUtils;->getPlaylistCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 361
    sget-object v7, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    invoke-virtual {v7}, Lcom/google/android/music/AsyncCursor;->moveToFirst()Z

    .line 362
    :goto_0
    sget-object v7, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    invoke-virtual {v7}, Lcom/google/android/music/AsyncCursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_1

    .line 363
    sget-object v7, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    invoke-virtual {v7, v5}, Lcom/google/android/music/AsyncCursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 364
    sget-object v7, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    invoke-virtual {v7, v2}, Lcom/google/android/music/AsyncCursor;->getLong(I)J

    move-result-wide v0

    .line 365
    .local v0, id:J
    cmp-long v7, v0, p1

    if-eqz v7, :cond_0

    .line 366
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 367
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "playlist"

    invoke-virtual {v3, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 368
    sget-object v7, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    invoke-virtual {v7, v5}, Lcom/google/android/music/AsyncCursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 369
    .local v4, name:Ljava/lang/String;
    const-string v7, "playlist_name"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8, v4}, Lcom/google/android/music/menu/MusicMenu;->add(IILjava/lang/String;)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/music/menu/MusicMenuItem;->setIntent(Landroid/content/Intent;)V

    .line 374
    .end local v0           #id:J
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #name:Ljava/lang/String;
    :cond_0
    sget-object v7, Lcom/google/android/music/MusicUtils;->sPlaylists:Lcom/google/android/music/AsyncCursor;

    invoke-virtual {v7}, Lcom/google/android/music/AsyncCursor;->moveToNext()Z

    goto :goto_0

    .line 377
    .end local v2           #id_idx:I
    .end local v5           #name_idx:I
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v2       #id_idx:I
    .restart local v5       #name_idx:I
    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    return-void
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 578
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 579
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 589
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .line 583
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    const-string v1, "Query on main thread"

    invoke-static {p0, v1}, Lcom/google/android/music/MusicUtils;->checkMainThread(Landroid/content/Context;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 585
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 586
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 588
    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    const-string v1, "MusicUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnsupportedOperationException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v7

    .line 589
    goto :goto_0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/MusicUtils$QueryCallback;)V
    .locals 10
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "cb"

    .prologue
    .line 544
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    .line 546
    .local v7, replyHandler:Landroid/os/Handler;
    sget-object v9, Lcom/google/android/music/MusicUtils;->sAsyncQueryWorker:Lcom/google/android/music/Worker;

    new-instance v0, Lcom/google/android/music/MusicUtils$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/music/MusicUtils$2;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/music/MusicUtils$QueryCallback;)V

    invoke-virtual {v9, v0}, Lcom/google/android/music/Worker;->post(Ljava/lang/Runnable;)Z

    .line 559
    return-void
.end method

.method public static requestSync(Lcom/google/android/music/jumper/MusicPreferences;Z)V
    .locals 4
    .parameter "prefs"
    .parameter "userInitiated"

    .prologue
    const/4 v3, 0x1

    .line 732
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 733
    .local v0, account:Landroid/accounts/Account;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 734
    .local v1, extras:Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 735
    const-string v2, "expedited"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 736
    const-string v2, "force"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 738
    :cond_0
    const-string v2, "com.google.android.music.MusicContent"

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 739
    const-string v2, "com.google.android.music.MusicContent"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 741
    :cond_1
    return-void
.end method

.method public static runAsync(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 491
    sget-object v0, Lcom/google/android/music/MusicUtils;->sAsyncQueryWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/utils/async/TraceableRunnable;

    invoke-direct {v1, p0}, Lcom/google/android/music/utils/async/TraceableRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/Worker;->post(Ljava/lang/Runnable;)Z

    .line 492
    return-void
.end method

.method public static runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V
    .locals 3
    .parameter "runner"

    .prologue
    .line 496
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 498
    .local v0, callbackHandler:Landroid/os/Handler;
    sget-object v1, Lcom/google/android/music/MusicUtils;->sAsyncQueryWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/utils/async/CallbackRunnable;

    invoke-direct {v2, v0, p0}, Lcom/google/android/music/utils/async/CallbackRunnable;-><init>(Landroid/os/Handler;Lcom/google/android/music/utils/async/AsyncRunner;)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/Worker;->post(Ljava/lang/Runnable;)Z

    .line 499
    return-void
.end method

.method public static runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;IZ)V
    .locals 4
    .parameter "runner"
    .parameter "type"
    .parameter "cancelPrevious"

    .prologue
    .line 514
    if-eqz p2, :cond_0

    .line 515
    invoke-static {p1}, Lcom/google/android/music/MusicUtils;->cancelAsync(I)V

    .line 518
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 520
    .local v0, callbackHandler:Landroid/os/Handler;
    sget-object v2, Lcom/google/android/music/MusicUtils;->sAsyncQueryWorker:Lcom/google/android/music/Worker;

    new-instance v3, Lcom/google/android/music/utils/async/CallbackRunnable;

    invoke-direct {v3, v0, p0}, Lcom/google/android/music/utils/async/CallbackRunnable;-><init>(Landroid/os/Handler;Lcom/google/android/music/utils/async/AsyncRunner;)V

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    .line 522
    .local v1, msg:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 523
    sget-object v2, Lcom/google/android/music/MusicUtils;->sAsyncQueryWorker:Lcom/google/android/music/Worker;

    invoke-virtual {v2, v1}, Lcom/google/android/music/Worker;->sendMessage(Landroid/os/Message;)Z

    .line 524
    return-void
.end method

.method static setBackground(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 14
    .parameter "v"
    .parameter "bm"

    .prologue
    .line 696
    if-nez p1, :cond_0

    .line 697
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 729
    .end local p1
    :goto_0
    return-void

    .line 701
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 702
    .local v9, vwidth:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 703
    .local v8, vheight:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 704
    .local v2, bwidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 705
    .local v1, bheight:I
    int-to-float v0, v9

    int-to-float v3, v2

    div-float/2addr v0, v3

    .line 706
    .local v0, scalex:F
    int-to-float v3, v8

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 707
    .local v3, scaley:F
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .end local v0           #scalex:F
    const v3, 0x3fa66666

    mul-float v7, v0, v3

    .line 709
    .local v7, scale:F
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 710
    .end local v3           #scaley:F
    .local v0, config:Landroid/graphics/Bitmap$Config;
    invoke-static {v9, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 711
    .local v0, bg:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 712
    .local v3, c:Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 713
    .local v6, paint:Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 714
    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 715
    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 716
    .local v5, greymatrix:Landroid/graphics/ColorMatrix;
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 717
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 718
    .local v4, darkmatrix:Landroid/graphics/ColorMatrix;
    const v10, 0x3e99999a

    const v11, 0x3e99999a

    const v12, 0x3e99999a

    const/high16 v13, 0x3f80

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 719
    invoke-virtual {v5, v4}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 720
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    .end local v4           #darkmatrix:Landroid/graphics/ColorMatrix;
    invoke-direct {v4, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 721
    .local v4, filter:Landroid/graphics/ColorFilter;
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 722
    new-instance v4, Landroid/graphics/Matrix;

    .end local v4           #filter:Landroid/graphics/ColorFilter;
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 723
    .local v4, matrix:Landroid/graphics/Matrix;
    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    .end local v2           #bwidth:I
    int-to-float v2, v2

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    .end local v1           #bheight:I
    int-to-float v1, v1

    invoke-virtual {v4, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 724
    const/high16 v1, 0x4120

    invoke-virtual {v4, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 725
    invoke-virtual {v4, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 726
    div-int/lit8 v1, v9, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, v8, 0x2

    int-to-float v2, v2

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 727
    invoke-virtual {v3, p1, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 728
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-direct {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method static setIntPref(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 687
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 689
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 690
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 691
    invoke-static {v0}, Lcom/google/android/music/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 692
    return-void
.end method

.method public static shopFor(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .parameter "activity"
    .parameter "query"

    .prologue
    .line 624
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 625
    .local v3, uriEncodedQuery:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://www.google.com/search?q="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&tbs=shop:1,cat:855"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 627
    .local v2, shopUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 637
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getMusicActivityManager(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v0

    .line 639
    .local v0, appController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;
    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->superStartActivity(Landroid/content/Intent;)V

    .line 640
    return-void
.end method

.method public static showSongsAddedToPlaylistToast(Landroid/content/Context;ILjava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "quantity"
    .parameter "name"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 470
    if-ltz p1, :cond_0

    .line 471
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0004

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p2, v4, v6

    invoke-virtual {v2, v3, p1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, text:Ljava/lang/String;
    :goto_0
    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 478
    return-void

    .line 474
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, message:Ljava/lang/String;
    new-array v2, v6, [Ljava/lang/Object;

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #text:Ljava/lang/String;
    goto :goto_0
.end method

.method public static shuffleAll(Lcom/google/android/music/medialist/SongList;)V
    .locals 2
    .parameter "songsToShuffle"

    .prologue
    .line 297
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v0, :cond_0

    .line 298
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->setShuffleMode(I)V

    .line 299
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->openAndPlay(Lcom/google/android/music/medialist/SongList;I)V

    .line 301
    :cond_0
    return-void
.end method

.method public static startMediaPlayer(Landroid/app/Activity;)V
    .locals 1
    .parameter "currentActivity"

    .prologue
    .line 658
    invoke-static {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getMusicActivityManager(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v0

    .line 660
    .local v0, appController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->startMediaPlayer(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V

    .line 661
    return-void
.end method

.method public static startMediaPlayer(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V
    .locals 0
    .parameter "appController"

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startNowPlayingScreen()V

    .line 665
    return-void
.end method

.method public static stringForIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .parameter "intent"

    .prologue
    .line 865
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 868
    :goto_0
    return-object v1

    .line 866
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 867
    .local v0, b:Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    .line 868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static toggleOrientation(Landroid/app/Activity;)V
    .locals 5
    .parameter "a"

    .prologue
    .line 879
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 880
    .local v1, orientation:I
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 882
    .local v0, delayedHandler:Landroid/os/Handler;
    new-instance v2, Lcom/google/android/music/MusicUtils$3;

    invoke-direct {v2, p0, v1}, Lcom/google/android/music/MusicUtils$3;-><init>(Landroid/app/Activity;I)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 896
    return-void
.end method

.method public static toggleShuffle()V
    .locals 3

    .prologue
    .line 304
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v1, :cond_0

    .line 305
    invoke-static {}, Lcom/google/android/music/MusicUtils;->getCurrentShuffleMode()I

    move-result v0

    .line 306
    .local v0, shuffle:I
    if-nez v0, :cond_1

    .line 307
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->setShuffleMode(I)V

    .line 312
    .end local v0           #shuffle:I
    :cond_0
    :goto_0
    return-void

    .line 309
    .restart local v0       #shuffle:I
    :cond_1
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->setShuffleMode(I)V

    goto :goto_0
.end method

.method public static unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V
    .locals 4
    .parameter "token"

    .prologue
    .line 210
    if-nez p0, :cond_1

    .line 211
    const-string v2, "MusicUtils"

    const-string v3, "Trying to unbind with null token"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/MusicUtils$ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    .line 215
    .local v0, cw:Landroid/content/ContextWrapper;
    sget-object v2, Lcom/google/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/MusicUtils$ServiceBinder;

    .line 216
    .local v1, sb:Lcom/google/android/music/MusicUtils$ServiceBinder;
    if-nez v1, :cond_2

    .line 217
    const-string v2, "MusicUtils"

    const-string v3, "Trying to unbind for unknown Context"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 221
    sget-object v2, Lcom/google/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    const/4 v2, 0x0

    sput-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    goto :goto_0
.end method
