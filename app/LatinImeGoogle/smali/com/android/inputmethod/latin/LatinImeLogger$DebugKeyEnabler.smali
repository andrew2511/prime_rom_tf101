.class Lcom/android/inputmethod/latin/LatinImeLogger$DebugKeyEnabler;
.super Ljava/lang/Object;
.source "LatinImeLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinImeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugKeyEnabler"
.end annotation


# instance fields
.field private mCounter:I

.field private mLastTime:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 882
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger$DebugKeyEnabler;->mCounter:I

    .line 883
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger$DebugKeyEnabler;->mLastTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/latin/LatinImeLogger$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 881
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinImeLogger$DebugKeyEnabler;-><init>()V

    return-void
.end method


# virtual methods
.method public check()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 885
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger$DebugKeyEnabler;->mLastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 886
    iput v4, p0, Lcom/android/inputmethod/latin/LatinImeLogger$DebugKeyEnabler;->mCounter:I

    .line 887
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger$DebugKeyEnabler;->mLastTime:J

    :cond_0
    move v0, v4

    .line 891
    :goto_0
    return v0

    .line 888
    :cond_1
    iget v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger$DebugKeyEnabler;->mCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger$DebugKeyEnabler;->mCounter:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 889
    const/4 v0, 0x1

    goto :goto_0
.end method
