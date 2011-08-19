.class final Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;
.super Ljava/lang/Object;
.source "SSLSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ValueKey"
.end annotation


# instance fields
.field final acc:Ljava/security/AccessControlContext;

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;->name:Ljava/lang/String;

    .line 62
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;->acc:Ljava/security/AccessControlContext;

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 76
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 93
    :goto_5
    return v2

    .line 78
    :cond_6
    if-nez p1, :cond_a

    move v2, v4

    .line 79
    goto :goto_5

    .line 80
    :cond_a
    instance-of v2, p1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;

    if-nez v2, :cond_10

    move v2, v4

    .line 81
    goto :goto_5

    .line 82
    :cond_10
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;

    move-object v1, v0

    .line 83
    .local v1, other:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;->acc:Ljava/security/AccessControlContext;

    if-nez v2, :cond_1e

    .line 84
    iget-object v2, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;->acc:Ljava/security/AccessControlContext;

    if-eqz v2, :cond_2a

    move v2, v4

    .line 85
    goto :goto_5

    .line 86
    :cond_1e
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;->acc:Ljava/security/AccessControlContext;

    iget-object v3, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;->acc:Ljava/security/AccessControlContext;

    invoke-virtual {v2, v3}, Ljava/security/AccessControlContext;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    move v2, v4

    .line 87
    goto :goto_5

    .line 88
    :cond_2a
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;->name:Ljava/lang/String;

    if-nez v2, :cond_34

    .line 89
    iget-object v2, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;->name:Ljava/lang/String;

    if-eqz v2, :cond_40

    move v2, v4

    .line 90
    goto :goto_5

    .line 91
    :cond_34
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;->name:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    move v2, v4

    .line 92
    goto :goto_5

    :cond_40
    move v2, v5

    .line 93
    goto :goto_5
.end method

.method public hashCode()I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 67
    const/16 v0, 0x1f

    .line 68
    .local v0, prime:I
    const/4 v1, 0x1

    .line 69
    .local v1, result:I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;->acc:Ljava/security/AccessControlContext;

    if-nez v2, :cond_17

    move v2, v4

    :goto_b
    add-int/lit8 v1, v2, 0x1f

    .line 70
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;->name:Ljava/lang/String;

    if-nez v3, :cond_1e

    move v3, v4

    :goto_14
    add-int v1, v2, v3

    .line 71
    return v1

    .line 69
    :cond_17
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;->acc:Ljava/security/AccessControlContext;

    invoke-virtual {v2}, Ljava/security/AccessControlContext;->hashCode()I

    move-result v2

    goto :goto_b

    .line 70
    :cond_1e
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_14
.end method
