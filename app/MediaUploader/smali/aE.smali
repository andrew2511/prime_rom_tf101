.class public final LaE;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/DataInputStream;

.field private b:Laj;


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaE;->a:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unrecognised protocol version"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, LaE;->b:Laj;

    if-eqz v0, :cond_0

    iput-object v1, p0, LaE;->b:Laj;

    :cond_0
    iget-object v0, p0, LaE;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    iput-object v1, p0, LaE;->a:Ljava/io/DataInputStream;

    return-void
.end method

.method public final b()LaH;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, LaE;->b:Laj;

    if-eqz v0, :cond_0

    iget-object v0, p0, LaE;->b:Laj;

    invoke-virtual {v0}, Laj;->a()V

    iput-object v3, p0, LaE;->b:Laj;

    :cond_0
    iget-object v0, p0, LaE;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iget-object v1, p0, LaE;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    const v2, 0x8100

    if-ne v1, v2, :cond_1

    new-instance v1, Laj;

    iget-object v2, p0, LaE;->a:Ljava/io/DataInputStream;

    invoke-direct {v1, v2, v0}, Laj;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, LaE;->b:Laj;

    new-instance v0, LaD;

    iget-object v1, p0, LaE;->b:Laj;

    invoke-direct {v0, v1}, LaD;-><init>(Laj;)V

    :goto_0
    return-object v0

    :cond_1
    const v2, 0x8101

    if-ne v1, v2, :cond_2

    new-instance v1, Laj;

    iget-object v2, p0, LaE;->a:Ljava/io/DataInputStream;

    invoke-direct {v1, v2, v0}, Laj;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, LaE;->b:Laj;

    new-instance v0, LaA;

    iget-object v1, p0, LaE;->b:Laj;

    invoke-direct {v0, v1}, LaA;-><init>(Laj;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, LaE;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-object v0, v3

    goto :goto_0
.end method
