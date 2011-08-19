.class public Ly/n;
.super Ljava/lang/Object;


# instance fields
.field private a:Ly/j;

.field private b:Ljava/io/DataInputStream;

.field private c:[Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ly/j;)V
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly/n;->a:Ly/j;

    invoke-virtual {p1}, Ly/j;->a()I

    move-result v0

    iput v0, p0, Ly/n;->g:I

    invoke-virtual {p1}, Ly/j;->e()I

    move-result v0

    iput v0, p0, Ly/n;->f:I

    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ly/j;->f()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ly/n;->b:Ljava/io/DataInputStream;

    instance-of v0, p1, Ly/o;

    if-eqz v0, :cond_0

    check-cast p1, Ly/o;

    invoke-virtual {p1}, Ly/o;->c()Ly/e;

    move-result-object v0

    invoke-virtual {v0}, Ly/e;->g()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v0

    iput v0, p0, Ly/n;->e:I

    iget v0, p0, Ly/n;->e:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Ly/n;->c:[Ljava/lang/String;

    iget v0, p0, Ly/n;->e:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Ly/n;->d:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Ly/n;->c:[Ljava/lang/String;

    aput-object v0, v4, v3

    iget-object v4, p0, Ly/n;->d:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Ly/n;->f:I

    if-lez v0, :cond_1

    iget-object v0, p0, Ly/n;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Ly/n;->e:I

    iget v0, p0, Ly/n;->f:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ly/n;->f:I

    iget v0, p0, Ly/n;->e:I

    if-lez v0, :cond_1

    iget v0, p0, Ly/n;->e:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Ly/n;->c:[Ljava/lang/String;

    iget v0, p0, Ly/n;->e:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Ly/n;->d:[Ljava/lang/String;

    move v0, v3

    :goto_1
    iget v1, p0, Ly/n;->e:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ly/n;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ly/n;->c:[Ljava/lang/String;

    aput-object v1, v2, v0

    iget v2, p0, Ly/n;->f:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iput v1, p0, Ly/n;->f:I

    iget-object v1, p0, Ly/n;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ly/n;->d:[Ljava/lang/String;

    aput-object v1, v2, v0

    iget v2, p0, Ly/n;->f:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iput v1, p0, Ly/n;->f:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Ly/n;->g:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Ly/n;->f:I

    return v0
.end method

.method public c()Ljava/io/DataInputStream;
    .locals 1

    iget-object v0, p0, Ly/n;->b:Ljava/io/DataInputStream;

    return-object v0
.end method

.method public d()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly/n;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public e()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly/n;->d:[Ljava/lang/String;

    return-object v0
.end method
