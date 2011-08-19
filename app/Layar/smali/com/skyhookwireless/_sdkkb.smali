.class public abstract Lcom/skyhookwireless/_sdkkb;
.super Ljava/lang/Object;


# instance fields
.field protected _sdka:I

.field protected _sdkb:Ljava/lang/String;

.field protected _sdkc:J

.field protected _sdkd:Ljava/io/InputStream;


# direct methods
.method protected constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/skyhookwireless/_sdkkb;->_sdka:I

    iput-object v2, p0, Lcom/skyhookwireless/_sdkkb;->_sdkb:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/skyhookwireless/_sdkkb;->_sdkc:J

    iput-object v2, p0, Lcom/skyhookwireless/_sdkkb;->_sdkd:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public _sdka()I
    .locals 1

    iget v0, p0, Lcom/skyhookwireless/_sdkkb;->_sdka:I

    return v0
.end method

.method public _sdkb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkkb;->_sdkb:Ljava/lang/String;

    return-object v0
.end method

.method public _sdkc()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkkb;->_sdkd:Ljava/io/InputStream;

    return-object v0
.end method

.method public _sdkd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/_sdkkb;->_sdkd:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method
