.class public Landroid/database/CursorWindow;
.super Landroid/database/sqlite/SQLiteClosable;
.source "CursorWindow.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/database/CursorWindow;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATS_TAG:Ljava/lang/String; = "CursorWindowStats"

.field private static final sCursorWindowSize:I

.field private static final sWindowToPidMap:Landroid/util/SparseIntArray;


# instance fields
.field private mStartPos:I

.field private nWindow:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    sput v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    .line 574
    new-instance v0, Landroid/database/CursorWindow$1;

    invoke-direct {v0}, Landroid/database/CursorWindow$1;-><init>()V

    sput-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 620
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .parameter "source"

    .prologue
    .line 598
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 599
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 600
    .local v0, nativeBinder:Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 601
    invoke-direct {p0, v0}, Landroid/database/CursorWindow;->native_init(Landroid/os/IBinder;)I

    move-result v1

    .line 602
    .local v1, rslt:I
    invoke-direct {p0, v1}, Landroid/database/CursorWindow;->printDebugMsgIfError(I)V

    .line 603
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/database/CursorWindow$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/database/CursorWindow;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 5
    .parameter "localWindow"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 55
    const/4 v1, 0x0

    iput v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 56
    sget v1, Landroid/database/CursorWindow;->sCursorWindowSize:I

    invoke-direct {p0, v1, p1}, Landroid/database/CursorWindow;->native_init(IZ)I

    move-result v0

    .line 57
    .local v0, rslt:I
    invoke-direct {p0, v0}, Landroid/database/CursorWindow;->printDebugMsgIfError(I)V

    .line 58
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget v2, p0, Landroid/database/CursorWindow;->nWindow:I

    invoke-direct {p0, v1, v2}, Landroid/database/CursorWindow;->recordNewWindow(II)V

    .line 59
    return-void
.end method

.method private native allocRow_native()Z
.end method

.method private native close_native()V
.end method

