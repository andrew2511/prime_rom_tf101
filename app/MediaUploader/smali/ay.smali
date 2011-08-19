.class public final Lay;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/DataInputStream;

.field private b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(LaH;)V
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, LaH;->g()I

    move-result v0

    iput v0, p0, Lay;->f:I

    invoke-virtual {p1}, LaH;->a()I

    move-result v0

    iput v0, p0, Lay;->e:I

    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p1}, LaH;->b()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lay;->a:Ljava/io/DataInputStream;

    instance-of v0, p1, LaA;

    if-eqz v0, :cond_0

    check-cast p1, LaA;

    invoke-virtual {p1}, LaA;->e()Lau;

    move-result-object v0

    invoke-virtual {v0}, Lau;->e()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v0

    iput v0, p0, Lay;->d:I

    iget v0, p0, Lay;->d:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lay;->b:[Ljava/lang/String;

    iget v0, p0, Lay;->d:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lay;->c:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lay;->b:[Ljava/lang/String;

    aput-object v0, v4, v3

    iget-object v4, p0, Lay;->c:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lay;->e:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lay;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lay;->d:I

    iget v0, p0, Lay;->e:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lay;->e:I

    iget v0, p0, Lay;->d:I

    if-lez v0, :cond_1

    iget v0, p0, Lay;->d:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lay;->b:[Ljava/lang/String;

    iget v0, p0, Lay;->d:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lay;->c:[Ljava/lang/String;

    move v0, v3

    :goto_1
    iget v1, p0, Lay;->d:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lay;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lay;->b:[Ljava/lang/String;

    aput-object v1, v2, v0

    iget v2, p0, Lay;->e:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iput v1, p0, Lay;->e:I

    iget-object v1, p0, Lay;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lay;->c:[Ljava/lang/String;

    aput-object v1, v2, v0

    iget v2, p0, Lay;->e:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iput v1, p0, Lay;->e:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lay;->f:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lay;->e:I

    return v0
.end method

.method public final c()Ljava/io/DataInputStream;
    .locals 1

    iget-object v0, p0, Lay;->a:Ljava/io/DataInputStream;

    return-object v0
.end method

.method public final d()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lay;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public final e()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lay;->c:[Ljava/lang/String;

    return-object v0
.end method
