.class public Lcom/skyhookwireless/wps/_sdkb;
.super Ljava/io/InputStream;


# static fields
.field static final synthetic _sdkc:Z


# instance fields
.field private final _sdka:Ljava/nio/ByteBuffer;

.field private final _sdkb:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/skyhookwireless/wps/_sdkb;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/skyhookwireless/wps/_sdkb;->_sdkc:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;II)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkb;->_sdkc:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput p2, p0, Lcom/skyhookwireless/wps/_sdkb;->_sdkb:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkb;->_sdka:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkb;->_sdka:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/skyhookwireless/wps/_sdkb;->_sdkb:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkb;->_sdka:Ljava/nio/ByteBuffer;

    add-int v1, p2, p3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkb;->_sdkc:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkb;->_sdka:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public _sdka()I
    .locals 2

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkb;->_sdka:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget v1, p0, Lcom/skyhookwireless/wps/_sdkb;->_sdkb:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public available()I
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkb;->_sdka:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkb;->_sdka:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkb;->_sdka:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/skyhookwireless/wps/_sdkb;->_sdkb:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public skip(J)J
    .locals 5

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkb;->available()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkb;->_sdka:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkb;->_sdka:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, v0

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-wide v0
.end method
