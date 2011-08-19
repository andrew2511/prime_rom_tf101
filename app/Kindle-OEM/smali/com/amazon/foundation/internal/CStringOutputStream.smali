.class public Lcom/amazon/foundation/internal/CStringOutputStream;
.super Ljava/lang/Object;
.source "CStringOutputStream.java"

# interfaces
.implements Lcom/amazon/foundation/internal/ICharOutputStream;


# instance fields
.field public response:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/CStringOutputStream;->response:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public close()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public initialize()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public write([C)I
    .locals 2
    .parameter "buf"

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/foundation/internal/CStringOutputStream;->response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/foundation/internal/CStringOutputStream;->response:Ljava/lang/String;

    .line 43
    array-length v0, p1

    return v0
.end method
