.class public Lcom/amazon/foundation/internal/CharOutputStreamWriter;
.super Ljava/lang/Object;
.source "CharOutputStreamWriter.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IDataOutputStream;


# instance fields
.field private enc:Ljava/lang/String;

.field private stream:Lcom/amazon/foundation/internal/ICharOutputStream;


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/internal/ICharOutputStream;Ljava/lang/String;)V
    .locals 0
    .parameter "stream"
    .parameter "enc"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/amazon/foundation/internal/CharOutputStreamWriter;->enc:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/amazon/foundation/internal/CharOutputStreamWriter;->stream:Lcom/amazon/foundation/internal/ICharOutputStream;

    .line 24
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amazon/foundation/internal/CharOutputStreamWriter;->stream:Lcom/amazon/foundation/internal/ICharOutputStream;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/ICharOutputStream;->abort()V

    .line 29
    return-void
.end method

.method public close()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amazon/foundation/internal/CharOutputStreamWriter;->stream:Lcom/amazon/foundation/internal/ICharOutputStream;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/ICharOutputStream;->close()Z

    move-result v0

    return v0
.end method

.method public initialize()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amazon/foundation/internal/CharOutputStreamWriter;->stream:Lcom/amazon/foundation/internal/ICharOutputStream;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/ICharOutputStream;->initialize()Z

    move-result v0

    return v0
.end method

.method public write([B)I
    .locals 2
    .parameter "buf"

    .prologue
    .line 43
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/foundation/internal/CharOutputStreamWriter;->write([BII)I

    move-result v0

    return v0
.end method

.method public write([BII)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 48
    .line 51
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/foundation/internal/CharOutputStreamWriter;->enc:Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/amazon/foundation/internal/CharOutputStreamWriter;->stream:Lcom/amazon/foundation/internal/ICharOutputStream;

    invoke-interface {v1, v0}, Lcom/amazon/foundation/internal/ICharOutputStream;->write([C)I

    move-result v1

    .line 54
    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 65
    :goto_0
    return v0

    .line 61
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, p3

    goto :goto_0
.end method
