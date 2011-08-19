.class public LG/O;
.super LG/D;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, LG/D;-><init>(I)V

    return-void
.end method

.method public static b(Ljava/io/DataInput;I)LG/O;
    .locals 2

    const/16 v0, 0x9

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, LG/O;

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    invoke-direct {v0, v1}, LG/O;-><init>(I)V

    goto :goto_0
.end method
