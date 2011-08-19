.class public Lcom/nuance/xt9/input/AlphaInput;
.super Lcom/nuance/xt9/input/Input;
.source "AlphaInput.java"


# static fields
.field public static final LOCKED:I = 0x2

.field public static final MAXWORDLEN:I = 0x40

.field public static final MAXWORDLIST:I = 0x20

.field public static final SHIFTED:I = 0x1

.field public static final UNSHIFTED:I = 0x0

.field private static final WORDCOMPLETIONLEN_INDEX:I = 0x1

.field private static final WORDLEN_INDEX:I = 0x0

.field private static final WORDSUBSTITUTIONLEN_INDEX:I = 0x2

.field private static mInstance:Lcom/nuance/xt9/input/AlphaInput;

.field private static mRefCount:I


# instance fields
.field private mContext:I

.field private mDatabaseConfigFile:Ljava/lang/String;

.field private final mSubsLenResults:[I

.field private final mWordBuffer:[C

.field private final mWordLenResutls:[I

.field private final mWordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mWordPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mWordSubBuffer:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/xt9/input/AlphaInput;->mInstance:Lcom/nuance/xt9/input/AlphaInput;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "databaseConfigFile"

    .prologue
    const/16 v2, 0x40

    const/4 v1, 0x3

    .line 41
    invoke-direct {p0}, Lcom/nuance/xt9/input/Input;-><init>()V

    .line 29
    new-array v0, v2, [C

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordBuffer:[C

    .line 30
    new-array v0, v2, [C

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordSubBuffer:[C

    .line 31
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordLenResutls:[I

    .line 32
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mSubsLenResults:[I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordList:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordPool:Ljava/util/List;

    .line 44
    iput-object p1, p0, Lcom/nuance/xt9/input/AlphaInput;->mDatabaseConfigFile:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lcom/nuance/xt9/input/AlphaInput;
    .locals 2
    .parameter "databaseConfigFile"

    .prologue
    .line 48
    const-class v0, Lcom/nuance/xt9/input/AlphaInput;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/nuance/xt9/input/AlphaInput;->mInstance:Lcom/nuance/xt9/input/AlphaInput;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/nuance/xt9/input/AlphaInput;

    invoke-direct {v1, p0}, Lcom/nuance/xt9/input/AlphaInput;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/nuance/xt9/input/AlphaInput;->mInstance:Lcom/nuance/xt9/input/AlphaInput;

    .line 52
    :cond_0
    sget v1, Lcom/nuance/xt9/input/AlphaInput;->mRefCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/nuance/xt9/input/AlphaInput;->mRefCount:I

    .line 56
    sget-object v1, Lcom/nuance/xt9/input/AlphaInput;->mInstance:Lcom/nuance/xt9/input/AlphaInput;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private recycleWordPool()V
    .locals 5

    .prologue
    .line 554
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordPool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 555
    .local v2, wordPoolSize:I
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 557
    .local v1, wordListSize:I
    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    if-lez v1, :cond_1

    .line 558
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordList:Ljava/util/List;

    const/4 v4, 0x1

    sub-int v4, v1, v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 559
    .local v0, collect:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 560
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordPool:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    add-int/lit8 v2, v2, 0x1

    .line 563
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 564
    goto :goto_0

    .line 565
    .end local v0           #collect:Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 566
    return-void
.end method


# virtual methods
.method public addExplicit([CII)Z
    .locals 1
    .parameter "charBuffer"
    .parameter "len"
    .parameter "shiftState"

    .prologue
    .line 246
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0, p1, p2, p3}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_addExplicit(I[CII)Z

    move-result v0

    return v0
.end method

.method public addWordToUserDictionary([CI)Z
    .locals 1
    .parameter "word"
    .parameter "wordLen"

    .prologue
    .line 309
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0, p1, p2}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_addWordToUserDictionary(I[CI)Z

    move-result v0

    return v0
.end method

.method public asdbAdd(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "word"
    .parameter "subs"

    .prologue
    .line 485
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInput;->create()Z

    .line 488
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_asdb_add(I[CI[CI)Z

    move-result v0

    return v0
.end method

.method public asdbCount()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInput;->create()Z

    .line 541
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_asdb_count(I)I

    move-result v0

    return v0
.end method

.method public asdbDelete(Ljava/lang/String;)Z
    .locals 3
    .parameter "word"

    .prologue
    .line 493
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInput;->create()Z

    .line 497
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_asdb_delete(I[CI)Z

    move-result v0

    return v0
.end method

.method public asdbFind(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "word"
    .parameter "subs"

    .prologue
    .line 501
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInput;->create()Z

    .line 505
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_asdb_find(I[CI[CI)Z

    move-result v0

    return v0
.end method

.method public asdbGetNext(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z
    .locals 7
    .parameter "word"
    .parameter "subs"

    .prologue
    const/4 v6, 0x0

    .line 510
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInput;->create()Z

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordLenResutls:[I

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    aput v1, v0, v6

    .line 515
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mSubsLenResults:[I

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    aput v1, v0, v6

    .line 517
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordBuffer:[C

    invoke-virtual {p1, v6, v0, v1, v6}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 521
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordSubBuffer:[C

    invoke-virtual {p2, v6, v0, v1, v6}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 525
    :cond_2
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 526
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 527
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordBuffer:[C

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordLenResutls:[I

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordSubBuffer:[C

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInput;->mSubsLenResults:[I

    const/16 v5, 0x40

    invoke-static/range {v0 .. v5}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_asdb_getNext(I[C[I[C[II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 529
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordBuffer:[C

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordLenResutls:[I

    aget v1, v1, v6

    invoke-virtual {p1, v0, v6, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 530
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordSubBuffer:[C

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInput;->mSubsLenResults:[I

    aget v1, v1, v6

    invoke-virtual {p2, v0, v6, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 533
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    move v0, v6

    goto :goto_0
.end method

.method public asdbReset()V
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInput;->create()Z

    .line 549
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_asdb_reset(I)V

    .line 550
    return-void
.end method

.method public breakContext()V
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_breakContext(I)V

    .line 329
    return-void
.end method

.method public buildSelectionList()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_buildSelectionList(I)I

    move-result v0

    return v0
.end method

.method public clearAllKeys()Z
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_clearAllKeys(I)Z

    move-result v0

    return v0
.end method

.method public clearKey()Z
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_clearKey(I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized create()Z
    .locals 3

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 64
    const-string v0, "TEST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create() CREATE new isntance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nuance/xt9/input/AlphaInput;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mDatabaseConfigFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_create(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    .line 67
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroy()V
    .locals 3

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    if-eqz v0, :cond_0

    sget v0, Lcom/nuance/xt9/input/AlphaInput;->mRefCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lcom/nuance/xt9/input/AlphaInput;->mRefCount:I

    if-nez v0, :cond_0

    .line 76
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_destroy(I)V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/xt9/input/AlphaInput;->mInstance:Lcom/nuance/xt9/input/AlphaInput;

    .line 80
    const-string v0, "TEST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create() DESTROY isntance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nuance/xt9/input/AlphaInput;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mDatabaseConfigFile:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 570
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 571
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_finish(I)V

    .line 97
    return-void
.end method

.method public getDefaultWordIndex()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_getDefaultWordIndex(I)I

    move-result v0

    return v0
.end method

.method public getExactType(Ljava/lang/StringBuilder;)V
    .locals 5
    .parameter "exactBuffer"

    .prologue
    const/4 v4, 0x0

    .line 341
    if-nez p1, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 348
    iget v1, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordBuffer:[C

    const/16 v3, 0x40

    invoke-static {v1, v2, v3}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_getExactType(I[CI)I

    move-result v0

    .local v0, len:I
    if-lez v0, :cond_0

    .line 349
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordBuffer:[C

    invoke-virtual {p1, v1, v4, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getInlineText(Ljava/lang/StringBuilder;)V
    .locals 5
    .parameter "inlineBuffer"

    .prologue
    const/4 v4, 0x0

    .line 359
    if-nez p1, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 366
    iget v1, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordBuffer:[C

    const/16 v3, 0x40

    invoke-static {v1, v2, v3}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_getInlineText(I[CI)I

    move-result v0

    .local v0, len:I
    if-lez v0, :cond_0

    .line 367
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordBuffer:[C

    invoke-virtual {p1, v1, v4, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getKeyCount()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_getKeyCount(I)I

    move-result v0

    return v0
.end method

.method public getKeyPositions(ILjava/util/ArrayList;)Z
    .locals 1
    .parameter "kdbId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0, p1, p2}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_getKeyPositions(IILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public getWord(I[C[CLcom/nuance/xt9/input/Int;Lcom/nuance/xt9/input/Int;Lcom/nuance/xt9/input/Int;)Z
    .locals 8
    .parameter "wordIndex"
    .parameter "word"
    .parameter "sub"
    .parameter "wordLen"
    .parameter "wordCompletionLen"
    .parameter "subLen"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 281
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordLenResutls:[I

    const/16 v5, 0x40

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_getWord(II[C[C[II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordLenResutls:[I

    aget v0, v0, v6

    invoke-virtual {p4, v0}, Lcom/nuance/xt9/input/Int;->setVal(I)I

    .line 283
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordLenResutls:[I

    aget v0, v0, v7

    invoke-virtual {p5, v0}, Lcom/nuance/xt9/input/Int;->setVal(I)I

    .line 284
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordLenResutls:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-virtual {p6, v0}, Lcom/nuance/xt9/input/Int;->setVal(I)I

    move v0, v7

    .line 288
    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0
.end method

.method public getWords(Landroid/text/SpannableStringBuilder;Lcom/nuance/xt9/input/Int;Z)Ljava/util/List;
    .locals 12
    .parameter "defaultWord"
    .parameter "defaultWordIndex"
    .parameter "isUDBSubstitutionField"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Lcom/nuance/xt9/input/Int;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 157
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaInput;->recycleWordPool()V

    .line 159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 160
    .local v6, timerStart:J
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInput;->buildSelectionList()I

    move-result v9

    .local v9, wordCount:I
    if-lez v9, :cond_3

    .line 164
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_getDefaultWordIndex(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/nuance/xt9/input/Int;->setVal(I)I

    .line 166
    const/4 v1, 0x0

    .local v1, wordIndex:I
    :goto_0
    if-ge v1, v9, :cond_3

    const/16 v0, 0x20

    if-ge v1, v0, :cond_3

    .line 167
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordBuffer:[C

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordSubBuffer:[C

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordLenResutls:[I

    const/16 v5, 0x40

    invoke-static/range {v0 .. v5}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_getWord(II[C[C[II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 170
    .local v10, wordPoolSize:I
    if-lez v10, :cond_2

    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordPool:Ljava/util/List;

    const/4 v2, 0x1

    sub-int v2, v10, v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    move-object v8, v0

    .line 174
    .local v8, word:Landroid/text/SpannableStringBuilder;
    :goto_1
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 175
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 189
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordLenResutls:[I

    aget v0, v0, v11

    if-lez v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordBuffer:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordLenResutls:[I

    aget v2, v2, v11

    invoke-virtual {v8, v0, v11, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 196
    invoke-virtual {p2}, Lcom/nuance/xt9/input/Int;->getVal()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 209
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 210
    invoke-virtual {p1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordList:Ljava/util/List;

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 166
    .end local v8           #word:Landroid/text/SpannableStringBuilder;
    .end local v10           #wordPoolSize:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .restart local v10       #wordPoolSize:I
    :cond_2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object v8, v0

    goto :goto_1

    .line 219
    .end local v1           #wordIndex:I
    .end local v10           #wordPoolSize:I
    :cond_3
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordList:Ljava/util/List;

    return-object v0
.end method

.method public initTrace(III)V
    .locals 1
    .parameter "kdbId"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 102
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0, p1, p2, p3}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_initTrace(IIII)V

    .line 103
    return-void
.end method

.method public isAutoSpaceBeforeTrace(ILjava/util/ArrayList;)I
    .locals 1
    .parameter "kdbId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, trace:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0, p1, p2}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_isAutoSpaceBeforeTrace(IILjava/util/List;)I

    move-result v0

    return v0
.end method

.method public isInlineKnown()Z
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_isInlineKnown(I)Z

    move-result v0

    return v0
.end method

.method public isSymbolLowerCase(C)Z
    .locals 1
    .parameter "symbol"

    .prologue
    .line 397
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0, p1}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_isLowerSymbol(IC)Z

    move-result v0

    return v0
.end method

.method public isSymbolUpperCase(C)Z
    .locals 1
    .parameter "symbol"

    .prologue
    .line 387
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0, p1}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_isUpperSymbol(IC)Z

    move-result v0

    return v0
.end method

.method public processKey(III)Z
    .locals 1
    .parameter "kdbId"
    .parameter "key"
    .parameter "shiftState"

    .prologue
    .line 144
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0, p1, p2, p3}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_processKey(IIII)Z

    move-result v0

    return v0
.end method

.method public processTap(IIIII)Z
    .locals 1
    .parameter "context"
    .parameter "kdbId"
    .parameter "TapX"
    .parameter "TapY"
    .parameter "shiftState"

    .prologue
    .line 234
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0, p2, p3, p4, p5}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_processTap(IIIII)Z

    move-result v0

    return v0
.end method

.method public processTrace(ILjava/util/ArrayList;I)Z
    .locals 1
    .parameter "kdbId"
    .parameter
    .parameter "shiftState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 150
    .local p2, trace:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0, p1, p2, p3}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_processTrace(IILjava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public recaptureWord(I[CI)Z
    .locals 1
    .parameter "kdbId"
    .parameter "charBuffer"
    .parameter "len"

    .prologue
    .line 321
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0, p1, p2, p3}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_recaptureWord(II[CI)Z

    move-result v0

    return v0
.end method

.method public setAttribute(II)Z
    .locals 1
    .parameter "id"
    .parameter "value"

    .prologue
    .line 139
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0, p1, p2}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_setAttribute(III)Z

    move-result v0

    return v0
.end method

.method public setContext([C)V
    .locals 2
    .parameter "wordContext"

    .prologue
    .line 332
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    array-length v1, p1

    invoke-static {v0, p1, v1}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_setContext(I[CI)V

    .line 333
    return-void
.end method

.method public setLanguage(I)Z
    .locals 1
    .parameter "languageID"

    .prologue
    .line 134
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0, p1}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_setLanguage(II)Z

    move-result v0

    return v0
.end method

.method public start()Z
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_start(I)Z

    move-result v0

    return v0
.end method

.method public toLowerSymbol(C)C
    .locals 1
    .parameter "symbol"

    .prologue
    .line 416
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0, p1}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_toLowerSymbol(IC)C

    move-result v0

    return v0
.end method

.method public toUpperSymbol(C)C
    .locals 1
    .parameter "symbol"

    .prologue
    .line 407
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0, p1}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_toUpperSymbol(IC)C

    move-result v0

    return v0
.end method

.method public udbAdd(Ljava/lang/String;)Z
    .locals 3
    .parameter "word"

    .prologue
    .line 424
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInput;->create()Z

    .line 427
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_udb_add(I[CI)Z

    move-result v0

    return v0
.end method

.method public udbCount()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInput;->create()Z

    .line 468
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_udb_count(I)I

    move-result v0

    return v0
.end method

.method public udbDelete(Ljava/lang/String;)Z
    .locals 3
    .parameter "word"

    .prologue
    .line 431
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInput;->create()Z

    .line 434
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_udb_delete(I[CI)Z

    move-result v0

    return v0
.end method

.method public udbFind(Ljava/lang/String;)Z
    .locals 3
    .parameter "word"

    .prologue
    .line 438
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInput;->create()Z

    .line 441
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_udb_find(I[CI)Z

    move-result v0

    return v0
.end method

.method public udbGetNext(Ljava/lang/StringBuilder;)Z
    .locals 5
    .parameter "word"

    .prologue
    const/4 v4, 0x0

    .line 445
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInput;->create()Z

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordLenResutls:[I

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    aput v1, v0, v4

    .line 450
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordBuffer:[C

    invoke-virtual {p1, v4, v0, v1, v4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 455
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 456
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordBuffer:[C

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordLenResutls:[I

    const/16 v3, 0x40

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_udb_getNext(I[C[II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordBuffer:[C

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInput;->mWordLenResutls:[I

    aget v1, v1, v4

    invoke-virtual {p1, v0, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 460
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    move v0, v4

    goto :goto_0
.end method

.method public udbRest()V
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaInput;->create()Z

    .line 478
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_udb_reset(I)V

    .line 479
    return-void
.end method

.method public wordSelected(I)V
    .locals 1
    .parameter "wordIndex"

    .prologue
    .line 299
    iget v0, p0, Lcom/nuance/xt9/input/AlphaInput;->mContext:I

    invoke-static {v0, p1}, Lcom/nuance/xt9/input/NativeAlphaInput;->xt9input_alpha_wordSelected(II)V

    .line 300
    return-void
.end method
