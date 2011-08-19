.class final Lcom/skyhookwireless/_sdkd;
.super Ljava/io/OutputStream;


# instance fields
.field final _sdka:Lcom/skyhookwireless/_sdkg;

.field final _sdkb:Ljava/lang/StringBuilder;

.field final _sdkc:Lcom/skyhookwireless/_sdkcb;


# direct methods
.method public constructor <init>(Lcom/skyhookwireless/_sdkcb;Lcom/skyhookwireless/_sdkg;)V
    .locals 1

    iput-object p1, p0, Lcom/skyhookwireless/_sdkd;->_sdkc:Lcom/skyhookwireless/_sdkcb;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Lcom/skyhookwireless/_sdkd;->_sdka:Lcom/skyhookwireless/_sdkg;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/skyhookwireless/_sdkd;->_sdkb:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-object v0, p0, Lcom/skyhookwireless/_sdkd;->_sdkb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkd;->_sdkc:Lcom/skyhookwireless/_sdkcb;

    iget-object v1, p0, Lcom/skyhookwireless/_sdkd;->_sdka:Lcom/skyhookwireless/_sdkg;

    iget-object v2, p0, Lcom/skyhookwireless/_sdkd;->_sdkb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/skyhookwireless/_sdkcb;->_sdka(Lcom/skyhookwireless/_sdkg;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/_sdkd;->_sdkb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    return-void
.end method
