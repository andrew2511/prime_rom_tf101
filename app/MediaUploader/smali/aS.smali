.class public final LaS;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Exception;

.field private b:LaH;

.field private c:Ljava/io/DataInputStream;

.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:[I

.field private h:[I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(LaH;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaS;->b:LaH;

    invoke-virtual {p1}, LaH;->g()I

    move-result v0

    iput v0, p0, LaS;->k:I

    iget v0, p0, LaS;->k:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p1}, LaH;->b()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, LaS;->c:Ljava/io/DataInputStream;

    iget-object v0, p0, LaS;->c:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaS;->d:Ljava/lang/String;

    iget-object v0, p0, LaS;->c:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, LaS;->k:I

    iget-object v0, p0, LaS;->c:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, LaS;->i:I

    iget v0, p0, LaS;->i:I

    if-lez v0, :cond_0

    iget v0, p0, LaS;->i:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, LaS;->e:[Ljava/lang/String;

    iget v0, p0, LaS;->i:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, LaS;->f:[Ljava/lang/String;

    move v0, v3

    :goto_0
    iget v1, p0, LaS;->i:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LaS;->e:[Ljava/lang/String;

    iget-object v2, p0, LaS;->c:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, LaS;->f:[Ljava/lang/String;

    iget-object v2, p0, LaS;->c:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LaS;->c:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, LaS;->j:I

    iget v0, p0, LaS;->j:I

    if-lez v0, :cond_1

    iget v0, p0, LaS;->j:I

    new-array v0, v0, [I

    iput-object v0, p0, LaS;->g:[I

    iget v0, p0, LaS;->j:I

    new-array v0, v0, [I

    iput-object v0, p0, LaS;->h:[I

    move v0, v3

    :goto_1
    iget v1, p0, LaS;->j:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LaS;->c:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iget-object v2, p0, LaS;->c:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iget-object v3, p0, LaS;->g:[I

    aput v1, v3, v0

    iget-object v3, p0, LaS;->h:[I

    sub-int v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, LaS;->c:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    :cond_2
    invoke-virtual {p1}, LaH;->c()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaS;->a:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, LaS;->b:LaH;

    if-eqz v0, :cond_0

    iget-object v0, p0, LaS;->b:LaH;

    invoke-virtual {v0}, LaH;->c()V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, LaS;->a:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, LaS;->a:Ljava/lang/Exception;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, LaS;->k:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LaS;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, LaS;->j:I

    return v0
.end method

.method public final g()[I
    .locals 1

    iget-object v0, p0, LaS;->g:[I

    return-object v0
.end method

.method public final h()[I
    .locals 1

    iget-object v0, p0, LaS;->h:[I

    return-object v0
.end method

.method public final i()Ljava/io/DataInputStream;
    .locals 1

    iget-object v0, p0, LaS;->c:Ljava/io/DataInputStream;

    return-object v0
.end method
