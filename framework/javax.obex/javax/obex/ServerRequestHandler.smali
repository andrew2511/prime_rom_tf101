.class public Ljavax/obex/ServerRequestHandler;
.super Ljava/lang/Object;
.source "ServerRequestHandler.java"


# instance fields
.field private mConnectionId:J


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljavax/obex/ServerRequestHandler;->mConnectionId:J

    .line 82
    return-void
.end method


# virtual methods
.method public getConnectionId()J
    .registers 3

    .prologue
    .line 105
    iget-wide v0, p0, Ljavax/obex/ServerRequestHandler;->mConnectionId:J

    return-wide v0
.end method

.method public onAbort(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .registers 4
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 203
    const/16 v0, 0xd1

    return v0
.end method

.method public onAuthenticationFailure([B)V
    .registers 2
    .parameter "userName"

    .prologue
    .line 259
    return-void
.end method

.method public onClose()V
    .registers 1

    .prologue
    .line 277
    return-void
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .registers 4
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 128
    const/16 v0, 0xa0

    return v0
.end method

.method public onDelete(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .registers 4
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 196
    const/16 v0, 0xd1

    return v0
.end method

.method public onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .registers 3
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 143
    return-void
.end method

.method public onGet(Ljavax/obex/Operation;)I
    .registers 3
    .parameter "operation"

    .prologue
    .line 245
    const/16 v0, 0xd1

    return v0
.end method

.method public onPut(Ljavax/obex/Operation;)I
    .registers 3
    .parameter "operation"

    .prologue
    .line 224
    const/16 v0, 0xd1

    return v0
.end method

.method public onSetPath(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    .registers 6
    .parameter "request"
    .parameter "reply"
    .parameter "backup"
    .parameter "create"

    .prologue
    .line 173
    const/16 v0, 0xd1

    return v0
.end method

.method public setConnectionId(J)V
    .registers 5
    .parameter "connectionId"

    .prologue
    .line 92
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_f

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_17

    .line 93
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal Connection ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_17
    iput-wide p1, p0, Ljavax/obex/ServerRequestHandler;->mConnectionId:J

    .line 96
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 268
    return-void
.end method
