.class public final LaD;
.super LaH;


# instance fields
.field private a:Lav;


# direct methods
.method public constructor <init>(Laj;)V
    .locals 3

    invoke-direct {p0, p1}, LaH;-><init>(Laj;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-instance v2, Lav;

    invoke-direct {v2, v1, v0, p1}, Lav;-><init>(Ljava/lang/String;ILaj;)V

    iput-object v2, p0, LaD;->a:Lav;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, LaD;->a:Lav;

    invoke-virtual {v0}, Lav;->a()I

    move-result v0

    return v0
.end method

.method public final b()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, LaD;->a:Lav;

    invoke-virtual {v0}, Lav;->b()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
