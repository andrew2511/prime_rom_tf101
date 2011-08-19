.class Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;
.super Ljava/lang/Object;
.source "AbstractSessionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteArray"
.end annotation


# instance fields
.field private final bytes:[B


# direct methods
.method constructor <init>([B)V
    .registers 2
    .parameter "bytes"

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;->bytes:[B

    .line 305
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .line 315
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;

    move-object v1, v0

    .line 316
    .local v1, other:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;->bytes:[B

    iget-object v3, v1, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;->bytes:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;->bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
