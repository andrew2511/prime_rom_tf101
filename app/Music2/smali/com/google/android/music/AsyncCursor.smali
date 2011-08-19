.class public Lcom/google/android/music/AsyncCursor;
.super Landroid/database/AbstractCursor;
.source "AsyncCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/AsyncCursor$1;,
        Lcom/google/android/music/AsyncCursor$EmptyCursor;,
        Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;,
        Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;,
        Lcom/google/android/music/AsyncCursor$CursorFragment;
    }
.end annotation


# static fields
.field private static final BASETAG:Ljava/lang/String; = "AsyncCursor"

.field static final CLOSE:I = 0x4

.field static final COUNT:I = 0x1

.field static final ESTIMATE_SIZE:Z = false

.field static final FETCH:I = 0x2

.field static final FETCH_LOWER:I = 0x1f4

.field static final FETCH_UPPER:I = 0x5dc

.field static final FRAGMENTSIZE:I = 0x7d0

.field static final FRESHEN:I = 0x3

#the value of this static final field might be set in the static constructor
.field static final LOG:Z = false

.field static final LOGGET:Z = false

.field static final LOGMOVE:Z = false

.field static final PING:I = 0x4

.field static mSqlSerializer:Ljava/lang/Object;

.field private static final sCountProjection:[Ljava/lang/String;

.field static sInstanceCounter:I


# instance fields
.field final TAG:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mCurrentRowCursor:Landroid/database/Cursor;

.field mCurrentRowCursorOffset:I

.field mEmptyCursor:Landroid/database/Cursor;

.field mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/AsyncCursor$CursorFragment;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

.field volatile mHaveExactSize:Z

.field mLastFetchOffset:I

.field mNewSize:I

.field mProjection:[Ljava/lang/String;

.field mSelection:Ljava/lang/String;

.field mSelectionArgs:[Ljava/lang/String;

.field mSize:I

.field mSortOrder:Ljava/lang/String;

.field mUri:Landroid/net/Uri;

.field mUriObserver:Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 30
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/AsyncCursor;->sCountProjection:[Ljava/lang/String;

    .line 47
    const-string v0, "AsyncCursor"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/AsyncCursor;->LOG:Z

    .line 58
    sput v3, Lcom/google/android/music/AsyncCursor;->sInstanceCounter:I

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/music/AsyncCursor;->mSqlSerializer:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/AsyncCursor;->mLastFetchOffset:I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Lcom/google/android/music/AsyncCursor$EmptyCursor;

    invoke-direct {v0}, Lcom/google/android/music/AsyncCursor$EmptyCursor;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor;->mEmptyCursor:Landroid/database/Cursor;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncCursor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/google/android/music/AsyncCursor;->sInstanceCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/google/android/music/AsyncCursor;->sInstanceCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor;->TAG:Ljava/lang/String;

    .line 61
    iput-boolean v3, p0, Lcom/google/android/music/AsyncCursor;->mHaveExactSize:Z

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/google/android/music/AsyncCursor;->mUri:Landroid/net/Uri;

    .line 123
    iput-object p3, p0, Lcom/google/android/music/AsyncCursor;->mProjection:[Ljava/lang/String;

    .line 124
    iput-object p4, p0, Lcom/google/android/music/AsyncCursor;->mSelection:Ljava/lang/String;

    .line 125
    iput-object p5, p0, Lcom/google/android/music/AsyncCursor;->mSelectionArgs:[Ljava/lang/String;

    .line 126
    iput-object p6, p0, Lcom/google/android/music/AsyncCursor;->mSortOrder:Ljava/lang/String;

    .line 127
    iput v3, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    iput v3, p0, Lcom/google/android/music/AsyncCursor;->mSize:I

    .line 129
    new-instance v0, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    invoke-direct {v0, p0}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;-><init>(Lcom/google/android/music/AsyncCursor;)V

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor;->mHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initialized for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proj:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/google/android/music/AsyncCursor;->arrayToStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sel: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', args: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", order: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    invoke-virtual {v0, v4}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->sendEmptyMessage(I)Z

    .line 141
    new-instance v0, Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;-><init>(Lcom/google/android/music/AsyncCursor;Lcom/google/android/music/AsyncCursor$1;)V

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor;->mUriObserver:Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;

    .line 142
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/AsyncCursor;->mUriObserver:Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;

    invoke-virtual {v0, p2, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 143
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/AsyncCursor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/music/AsyncCursor;->doCount()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/AsyncCursor;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/AsyncCursor;->doFetch(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/AsyncCursor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/music/AsyncCursor;->doFreshen()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/AsyncCursor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/music/AsyncCursor;->doClose()V

    return-void
.end method

.method private static arrayToStr([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "input"

    .prologue
    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v1, strBuilder:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    .line 108
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 109
    if-lez v0, :cond_0

    .line 110
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_0
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .end local v0           #i:I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private doClose()V
    .locals 5

    .prologue
    .line 385
    monitor-enter p0

    .line 386
    :try_start_0
    iget-object v3, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 387
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 388
    iget-object v3, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AsyncCursor$CursorFragment;

    .line 389
    .local v0, cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    iget-object v3, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 391
    .end local v0           #cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    :cond_0
    iget-object v3, p0, Lcom/google/android/music/AsyncCursor;->mHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    invoke-virtual {v3}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->quit()V

    .line 392
    sget-boolean v3, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cursors"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 393
    :cond_1
    monitor-exit p0

    .line 394
    return-void

    .line 393
    .end local v1           #i:I
    .end local v2           #len:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private doCount()V
    .locals 8

    .prologue
    .line 204
    sget-object v7, Lcom/google/android/music/AsyncCursor;->mSqlSerializer:Ljava/lang/Object;

    monitor-enter v7

    .line 206
    :try_start_0
    sget-boolean v0, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "getting size"

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/music/AsyncCursor;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/AsyncCursor;->sCountProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/music/AsyncCursor;->mSelection:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/music/AsyncCursor;->mSelectionArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 210
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 212
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    .line 213
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    :cond_1
    if-eqz v6, :cond_2

    .line 217
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_0

    .line 222
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2
    :goto_0
    :try_start_4
    sget-boolean v0, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 224
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->onChange(Z)V

    .line 225
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 226
    return-void

    .line 213
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 216
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_4

    .line 217
    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_0

    .line 220
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 225
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0
.end method

.method private doFetch(II)V
    .locals 12
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v11, 0x1

    .line 242
    sget-object v10, Lcom/google/android/music/AsyncCursor;->mSqlSerializer:Ljava/lang/Object;

    monitor-enter v10

    .line 243
    :try_start_0
    sget-boolean v0, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting fetch at offset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 245
    .local v1, limituri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/music/AsyncCursor;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/music/AsyncCursor;->mSelection:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/music/AsyncCursor;->mSelectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/music/AsyncCursor;->mSortOrder:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 246
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_9

    .line 247
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 248
    .local v8, count:I
    if-eqz v8, :cond_5

    .line 249
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 250
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/music/AsyncCursor;->fragmentForPosition(I)Lcom/google/android/music/AsyncCursor$CursorFragment;

    move-result-object v7

    .line 251
    .local v7, cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    if-eqz v7, :cond_3

    .line 252
    iget-boolean v0, v7, Lcom/google/android/music/AsyncCursor$CursorFragment;->fresh:Z

    if-eqz v0, :cond_1

    .line 253
    const-string v0, "possible unnecessary query: fragment was fresh"

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    iget-object v2, v7, Lcom/google/android/music/AsyncCursor$CursorFragment;->cursor:Landroid/database/Cursor;

    if-ne v0, v2, :cond_2

    .line 256
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mEmptyCursor:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    .line 258
    :cond_2
    iget-object v0, v7, Lcom/google/android/music/AsyncCursor$CursorFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 259
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/music/AsyncCursor$CursorFragment;

    invoke-direct {v2, p1, v6}, Lcom/google/android/music/AsyncCursor$CursorFragment;-><init>(ILandroid/database/Cursor;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->getPosition()I

    move-result v9

    .line 263
    .local v9, pos:I
    if-lt v9, p1, :cond_4

    add-int v0, p1, p2

    if-ge v9, v0, :cond_4

    .line 266
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->getPosition()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/AsyncCursor;->onMove(II)Z

    .line 269
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    .end local v7           #cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    .end local v9           #pos:I
    :cond_5
    :try_start_2
    sget-boolean v0, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetched "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " rows ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " requested)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 276
    :cond_6
    if-nez v8, :cond_8

    .line 280
    iput p1, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    .line 281
    sub-int v0, p1, v11

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->moveToPosition(I)Z

    .line 282
    sget-boolean v0, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new size estimate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 290
    :cond_7
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->onChange(Z)V

    .line 294
    .end local v8           #count:I
    :goto_1
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 295
    return-void

    .line 269
    .restart local v8       #count:I
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 294
    .end local v1           #limituri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #count:I
    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 283
    .restart local v1       #limituri:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v8       #count:I
    :cond_8
    if-ge v8, p2, :cond_7

    :try_start_5
    iget-boolean v0, p0, Lcom/google/android/music/AsyncCursor;->mHaveExactSize:Z

    if-nez v0, :cond_7

    .line 286
    add-int v0, p1, v8

    iput v0, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/AsyncCursor;->mHaveExactSize:Z

    .line 288
    sget-boolean v0, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adjusting size from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/music/AsyncCursor;->mSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    .end local v8           #count:I
    :cond_9
    const-string v0, "Got null Cursor"

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method

.method private doFreshen()V
    .locals 5

    .prologue
    .line 322
    monitor-enter p0

    .line 323
    :try_start_0
    iget-object v3, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 324
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 325
    iget-object v3, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AsyncCursor$CursorFragment;

    .line 326
    .local v0, cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->fresh:Z

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    .end local v0           #cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    :cond_0
    iget-object v3, p0, Lcom/google/android/music/AsyncCursor;->mHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->sendEmptyMessage(I)Z

    .line 333
    monitor-exit p0

    .line 334
    return-void

    .line 333
    .end local v1           #i:I
    .end local v2           #len:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private estimateTotalSize(ILandroid/database/Cursor;)I
    .locals 7
    .parameter "offset"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x1

    .line 298
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 299
    .local v0, count:I
    add-int v3, p1, v0

    .line 300
    .local v3, size:I
    iget-object v4, p0, Lcom/google/android/music/AsyncCursor;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content://media/external/audio/search/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 315
    :goto_0
    return v3

    .line 307
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToLast()Z

    .line 308
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 309
    .local v2, last:C
    const/16 v4, 0x61

    sub-int v4, v2, v4

    add-int/lit8 v1, v4, 0x1

    .line 310
    .local v1, fill:I
    if-ge v1, v6, :cond_1

    const/4 v1, 0x1

    .line 311
    :cond_1
    const/16 v4, 0x1a

    if-le v1, v4, :cond_2

    const/16 v1, 0x1a

    .line 312
    :cond_2
    div-int/lit8 v4, v0, 0x2

    add-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0x1a

    div-int v3, v4, v1

    goto :goto_0
.end method

.method private fetchMoreIfNeeded(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x1

    .line 553
    div-int/lit16 v1, p1, 0x7d0

    .line 554
    .local v1, fragment:I
    rem-int/lit16 v3, p1, 0x7d0

    .line 555
    .local v3, offset:I
    invoke-direct {p0, p1}, Lcom/google/android/music/AsyncCursor;->fragmentForPosition(I)Lcom/google/android/music/AsyncCursor$CursorFragment;

    move-result-object v4

    if-nez v4, :cond_1

    .line 556
    mul-int/lit16 v4, v1, 0x7d0

    invoke-direct {p0, v4}, Lcom/google/android/music/AsyncCursor;->queueFetch(I)V

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    const/16 v4, 0x1f4

    if-ge v3, v4, :cond_2

    if-lez v1, :cond_2

    .line 561
    sub-int v4, v1, v5

    mul-int/lit16 v0, v4, 0x7d0

    .line 562
    .local v0, fetchpos:I
    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncCursor;->fragmentForPosition(I)Lcom/google/android/music/AsyncCursor$CursorFragment;

    move-result-object v4

    if-nez v4, :cond_2

    .line 563
    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncCursor;->queueFetch(I)V

    goto :goto_0

    .line 567
    .end local v0           #fetchpos:I
    :cond_2
    iget v4, p0, Lcom/google/android/music/AsyncCursor;->mSize:I

    sub-int/2addr v4, v5

    div-int/lit16 v2, v4, 0x7d0

    .line 568
    .local v2, lastfragment:I
    const/16 v4, 0x5dc

    if-le v3, v4, :cond_0

    if-ge v1, v2, :cond_0

    .line 570
    add-int/lit8 v4, v1, 0x1

    mul-int/lit16 v0, v4, 0x7d0

    .line 571
    .restart local v0       #fetchpos:I
    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncCursor;->fragmentForPosition(I)Lcom/google/android/music/AsyncCursor$CursorFragment;

    move-result-object v4

    if-nez v4, :cond_0

    .line 572
    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncCursor;->queueFetch(I)V

    goto :goto_0
.end method

.method private fragmentForPosition(I)Lcom/google/android/music/AsyncCursor$CursorFragment;
    .locals 6
    .parameter "position"

    .prologue
    .line 536
    iget-object v5, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 537
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 538
    iget-object v5, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AsyncCursor$CursorFragment;

    .line 539
    .local v0, cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    iget v4, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->offset:I

    .line 540
    .local v4, start:I
    iget-object v5, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    add-int v1, v4, v5

    .line 541
    .local v1, end:I
    if-lt p1, v4, :cond_1

    if-ge p1, v1, :cond_1

    .line 542
    iget-boolean v5, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->fresh:Z

    if-nez v5, :cond_0

    .line 543
    invoke-direct {p0, v4}, Lcom/google/android/music/AsyncCursor;->queueFetch(I)V

    :cond_0
    move-object v5, v0

    .line 548
    .end local v0           #cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    .end local v1           #end:I
    .end local v4           #start:I
    :goto_1
    return-object v5

    .line 537
    .restart local v0       #cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    .restart local v1       #end:I
    .restart local v4       #start:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 548
    .end local v0           #cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    .end local v1           #end:I
    .end local v4           #start:I
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private queueFetch(I)V
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v3, 0x2

    .line 229
    sget-boolean v1, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queuing fetch at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 230
    :cond_0
    iget v1, p0, Lcom/google/android/music/AsyncCursor;->mLastFetchOffset:I

    if-eq p1, v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/google/android/music/AsyncCursor;->mHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v3, p1, v2}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 232
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/music/AsyncCursor;->mHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    invoke-virtual {v1, v3}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->removeMessages(I)V

    .line 233
    iget-object v1, p0, Lcom/google/android/music/AsyncCursor;->mHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    invoke-virtual {v1, v0}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    iput p1, p0, Lcom/google/android/music/AsyncCursor;->mLastFetchOffset:I

    .line 236
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 378
    sget-boolean v0, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "close"

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/AsyncCursor;->mUriObserver:Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 380
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 381
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->sendEmptyMessage(I)Z

    .line 382
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 192
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->TAG:Ljava/lang/String;

    const-string v1, "not closed in finalizer, exiting thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_0
    invoke-super {p0}, Landroid/database/AbstractCursor;->finalize()V

    .line 200
    return-void

    .line 198
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/database/AbstractCursor;->finalize()V

    throw v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 404
    monitor-enter p0

    .line 406
    :try_start_0
    iget v0, p0, Lcom/google/android/music/AsyncCursor;->mSize:I

    monitor-exit p0

    return v0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCountSync()I
    .locals 2

    .prologue
    .line 421
    sget-object v0, Lcom/google/android/music/AsyncCursor;->mSqlSerializer:Ljava/lang/Object;

    monitor-enter v0

    .line 422
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 423
    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/music/AsyncCursor;->mHaveExactSize:Z

    if-nez v1, :cond_0

    .line 424
    invoke-direct {p0}, Lcom/google/android/music/AsyncCursor;->doCount()V

    .line 425
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->requery()Z

    .line 427
    :cond_0
    iget v1, p0, Lcom/google/android/music/AsyncCursor;->mSize:I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v1

    .line 428
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 429
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public declared-synchronized getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 439
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->checkPosition()V

    .line 440
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 446
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->checkPosition()V

    .line 447
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInt(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 453
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->checkPosition()V

    .line 454
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLong(I)J
    .locals 2
    .parameter "column"

    .prologue
    .line 460
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->checkPosition()V

    .line 461
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->checkPosition()V

    .line 468
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getString(I)Ljava/lang/String;
    .locals 1
    .parameter "column"

    .prologue
    .line 474
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->checkPosition()V

    .line 475
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasCount()Z
    .locals 1

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/google/android/music/AsyncCursor;->mHaveExactSize:Z

    return v0
.end method

.method public declared-synchronized isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 485
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->checkPosition()V

    .line 486
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onMove(II)Z
    .locals 10
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/16 v9, 0x5dc

    const/16 v8, 0x1f4

    const/4 v7, 0x1

    .line 493
    monitor-enter p0

    .line 495
    :try_start_0
    iget-object v5, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/google/android/music/AsyncCursor;->mEmptyCursor:Landroid/database/Cursor;

    if-eq v5, v6, :cond_3

    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    div-int/lit16 v5, p1, 0x7d0

    div-int/lit16 v6, p2, 0x7d0

    if-ne v5, v6, :cond_3

    .line 499
    iget-object v5, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursorOffset:I

    sub-int v6, p2, v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    .line 500
    .local v1, moved:Z
    rem-int/lit16 v4, p1, 0x7d0

    .line 501
    .local v4, oldoffset:I
    rem-int/lit16 v2, p2, 0x7d0

    .line 502
    .local v2, newoffset:I
    if-lt v4, v8, :cond_0

    if-lt v2, v8, :cond_1

    :cond_0
    if-gt v4, v9, :cond_2

    if-le v2, v9, :cond_2

    .line 505
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/music/AsyncCursor;->fetchMoreIfNeeded(I)V

    .line 507
    :cond_2
    if-eqz v1, :cond_4

    .line 508
    monitor-exit p0

    move v5, v7

    .line 532
    .end local v1           #moved:Z
    .end local v2           #newoffset:I
    .end local v4           #oldoffset:I
    :goto_0
    return v5

    .line 514
    :cond_3
    invoke-direct {p0, p2}, Lcom/google/android/music/AsyncCursor;->fragmentForPosition(I)Lcom/google/android/music/AsyncCursor$CursorFragment;

    move-result-object v0

    .line 515
    .local v0, cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    if-eqz v0, :cond_4

    .line 516
    iget-object v5, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->cursor:Landroid/database/Cursor;

    iput-object v5, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    .line 517
    iget v5, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->offset:I

    iput v5, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursorOffset:I

    .line 518
    iget v5, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->offset:I

    sub-int v3, p2, v5

    .line 519
    .local v3, offsetInCursor:I
    iget-object v5, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v5, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    .line 520
    .restart local v1       #moved:Z
    invoke-direct {p0, p2}, Lcom/google/android/music/AsyncCursor;->fetchMoreIfNeeded(I)V

    .line 521
    if-eqz v1, :cond_4

    .line 522
    monitor-exit p0

    move v5, v7

    goto :goto_0

    .line 527
    .end local v0           #cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    .end local v1           #moved:Z
    .end local v3           #offsetInCursor:I
    :cond_4
    iget-object v5, p0, Lcom/google/android/music/AsyncCursor;->mEmptyCursor:Landroid/database/Cursor;

    iput-object v5, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    .line 528
    div-int/lit16 v5, p2, 0x7d0

    mul-int/lit16 v5, v5, 0x7d0

    iput v5, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursorOffset:I

    .line 529
    iget-object v5, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    rem-int/lit16 v6, p2, 0x7d0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 530
    invoke-direct {p0, p2}, Lcom/google/android/music/AsyncCursor;->fetchMoreIfNeeded(I)V

    .line 531
    monitor-exit p0

    move v5, v7

    .line 532
    goto :goto_0

    .line 531
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method printf(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/music/AsyncCursor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public requery()Z
    .locals 6

    .prologue
    .line 339
    sget-boolean v4, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v4, :cond_0

    const-string v4, "requery"

    invoke-virtual {p0, v4}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 340
    :cond_0
    monitor-enter p0

    .line 341
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->getPosition()I

    move-result v3

    .line 342
    .local v3, pos:I
    invoke-direct {p0, v3}, Lcom/google/android/music/AsyncCursor;->fragmentForPosition(I)Lcom/google/android/music/AsyncCursor$CursorFragment;

    move-result-object v0

    .line 343
    .local v0, cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    if-eqz v0, :cond_2

    .line 344
    iget-object v4, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->cursor:Landroid/database/Cursor;

    iput-object v4, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    .line 345
    iget v4, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->offset:I

    iput v4, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursorOffset:I

    .line 346
    iget v4, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->offset:I

    sub-int v1, v3, v4

    .line 347
    .local v1, offsetInCursor:I
    iget-object v4, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 352
    .end local v1           #offsetInCursor:I
    :goto_0
    iget v4, p0, Lcom/google/android/music/AsyncCursor;->mSize:I

    iget v5, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    if-eq v4, v5, :cond_1

    .line 353
    iget v2, p0, Lcom/google/android/music/AsyncCursor;->mSize:I

    .line 354
    .local v2, oldsize:I
    iget v4, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    iput v4, p0, Lcom/google/android/music/AsyncCursor;->mSize:I

    .line 367
    if-lt v3, v2, :cond_1

    .line 368
    iget v4, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    invoke-virtual {p0, v4}, Lcom/google/android/music/AsyncCursor;->moveToPosition(I)Z

    .line 371
    .end local v2           #oldsize:I
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/music/AsyncCursor;->mHaveExactSize:Z

    .line 372
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    invoke-super {p0}, Landroid/database/AbstractCursor;->requery()Z

    move-result v4

    return v4

    .line 349
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/google/android/music/AsyncCursor;->mEmptyCursor:Landroid/database/Cursor;

    iput-object v4, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    .line 350
    div-int/lit16 v4, v3, 0x7d0

    mul-int/lit16 v4, v4, 0x7d0

    iput v4, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursorOffset:I

    goto :goto_0

    .line 372
    .end local v0           #cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    .end local v3           #pos:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
