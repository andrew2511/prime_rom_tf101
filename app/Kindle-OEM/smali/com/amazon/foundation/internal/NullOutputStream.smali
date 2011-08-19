.class public Lcom/amazon/foundation/internal/NullOutputStream;
.super Ljava/lang/Object;
.source "NullOutputStream.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IDataOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public close()Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public initialize()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public write([B)I
    .locals 1
    .parameter "buf"

    .prologue
    .line 28
    if-nez p1, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0

    :cond_0
    array-length v0, p1

    goto :goto_0
.end method

.method public write([BII)I
    .locals 1
    .parameter "buf"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0

    :cond_0
    move v0, p3

    goto :goto_0
.end method
