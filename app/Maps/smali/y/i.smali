.class public Ly/i;
.super Ly/j;


# instance fields
.field private b:Ly/m;


# direct methods
.method public constructor <init>(Lp/j;)V
    .locals 3

    invoke-direct {p0, p1}, Ly/j;-><init>(Lp/j;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-instance v2, Ly/m;

    invoke-direct {v2, v1, v0, p1}, Ly/m;-><init>(Ljava/lang/String;ILp/j;)V

    iput-object v2, p0, Ly/i;->b:Ly/m;

    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    iget-object v0, p0, Ly/i;->b:Ly/m;

    invoke-virtual {v0}, Ly/m;->e()I

    move-result v0

    return v0
.end method

.method public f()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Ly/i;->b:Ly/m;

    invoke-virtual {v0}, Ly/m;->f()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
