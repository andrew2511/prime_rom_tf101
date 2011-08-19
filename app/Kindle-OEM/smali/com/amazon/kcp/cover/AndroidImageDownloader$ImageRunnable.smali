.class abstract Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnable;
.super Ljava/lang/Object;
.source "AndroidImageDownloader.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/cover/AndroidImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ImageRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field protected final enqueueTime:J

.field final synthetic this$0:Lcom/amazon/kcp/cover/AndroidImageDownloader;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/AndroidImageDownloader;J)V
    .locals 0
    .parameter
    .parameter "startTime"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnable;->this$0:Lcom/amazon/kcp/cover/AndroidImageDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-wide p2, p0, Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnable;->enqueueTime:J

    .line 99
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnable;)I
    .locals 8
    .parameter "another"

    .prologue
    const-wide/16 v6, 0x0

    .line 106
    iget-wide v2, p1, Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnable;->enqueueTime:J

    iget-wide v4, p0, Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnable;->enqueueTime:J

    sub-long v0, v2, v4

    .line 107
    .local v0, difference:J
    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    .line 109
    const/4 v2, 0x1

    .line 117
    :goto_0
    return v2

    .line 111
    :cond_0
    cmp-long v2, v0, v6

    if-gez v2, :cond_1

    .line 113
    const/4 v2, -0x1

    goto :goto_0

    .line 117
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    check-cast p1, Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnable;->compareTo(Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnable;)I

    move-result v0

    return v0
.end method
