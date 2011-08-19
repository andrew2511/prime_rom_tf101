.class public Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;
.super Ljava/io/PrintStream;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stream"
.end annotation


# static fields
.field private static indent:I


# instance fields
.field private final prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput v0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->indent:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 36
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {p0, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->prefix:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public endIndent()V
    .registers 3

    .prologue
    .line 53
    sget v0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->indent:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->indent:I

    .line 54
    return-void
.end method

.method public newIndent()V
    .registers 2

    .prologue
    .line 49
    sget v0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->indent:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->indent:I

    .line 50
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 42
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget v1, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->indent:I

    if-ge v0, v1, :cond_d

    .line 43
    const-string v1, "  "

    invoke-super {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 45
    :cond_d
    invoke-super {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public print([B)V
    .registers 9
    .parameter "data"

    .prologue
    .line 63
    const/16 v1, 0x10

    const-string v2, " "

    const-string v3, ""

    const/4 v5, 0x0

    array-length v6, p1

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[BII)V

    .line 64
    return-void
.end method

.method public print([BII)V
    .registers 11
    .parameter "data"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 67
    const/16 v1, 0x10

    const-string v2, " "

    const-string v3, ""

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[BII)V

    .line 68
    return-void
.end method

.method public printAsHex(ILjava/lang/String;Ljava/lang/String;[B)V
    .registers 12
    .parameter "perLine"
    .parameter "prefix"
    .parameter "delimiter"
    .parameter "data"

    .prologue
    .line 74
    const/4 v5, 0x0

    array-length v6, p4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[BII)V

    .line 75
    return-void
.end method

.method public printAsHex(ILjava/lang/String;Ljava/lang/String;[BII)V
    .registers 12
    .parameter "perLine"
    .parameter "prefix"
    .parameter "delimiter"
    .parameter "data"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 81
    const-string v1, ""

    .line 82
    .local v1, line:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-ge v0, p6, :cond_53

    .line 83
    add-int v3, v0, p5

    aget-byte v3, p4, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, tail:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2d

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    :cond_2d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    add-int/lit8 v3, v0, 0x1

    rem-int/2addr v3, p1

    if-nez v3, :cond_50

    .line 91
    invoke-super {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    const-string v1, ""

    .line 82
    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 95
    .end local v2           #tail:Ljava/lang/String;
    :cond_53
    invoke-super {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public println(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print(Ljava/lang/String;)V

    .line 59
    invoke-super {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    return-void
.end method
