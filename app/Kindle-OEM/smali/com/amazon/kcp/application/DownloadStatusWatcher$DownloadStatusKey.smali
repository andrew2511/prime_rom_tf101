.class Lcom/amazon/kcp/application/DownloadStatusWatcher$DownloadStatusKey;
.super Ljava/lang/Object;
.source "DownloadStatusWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/DownloadStatusWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadStatusKey"
.end annotation


# instance fields
.field private asin:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/application/DownloadStatusWatcher;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/DownloadStatusWatcher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "asin"
    .parameter "type"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/application/DownloadStatusWatcher$DownloadStatusKey;->this$0:Lcom/amazon/kcp/application/DownloadStatusWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "asin cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    invoke-static {p3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    iput-object p2, p0, Lcom/amazon/kcp/application/DownloadStatusWatcher$DownloadStatusKey;->asin:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/amazon/kcp/application/DownloadStatusWatcher$DownloadStatusKey;->type:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 46
    .local v1, equal:Z
    instance-of v3, p1, Lcom/amazon/kcp/application/DownloadStatusWatcher$DownloadStatusKey;

    if-eqz v3, :cond_0

    .line 48
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/application/DownloadStatusWatcher$DownloadStatusKey;

    move-object v2, v0

    .line 49
    .local v2, other:Lcom/amazon/kcp/application/DownloadStatusWatcher$DownloadStatusKey;
    iget-object v3, p0, Lcom/amazon/kcp/application/DownloadStatusWatcher$DownloadStatusKey;->asin:Ljava/lang/String;

    iget-object v4, v2, Lcom/amazon/kcp/application/DownloadStatusWatcher$DownloadStatusKey;->asin:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/amazon/kcp/application/DownloadStatusWatcher$DownloadStatusKey;->type:Ljava/lang/String;

    iget-object v4, v2, Lcom/amazon/kcp/application/DownloadStatusWatcher$DownloadStatusKey;->type:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move v1, v3

    .line 51
    .end local v2           #other:Lcom/amazon/kcp/application/DownloadStatusWatcher$DownloadStatusKey;
    :cond_0
    :goto_0
    return v1

    .line 49
    .restart local v2       #other:Lcom/amazon/kcp/application/DownloadStatusWatcher$DownloadStatusKey;
    :cond_1
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 59
    const/16 v1, 0x13

    .line 60
    .local v1, prime:I
    const/16 v0, 0x11

    .line 61
    .local v0, hashCode:I
    mul-int v2, v1, v0

    iget-object v2, p0, Lcom/amazon/kcp/application/DownloadStatusWatcher$DownloadStatusKey;->asin:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/lit16 v0, v2, 0x143

    .line 62
    mul-int v2, v1, v0

    iget-object v3, p0, Lcom/amazon/kcp/application/DownloadStatusWatcher$DownloadStatusKey;->type:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 63
    return v0
.end method
