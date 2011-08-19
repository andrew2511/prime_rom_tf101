.class Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters$Bytes;
.super Ljava/lang/Object;
.source "IndexedPKIXParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bytes"
.end annotation


# instance fields
.field final bytes:[B

.field final hash:I


# direct methods
.method constructor <init>([B)V
    .registers 3
    .parameter "bytes"

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters$Bytes;->bytes:[B

    .line 150
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters$Bytes;->hash:I

    .line 151
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters$Bytes;->bytes:[B

    check-cast p1, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters$Bytes;

    .end local p1
    iget-object v1, p1, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters$Bytes;->bytes:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 153
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters$Bytes;->hash:I

    return v0
.end method
