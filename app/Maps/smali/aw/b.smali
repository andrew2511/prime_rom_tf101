.class public final Law/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Law/b;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Law/e;III)I
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    invoke-static {v0, p2, p3}, Law/b;->c(Law/e;II)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, p3

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, p3

    goto :goto_0
.end method

.method public static a(Law/f;Ljava/io/InputStream;Law/e;)I
    .locals 6

    const/4 v0, 0x1

    invoke-static {p1, v0}, Law/e;->a(Ljava/io/InputStream;Z)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const-wide/16 v2, 0x7

    and-long/2addr v2, v0

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Message expected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v2, 0x3

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Law/f;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Law/f;

    invoke-virtual {p2, p0}, Law/e;->a(Law/f;)V

    const/4 v1, 0x0

    invoke-static {p1, v1}, Law/e;->a(Ljava/io/InputStream;Z)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p2, p1, v1}, Law/e;->a(Ljava/io/InputStream;I)I

    goto :goto_0
.end method

.method public static a(Law/e;IJ)J
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Law/e;->e(I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p2

    goto :goto_0

    :catch_0
    move-exception v0

    move-wide v0, p2

    goto :goto_0

    :catch_1
    move-exception v0

    move-wide v0, p2

    goto :goto_0
.end method

.method public static a(Law/e;)Law/e;
    .locals 2

    new-instance v0, Law/e;

    invoke-virtual {p0}, Law/e;->c()Law/f;

    move-result-object v1

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    invoke-virtual {p0}, Law/e;->f()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Law/e;->a([B)Law/e;

    return-object v0
.end method

.method public static a(Law/f;Ljava/io/DataInput;)Law/e;
    .locals 4

    new-instance v0, Law/e;

    invoke-direct {v0, p0}, Law/e;-><init>(Law/f;)V

    invoke-static {p1}, Law/b;->a(Ljava/io/DataInput;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Law/e;->a(Ljava/io/InputStream;)Law/e;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;)Ljava/io/InputStream;
    .locals 3

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    new-instance v1, Ln/r;

    check-cast p0, Ljava/io/InputStream;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Ln/r;-><init>(Ljava/io/InputStream;I)V

    if-gez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Law/b;->a:Z

    invoke-static {v1}, Ln/g;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Law/e;I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Law/e;II)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Law/e;->i(I)I

    move-result v0

    if-le v0, p2, :cond_0

    invoke-virtual {p0, p1, p2}, Law/e;->f(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/io/DataOutput;Law/e;)V
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1, v0}, Law/e;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    invoke-interface {p0, v1}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method public static b(Law/e;I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Law/e;->g(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Law/e;II)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    invoke-static {v0, p2}, Law/b;->a(Law/e;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static c(Law/e;II)I
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Law/e;->d(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, p2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, p2

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, p2

    goto :goto_0
.end method

.method public static c(Law/e;I)Law/e;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Law/e;->f(I)Law/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Law/e;II)J
    .locals 3

    const-wide/16 v1, -0x1

    :try_start_0
    invoke-static {p0, p1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    invoke-static {v0, p2}, Law/b;->g(Law/e;I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    move-wide v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-wide v0, v1

    goto :goto_0
.end method

.method public static d(Law/e;I)[Law/e;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_1

    new-array v0, v1, [Law/e;

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Law/e;->i(I)I

    move-result v0

    new-array v0, v0, [Law/e;

    :goto_0
    invoke-virtual {p0, p1}, Law/e;->i(I)I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, p1, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static e(Law/e;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Law/b;->c(Law/e;II)I

    move-result v0

    return v0
.end method

.method public static f(Law/e;I)J
    .locals 3

    const-wide/16 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Law/e;->e(I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-wide v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-wide v0, v1

    goto :goto_0
.end method

.method public static g(Law/e;I)J
    .locals 3

    const-wide/16 v1, -0x1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Law/e;->e(I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-wide v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-wide v0, v1

    goto :goto_0
.end method

.method public static h(Law/e;I)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Law/e;->b(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static i(Law/e;I)Law/e;
    .locals 1

    invoke-virtual {p0, p1}, Law/e;->a(I)Law/e;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Law/e;->a(ILaw/e;)V

    return-object v0
.end method
