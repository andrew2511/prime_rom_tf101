.class public Lcom/amazon/kcp/application/sync/internal/SyncStep;
.super Ljava/lang/Object;
.source "SyncStep.java"


# static fields
.field public static final DOWNLOAD_LPR:I = 0x10

.field public static final FORCED:I = 0x20

.field public static final FORCED_UPLOAD_JOURNAL:I = 0x21

.field public static final PROCESS_TODO:I = 0x29

.field public static final SYNC_METADATA:I = 0x2

.field public static final UPLOAD_JOURNAL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSubset(JJ)Z
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 39
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/kcp/application/sync/internal/SyncStep;->semanticDifference(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static semanticDifference(JJ)J
    .locals 10
    .parameter "a"
    .parameter "b"

    .prologue
    const-wide/16 v8, 0x10

    const-wide/16 v6, 0x0

    .line 51
    const-wide/16 v4, -0x1

    xor-long/2addr v4, p2

    and-long v0, p0, v4

    .line 52
    .local v0, bitwiseDifference:J
    move-wide v2, v0

    .line 55
    .local v2, semanticDifference:J
    const-wide/16 v4, -0x5

    and-long/2addr v2, v4

    .line 56
    and-long v4, v0, v8

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x29

    and-long/2addr v4, p2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 58
    xor-long/2addr v2, v8

    .line 61
    :cond_0
    return-wide v2
.end method
