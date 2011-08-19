.class Lcom/android/email/provider/ContentCache$Statistics;
.super Ljava/lang/Object;
.source "ContentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/ContentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Statistics"
.end annotation


# instance fields
.field private hitTimes:J

.field private hits:J

.field private final mCache:Lcom/android/email/provider/ContentCache;

.field private mCursorCount:I

.field private mHitCount:I

.field private mInvalidateCount:I

.field private mMissCount:I

.field private final mName:Ljava/lang/String;

.field private mOpCount:I

.field private mProjectionMissCount:I

.field private mStaleCount:I

.field private mTokenCount:I

.field private miss:J

.field private missTimes:J


# direct methods
.method constructor <init>(Lcom/android/email/provider/ContentCache;)V
    .locals 3
    .parameter "cache"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    iput v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mHitCount:I

    .line 738
    iput v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mMissCount:I

    .line 740
    iput v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mStaleCount:I

    .line 743
    iput v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mProjectionMissCount:I

    .line 745
    iput v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mInvalidateCount:I

    .line 747
    iput v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mOpCount:I

    .line 749
    iput-wide v1, p0, Lcom/android/email/provider/ContentCache$Statistics;->hits:J

    .line 750
    iput-wide v1, p0, Lcom/android/email/provider/ContentCache$Statistics;->hitTimes:J

    .line 751
    iput-wide v1, p0, Lcom/android/email/provider/ContentCache$Statistics;->miss:J

    .line 752
    iput-wide v1, p0, Lcom/android/email/provider/ContentCache$Statistics;->missTimes:J

    .line 755
    iput v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mCursorCount:I

    .line 756
    iput v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mTokenCount:I

    .line 759
    iput-object p1, p0, Lcom/android/email/provider/ContentCache$Statistics;->mCache:Lcom/android/email/provider/ContentCache;

    .line 760
    iget-object v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mCache:Lcom/android/email/provider/ContentCache;

    invoke-static {v0}, Lcom/android/email/provider/ContentCache;->access$1300(Lcom/android/email/provider/ContentCache;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mName:Ljava/lang/String;

    .line 761
    return-void
.end method

.method static synthetic access$1008(Lcom/android/email/provider/ContentCache$Statistics;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 730
    iget-wide v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->hits:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/email/provider/ContentCache$Statistics;->hits:J

    return-wide v0
.end method

.method static synthetic access$1114(Lcom/android/email/provider/ContentCache$Statistics;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 730
    iget-wide v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->missTimes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->missTimes:J

    return-wide v0
.end method

.method static synthetic access$1208(Lcom/android/email/provider/ContentCache$Statistics;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 730
    iget-wide v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->miss:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/email/provider/ContentCache$Statistics;->miss:J

    return-wide v0
.end method

.method static synthetic access$208(Lcom/android/email/provider/ContentCache$Statistics;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 730
    iget v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mStaleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/provider/ContentCache$Statistics;->mStaleCount:I

    return v0
.end method

.method static synthetic access$308(Lcom/android/email/provider/ContentCache$Statistics;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 730
    iget v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mHitCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/provider/ContentCache$Statistics;->mHitCount:I

    return v0
.end method

.method static synthetic access$408(Lcom/android/email/provider/ContentCache$Statistics;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 730
    iget v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mMissCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/provider/ContentCache$Statistics;->mMissCount:I

    return v0
.end method

.method static synthetic access$508(Lcom/android/email/provider/ContentCache$Statistics;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 730
    iget v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mProjectionMissCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/provider/ContentCache$Statistics;->mProjectionMissCount:I

    return v0
.end method

.method static synthetic access$708(Lcom/android/email/provider/ContentCache$Statistics;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 730
    iget v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mInvalidateCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/provider/ContentCache$Statistics;->mInvalidateCount:I

    return v0
.end method

.method static synthetic access$914(Lcom/android/email/provider/ContentCache$Statistics;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 730
    iget-wide v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->hitTimes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->hitTimes:J

    return-wide v0
.end method

.method private append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "sb"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 784
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 788
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const-wide v7, 0x412e848000000000L

    .line 792
    iget v2, p0, Lcom/android/email/provider/ContentCache$Statistics;->mHitCount:I

    iget v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mMissCount:I

    add-int/2addr v2, v3

    if-nez v2, :cond_0

    const-string v2, "No cache"

    .line 804
    :goto_0
    return-object v2

    .line 793
    :cond_0
    iget v2, p0, Lcom/android/email/provider/ContentCache$Statistics;->mMissCount:I

    iget v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mProjectionMissCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mHitCount:I

    add-int v1, v2, v3

    .line 794
    .local v1, totalTries:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 795
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    const-string v2, "Cursors"

    iget-object v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mCache:Lcom/android/email/provider/ContentCache;

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mCursorCount:I

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 797
    const-string v2, "Hits"

    iget v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mHitCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 798
    const-string v2, "Misses"

    iget v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mMissCount:I

    iget v4, p0, Lcom/android/email/provider/ContentCache$Statistics;->mProjectionMissCount:I

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 799
    const-string v2, "Inval"

    iget v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mInvalidateCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 800
    const-string v2, "Tokens"

    iget-object v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mCache:Lcom/android/email/provider/ContentCache;

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mTokenCount:I

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 801
    const-string v2, "Hit%"

    iget v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mHitCount:I

    mul-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 802
    const-string v2, "\nHit time"

    iget-wide v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->hitTimes:J

    long-to-double v3, v3

    div-double/2addr v3, v7

    iget-wide v5, p0, Lcom/android/email/provider/ContentCache$Statistics;->hits:J

    long-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 803
    const-string v2, "Miss time"

    iget-wide v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->missTimes:J

    long-to-double v3, v3

    div-double/2addr v3, v7

    iget-wide v5, p0, Lcom/android/email/provider/ContentCache$Statistics;->miss:J

    long-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 804
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 796
    :cond_1
    iget-object v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mCache:Lcom/android/email/provider/ContentCache;

    invoke-virtual {v3}, Lcom/android/email/provider/ContentCache;->size()I

    move-result v3

    goto :goto_1

    .line 800
    :cond_2
    iget-object v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mCache:Lcom/android/email/provider/ContentCache;

    iget-object v3, v3, Lcom/android/email/provider/ContentCache;->mTokenList:Lcom/android/email/provider/ContentCache$TokenList;

    invoke-virtual {v3}, Lcom/android/email/provider/ContentCache$TokenList;->size()I

    move-result v3

    goto :goto_2
.end method
