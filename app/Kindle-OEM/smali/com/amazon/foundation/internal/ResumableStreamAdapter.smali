.class public Lcom/amazon/foundation/internal/ResumableStreamAdapter;
.super Ljava/lang/Object;
.source "ResumableStreamAdapter.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IDataOutputStream;


# instance fields
.field private numBytesSoFar:J

.field private stream:Lcom/amazon/foundation/internal/IDataOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->stream:Lcom/amazon/foundation/internal/IDataOutputStream;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public close()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->stream:Lcom/amazon/foundation/internal/IDataOutputStream;

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finalizeStream()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->stream:Lcom/amazon/foundation/internal/IDataOutputStream;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->stream:Lcom/amazon/foundation/internal/IDataOutputStream;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IDataOutputStream;->close()Z

    move-result v0

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumBytesSoFar()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->numBytesSoFar:J

    return-wide v0
.end method

.method public initialize()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->stream:Lcom/amazon/foundation/internal/IDataOutputStream;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->stream:Lcom/amazon/foundation/internal/IDataOutputStream;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IDataOutputStream;->initialize()Z

    move-result v0

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStream(Lcom/amazon/foundation/internal/IDataOutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->finalizeStream()Z

    .line 27
    iput-object p1, p0, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->stream:Lcom/amazon/foundation/internal/IDataOutputStream;

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->numBytesSoFar:J

    .line 29
    return-void
.end method

.method public setStream(Lcom/amazon/foundation/internal/IDataOutputStream;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->finalizeStream()Z

    .line 44
    iput-object p1, p0, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->stream:Lcom/amazon/foundation/internal/IDataOutputStream;

    .line 45
    iput-wide p2, p0, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->numBytesSoFar:J

    .line 46
    return-void
.end method

.method public write([B)I
    .locals 5
    .parameter "buf"

    .prologue
    .line 81
    iget-object v1, p0, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->stream:Lcom/amazon/foundation/internal/IDataOutputStream;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->stream:Lcom/amazon/foundation/internal/IDataOutputStream;

    invoke-interface {v1, p1}, Lcom/amazon/foundation/internal/IDataOutputStream;->write([B)I

    move-result v0

    .line 84
    .local v0, writtenBytes:I
    iget-wide v1, p0, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->numBytesSoFar:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->numBytesSoFar:J

    move v1, v0

    .line 87
    .end local v0           #writtenBytes:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public write([BII)I
    .locals 5
    .parameter "buf"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 92
    iget-object v1, p0, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->stream:Lcom/amazon/foundation/internal/IDataOutputStream;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->stream:Lcom/amazon/foundation/internal/IDataOutputStream;

    invoke-interface {v1, p1, p2, p3}, Lcom/amazon/foundation/internal/IDataOutputStream;->write([BII)I

    move-result v0

    .line 95
    .local v0, writtenBytes:I
    iget-wide v1, p0, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->numBytesSoFar:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->numBytesSoFar:J

    move v1, v0

    .line 98
    .end local v0           #writtenBytes:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
