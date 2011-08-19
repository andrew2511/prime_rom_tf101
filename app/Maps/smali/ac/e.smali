.class public Lac/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lac/e;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/strings.dat"

    sput-object v0, Lac/e;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lac/e;->b:Lac/e;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lac/e;->g:[Ljava/lang/String;

    iput-object v0, p0, Lac/e;->h:[Ljava/lang/String;

    invoke-static {p1}, Lac/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lac/e;->c(Ljava/lang/String;)V

    invoke-static {}, Lac/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lac/e;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lac/e;
    .locals 1

    new-instance v0, Lac/e;

    invoke-direct {v0, p0}, Lac/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lac/e;->b:Lac/e;

    sget-object v0, Lac/e;->b:Lac/e;

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    invoke-static {p0}, Lac/e;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lac/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    move v3, v2

    move v4, v7

    move v2, v7

    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_2

    aget-object v5, p1, v2

    if-nez v2, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-static {v0, v1, v5, v6}, Lac/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v5

    if-le v5, v3, :cond_0

    move v3, v5

    move v4, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1

    :cond_2
    aget-object v0, p1, v4

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v2, 0x5f

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    const-string v0, "en"

    if-eqz p0, :cond_1

    const/16 v1, 0x2d

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, LR/a;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v5, :cond_0

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    aget-object v0, v1, v4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    array-length v2, v1

    if-lt v2, v5, :cond_1

    aget-object v2, v1, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lac/e;->i(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Lac/e;->i(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lac/e;->i(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    move-object v0, v3

    goto :goto_0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "en"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "en_AU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "en_NZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "en_GB"

    goto :goto_0

    :cond_2
    const-string v0, "nb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "no"

    goto :goto_0

    :cond_3
    move-object v0, p0

    goto :goto_0
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lac/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "microedition.locale"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lac/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static i(Ljava/lang/String;)I
    .locals 2

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz v1, :cond_0

    if-lt v0, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lac/e;->h:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lac/e;->h:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lac/e;->h:[Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/DataInput;Z)[Ljava/lang/String;
    .locals 16

    invoke-static/range {p1 .. p1}, Lac/e;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lac/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez p2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "data input is null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v4

    const v5, 0xfab2

    if-eq v4, v5, :cond_1

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Bum string resources signature"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v4, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v5

    invoke-interface/range {p2 .. p2}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v6

    if-lez v6, :cond_6

    if-lez v5, :cond_6

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v14, v9

    move-object v9, v4

    move v4, v14

    move v15, v7

    move v7, v8

    move v8, v15

    :goto_0
    if-ge v4, v6, :cond_4

    invoke-interface/range {p2 .. p2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Ljava/io/DataInput;->readInt()I

    move-result v12

    if-nez v4, :cond_3

    const/4 v13, 0x1

    :goto_1
    invoke-static {v2, v3, v11, v13}, Lac/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v11

    if-le v11, v8, :cond_2

    move v7, v12

    move v8, v11

    move-object v9, v10

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    :cond_4
    const/4 v2, -0x1

    if-ne v8, v2, :cond_5

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Empty string resources"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    move-object/from16 v0, p2

    move v1, v7

    invoke-static {v0, v1}, Ln/c;->a(Ljava/io/DataInput;I)V

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_7

    invoke-interface/range {p2 .. p2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Bum string resources"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    if-eqz p3, :cond_8

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lac/e;->e:Ljava/lang/String;

    :cond_8
    return-object v2
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lac/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lac/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lac/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lac/e;->c:Ljava/lang/String;

    iget-object v0, p0, Lac/e;->c:Ljava/lang/String;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lac/e;->c:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lac/e;->d:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v1, p0, Lac/e;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lac/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lac/e;->e:Ljava/lang/String;

    iget-object v0, p0, Lac/e;->e:Ljava/lang/String;

    invoke-static {v0}, Lac/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lac/e;->f:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lac/e;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lac/e;->h:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lac/e;->f:Ljava/lang/String;

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lac/e;->e:Ljava/lang/String;

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lac/e;->f:Ljava/lang/String;

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lac/e;->e:Ljava/lang/String;

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lac/e;->f:Ljava/lang/String;

    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lac/e;->e:Ljava/lang/String;

    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
