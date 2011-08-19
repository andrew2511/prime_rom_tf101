.class Lorg/apache/xml/serializer/WriterToASCI;
.super Ljava/io/Writer;
.source "WriterToASCI.java"

# interfaces
.implements Lorg/apache/xml/serializer/WriterChain;


# instance fields
.field private final m_os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2
    .parameter "os"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/xml/serializer/WriterToASCI;->m_os:Ljava/io/OutputStream;

    .line 54
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToASCI;->m_os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 135
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToASCI;->m_os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 123
    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToASCI;->m_os:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .registers 2

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public write(I)V
    .registers 3
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToASCI;->m_os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 93
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 6
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 105
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_13

    .line 107
    iget-object v2, p0, Lorg/apache/xml/serializer/WriterToASCI;->m_os:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 109
    :cond_13
    return-void
.end method

.method public write([CII)V
    .registers 8
    .parameter "chars"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    add-int v1, p3, p2

    .line 73
    .local v1, n:I
    move v0, p2

    .local v0, i:I
    :goto_3
    if-ge v0, v1, :cond_f

    .line 75
    iget-object v2, p0, Lorg/apache/xml/serializer/WriterToASCI;->m_os:Ljava/io/OutputStream;

    aget-char v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 77
    :cond_f
    return-void
.end method
