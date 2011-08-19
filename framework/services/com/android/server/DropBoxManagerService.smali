.class public final Lcom/android/server/DropBoxManagerService;
.super Lcom/android/internal/os/IDropBoxManagerService$Stub;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DropBoxManagerService$EntryFile;,
        Lcom/android/server/DropBoxManagerService$FileList;
    }
.end annotation


# static fields
.field private static final DEFAULT_AGE_SECONDS:I = 0x3f480

.field private static final DEFAULT_MAX_FILES:I = 0x3e8

.field private static final DEFAULT_QUOTA_KB:I = 0x1400

.field private static final DEFAULT_QUOTA_PERCENT:I = 0xa

.field private static final DEFAULT_RESERVE_PERCENT:I = 0xa

.field private static final PROFILE_DUMP:Z = false

.field private static final QUOTA_RESCAN_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DropBoxManagerService"


# instance fields
.field private mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

.field private mBlockSize:I

.field private volatile mBooted:Z

.field private mCachedQuotaBlocks:I

.field private mCachedQuotaUptimeMillis:J

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDropBoxDir:Ljava/io/File;

.field private mFilesByTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/DropBoxManagerService$FileList;",
            ">;"
        }
    .end annotation
.end field

.field private mLastTimestamp:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatFs:Landroid/os/StatFs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .registers 9
    .parameter "context"
    .parameter "path"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Lcom/android/internal/os/IDropBoxManagerService$Stub;-><init>()V

    .line 87
    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 88
    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    .line 92
    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 93
    iput v1, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 94
    iput v1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 95
    iput-wide v3, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 98
    iput-wide v3, p0, Lcom/android/server/DropBoxManagerService;->mLastTimestamp:J

    .line 100
    iput-boolean v1, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    .line 103
    new-instance v1, Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/DropBoxManagerService$1;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 141
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-instance v4, Lcom/android/server/DropBoxManagerService$2;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5, p1}, Lcom/android/server/DropBoxManagerService$2;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 159
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/DropBoxManagerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/DropBoxManagerService;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/DropBoxManagerService;)V
    .registers 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/DropBoxManagerService;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private declared-synchronized createEntry(Ljava/io/File;Ljava/lang/String;I)J
    .registers 26
    .parameter "temp"
    .parameter "tag"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 629
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 635
    .local v9, t:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v6, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v7, 0x2710

    add-long/2addr v7, v9

    invoke-direct {v6, v7, v8}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v21

    .line 636
    .local v21, tail:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    const/4 v14, 0x0

    .line 637
    .local v14, future:[Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-interface/range {v21 .. v21}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_31

    .line 638
    invoke-interface/range {v21 .. v21}, Ljava/util/SortedSet;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    .end local v14           #future:[Lcom/android/server/DropBoxManagerService$EntryFile;
    check-cast v14, [Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 639
    .restart local v14       #future:[Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-interface/range {v21 .. v21}, Ljava/util/SortedSet;->clear()V

    .line 642
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_54

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-wide v5, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 646
    :cond_54
    if-eqz v14, :cond_f4

    .line 647
    move-object v13, v14

    .local v13, arr$:[Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object v0, v13

    array-length v0, v0

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_5c
    move v0, v15

    move/from16 v1, v17

    if-ge v0, v1, :cond_f4

    aget-object v16, v13, v15

    .line 648
    .local v16, late:Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move v7, v0

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/DropBoxManagerService$FileList;

    .line 650
    .local v20, tagFiles:Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v20, :cond_a2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 651
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move v5, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move v6, v0

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 653
    :cond_a2
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move v5, v0

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_d8

    .line 654
    new-instance v5, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object v7, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object v8, v0

    const-wide/16 v11, 0x1

    add-long v18, v9, v11

    .end local v9           #t:J
    .local v18, t:J
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move v12, v0

    invoke-direct/range {v5 .. v12}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide/from16 v9, v18

    .line 647
    .end local v18           #t:J
    .restart local v9       #t:J
    :goto_d5
    add-int/lit8 v15, v15, 0x1

    goto :goto_5c

    .line 657
    :cond_d8
    new-instance v5, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object v6, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object v7, v0

    const-wide/16 v11, 0x1

    add-long v18, v9, v11

    .end local v9           #t:J
    .restart local v18       #t:J
    invoke-direct {v5, v6, v7, v9, v10}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide/from16 v9, v18

    .end local v18           #t:J
    .restart local v9       #t:J
    goto :goto_d5

    .line 662
    .end local v13           #arr$:[Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v15           #i$:I
    .end local v16           #late:Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v17           #len$:I
    .end local v20           #tagFiles:Lcom/android/server/DropBoxManagerService$FileList;
    :cond_f4
    if-nez p1, :cond_10d

    .line 663
    new-instance v5, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p2

    move-wide v3, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_10b
    .catchall {:try_start_1 .. :try_end_10b} :catchall_129

    .line 667
    :goto_10b
    monitor-exit p0

    return-wide v9

    .line 665
    :cond_10d
    :try_start_10d
    new-instance v5, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move v12, v0

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    move/from16 v11, p3

    invoke-direct/range {v5 .. v12}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_128
    .catchall {:try_start_10d .. :try_end_128} :catchall_129

    goto :goto_10b

    .line 629
    .end local v9           #t:J
    .end local v14           #future:[Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v21           #tail:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    :catchall_129
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    .registers 6
    .parameter "entry"

    .prologue
    .line 610
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v1, v1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 611
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v2, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v3, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 616
    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v1, :cond_42

    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v1, :cond_42

    iget v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    if-lez v1, :cond_42

    .line 617
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 618
    .local v0, tagFiles:Lcom/android/server/DropBoxManagerService$FileList;
    if-nez v0, :cond_36

    .line 619
    new-instance v0, Lcom/android/server/DropBoxManagerService$FileList;

    .end local v0           #tagFiles:Lcom/android/server/DropBoxManagerService$FileList;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    .line 620
    .restart local v0       #tagFiles:Lcom/android/server/DropBoxManagerService$FileList;
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    :cond_36
    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 623
    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_44

    .line 625
    .end local v0           #tagFiles:Lcom/android/server/DropBoxManagerService$FileList;
    :cond_42
    monitor-exit p0

    return-void

    .line 610
    :catchall_44
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized init()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 566
    monitor-enter p0

    :try_start_1
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    if-nez v7, :cond_48

    .line 567
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_33

    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_33

    .line 568
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t mkdir: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_30

    .line 566
    :catchall_30
    move-exception v7

    monitor-exit p0

    throw v7

    .line 571
    :cond_33
    :try_start_33
    new-instance v7, Landroid/os/StatFs;

    iget-object v8, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 572
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    iput v7, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_48
    .catchall {:try_start_33 .. :try_end_48} :catchall_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33 .. :try_end_48} :catch_6f

    .line 578
    :cond_48
    :try_start_48
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    if-nez v7, :cond_118

    .line 579
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 580
    .local v4, files:[Ljava/io/File;
    if-nez v4, :cond_8c

    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t list files: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 573
    .end local v4           #files:[Ljava/io/File;
    :catch_6f
    move-exception v7

    move-object v1, v7

    .line 574
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t statfs: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 582
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v4       #files:[Ljava/io/File;
    :cond_8c
    new-instance v7, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    iput-object v7, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 583
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    .line 586
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_9e
    if-ge v5, v6, :cond_118

    aget-object v3, v0, v5

    .line 587
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_cc

    .line 588
    const-string v7, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cleaning temp file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 586
    :goto_c9
    add-int/lit8 v5, v5, 0x1

    goto :goto_9e

    .line 593
    :cond_cc
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget v7, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct {v2, v3, v7}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    .line 594
    .local v2, entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v7, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v7, :cond_f0

    .line 595
    const-string v7, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c9

    .line 597
    :cond_f0
    iget-wide v7, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_114

    .line 598
    const-string v7, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid filename: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_c9

    .line 603
    :cond_114
    invoke-direct {p0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_117
    .catchall {:try_start_48 .. :try_end_117} :catchall_30

    goto :goto_c9

    .line 606
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #files:[Ljava/io/File;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_118
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized trimToFit()J
    .registers 29

    .prologue
    .line 677
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v24, "dropbox_age_seconds"

    const v25, 0x3f480

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 679
    .local v3, ageSeconds:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v24, "dropbox_max_files"

    const/16 v25, 0x3e8

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 681
    .local v10, maxFiles:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move v0, v3

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    sub-long v5, v23, v25

    .line 682
    .local v5, cutoffMillis:J
    :cond_2e
    :goto_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_70

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 684
    .local v8, entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object v0, v8

    iget-wide v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-wide/from16 v23, v0

    cmp-long v23, v23, v5

    if-lez v23, :cond_1ab

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeSet;->size()I

    move-result v23

    move/from16 v0, v23

    move v1, v10

    if-ge v0, v1, :cond_1ab

    .line 697
    .end local v8           #entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_70
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    .line 698
    .local v21, uptimeMillis:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x1388

    add-long v23, v23, v25

    cmp-long v23, v21, v23

    if-lez v23, :cond_103

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v24, "dropbox_quota_percent"

    const/16 v25, 0xa

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 701
    .local v14, quotaPercent:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v24, "dropbox_reserve_percent"

    const/16 v25, 0xa

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 703
    .local v15, reservePercent:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v24, "dropbox_quota_kb"

    const/16 v25, 0x1400

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 706
    .local v13, quotaKb:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    .line 708
    .local v4, available:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/StatFs;->getBlockCount()I

    move-result v23

    mul-int v23, v23, v15

    div-int/lit8 v23, v23, 0x64

    sub-int v12, v4, v23

    .line 709
    .local v12, nonreserved:I
    move v0, v13

    mul-int/lit16 v0, v0, 0x400

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v24, v0

    div-int v11, v23, v24

    .line 710
    .local v11, maximum:I
    const/16 v23, 0x0

    mul-int v24, v12, v14

    div-int/lit8 v24, v24, 0x64

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    move v0, v11

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 711
    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 728
    .end local v4           #available:I
    .end local v11           #maximum:I
    .end local v12           #nonreserved:I
    .end local v13           #quotaKb:I
    .end local v14           #quotaPercent:I
    .end local v15           #reservePercent:I
    :cond_103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_196

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v20, v0

    .local v20, unsqueezed:I
    const/16 v16, 0x0

    .line 731
    .local v16, squeezed:I
    new-instance v19, Ljava/util/TreeSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 732
    .local v19, tags:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_140
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_164

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/DropBoxManagerService$FileList;

    .line 733
    .local v17, tag:Lcom/android/server/DropBoxManagerService$FileList;
    if-lez v16, :cond_222

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v24, v0

    sub-int v24, v24, v20

    div-int v24, v24, v16

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_222

    .line 739
    .end local v17           #tag:Lcom/android/server/DropBoxManagerService$FileList;
    :cond_164
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v23, v0

    sub-int v23, v23, v20

    div-int v18, v23, v16

    .line 742
    .local v18, tagQuota:I
    invoke-virtual/range {v19 .. v19}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_172
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_196

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/DropBoxManagerService$FileList;

    .line 743
    .restart local v17       #tag:Lcom/android/server/DropBoxManagerService$FileList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_22e

    .line 759
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v16           #squeezed:I
    .end local v17           #tag:Lcom/android/server/DropBoxManagerService$FileList;
    .end local v18           #tagQuota:I
    .end local v19           #tags:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .end local v20           #unsqueezed:I
    :cond_196
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v24, v0
    :try_end_1a2
    .catchall {:try_start_1 .. :try_end_1a2} :catchall_21f

    mul-int v23, v23, v24

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    monitor-exit p0

    return-wide v23

    .line 686
    .end local v21           #uptimeMillis:J
    .restart local v8       #entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_1ab
    :try_start_1ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object v0, v8

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/DropBoxManagerService$FileList;

    .line 687
    .restart local v17       #tag:Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v17, :cond_1e0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1e0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v23, v0

    move-object v0, v8

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 688
    :cond_1e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_20e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v24, v0

    move-object v0, v8

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 689
    :cond_20e
    move-object v0, v8

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2e

    move-object v0, v8

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z
    :try_end_21d
    .catchall {:try_start_1ab .. :try_end_21d} :catchall_21f

    goto/16 :goto_2e

    .line 677
    .end local v3           #ageSeconds:I
    .end local v5           #cutoffMillis:J
    .end local v8           #entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v10           #maxFiles:I
    .end local v17           #tag:Lcom/android/server/DropBoxManagerService$FileList;
    :catchall_21f
    move-exception v23

    monitor-exit p0

    throw v23

    .line 736
    .restart local v3       #ageSeconds:I
    .restart local v5       #cutoffMillis:J
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v10       #maxFiles:I
    .restart local v16       #squeezed:I
    .restart local v17       #tag:Lcom/android/server/DropBoxManagerService$FileList;
    .restart local v19       #tags:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .restart local v20       #unsqueezed:I
    .restart local v21       #uptimeMillis:J
    :cond_222
    :try_start_222
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v23, v0

    sub-int v20, v20, v23

    .line 737
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_140

    .line 744
    .restart local v18       #tagQuota:I
    :cond_22e
    :goto_22e
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v18

    if-le v0, v1, :cond_172

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_172

    .line 745
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 746
    .restart local v8       #entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_274

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v23, v0

    move-object v0, v8

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 747
    :cond_274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2a2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v24, v0

    move-object v0, v8

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_2a2
    .catchall {:try_start_222 .. :try_end_2a2} :catchall_21f

    .line 750
    :cond_2a2
    :try_start_2a2
    move-object v0, v8

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2b1

    move-object v0, v8

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 751
    :cond_2b1
    new-instance v23, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v24, v0

    move-object v0, v8

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object v0, v8

    iget-wide v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-wide/from16 v26, v0

    invoke-direct/range {v23 .. v27}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_2cd
    .catchall {:try_start_2a2 .. :try_end_2cd} :catchall_21f
    .catch Ljava/io/IOException; {:try_start_2a2 .. :try_end_2cd} :catch_2cf

    goto/16 :goto_22e

    .line 752
    :catch_2cf
    move-exception v23

    move-object/from16 v7, v23

    .line 753
    .local v7, e:Ljava/io/IOException;
    :try_start_2d2
    const-string v23, "DropBoxManagerService"

    const-string v24, "Can\'t write tombstone file"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2de
    .catchall {:try_start_2d2 .. :try_end_2de} :catchall_21f

    goto/16 :goto_22e
.end method


# virtual methods
.method public add(Landroid/os/DropBoxManager$Entry;)V
    .registers 34
    .parameter "entry"

    .prologue
    .line 167
    const/16 v24, 0x0

    .line 168
    .local v24, temp:Ljava/io/File;
    const/16 v20, 0x0

    .line 169
    .local v20, output:Ljava/io/OutputStream;
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v23

    .line 171
    .local v23, tag:Ljava/lang/String;
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v8

    .line 172
    .local v8, flags:I
    and-int/lit8 v28, v8, 0x1

    if-eqz v28, :cond_48

    new-instance v28, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v28 .. v28}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v28
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1e4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_16} :catch_16

    .line 244
    .end local v8           #flags:I
    :catch_16
    move-exception v28

    move-object/from16 v7, v28

    .line 245
    .local v7, e:Ljava/io/IOException;
    :goto_19
    :try_start_19
    const-string v28, "DropBoxManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Can\'t write: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_19 .. :try_end_3a} :catchall_1e4

    .line 247
    if-eqz v20, :cond_3f

    :try_start_3c
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_1f5

    .line 248
    :cond_3f
    :goto_3f
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 249
    if-eqz v24, :cond_47

    .end local v7           #e:Ljava/io/IOException;
    :goto_44
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 251
    :cond_47
    return-void

    .line 174
    .restart local v8       #flags:I
    :cond_48
    :try_start_48
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V

    .line 175
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z
    :try_end_52
    .catchall {:try_start_48 .. :try_end_52} :catchall_1e4
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_52} :catch_16

    move-result v28

    if-nez v28, :cond_5e

    .line 247
    if-eqz v20, :cond_58

    :try_start_57
    throw v20
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_58} :catch_1f8

    .line 248
    :cond_58
    :goto_58
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 249
    if-eqz v24, :cond_47

    goto :goto_44

    .line 176
    :cond_5e
    :try_start_5e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v15

    .line 177
    .local v15, max:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 179
    .local v11, lastTrim:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object v4, v0

    .line 180
    .local v4, buffer:[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 185
    .local v10, input:Ljava/io/InputStream;
    const/16 v22, 0x0

    .line 186
    .local v22, read:I
    :goto_77
    move-object v0, v4

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_93

    .line 187
    move-object v0, v4

    array-length v0, v0

    move/from16 v28, v0

    sub-int v28, v28, v22

    move-object v0, v10

    move-object v1, v4

    move/from16 v2, v22

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v17

    .line 188
    .local v17, n:I
    if-gtz v17, :cond_1cf

    .line 195
    .end local v17           #n:I
    :cond_93
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "drop"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Thread;->getId()J

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ".tmp"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c5
    .catchall {:try_start_5e .. :try_end_c5} :catchall_1e4
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_c5} :catch_16

    .line 196
    .end local v24           #temp:Ljava/io/File;
    .local v25, temp:Ljava/io/File;
    :try_start_c5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move v5, v0

    .line 197
    .local v5, bufferSize:I
    const/16 v28, 0x1000

    move v0, v5

    move/from16 v1, v28

    if-le v0, v1, :cond_d3

    const/16 v5, 0x1000

    .line 198
    :cond_d3
    const/16 v28, 0x200

    move v0, v5

    move/from16 v1, v28

    if-ge v0, v1, :cond_dc

    const/16 v5, 0x200

    .line 199
    :cond_dc
    new-instance v9, Ljava/io/FileOutputStream;

    move-object v0, v9

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 200
    .local v9, foutput:Ljava/io/FileOutputStream;
    new-instance v21, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v21

    move-object v1, v9

    move v2, v5

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_ed
    .catchall {:try_start_c5 .. :try_end_ed} :catchall_1fd
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_ed} :catch_1d8

    .line 201
    .end local v20           #output:Ljava/io/OutputStream;
    .local v21, output:Ljava/io/OutputStream;
    :try_start_ed
    move-object v0, v4

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v22

    move/from16 v1, v28

    if-ne v0, v1, :cond_210

    and-int/lit8 v28, v8, 0x4

    if-nez v28, :cond_210

    .line 202
    new-instance v20, Ljava/util/zip/GZIPOutputStream;

    invoke-direct/range {v20 .. v21}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_100
    .catchall {:try_start_ed .. :try_end_100} :catchall_201
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_100} :catch_207

    .line 203
    .end local v21           #output:Ljava/io/OutputStream;
    .restart local v20       #output:Ljava/io/OutputStream;
    or-int/lit8 v8, v8, 0x4

    .line 207
    :cond_102
    :goto_102
    const/16 v28, 0x0

    :try_start_104
    move-object/from16 v0, v20

    move-object v1, v4

    move/from16 v2, v28

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 210
    .local v18, now:J
    sub-long v28, v18, v11

    const-wide/16 v30, 0x7530

    cmp-long v28, v28, v30

    if-lez v28, :cond_120

    .line 211
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v15

    .line 212
    move-wide/from16 v11, v18

    .line 215
    :cond_120
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    move-result v22

    .line 216
    if-gtz v22, :cond_1d3

    .line 217
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 218
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    .line 219
    const/16 v20, 0x0

    .line 224
    :goto_12e
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v13

    .line 225
    .local v13, len:J
    cmp-long v28, v13, v15

    if-lez v28, :cond_1df

    .line 226
    const-string v28, "DropBoxManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Dropping: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " ("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " > "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " bytes)"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z
    :try_end_176
    .catchall {:try_start_104 .. :try_end_176} :catchall_1fd
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_176} :catch_1d8

    .line 228
    const/16 v24, 0x0

    .line 233
    .end local v25           #temp:Ljava/io/File;
    .restart local v24       #temp:Ljava/io/File;
    :goto_178
    :try_start_178
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DropBoxManagerService;->createEntry(Ljava/io/File;Ljava/lang/String;I)J

    move-result-wide v26

    .line 234
    .local v26, time:J
    const/16 v24, 0x0

    .line 236
    new-instance v6, Landroid/content/Intent;

    const-string v28, "android.intent.action.DROPBOX_ENTRY_ADDED"

    move-object v0, v6

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v6, dropboxIntent:Landroid/content/Intent;
    const-string v28, "tag"

    move-object v0, v6

    move-object/from16 v1, v28

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v28, "time"

    move-object v0, v6

    move-object/from16 v1, v28

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 239
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    move/from16 v28, v0

    if-nez v28, :cond_1b3

    .line 240
    const/high16 v28, 0x4000

    move-object v0, v6

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 242
    :cond_1b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "android.permission.READ_LOGS"

    move-object/from16 v0, v28

    move-object v1, v6

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1c3
    .catchall {:try_start_178 .. :try_end_1c3} :catchall_1e4
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_1c3} :catch_16

    .line 247
    if-eqz v20, :cond_1c8

    :try_start_1c5
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_1c8
    .catch Ljava/io/IOException; {:try_start_1c5 .. :try_end_1c8} :catch_1fb

    .line 248
    :cond_1c8
    :goto_1c8
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 249
    if-eqz v24, :cond_47

    goto/16 :goto_44

    .line 189
    .end local v5           #bufferSize:I
    .end local v6           #dropboxIntent:Landroid/content/Intent;
    .end local v9           #foutput:Ljava/io/FileOutputStream;
    .end local v13           #len:J
    .end local v18           #now:J
    .end local v26           #time:J
    .restart local v17       #n:I
    :cond_1cf
    add-int v22, v22, v17

    .line 190
    goto/16 :goto_77

    .line 221
    .end local v17           #n:I
    .end local v24           #temp:Ljava/io/File;
    .restart local v5       #bufferSize:I
    .restart local v9       #foutput:Ljava/io/FileOutputStream;
    .restart local v18       #now:J
    .restart local v25       #temp:Ljava/io/File;
    :cond_1d3
    :try_start_1d3
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->flush()V
    :try_end_1d6
    .catchall {:try_start_1d3 .. :try_end_1d6} :catchall_1fd
    .catch Ljava/io/IOException; {:try_start_1d3 .. :try_end_1d6} :catch_1d8

    goto/16 :goto_12e

    .line 244
    .end local v5           #bufferSize:I
    .end local v9           #foutput:Ljava/io/FileOutputStream;
    .end local v18           #now:J
    :catch_1d8
    move-exception v28

    move-object/from16 v7, v28

    move-object/from16 v24, v25

    .end local v25           #temp:Ljava/io/File;
    .restart local v24       #temp:Ljava/io/File;
    goto/16 :goto_19

    .line 231
    .end local v24           #temp:Ljava/io/File;
    .restart local v5       #bufferSize:I
    .restart local v9       #foutput:Ljava/io/FileOutputStream;
    .restart local v13       #len:J
    .restart local v18       #now:J
    .restart local v25       #temp:Ljava/io/File;
    :cond_1df
    if-gtz v22, :cond_102

    move-object/from16 v24, v25

    .end local v25           #temp:Ljava/io/File;
    .restart local v24       #temp:Ljava/io/File;
    goto :goto_178

    .line 247
    .end local v4           #buffer:[B
    .end local v5           #bufferSize:I
    .end local v8           #flags:I
    .end local v9           #foutput:Ljava/io/FileOutputStream;
    .end local v10           #input:Ljava/io/InputStream;
    .end local v11           #lastTrim:J
    .end local v13           #len:J
    .end local v15           #max:J
    .end local v18           #now:J
    .end local v22           #read:I
    :catchall_1e4
    move-exception v28

    :goto_1e5
    if-eqz v20, :cond_1ea

    :try_start_1e7
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_1ea
    .catch Ljava/io/IOException; {:try_start_1e7 .. :try_end_1ea} :catch_1f3

    .line 248
    :cond_1ea
    :goto_1ea
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 249
    if-eqz v24, :cond_1f2

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 247
    :cond_1f2
    throw v28

    :catch_1f3
    move-exception v29

    goto :goto_1ea

    .restart local v7       #e:Ljava/io/IOException;
    :catch_1f5
    move-exception v28

    goto/16 :goto_3f

    .end local v7           #e:Ljava/io/IOException;
    .restart local v8       #flags:I
    :catch_1f8
    move-exception v28

    goto/16 :goto_58

    .restart local v4       #buffer:[B
    .restart local v5       #bufferSize:I
    .restart local v6       #dropboxIntent:Landroid/content/Intent;
    .restart local v9       #foutput:Ljava/io/FileOutputStream;
    .restart local v10       #input:Ljava/io/InputStream;
    .restart local v11       #lastTrim:J
    .restart local v13       #len:J
    .restart local v15       #max:J
    .restart local v18       #now:J
    .restart local v22       #read:I
    .restart local v26       #time:J
    :catch_1fb
    move-exception v28

    goto :goto_1c8

    .end local v5           #bufferSize:I
    .end local v6           #dropboxIntent:Landroid/content/Intent;
    .end local v9           #foutput:Ljava/io/FileOutputStream;
    .end local v13           #len:J
    .end local v18           #now:J
    .end local v24           #temp:Ljava/io/File;
    .end local v26           #time:J
    .restart local v25       #temp:Ljava/io/File;
    :catchall_1fd
    move-exception v28

    move-object/from16 v24, v25

    .end local v25           #temp:Ljava/io/File;
    .restart local v24       #temp:Ljava/io/File;
    goto :goto_1e5

    .end local v20           #output:Ljava/io/OutputStream;
    .end local v24           #temp:Ljava/io/File;
    .restart local v5       #bufferSize:I
    .restart local v9       #foutput:Ljava/io/FileOutputStream;
    .restart local v21       #output:Ljava/io/OutputStream;
    .restart local v25       #temp:Ljava/io/File;
    :catchall_201
    move-exception v28

    move-object/from16 v20, v21

    .end local v21           #output:Ljava/io/OutputStream;
    .restart local v20       #output:Ljava/io/OutputStream;
    move-object/from16 v24, v25

    .end local v25           #temp:Ljava/io/File;
    .restart local v24       #temp:Ljava/io/File;
    goto :goto_1e5

    .line 244
    .end local v20           #output:Ljava/io/OutputStream;
    .end local v24           #temp:Ljava/io/File;
    .restart local v21       #output:Ljava/io/OutputStream;
    .restart local v25       #temp:Ljava/io/File;
    :catch_207
    move-exception v28

    move-object/from16 v7, v28

    move-object/from16 v20, v21

    .end local v21           #output:Ljava/io/OutputStream;
    .restart local v20       #output:Ljava/io/OutputStream;
    move-object/from16 v24, v25

    .end local v25           #temp:Ljava/io/File;
    .restart local v24       #temp:Ljava/io/File;
    goto/16 :goto_19

    .end local v20           #output:Ljava/io/OutputStream;
    .end local v24           #temp:Ljava/io/File;
    .restart local v21       #output:Ljava/io/OutputStream;
    .restart local v25       #temp:Ljava/io/File;
    :cond_210
    move-object/from16 v20, v21

    .end local v21           #output:Ljava/io/OutputStream;
    .restart local v20       #output:Ljava/io/OutputStream;
    goto/16 :goto_102
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 37
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 292
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_18

    .line 294
    const-string v5, "Permission Denial: Can\'t dump DropBoxManagerService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_77

    .line 422
    :goto_16
    monitor-exit p0

    return-void

    .line 299
    :cond_18
    :try_start_18
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_77
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_4e

    .line 308
    :try_start_1b
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .local v28, out:Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .local v16, doPrint:Z
    const/4 v15, 0x0

    .line 310
    .local v15, doFile:Z
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v29, searchArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v19, 0x0

    .local v19, i:I
    :goto_2a
    if-eqz p3, :cond_b8

    move-object/from16 v0, p3

    array-length v0, v0

    move v5, v0

    move/from16 v0, v19

    move v1, v5

    if-ge v0, v1, :cond_b8

    .line 312
    aget-object v5, p3, v19

    const-string v6, "-p"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    aget-object v5, p3, v19

    const-string v6, "--print"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 313
    :cond_49
    const/16 v16, 0x1

    .line 311
    :goto_4b
    add-int/lit8 v19, v19, 0x1

    goto :goto_2a

    .line 300
    .end local v15           #doFile:Z
    .end local v16           #doPrint:Z
    .end local v19           #i:I
    .end local v28           #out:Ljava/lang/StringBuilder;
    .end local v29           #searchArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_4e
    move-exception v17

    .line 301
    .local v17, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t initialize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    const-string v5, "DropBoxManagerService"

    const-string v6, "Can\'t init"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catchall {:try_start_1b .. :try_end_76} :catchall_77

    goto :goto_16

    .line 292
    .end local v17           #e:Ljava/io/IOException;
    :catchall_77
    move-exception v5

    monitor-exit p0

    throw v5

    .line 314
    .restart local v15       #doFile:Z
    .restart local v16       #doPrint:Z
    .restart local v19       #i:I
    .restart local v28       #out:Ljava/lang/StringBuilder;
    .restart local v29       #searchArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7a
    :try_start_7a
    aget-object v5, p3, v19

    const-string v6, "-f"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8e

    aget-object v5, p3, v19

    const-string v6, "--file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 315
    :cond_8e
    const/4 v15, 0x1

    goto :goto_4b

    .line 316
    :cond_90
    aget-object v5, p3, v19

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_af

    .line 317
    const-string v5, "Unknown argument: "

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p3, v19

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4b

    .line 319
    :cond_af
    aget-object v5, p3, v19

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 323
    :cond_b8
    const-string v5, "Drop box contents: "

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v6}, Ljava/util/TreeSet;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " entries\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_108

    .line 326
    const-string v5, "Searching for:"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_e7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_100

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .local v10, a:Ljava/lang/String;
    const-string v5, " "

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e7

    .line 328
    .end local v10           #a:Ljava/lang/String;
    :cond_100
    const-string v5, "\n"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .end local v20           #i$:Ljava/util/Iterator;
    :cond_108
    const/16 v27, 0x0

    .local v27, numFound:I
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 332
    .local v26, numArgs:I
    new-instance v31, Landroid/text/format/Time;

    invoke-direct/range {v31 .. v31}, Landroid/text/format/Time;-><init>()V

    .line 333
    .local v31, time:Landroid/text/format/Time;
    const-string v5, "\n"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20       #i$:Ljava/util/Iterator;
    :cond_126
    :goto_126
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_377

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 335
    .local v18, entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-wide v5, v0

    move-object/from16 v0, v31

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 336
    const-string v5, "%Y-%m-%d %H:%M:%S"

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 337
    .local v13, date:Ljava/lang/String;
    const/16 v23, 0x1

    .line 338
    .local v23, match:Z
    const/16 v19, 0x0

    :goto_14a
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_177

    if-eqz v23, :cond_177

    .line 339
    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 340
    .local v11, arg:Ljava/lang/String;
    invoke-virtual {v13, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16d

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_173

    :cond_16d
    const/4 v5, 0x1

    move/from16 v23, v5

    .line 338
    :goto_170
    add-int/lit8 v19, v19, 0x1

    goto :goto_14a

    .line 340
    :cond_173
    const/4 v5, 0x0

    move/from16 v23, v5

    goto :goto_170

    .line 342
    .end local v11           #arg:Ljava/lang/String;
    :cond_177
    if-eqz v23, :cond_126

    .line 344
    add-int/lit8 v27, v27, 0x1

    .line 345
    if-eqz v16, :cond_185

    const-string v5, "========================================\n"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    :cond_185
    move-object/from16 v0, v28

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object v6, v0

    if-nez v6, :cond_1af

    const-string v6, "(no tag)"

    :goto_19b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object v5, v0

    if-nez v5, :cond_1b5

    .line 348
    const-string v5, " (no file)\n"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_126

    .line 346
    :cond_1af
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object v6, v0

    goto :goto_19b

    .line 350
    :cond_1b5
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move v5, v0

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1c8

    .line 351
    const-string v5, " (contents lost)\n"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_126

    .line 354
    :cond_1c8
    const-string v5, " ("

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move v5, v0

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1e1

    const-string v5, "compressed "

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_1e1
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move v5, v0

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2a1

    const-string v5, "text"

    :goto_1ec
    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    const-string v5, ", "

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes)\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    if-nez v15, :cond_21a

    if-eqz v16, :cond_239

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move v5, v0

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_239

    .line 361
    :cond_21a
    if-nez v16, :cond_224

    const-string v5, "    "

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :cond_224
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_239
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move v5, v0
    :try_end_23e
    .catchall {:try_start_7a .. :try_end_23e} :catchall_77

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_295

    if-nez v16, :cond_246

    if-nez v15, :cond_295

    .line 366
    :cond_246
    const/4 v14, 0x0

    .line 367
    .local v14, dbe:Landroid/os/DropBoxManager$Entry;
    const/16 v21, 0x0

    .line 369
    .local v21, isr:Ljava/io/InputStreamReader;
    :try_start_249
    new-instance v4, Landroid/os/DropBoxManager$Entry;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-wide v6, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object v8, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move v9, v0

    invoke-direct/range {v4 .. v9}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_262
    .catchall {:try_start_249 .. :try_end_262} :catchall_36a
    .catch Ljava/io/IOException; {:try_start_249 .. :try_end_262} :catch_3af

    .line 372
    .end local v14           #dbe:Landroid/os/DropBoxManager$Entry;
    .local v4, dbe:Landroid/os/DropBoxManager$Entry;
    if-eqz v16, :cond_324

    .line 373
    :try_start_264
    new-instance v22, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_270
    .catchall {:try_start_264 .. :try_end_270} :catchall_3a9
    .catch Ljava/io/IOException; {:try_start_264 .. :try_end_270} :catch_361

    .line 374
    .end local v21           #isr:Ljava/io/InputStreamReader;
    .local v22, isr:Ljava/io/InputStreamReader;
    const/16 v5, 0x1000

    :try_start_272
    new-array v12, v5, [C

    .line 375
    .local v12, buf:[C
    const/16 v25, 0x0

    .line 377
    .local v25, newline:Z
    :cond_276
    :goto_276
    move-object/from16 v0, v22

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v24

    .line 378
    .local v24, n:I
    if-gtz v24, :cond_2a5

    .line 388
    if-nez v25, :cond_289

    const-string v5, "\n"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_289
    .catchall {:try_start_272 .. :try_end_289} :catchall_3ab
    .catch Ljava/io/IOException; {:try_start_272 .. :try_end_289} :catch_2d5

    :cond_289
    move-object/from16 v21, v22

    .line 400
    .end local v12           #buf:[C
    .end local v22           #isr:Ljava/io/InputStreamReader;
    .end local v24           #n:I
    .end local v25           #newline:Z
    .restart local v21       #isr:Ljava/io/InputStreamReader;
    :goto_28b
    if-eqz v4, :cond_290

    :try_start_28d
    invoke-virtual {v4}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_290
    .catchall {:try_start_28d .. :try_end_290} :catchall_77

    .line 401
    :cond_290
    if-eqz v21, :cond_295

    .line 403
    :try_start_292
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStreamReader;->close()V
    :try_end_295
    .catchall {:try_start_292 .. :try_end_295} :catchall_77
    .catch Ljava/io/IOException; {:try_start_292 .. :try_end_295} :catch_31d

    .line 410
    .end local v4           #dbe:Landroid/os/DropBoxManager$Entry;
    .end local v21           #isr:Ljava/io/InputStreamReader;
    :cond_295
    :goto_295
    if-eqz v16, :cond_126

    :try_start_297
    const-string v5, "\n"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_126

    .line 356
    :cond_2a1
    const-string v5, "data"
    :try_end_2a3
    .catchall {:try_start_297 .. :try_end_2a3} :catchall_77

    goto/16 :goto_1ec

    .line 379
    .restart local v4       #dbe:Landroid/os/DropBoxManager$Entry;
    .restart local v12       #buf:[C
    .restart local v22       #isr:Ljava/io/InputStreamReader;
    .restart local v24       #n:I
    .restart local v25       #newline:Z
    :cond_2a5
    const/4 v5, 0x0

    :try_start_2a6
    move-object/from16 v0, v28

    move-object v1, v12

    move v2, v5

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 380
    const/4 v5, 0x1

    sub-int v5, v24, v5

    aget-char v5, v12, v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_320

    const/4 v5, 0x1

    move/from16 v25, v5

    .line 383
    :goto_2bb
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/high16 v6, 0x1

    if-le v5, v6, :cond_276

    .line 384
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 385
    const/4 v5, 0x0

    move-object/from16 v0, v28

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_2d4
    .catchall {:try_start_2a6 .. :try_end_2d4} :catchall_3ab
    .catch Ljava/io/IOException; {:try_start_2a6 .. :try_end_2d4} :catch_2d5

    goto :goto_276

    .line 396
    .end local v12           #buf:[C
    .end local v24           #n:I
    .end local v25           #newline:Z
    :catch_2d5
    move-exception v5

    move-object/from16 v17, v5

    move-object/from16 v21, v22

    .line 397
    .end local v22           #isr:Ljava/io/InputStreamReader;
    .restart local v17       #e:Ljava/io/IOException;
    .restart local v21       #isr:Ljava/io/InputStreamReader;
    :goto_2da
    :try_start_2da
    const-string v5, "*** "

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string v5, "DropBoxManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t read: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_311
    .catchall {:try_start_2da .. :try_end_311} :catchall_3a9

    .line 400
    if-eqz v4, :cond_316

    :try_start_313
    invoke-virtual {v4}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_316
    .catchall {:try_start_313 .. :try_end_316} :catchall_77

    .line 401
    :cond_316
    if-eqz v21, :cond_295

    .line 403
    :try_start_318
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStreamReader;->close()V
    :try_end_31b
    .catchall {:try_start_318 .. :try_end_31b} :catchall_77
    .catch Ljava/io/IOException; {:try_start_318 .. :try_end_31b} :catch_31d

    goto/16 :goto_295

    .line 404
    .end local v17           #e:Ljava/io/IOException;
    :catch_31d
    move-exception v5

    goto/16 :goto_295

    .line 380
    .end local v21           #isr:Ljava/io/InputStreamReader;
    .restart local v12       #buf:[C
    .restart local v22       #isr:Ljava/io/InputStreamReader;
    .restart local v24       #n:I
    .restart local v25       #newline:Z
    :cond_320
    const/4 v5, 0x0

    move/from16 v25, v5

    goto :goto_2bb

    .line 390
    .end local v12           #buf:[C
    .end local v22           #isr:Ljava/io/InputStreamReader;
    .end local v24           #n:I
    .end local v25           #newline:Z
    .restart local v21       #isr:Ljava/io/InputStreamReader;
    :cond_324
    const/16 v5, 0x46

    :try_start_326
    invoke-virtual {v4, v5}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v30

    .line 391
    .local v30, text:Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x46

    if-ne v5, v6, :cond_366

    const/4 v5, 0x1

    move/from16 v32, v5

    .line 392
    .local v32, truncated:Z
    :goto_335
    const-string v5, "    "

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    const/16 v8, 0x2f

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    if-eqz v32, :cond_357

    const-string v5, " ..."

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    :cond_357
    const-string v5, "\n"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_35f
    .catchall {:try_start_326 .. :try_end_35f} :catchall_3a9
    .catch Ljava/io/IOException; {:try_start_326 .. :try_end_35f} :catch_361

    goto/16 :goto_28b

    .line 396
    .end local v30           #text:Ljava/lang/String;
    .end local v32           #truncated:Z
    :catch_361
    move-exception v5

    move-object/from16 v17, v5

    goto/16 :goto_2da

    .line 391
    .restart local v30       #text:Ljava/lang/String;
    :cond_366
    const/4 v5, 0x0

    move/from16 v32, v5

    goto :goto_335

    .line 400
    .end local v4           #dbe:Landroid/os/DropBoxManager$Entry;
    .end local v30           #text:Ljava/lang/String;
    .restart local v14       #dbe:Landroid/os/DropBoxManager$Entry;
    :catchall_36a
    move-exception v5

    move-object v4, v14

    .end local v14           #dbe:Landroid/os/DropBoxManager$Entry;
    .restart local v4       #dbe:Landroid/os/DropBoxManager$Entry;
    :goto_36c
    if-eqz v4, :cond_371

    :try_start_36e
    invoke-virtual {v4}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_371
    .catchall {:try_start_36e .. :try_end_371} :catchall_77

    .line 401
    :cond_371
    if-eqz v21, :cond_376

    .line 403
    :try_start_373
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStreamReader;->close()V
    :try_end_376
    .catchall {:try_start_373 .. :try_end_376} :catchall_77
    .catch Ljava/io/IOException; {:try_start_373 .. :try_end_376} :catch_3a7

    .line 400
    :cond_376
    :goto_376
    :try_start_376
    throw v5

    .line 413
    .end local v4           #dbe:Landroid/os/DropBoxManager$Entry;
    .end local v13           #date:Ljava/lang/String;
    .end local v18           #entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v21           #isr:Ljava/io/InputStreamReader;
    .end local v23           #match:Z
    :cond_377
    if-nez v27, :cond_381

    const-string v5, "(No entries found.)\n"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_381
    if-eqz p3, :cond_389

    move-object/from16 v0, p3

    array-length v0, v0

    move v5, v0

    if-nez v5, :cond_39b

    .line 416
    :cond_389
    if-nez v16, :cond_393

    const-string v5, "\n"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_393
    const-string v5, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :cond_39b
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_3a5
    .catchall {:try_start_376 .. :try_end_3a5} :catchall_77

    goto/16 :goto_16

    .line 404
    .restart local v4       #dbe:Landroid/os/DropBoxManager$Entry;
    .restart local v13       #date:Ljava/lang/String;
    .restart local v18       #entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    .restart local v21       #isr:Ljava/io/InputStreamReader;
    .restart local v23       #match:Z
    :catch_3a7
    move-exception v6

    goto :goto_376

    .line 400
    :catchall_3a9
    move-exception v5

    goto :goto_36c

    .end local v21           #isr:Ljava/io/InputStreamReader;
    .restart local v22       #isr:Ljava/io/InputStreamReader;
    :catchall_3ab
    move-exception v5

    move-object/from16 v21, v22

    .end local v22           #isr:Ljava/io/InputStreamReader;
    .restart local v21       #isr:Ljava/io/InputStreamReader;
    goto :goto_36c

    .line 396
    .end local v4           #dbe:Landroid/os/DropBoxManager$Entry;
    .restart local v14       #dbe:Landroid/os/DropBoxManager$Entry;
    :catch_3af
    move-exception v5

    move-object/from16 v17, v5

    move-object v4, v14

    .end local v14           #dbe:Landroid/os/DropBoxManager$Entry;
    .restart local v4       #dbe:Landroid/os/DropBoxManager$Entry;
    goto/16 :goto_2da
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .registers 15
    .parameter "tag"
    .parameter "millis"

    .prologue
    const/4 v10, 0x0

    .line 259
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_LOGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    .line 261
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "READ_LOGS permission required"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_14

    .line 259
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    .line 265
    :cond_17
    :try_start_17
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_14
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_24

    .line 271
    if-nez p1, :cond_2e

    :try_start_1c
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_14

    move-object v9, v0

    .line 272
    .local v9, list:Lcom/android/server/DropBoxManagerService$FileList;
    :goto_1f
    if-nez v9, :cond_38

    move-object v0, v10

    .line 288
    .end local v9           #list:Lcom/android/server/DropBoxManagerService$FileList;
    :goto_22
    monitor-exit p0

    return-object v0

    .line 266
    :catch_24
    move-exception v6

    .line 267
    .local v6, e:Ljava/io/IOException;
    :try_start_25
    const-string v0, "DropBoxManagerService"

    const-string v1, "Can\'t init"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v10

    .line 268
    goto :goto_22

    .line 271
    .end local v6           #e:Ljava/io/IOException;
    :cond_2e
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    move-object v9, v0

    goto :goto_1f

    .line 274
    .restart local v9       #list:Lcom/android/server/DropBoxManagerService$FileList;
    :cond_38
    iget-object v0, v9, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v1, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    invoke-direct {v1, v2, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_4a
    :goto_4a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 275
    .local v7, entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v0, :cond_4a

    .line 276
    iget v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6a

    .line 277
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v1, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v1, v2, v3}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_69
    .catchall {:try_start_25 .. :try_end_69} :catchall_14

    goto :goto_22

    .line 280
    :cond_6a
    :try_start_6a
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v1, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget-object v4, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    iget v5, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_77
    .catchall {:try_start_6a .. :try_end_77} :catchall_14
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_77} :catch_78

    goto :goto_22

    .line 282
    :catch_78
    move-exception v0

    move-object v6, v0

    .line 283
    .restart local v6       #e:Ljava/io/IOException;
    :try_start_7a
    const-string v0, "DropBoxManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t read: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_94
    .catchall {:try_start_7a .. :try_end_94} :catchall_14

    goto :goto_4a

    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_95
    move-object v0, v10

    .line 288
    goto :goto_22
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .registers 6
    .parameter "tag"

    .prologue
    .line 254
    const-string v0, "disabled"

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dropbox:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    return-void
.end method
