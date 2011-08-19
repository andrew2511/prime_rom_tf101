.class Ljava/util/logging/FileHandler$MeasureOutputStream;
.super Ljava/io/OutputStream;
.source "FileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/FileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MeasureOutputStream"
.end annotation


# instance fields
.field length:J

.field wrapped:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "stream"

    .prologue
    .line 579
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/util/logging/FileHandler$MeasureOutputStream;-><init>(Ljava/io/OutputStream;J)V

    .line 580
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;J)V
    .registers 4
    .parameter "stream"
    .parameter "currentLength"

    .prologue
    .line 573
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 574
    iput-object p1, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->wrapped:Ljava/io/OutputStream;

    .line 575
    iput-wide p2, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->length:J

    .line 576
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
    .line 602
    iget-object v0, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 603
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
    .line 607
    iget-object v0, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 608
    return-void
.end method

.method public getLength()J
    .registers 3

    .prologue
    .line 611
    iget-wide v0, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->length:J

    return-wide v0
.end method

.method public setLength(J)V
    .registers 3
    .parameter "newLength"

    .prologue
    .line 615
    iput-wide p1, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->length:J

    .line 616
    return-void
.end method

.method public write(I)V
    .registers 6
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 584
    iget-object v0, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 585
    iget-wide v0, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->length:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->length:J

    .line 586
    return-void
.end method

.method public write([B)V
    .registers 6
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    iget-object v0, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 591
    iget-wide v0, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->length:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->length:J

    .line 592
    return-void
.end method

.method public write([BII)V
    .registers 8
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 596
    iget-object v0, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 597
    iget-wide v0, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->length:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->length:J

    .line 598
    return-void
.end method
