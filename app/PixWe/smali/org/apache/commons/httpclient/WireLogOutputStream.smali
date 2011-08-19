.class Lorg/apache/commons/httpclient/WireLogOutputStream;
.super Ljava/io/FilterOutputStream;
.source "WireLogOutputStream.java"


# instance fields
.field private out:Ljava/io/OutputStream;

.field private wire:Lorg/apache/commons/httpclient/Wire;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/commons/httpclient/Wire;)V
    .locals 0
    .parameter "out"
    .parameter "wire"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 59
    iput-object p1, p0, Lorg/apache/commons/httpclient/WireLogOutputStream;->out:Ljava/io/OutputStream;

    .line 60
    iput-object p2, p0, Lorg/apache/commons/httpclient/WireLogOutputStream;->wire:Lorg/apache/commons/httpclient/Wire;

    .line 61
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/commons/httpclient/WireLogOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 78
    iget-object v0, p0, Lorg/apache/commons/httpclient/WireLogOutputStream;->wire:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/Wire;->output(I)V

    .line 79
    return-void
.end method

.method public write([B)V
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/commons/httpclient/WireLogOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 87
    iget-object v0, p0, Lorg/apache/commons/httpclient/WireLogOutputStream;->wire:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/Wire;->output([B)V

    .line 88
    return-void
.end method

.method public write([BII)V
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
    .line 68
    iget-object v0, p0, Lorg/apache/commons/httpclient/WireLogOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 69
    iget-object v0, p0, Lorg/apache/commons/httpclient/WireLogOutputStream;->wire:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/httpclient/Wire;->output([BII)V

    .line 70
    return-void
.end method