.method private native copyStringToBuffer_native(IIILandroid/database/CharArrayBuffer;)[C
.end method

.method private native freeLastRow_native()V
.end method

.method private native getBlob_native(II)[B
.end method

.method private native getDouble_native(II)D
.end method

.method private native getLong_native(II)J
.end method

.method private native getNumRows_native()I
.end method

.method private native getString_native(II)Ljava/lang/String;
.end method

.method private native getType_native(II)I
.end method

.method private native native_clear()V
.end method

.method private native native_getBinder()Landroid/os/IBinder;
.end method

.method private native native_init(IZ)I
.end method

.method private native native_init(Landroid/os/IBinder;)I
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Landroid/database/CursorWindow;
    .registers 2
    .parameter "p"

    .prologue
    .line 586
    sget-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/database/CursorWindow;

    return-object p0
.end method

.method private printDebugMsgIfError(I)V
    .registers 5
    .parameter "rslt"

    .prologue
    .line 62
    if-lez p1, :cond_2d

    .line 65
    new-instance v0, Landroid/database/CursorWindowAllocationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor Window allocation of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/database/CursorWindow;->sCursorWindowSize:I

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " kb failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/database/CursorWindow;->printStats()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/CursorWindowAllocationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_2d
    return-void
.end method

.method private printStats()Ljava/lang/String;
    .registers 16

    .prologue
    const/16 v14, 0x3d4

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    .local v0, buff:Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 643
    .local v3, myPid:I
    const/4 v10, 0x0

    .line 644
    .local v10, total:I
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    .line 645
    .local v7, pidCounts:Landroid/util/SparseIntArray;
    sget-object v12, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    monitor-enter v12

    .line 646
    :try_start_14
    sget-object v13, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    .line 647
    .local v9, size:I
    if-nez v9, :cond_21

    .line 649
    const-string v13, ""

    monitor-exit v12

    move-object v12, v13

    .line 672
    :goto_20
    return-object v12

    .line 651
    :cond_21
    const/4 v2, 0x0

    .local v2, indx:I
    :goto_22
    if-ge v2, v9, :cond_36

    .line 652
    sget-object v13, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    .line 653
    .local v6, pid:I
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    .line 654
    .local v11, value:I
    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v7, v6, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 651
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 656
    .end local v6           #pid:I
    .end local v11           #value:I
    :cond_36
    monitor-exit v12
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_6d

    .line 657
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 658
    .local v5, numPids:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3c
    if-ge v1, v5, :cond_8e

    .line 659
    const-string v12, " (# cursors opened by "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 661
    .restart local v6       #pid:I
    if-ne v6, v3, :cond_70

    .line 662
    const-string/jumbo v12, "this proc="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    :goto_4f
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 667
    .local v4, num:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    add-int/2addr v10, v4

    .line 658
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 656
    .end local v1           #i:I
    .end local v2           #indx:I
    .end local v4           #num:I
    .end local v5           #numPids:I
    .end local v6           #pid:I
    .end local v9           #size:I
    :catchall_6d
    move-exception v13

    :try_start_6e
    monitor-exit v12
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v13

    .line 664
    .restart local v1       #i:I
    .restart local v2       #indx:I
    .restart local v5       #numPids:I
    .restart local v6       #pid:I
    .restart local v9       #size:I
    :cond_70
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    .line 671
    .end local v6           #pid:I
    :cond_8e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-le v12, v14, :cond_b3

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v14}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    .line 672
    .local v8, s:Ljava/lang/String;
    :goto_9a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "# Open Cursors="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_20

    .line 671
    .end local v8           #s:Ljava/lang/String;
    :cond_b3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    goto :goto_9a
.end method

.method private native putBlob_native([BII)Z
.end method

.method private native putDouble_native(DII)Z
.end method

.method private native putLong_native(JII)Z
.end method

.method private native putNull_native(II)Z
.end method

.method private native putString_native(Ljava/lang/String;II)Z
.end method

.method private recordClosingOfWindow(I)V
    .registers 4
    .parameter "window"

    .prologue
    .line 632
    sget-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 633
    :try_start_3
    sget-object v1, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 635
    monitor-exit v0

    .line 639
    :goto_c
    return-void

    .line 637
    :cond_d
    sget-object v1, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 638
    monitor-exit v0

    goto :goto_c

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private recordNewWindow(II)V
    .registers 7
    .parameter "pid"
    .parameter "window"

    .prologue
    .line 623
    sget-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 624
    :try_start_3
    sget-object v1, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 625
    const-string v1, "CursorWindowStats"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 626
    const-string v1, "CursorWindowStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created a new Cursor. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/database/CursorWindow;->printStats()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_2d
    monitor-exit v0

    .line 629
    return-void

    .line 628
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private native setNumColumns_native(I)Z
.end method


# virtual methods
.method public allocRow()Z
    .registers 2

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 127
    :try_start_3
    invoke-direct {p0}, Landroid/database/CursorWindow;->allocRow_native()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b

    move-result v0

    .line 129
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_b
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 541
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 543
    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 544
    invoke-direct {p0}, Landroid/database/CursorWindow;->native_clear()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 546
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 548
    return-void

    .line 546
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public close()V
    .registers 1

    .prologue
    .line 557
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 558
    return-void
.end method

.method public copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V
    .registers 7
    .parameter "row"
    .parameter "col"
    .parameter "buffer"

    .prologue
    .line 404
    if-nez p3, :cond_a

    .line 405
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "CharArrayBuffer should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    :cond_a
    iget-object v1, p3, Landroid/database/CharArrayBuffer;->data:[C

    if-nez v1, :cond_14

    .line 408
    const/16 v1, 0x40

    new-array v1, v1, [C

    iput-object v1, p3, Landroid/database/CharArrayBuffer;->data:[C

    .line 410
    :cond_14
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 412
    :try_start_17
    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    iget-object v2, p3, Landroid/database/CharArrayBuffer;->data:[C

    array-length v2, v2

    invoke-direct {p0, v1, p2, v2, p3}, Landroid/database/CursorWindow;->copyStringToBuffer_native(IIILandroid/database/CharArrayBuffer;)[C

    move-result-object v0

    .line 414
    .local v0, newbuf:[C
    if-eqz v0, :cond_26

    .line 415
    iput-object v0, p3, Landroid/database/CharArrayBuffer;->data:[C
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_2a

    .line 418
    :cond_26
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 420
    return-void

    .line 418
    .end local v0           #newbuf:[C
    :catchall_2a
    move-exception v1

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v1
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 590
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .registers 2

    .prologue
    .line 564
    iget v0, p0, Landroid/database/CursorWindow;->nWindow:I

    if-nez v0, :cond_5

    .line 572
    :goto_4
    return-void

    .line 570
    :cond_5
    iget v0, p0, Landroid/database/CursorWindow;->nWindow:I

    invoke-direct {p0, v0}, Landroid/database/CursorWindow;->recordClosingOfWindow(I)V

    .line 571
    invoke-direct {p0}, Landroid/database/CursorWindow;->close_native()V

    goto :goto_4
.end method

.method public freeLastRow()V
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 141
    :try_start_3
    invoke-direct {p0}, Landroid/database/CursorWindow;->freeLastRow_native()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 143
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 145
    return-void

    .line 143
    :catchall_a
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getBlob(II)[B
    .registers 4
    .parameter "row"
    .parameter "col"

    .prologue
    .line 261
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 263
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->getBlob_native(II)[B
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    move-result-object v0

    .line 265
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return-object v0

    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getDouble(II)D
    .registers 5
    .parameter "row"
    .parameter "col"

    .prologue
    .line 464
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 466
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->getDouble_native(II)D
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    move-result-wide v0

    .line 468
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return-wide v0

    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getFloat(II)F
    .registers 5
    .parameter "row"
    .parameter "col"

    .prologue
    .line 527
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 529
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->getDouble_native(II)D
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_10

    move-result-wide v0

    double-to-float v0, v0

    .line 531
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_10
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getInt(II)I
    .registers 5
    .parameter "row"
    .parameter "col"

    .prologue
    .line 510
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 512
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->getLong_native(II)J
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_10

    move-result-wide v0

    long-to-int v0, v0

    .line 514
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_10
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getLong(II)J
    .registers 5
    .parameter "row"
    .parameter "col"

    .prologue
    .line 434
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 436
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->getLong_native(II)J
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    move-result-wide v0

    .line 438
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return-wide v0

    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getNumRows()I
    .registers 2

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 97
    :try_start_3
    invoke-direct {p0}, Landroid/database/CursorWindow;->getNumRows_native()I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b

    move-result v0

    .line 99
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_b
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getShort(II)S
    .registers 5
    .parameter "row"
    .parameter "col"

    .prologue
    .line 494
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 496
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->getLong_native(II)J
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_11

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    .line 498
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getStartPosition()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    return v0
.end method

.method public getString(II)Ljava/lang/String;
    .registers 4
    .parameter "row"
    .parameter "col"

    .prologue
    .line 370
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 372
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->getString_native(II)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    move-result-object v0

    .line 374
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return-object v0

    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getType(II)I
    .registers 4
    .parameter "row"
    .parameter "col"

    .prologue
    .line 298
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 300
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->getType_native(II)I
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    move-result v0

    .line 302
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isBlob(II)Z
    .registers 5
    .parameter "row"
    .parameter "col"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    .line 317
    .local v0, type:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    if-nez v0, :cond_b

    :cond_9
    const/4 v1, 0x1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isFloat(II)Z
    .registers 5
    .parameter "row"
    .parameter "col"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 343
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isLong(II)Z
    .registers 5
    .parameter "row"
    .parameter "col"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 330
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isNull(II)Z
    .registers 4
    .parameter "row"
    .parameter "col"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isString(II)Z
    .registers 5
    .parameter "row"
    .parameter "col"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    .line 357
    .local v0, type:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    if-nez v0, :cond_b

    :cond_9
    const/4 v1, 0x1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method protected onAllReferencesReleased()V
    .registers 2

    .prologue
    .line 616
    iget v0, p0, Landroid/database/CursorWindow;->nWindow:I

    invoke-direct {p0, v0}, Landroid/database/CursorWindow;->recordClosingOfWindow(I)V

    .line 617
    invoke-direct {p0}, Landroid/database/CursorWindow;->close_native()V

    .line 618
    return-void
.end method

.method public putBlob([BII)Z
    .registers 5
    .parameter "value"
    .parameter "row"
    .parameter "col"

    .prologue
    .line 157
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 159
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p2, v0

    invoke-direct {p0, p1, v0, p3}, Landroid/database/CursorWindow;->putBlob_native([BII)Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    move-result v0

    .line 161
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putDouble(DII)Z
    .registers 6
    .parameter "value"
    .parameter "row"
    .parameter "col"

    .prologue
    .line 212
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 214
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p3, v0

    invoke-direct {p0, p1, p2, v0, p4}, Landroid/database/CursorWindow;->putDouble_native(DII)Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    move-result v0

    .line 216
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putLong(JII)Z
    .registers 6
    .parameter "value"
    .parameter "row"
    .parameter "col"

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 195
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p3, v0

    invoke-direct {p0, p1, p2, v0, p4}, Landroid/database/CursorWindow;->putLong_native(JII)Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    move-result v0

    .line 197
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putNull(II)Z
    .registers 4
    .parameter "row"
    .parameter "col"

    .prologue
    .line 229
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 231
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->putNull_native(II)Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    move-result v0

    .line 233
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putString(Ljava/lang/String;II)Z
    .registers 5
    .parameter "value"
    .parameter "row"
    .parameter "col"

    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 177
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p2, v0

    invoke-direct {p0, p1, v0, p3}, Landroid/database/CursorWindow;->putString_native(Ljava/lang/String;II)Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    move-result v0

    .line 179
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public setNumColumns(I)Z
    .registers 3
    .parameter "columnNum"

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 112
    :try_start_3
    invoke-direct {p0, p1}, Landroid/database/CursorWindow;->setNumColumns_native(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b

    move-result v0

    .line 114
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_b
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public setStartPosition(I)V
    .registers 2
    .parameter "pos"

    .prologue
    .line 86
    iput p1, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 87
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 594
    invoke-direct {p0}, Landroid/database/CursorWindow;->native_getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 595
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    return-void
.end method
