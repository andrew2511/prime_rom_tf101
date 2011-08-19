.class public Lcom/nuance/xt9/input/ChineseInput;
.super Lcom/nuance/xt9/input/Input;
.source "ChineseInput.java"


# static fields
.field private static final COMPONENT_MARKER:C = '\u9fff'

.field private static final INTERNAL_DELIMITER:C = '\u001a'

.field private static final INTERNAL_SEGMENT_DELIMITER:C = '\u0019'

.field public static final MAXWORDLEN:I = 0x40

.field public static final MAXWORDLIST:I = 0x100

.field private static mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

.field private static mPhraseBuffer:[C

.field private static mPhraseLength:[I

.field private static mRefCount:I

.field private static mSpellBuffer:[C

.field private static mSpellLength:[I


# instance fields
.field private mActiveSpell:Ljava/lang/StringBuilder;

.field private mBPMFTones:[C

.field private mBopomofoSyllableDelimiter:C

.field private mCangjie:[C

.field private mChineseDelimiter:C

.field private mChineseSegmentDelimiter:C

.field private mCompForeground:Landroid/text/style/ForegroundColorSpan;

.field private mCompSimp:[C

.field private mCompTrad:[C

.field private mContext:Landroid/content/Context;

.field private mDatabaseConfigFile:Ljava/lang/String;

.field private mJNIContext:I

.field private mJianpin:[C

.field private mPrefixCount:I

.field private mScratchBuffer:[C

.field private mScratchInt:[I

.field private mSelectedForeground:Landroid/text/style/ForegroundColorSpan;

.field private mSpellCount:I

.field private mSpellForeground:Landroid/text/style/ForegroundColorSpan;

.field private mSpellList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSpellPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mStrokes:[C

.field mTextContext:Ljava/lang/String;

.field private mTones:[C

.field private mWordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mWordPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x40

    const/4 v1, 0x1

    .line 171
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/xt9/input/ChineseInput;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    .line 922
    new-array v0, v2, [C

    sput-object v0, Lcom/nuance/xt9/input/ChineseInput;->mPhraseBuffer:[C

    .line 923
    new-array v0, v2, [C

    sput-object v0, Lcom/nuance/xt9/input/ChineseInput;->mSpellBuffer:[C

    .line 924
    new-array v0, v1, [I

    sput-object v0, Lcom/nuance/xt9/input/ChineseInput;->mPhraseLength:[I

    .line 925
    new-array v0, v1, [I

    sput-object v0, Lcom/nuance/xt9/input/ChineseInput;->mSpellLength:[I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "databaseConfigFile"

    .prologue
    const/16 v2, 0x40

    const/4 v1, 0x0

    .line 187
    invoke-direct {p0}, Lcom/nuance/xt9/input/Input;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mWordList:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mWordPool:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellList:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellPool:Ljava/util/List;

    .line 81
    new-array v0, v2, [C

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchInt:[I

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    .line 152
    iput v1, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellCount:I

    .line 156
    iput v1, p0, Lcom/nuance/xt9/input/ChineseInput;->mPrefixCount:I

    .line 188
    iput-object p1, p0, Lcom/nuance/xt9/input/ChineseInput;->mDatabaseConfigFile:Ljava/lang/String;

    .line 189
    return-void
.end method

.method private cangjieToInternal(I)I
    .locals 2
    .parameter "c"

    .prologue
    .line 972
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInput;->mCangjie:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 973
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInput;->mCangjie:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 974
    add-int/lit8 v1, v0, 0x41

    .line 978
    :goto_1
    return v1

    .line 972
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, p1

    .line 978
    goto :goto_1
.end method

.method private componentToExternal(C)C
    .locals 4
    .parameter "c"

    .prologue
    const v1, 0xeeb8

    const v3, 0xef88

    .line 988
    if-gt v1, p1, :cond_0

    const v0, 0xef7f

    if-gt p1, v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mCompSimp:[C

    sub-int v1, p1, v1

    aget-char v0, v0, v1

    .line 995
    :goto_0
    return v0

    .line 991
    :cond_0
    if-gt v3, p1, :cond_1

    const v0, 0xf120

    if-gt p1, v0, :cond_1

    .line 992
    const-string v0, "ChineseInput"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInput;->mCompTrad:[C

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/Debug;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mCompTrad:[C

    sub-int v1, p1, v3

    aget-char v0, v0, v1

    goto :goto_0

    .line 995
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getActivePrefixIndex()I
    .locals 1

    .prologue
    .line 904
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_getActivePrefixIndex(I)I

    move-result v0

    return v0
.end method

.method private getActiveSpellIndexInternal()I
    .locals 1

    .prologue
    .line 850
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_getActiveSpellIndex(I)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lcom/nuance/xt9/input/ChineseInput;
    .locals 2
    .parameter "databaseConfigFile"

    .prologue
    .line 177
    const-class v0, Lcom/nuance/xt9/input/ChineseInput;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/nuance/xt9/input/ChineseInput;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-nez v1, :cond_0

    .line 178
    new-instance v1, Lcom/nuance/xt9/input/ChineseInput;

    invoke-direct {v1, p0}, Lcom/nuance/xt9/input/ChineseInput;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/nuance/xt9/input/ChineseInput;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    .line 180
    :cond_0
    sget v1, Lcom/nuance/xt9/input/ChineseInput;->mRefCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/nuance/xt9/input/ChineseInput;->mRefCount:I

    .line 181
    sget-object v1, Lcom/nuance/xt9/input/ChineseInput;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getPrefix(ILjava/lang/StringBuilder;)Z
    .locals 6
    .parameter "index"
    .parameter "prefix"

    .prologue
    const/4 v5, 0x0

    .line 882
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 884
    iget v1, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchInt:[I

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    array-length v4, v4

    invoke-static {v1, p1, v2, v3, v4}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_getPrefix(II[C[II)Z

    move-result v0

    .line 886
    .local v0, success:Z
    if-eqz v0, :cond_0

    .line 887
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchInt:[I

    aget v2, v2, v5

    invoke-virtual {p2, v1, v5, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 888
    iget v1, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-static {v1}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_getInputMode(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 889
    invoke-direct {p0, p2}, Lcom/nuance/xt9/input/ChineseInput;->normalizeBPMF(Ljava/lang/StringBuilder;)V

    .line 893
    :cond_0
    return v0
.end method

.method private getPrefixCount()I
    .locals 1

    .prologue
    .line 861
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_getPrefixCount(I)I

    move-result v0

    return v0
.end method

.method private getSpellInternal(ILjava/lang/StringBuilder;)Z
    .locals 12
    .parameter "index"
    .parameter "spell"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/16 v9, 0x1b

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 783
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 785
    iget v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchInt:[I

    iget-object v6, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    array-length v6, v6

    invoke-static {v3, p1, v4, v5, v6}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_getSpell(II[C[II)Z

    move-result v2

    .line 787
    .local v2, success:Z
    iget v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-static {v3}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_getInputMode(I)I

    move-result v1

    .line 790
    .local v1, mode:I
    if-eqz v2, :cond_1

    .line 791
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchInt:[I

    aget v3, v3, v7

    if-ne v3, v10, :cond_2

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    aget-char v3, v3, v7

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    aget-char v3, v3, v8

    if-ne v3, v11, :cond_2

    .line 792
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mJianpin:[C

    aget-char v4, v4, v7

    aput-char v4, v3, v7

    .line 793
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mJianpin:[C

    aget-char v4, v4, v8

    aput-char v4, v3, v8

    .line 814
    :cond_0
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchInt:[I

    aget v4, v4, v7

    invoke-virtual {p2, v3, v7, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 816
    if-ne v8, v1, :cond_7

    .line 817
    invoke-direct {p0, p2}, Lcom/nuance/xt9/input/ChineseInput;->normalizeBPMF(Ljava/lang/StringBuilder;)V

    .line 827
    :cond_1
    :goto_0
    return v2

    .line 796
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchInt:[I

    aget v3, v3, v7

    if-ge v0, v3, :cond_0

    .line 797
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    aget-char v3, v3, v0

    const/16 v4, 0x19

    if-ne v3, v4, :cond_4

    .line 798
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    iget-char v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mChineseSegmentDelimiter:C

    aput-char v4, v3, v0

    .line 796
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 800
    :cond_4
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    aget-char v3, v3, v0

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_5

    .line 801
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    iget-char v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mChineseDelimiter:C

    aput-char v4, v3, v0

    goto :goto_2

    .line 803
    :cond_5
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    aget-char v3, v3, v0

    if-lt v3, v9, :cond_3

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    aget-char v3, v3, v0

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_3

    .line 805
    if-ne v8, v1, :cond_6

    .line 806
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mBPMFTones:[C

    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    aget-char v5, v5, v0

    sub-int/2addr v5, v9

    aget-char v4, v4, v5

    aput-char v4, v3, v0

    goto :goto_2

    .line 808
    :cond_6
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mTones:[C

    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    aget-char v5, v5, v0

    sub-int/2addr v5, v9

    aget-char v4, v4, v5

    aput-char v4, v3, v0

    goto :goto_2

    .line 819
    .end local v0           #i:I
    :cond_7
    if-ne v10, v1, :cond_8

    .line 820
    invoke-direct {p0, p2}, Lcom/nuance/xt9/input/ChineseInput;->normalizeStroke(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 822
    :cond_8
    if-eq v11, v1, :cond_9

    const/4 v3, 0x4

    if-ne v3, v1, :cond_1

    .line 823
    :cond_9
    invoke-direct {p0, p2}, Lcom/nuance/xt9/input/ChineseInput;->normalizeCangjie(Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method private getSpellPrefix()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x40

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 637
    const/16 v1, 0x100

    .line 638
    .local v1, maxCount:I
    iput v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellCount:I

    .line 639
    iput v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mPrefixCount:I

    .line 640
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 641
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellPool:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 643
    .local v3, spellPoolSize:I
    if-lez v3, :cond_0

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellPool:Ljava/util/List;

    sub-int v5, v3, v6

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    move-object v2, v4

    .line 647
    .local v2, spell:Ljava/lang/StringBuilder;
    :goto_1
    invoke-direct {p0, v0, v2}, Lcom/nuance/xt9/input/ChineseInput;->getSpellInternal(ILjava/lang/StringBuilder;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 648
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    iget v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellCount:I

    .line 640
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 643
    .end local v2           #spell:Ljava/lang/StringBuilder;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v4

    goto :goto_1

    .line 652
    .restart local v2       #spell:Ljava/lang/StringBuilder;
    :cond_1
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellPool:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    .end local v2           #spell:Ljava/lang/StringBuilder;
    .end local v3           #spellPoolSize:I
    :cond_2
    const/16 v4, 0x100

    iget v5, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellCount:I

    sub-int v1, v4, v5

    .line 657
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_5

    .line 658
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellPool:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 660
    .restart local v3       #spellPoolSize:I
    if-lez v3, :cond_3

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellPool:Ljava/util/List;

    sub-int v5, v3, v6

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    move-object v2, v4

    .line 664
    .restart local v2       #spell:Ljava/lang/StringBuilder;
    :goto_3
    invoke-direct {p0, v0, v2}, Lcom/nuance/xt9/input/ChineseInput;->getPrefix(ILjava/lang/StringBuilder;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 665
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    iget v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mPrefixCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mPrefixCount:I

    .line 657
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 660
    .end local v2           #spell:Ljava/lang/StringBuilder;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v4

    goto :goto_3

    .line 669
    .restart local v2       #spell:Ljava/lang/StringBuilder;
    :cond_4
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellPool:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    .end local v2           #spell:Ljava/lang/StringBuilder;
    .end local v3           #spellPoolSize:I
    :cond_5
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellList:Ljava/util/List;

    return-object v4
.end method

.method private normalizeBPMF(Ljava/lang/StringBuilder;)V
    .locals 7
    .parameter "s"

    .prologue
    const/4 v6, 0x1

    .line 1038
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 1039
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1040
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 1041
    .local v0, c:C
    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/ChineseInput;->tolowerBPMF(C)C

    move-result v1

    .line 1042
    .local v1, cLower:C
    if-eq v0, v1, :cond_0

    .line 1043
    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1044
    if-lez v2, :cond_0

    sub-int v4, v2, v6

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    iget-char v5, p0, Lcom/nuance/xt9/input/ChineseInput;->mChineseSegmentDelimiter:C

    if-eq v4, v5, :cond_0

    sub-int v4, v2, v6

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    iget-char v5, p0, Lcom/nuance/xt9/input/ChineseInput;->mChineseDelimiter:C

    if-eq v4, v5, :cond_0

    .line 1045
    iget-char v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mBopomofoSyllableDelimiter:C

    invoke-virtual {p1, v2, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1046
    add-int/lit8 v2, v2, 0x1

    .line 1047
    add-int/lit8 v3, v3, 0x1

    .line 1039
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1051
    .end local v0           #c:C
    .end local v1           #cLower:C
    :cond_1
    return-void
.end method

.method private normalizeCangjie(Ljava/lang/StringBuilder;)V
    .locals 5
    .parameter "s"

    .prologue
    const/16 v4, 0x41

    .line 1013
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1014
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 1015
    .local v0, c:C
    if-gt v4, v0, :cond_0

    const/16 v2, 0x5a

    if-gt v0, v2, :cond_0

    .line 1016
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInput;->mCangjie:[C

    sub-int v3, v0, v4

    aget-char v2, v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1013
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1019
    .end local v0           #c:C
    :cond_1
    return-void
.end method

.method private normalizeComponents(Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 1003
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/ChineseInput;->componentToExternal(C)C

    move-result v0

    .line 1004
    .local v0, comp:C
    if-eqz v0, :cond_0

    .line 1005
    invoke-virtual {p1, v2, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1006
    const v1, 0x9fff

    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1008
    :cond_0
    return-void
.end method

.method private normalizeStroke(Ljava/lang/StringBuilder;)V
    .locals 6
    .parameter "s"

    .prologue
    const/4 v5, 0x1

    .line 1055
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 1056
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1057
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 1058
    .local v0, c:C
    if-gt v5, v0, :cond_0

    const/4 v3, 0x6

    if-gt v0, v3, :cond_0

    .line 1059
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mStrokes:[C

    sub-int v4, v0, v5

    aget-char v3, v3, v4

    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1056
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1062
    .end local v0           #c:C
    :cond_1
    return-void
.end method

.method private readStyles(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/high16 v7, -0x1

    .line 1066
    const v5, 0x7f0e0002

    sget-object v6, Lcom/nuance/xt9/input/R$styleable;->InlineStringChinese:[I

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1070
    .local v0, a:Landroid/content/res/TypedArray;
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 1074
    .local v3, inflate:Landroid/view/LayoutInflater;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    .line 1076
    .local v4, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 1077
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 1079
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 1076
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1081
    :pswitch_0
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v5, p0, Lcom/nuance/xt9/input/ChineseInput;->mSelectedForeground:Landroid/text/style/ForegroundColorSpan;

    goto :goto_1

    .line 1084
    :pswitch_1
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v5, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellForeground:Landroid/text/style/ForegroundColorSpan;

    goto :goto_1

    .line 1087
    :pswitch_2
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const v6, -0xff0100

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v5, p0, Lcom/nuance/xt9/input/ChineseInput;->mCompForeground:Landroid/text/style/ForegroundColorSpan;

    goto :goto_1

    .line 1091
    .end local v1           #attr:I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1092
    return-void

    .line 1079
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private recycleSpellPool()V
    .locals 5

    .prologue
    .line 733
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellPool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 734
    .local v2, spellPoolSize:I
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 736
    .local v1, spellListSize:I
    :goto_0
    const/16 v3, 0x100

    if-ge v2, v3, :cond_1

    if-lez v1, :cond_1

    .line 737
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellList:Ljava/util/List;

    const/4 v4, 0x1

    sub-int v4, v1, v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 738
    .local v0, collect:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 739
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellPool:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    add-int/lit8 v2, v2, 0x1

    .line 742
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 743
    goto :goto_0

    .line 744
    .end local v0           #collect:Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 745
    return-void
.end method

.method private recycleWordPool()V
    .locals 5

    .prologue
    .line 752
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mWordPool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 753
    .local v2, wordPoolSize:I
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mWordList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 755
    .local v1, wordListSize:I
    :goto_0
    const/16 v3, 0x100

    if-ge v2, v3, :cond_1

    if-lez v1, :cond_1

    .line 756
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mWordList:Ljava/util/List;

    const/4 v4, 0x1

    sub-int v4, v1, v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 757
    .local v0, collect:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 758
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mWordPool:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    add-int/lit8 v2, v2, 0x1

    .line 761
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 762
    goto :goto_0

    .line 763
    .end local v0           #collect:Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mWordList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 764
    return-void
.end method

.method private setActivePrefixIndex(I)Z
    .locals 1
    .parameter "prefixIndex"

    .prologue
    .line 916
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-static {v0, p1}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_setActivePrefixIndex(II)Z

    move-result v0

    return v0
.end method

.method private setActiveSpellIndexInternal(I)Z
    .locals 1
    .parameter "spellIndex"

    .prologue
    .line 839
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-static {v0, p1}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_setActiveSpellIndex(II)Z

    move-result v0

    return v0
.end method

.method private tolowerBPMF(C)C
    .locals 3
    .parameter "c"

    .prologue
    const v2, 0xf205

    .line 1027
    move v0, p1

    .line 1028
    .local v0, cRet:C
    if-lt p1, v2, :cond_0

    const v1, 0xf22a

    if-gt p1, v1, :cond_0

    .line 1029
    sub-int v1, p1, v2

    add-int/lit16 v1, v1, 0x3105

    int-to-char v0, v1

    .line 1030
    :cond_0
    return v0
.end method


# virtual methods
.method public addDelimiter()Z
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_addDelimiter(I)Z

    move-result v0

    return v0
.end method

.method public addTone(I)Z
    .locals 1
    .parameter "tone"

    .prologue
    .line 333
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-static {v0, p1}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_addTone(II)Z

    move-result v0

    return v0
.end method

.method public addWordToUserDictionary(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "word"
    .parameter "spelling"

    .prologue
    .line 511
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_addWordToUserDictionary(I[CI[CI)Z

    move-result v0

    return v0
.end method

.method public breakContext()Z
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_breakContext(I)Z

    move-result v0

    return v0
.end method

.method public clearAllKeys()Z
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_clearAllKeys(I)Z

    move-result v0

    return v0
.end method

.method public clearKey()Z
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_clearKey(I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized create()Z
    .locals 1

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mDatabaseConfigFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_create(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    .line 222
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I
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

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cycleTone()Z
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_cycleTone(I)Z

    move-result v0

    return v0
.end method

.method public deleteUserDictionaryWord(Ljava/lang/String;)Z
    .locals 3
    .parameter "word"

    .prologue
    .line 546
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_deleteUserDictionaryWord(I[CI)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized destroy()V
    .locals 2

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    if-eqz v0, :cond_0

    sget v0, Lcom/nuance/xt9/input/ChineseInput;->mRefCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lcom/nuance/xt9/input/ChineseInput;->mRefCount:I

    if-nez v0, :cond_0

    .line 231
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_destroy(I)V

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :cond_0
    monitor-exit p0

    return-void

    .line 230
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
    .line 768
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 769
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_finish(I)V

    .line 249
    return-void
.end method

.method public getActiveSpellIndex()I
    .locals 2

    .prologue
    .line 585
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_isPrefixBufferActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInput;->getActiveSpellIndexInternal()I

    move-result v0

    .line 588
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellCount:I

    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInput;->getActivePrefixIndex()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getInlineString(Landroid/text/SpannableStringBuilder;)Z
    .locals 10
    .parameter "inlineString"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 384
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 386
    iget v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    iget-object v6, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchInt:[I

    iget-object v7, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    array-length v7, v7

    invoke-static {v4, v5, v6, v7}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_getSelection(I[C[II)Z

    move-result v3

    .line 388
    .local v3, success:Z
    if-eqz v3, :cond_4

    .line 391
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchInt:[I

    aget v4, v4, v8

    if-ge v2, v4, :cond_0

    .line 392
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    aget-char v4, v4, v2

    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 391
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 395
    :cond_0
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInput;->getActiveSpellIndexInternal()I

    move-result v0

    .line 396
    .local v0, activeSpellIndex:I
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v4}, Lcom/nuance/xt9/input/ChineseInput;->getSpellInternal(ILjava/lang/StringBuilder;)Z

    .line 399
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 400
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 402
    :cond_1
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 404
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInput;->mJianpin:[C

    aget-char v5, v5, v8

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lcom/nuance/xt9/input/ChineseInput;->mJianpin:[C

    aget-char v5, v5, v9

    if-eq v4, v5, :cond_4

    .line 405
    :cond_2
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 406
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/nuance/xt9/input/ChineseInput;->componentToExternal(C)C

    move-result v1

    .line 407
    .local v1, comp:C
    if-eqz v1, :cond_3

    .line 408
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 410
    :cond_3
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 415
    .end local v0           #activeSpellIndex:I
    .end local v1           #comp:C
    .end local v2           #i:I
    :cond_4
    return v3
.end method

.method public getKeyCount()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_getKeyCount(I)I

    move-result v0

    return v0
.end method

.method public getMoreWords()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 708
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mWordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    const/16 v5, 0x100

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 710
    .local v0, getMax:I
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mWordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 711
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mWordPool:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 713
    .local v3, wordPoolSize:I
    if-lez v3, :cond_0

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mWordPool:Ljava/util/List;

    const/4 v5, 0x1

    sub-int v5, v3, v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    move-object v2, v4

    .line 717
    .local v2, word:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/nuance/xt9/input/ChineseInput;->getWord(ILjava/lang/StringBuilder;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 718
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mWordList:Ljava/util/List;

    invoke-interface {v4, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 710
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 713
    .end local v2           #word:Ljava/lang/StringBuilder;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v4

    goto :goto_1

    .line 721
    .restart local v2       #word:Ljava/lang/StringBuilder;
    :cond_1
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mWordPool:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    .end local v2           #word:Ljava/lang/StringBuilder;
    .end local v3           #wordPoolSize:I
    :cond_2
    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mWordList:Ljava/util/List;

    return-object v4
.end method

.method public getSpells(Lcom/nuance/xt9/input/Int;)Ljava/util/List;
    .locals 1
    .parameter "defaultSpellIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/xt9/input/Int;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInput;->getActiveSpellIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nuance/xt9/input/Int;->setVal(I)I

    .line 621
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInput;->recycleSpellPool()V

    .line 623
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInput;->getSpellPrefix()Ljava/util/List;

    .line 625
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellList:Ljava/util/List;

    return-object v0
.end method

.method public getUserDictionaryWord(ILjava/lang/StringBuilder;)Z
    .locals 6
    .parameter "index"
    .parameter "word"

    .prologue
    const/4 v5, 0x0

    .line 528
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 530
    iget v1, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchInt:[I

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    array-length v4, v4

    invoke-static {v1, p1, v2, v3, v4}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_getUserDictionaryWord(II[C[II)Z

    move-result v0

    .line 532
    .local v0, success:Z
    if-eqz v0, :cond_0

    .line 533
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchInt:[I

    aget v2, v2, v5

    invoke-virtual {p2, v1, v5, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 536
    :cond_0
    return v0
.end method

.method public getWord(ILjava/lang/StringBuilder;)Z
    .locals 6
    .parameter "index"
    .parameter "word"

    .prologue
    const/4 v5, 0x0

    .line 559
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 561
    iget v1, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchInt:[I

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    array-length v4, v4

    invoke-static {v1, p1, v2, v3, v4}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_getWord(II[C[II)Z

    move-result v0

    .line 563
    .local v0, success:Z
    if-eqz v0, :cond_0

    .line 564
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchInt:[I

    aget v2, v2, v5

    invoke-virtual {p2, v1, v5, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 565
    invoke-direct {p0, p2}, Lcom/nuance/xt9/input/ChineseInput;->normalizeComponents(Ljava/lang/StringBuilder;)V

    .line 568
    :cond_0
    return v0
.end method

.method public getWords(Landroid/text/SpannableStringBuilder;Lcom/nuance/xt9/input/Int;Z)Ljava/util/List;
    .locals 1
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
    .line 687
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/nuance/xt9/input/Int;->setVal(I)I

    .line 689
    invoke-direct {p0}, Lcom/nuance/xt9/input/ChineseInput;->recycleWordPool()V

    .line 691
    invoke-virtual {p0}, Lcom/nuance/xt9/input/ChineseInput;->getMoreWords()Ljava/util/List;

    .line 693
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/ChineseInput;->getInlineString(Landroid/text/SpannableStringBuilder;)Z

    .line 695
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mWordList:Ljava/util/List;

    return-object v0
.end method

.method public loadConfiguration(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    .line 193
    iput-object p1, p0, Lcom/nuance/xt9/input/ChineseInput;->mContext:Landroid/content/Context;

    .line 194
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08016b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mStrokes:[C

    .line 195
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08016e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mCompSimp:[C

    .line 196
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08016f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mCompTrad:[C

    .line 197
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08016c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mCangjie:[C

    .line 198
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08016d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mTones:[C

    .line 200
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mBPMFTones:[C

    .line 203
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080139

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJianpin:[C

    .line 204
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mChineseDelimiter:C

    .line 205
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mChineseSegmentDelimiter:C

    .line 206
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mBopomofoSyllableDelimiter:C

    .line 208
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/ChineseInput;->readStyles(Landroid/content/Context;)V

    .line 211
    :cond_0
    return-void
.end method

.method public processKey(III)Z
    .locals 2
    .parameter "kdbId"
    .parameter "key"
    .parameter "shiftState"

    .prologue
    .line 294
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-direct {p0, p2}, Lcom/nuance/xt9/input/ChineseInput;->cangjieToInternal(I)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_processKey(III)Z

    move-result v0

    return v0
.end method

.method public resetUserDictionary()Z
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_resetUserDictionary(I)Z

    move-result v0

    return v0
.end method

.method public selectWord(ILjava/lang/StringBuilder;)Z
    .locals 6
    .parameter "index"
    .parameter "insertText"

    .prologue
    const/4 v5, 0x0

    .line 435
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 437
    iget v1, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchInt:[I

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    array-length v4, v4

    invoke-static {v1, p1, v2, v3, v4}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_selectWord(II[C[II)Z

    move-result v0

    .line 439
    .local v0, success:Z
    if-eqz v0, :cond_0

    .line 440
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchBuffer:[C

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInput;->mScratchInt:[I

    aget v2, v2, v5

    invoke-virtual {p2, v1, v5, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 443
    :cond_0
    return v0
.end method

.method public setActiveSpellIndex(I)Z
    .locals 1
    .parameter "spellIndex"

    .prologue
    .line 604
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellCount:I

    if-ge p1, v0, :cond_0

    .line 605
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/ChineseInput;->setActiveSpellIndexInternal(I)Z

    move-result v0

    .line 607
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mSpellCount:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/ChineseInput;->setActivePrefixIndex(I)Z

    move-result v0

    goto :goto_0
.end method

.method public setAttribute(II)Z
    .locals 1
    .parameter "id"
    .parameter "value"

    .prologue
    .line 261
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-static {v0, p1, p2}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_setAttribute(III)Z

    move-result v0

    return v0
.end method

.method public setContext(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "newContext"

    .prologue
    .line 455
    if-nez p1, :cond_0

    .line 460
    :goto_0
    return-void

    .line 459
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mTextContext:Ljava/lang/String;

    goto :goto_0
.end method

.method public setInputMode(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 281
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-static {v0, p1}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_setInputMode(II)Z

    move-result v0

    return v0
.end method

.method public setLanguage(I)Z
    .locals 1
    .parameter "langId"

    .prologue
    .line 271
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-static {v0, p1}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_setLanguage(II)Z

    move-result v0

    return v0
.end method

.method public start()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mTextContext:Ljava/lang/String;

    .line 241
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_start(I)Z

    move-result v0

    return v0
.end method

.method public udbAdd(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "phrase"
    .parameter "spell"

    .prologue
    .line 928
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_udbAdd(I[CI[CI)Z

    move-result v0

    return v0
.end method

.method public udbCount()I
    .locals 1

    .prologue
    .line 953
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_udbCount(I)I

    move-result v0

    return v0
.end method

.method public udbDelete(Ljava/lang/String;)Z
    .locals 3
    .parameter "phrase"

    .prologue
    .line 933
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_udbDelete(I[CI)Z

    move-result v0

    return v0
.end method

.method public udbGetNext(ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z
    .locals 9
    .parameter "index"
    .parameter "phrase"
    .parameter "spell"

    .prologue
    const/16 v4, 0x40

    const/4 v8, 0x0

    .line 937
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 938
    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 940
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    sget-object v2, Lcom/nuance/xt9/input/ChineseInput;->mPhraseBuffer:[C

    sget-object v3, Lcom/nuance/xt9/input/ChineseInput;->mPhraseLength:[I

    sget-object v5, Lcom/nuance/xt9/input/ChineseInput;->mSpellBuffer:[C

    sget-object v6, Lcom/nuance/xt9/input/ChineseInput;->mSpellLength:[I

    move v1, p1

    move v7, v4

    invoke-static/range {v0 .. v7}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_udbGetNext(II[C[II[C[II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    sget-object v0, Lcom/nuance/xt9/input/ChineseInput;->mPhraseBuffer:[C

    sget-object v1, Lcom/nuance/xt9/input/ChineseInput;->mPhraseLength:[I

    aget v1, v1, v8

    invoke-virtual {p2, v0, v8, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 945
    sget-object v0, Lcom/nuance/xt9/input/ChineseInput;->mSpellBuffer:[C

    sget-object v1, Lcom/nuance/xt9/input/ChineseInput;->mSpellLength:[I

    aget v1, v1, v8

    invoke-virtual {p3, v0, v8, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 946
    const/4 v0, 0x1

    .line 949
    :goto_0
    return v0

    :cond_0
    move v0, v8

    goto :goto_0
.end method

.method public udbReset()V
    .locals 1

    .prologue
    .line 957
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_udbReset(I)V

    .line 958
    return-void
.end method

.method public updateContext(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "newContext"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mTextContext:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mTextContext:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mTextContext:Ljava/lang/String;

    .line 470
    iget v0, p0, Lcom/nuance/xt9/input/ChineseInput;->mJNIContext:I

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseInput;->mTextContext:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseInput;->mTextContext:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/NativeChineseInput;->xt9input_chinese_setContext(I[CI)Z

    .line 471
    const/4 v0, 0x1

    .line 474
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
