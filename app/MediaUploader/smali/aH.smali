.class public abstract LaH;
.super Lat;

# interfaces
.implements Lak;


# instance fields
.field private a:Laj;

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lat;-><init>()V

    invoke-virtual {p0, p1}, LaH;->a(I)V

    iput p2, p0, LaH;->b:I

    return-void
.end method

.method public constructor <init>(Laj;)V
    .locals 2

    invoke-direct {p0}, Lat;-><init>()V

    iput-object p1, p0, LaH;->a:Laj;

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p0, v1}, LaH;->a(I)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, LaH;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()Ljava/io/InputStream;
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final g()I
    .locals 1

    iget v0, p0, LaH;->b:I

    return v0
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, LaH;->a:Laj;

    if-eqz v0, :cond_0

    iget-object v0, p0, LaH;->a:Laj;

    invoke-virtual {v0}, Laj;->b()V

    :cond_0
    return-void
.end method
