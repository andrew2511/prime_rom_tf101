.class public Lorg/apache/http/impl/io/IdentityInputStream;
.super Ljava/io/InputStream;
.source "IdentityInputStream.java"


# instance fields
.field private closed:Z

.field private final in:Lorg/apache/http/io/SessionInputBuffer;


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->closed:Z

    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/io/IdentityInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    .line 71
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionInputBuffer;->isDataAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->closed:Z

    .line 83
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, -0x1

    .line 89
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionInputBuffer;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, -0x1

    .line 97
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/io/SessionInputBuffer;->read([BII)I

    move-result v0

    goto :goto_0
.end method
