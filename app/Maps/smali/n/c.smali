.class public Ln/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ln/c;->a:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;[BI)I
    .locals 10

    const v8, 0xd800

    const v7, 0xfc00

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, p2

    :goto_0
    if-ge v1, v0, :cond_8

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v8, :cond_9

    const v4, 0xdfff

    if-gt v3, v4, :cond_9

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_9

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int v5, v4, v7

    and-int v6, v3, v7

    xor-int/2addr v5, v6

    const/16 v6, 0x400

    if-ne v5, v6, :cond_9

    add-int/lit8 v1, v1, 0x1

    and-int v5, v4, v7

    if-ne v5, v8, :cond_0

    move v9, v4

    move v4, v3

    move v3, v9

    :cond_0
    and-int/lit16 v3, v3, 0x3ff

    shl-int/lit8 v3, v3, 0xa

    and-int/lit16 v4, v4, 0x3ff

    or-int/2addr v3, v4

    const/high16 v4, 0x1

    add-int/2addr v3, v4

    move v9, v3

    move v3, v1

    move v1, v9

    :goto_1
    const/16 v4, 0x7f

    if-gt v1, v4, :cond_2

    if-eqz p1, :cond_1

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    :cond_1
    add-int/lit8 v1, v2, 0x1

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_0

    :cond_2
    const/16 v4, 0x7ff

    if-gt v1, v4, :cond_4

    if-eqz p1, :cond_3

    shr-int/lit8 v4, v1, 0x6

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    add-int/lit8 v4, v2, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v4

    :cond_3
    add-int/lit8 v1, v2, 0x2

    goto :goto_2

    :cond_4
    const v4, 0xffff

    if-gt v1, v4, :cond_6

    if-eqz p1, :cond_5

    shr-int/lit8 v4, v1, 0xc

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v2, 0x2

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v4

    :cond_5
    add-int/lit8 v1, v2, 0x3

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    shr-int/lit8 v4, v1, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v2, 0x2

    shr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v2, 0x3

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v4

    :cond_7
    add-int/lit8 v1, v2, 0x4

    goto :goto_2

    :cond_8
    return v2

    :cond_9
    move v9, v3

    move v3, v1

    move v1, v9

    goto :goto_1
.end method

.method public static a([B)Ljava/io/DataInput;
    .locals 1

    new-instance v0, LaL/a;

    invoke-direct {v0, p0}, LaL/a;-><init>([B)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v2, 0x3a

    const/16 v5, 0x2f

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-static {p0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v0, v3, :cond_2

    move-object v0, p0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v0, v3, :cond_4

    if-eq v1, v3, :cond_a

    :cond_4
    if-eq v0, v3, :cond_6

    if-eq v1, v3, :cond_6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_5
    :goto_2
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v1, v3, :cond_7

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    if-ne v0, v3, :cond_5

    move v0, v1

    goto :goto_2

    :cond_7
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x2

    if-le v2, v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    move-object v0, p0

    goto :goto_3
.end method

.method public static a(Ln/b;Ljava/lang/String;Ljava/util/Vector;II)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-interface {p0}, Ln/b;->a()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Network not available."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, p1, v1}, Ln/b;->a(Ljava/lang/String;Z)Ln/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-static {v1, p2}, Ln/c;->a(Ln/n;Ljava/util/Vector;)V

    invoke-interface {v1}, Ln/n;->d()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    const/16 v2, 0x12d

    if-eq v0, v2, :cond_2

    const/16 v2, 0x12e

    if-eq v0, v2, :cond_2

    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unexpected response."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {v5}, Ln/c;->a(Ljava/io/OutputStream;)V

    invoke-static {v1}, Ln/c;->a(Ln/n;)V

    throw v0

    :catch_0
    move-exception v1

    move-object v2, v5

    :goto_2
    if-ge v0, p3, :cond_1

    int-to-long v3, p4

    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    invoke-static {v5}, Ln/c;->a(Ljava/io/OutputStream;)V

    invoke-static {v2}, Ln/c;->a(Ln/n;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :cond_2
    :try_start_5
    const-string v0, "Location"

    invoke-interface {v1, v0}, Ln/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid redirect."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p1, v0}, Ln/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    invoke-static {v5}, Ln/c;->a(Ljava/io/OutputStream;)V

    invoke-static {v1}, Ln/c;->a(Ln/n;)V

    return-object v0

    :catch_1
    move-exception v1

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v5

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_2
.end method

.method public static a([BIIZ)Ljava/lang/String;
    .locals 12

    const v10, 0xd800

    const/16 v9, 0x80

    const/4 v8, 0x1

    new-instance v0, Ljava/lang/StringBuffer;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_d

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0x7f

    if-gt v1, v3, :cond_0

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v3, 0xf5

    if-lt v1, v3, :cond_2

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v2

    goto :goto_0

    :cond_2
    const/16 v3, 0xe0

    const/16 v4, 0x1f

    move v5, v8

    move v6, v3

    move v3, v4

    move v4, v9

    :goto_1
    if-lt v1, v6, :cond_4

    shr-int/lit8 v6, v6, 0x1

    or-int/lit16 v6, v6, 0x80

    if-ne v5, v8, :cond_3

    const/4 v7, 0x4

    :goto_2
    shl-int/2addr v4, v7

    add-int/lit8 v5, v5, 0x1

    shr-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x5

    goto :goto_2

    :cond_4
    and-int/2addr v1, v3

    const/4 v3, 0x0

    move v11, v3

    move v3, v2

    move v2, v1

    move v1, v11

    :goto_3
    if-ge v1, v5, :cond_8

    shl-int/lit8 v2, v2, 0x6

    if-lt v3, p2, :cond_5

    if-nez p3, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez p3, :cond_6

    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xc0

    if-eq v6, v9, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/lit8 v6, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    move v3, v6

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    if-nez p3, :cond_9

    if-lt v2, v4, :cond_a

    :cond_9
    if-lt v2, v10, :cond_b

    const v1, 0xdfff

    if-gt v2, v1, :cond_b

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const v1, 0xffff

    if-gt v2, v1, :cond_c

    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v3

    goto/16 :goto_0

    :cond_c
    const/high16 v1, 0x1

    sub-int v1, v2, v1

    shr-int/lit8 v2, v1, 0xa

    or-int/2addr v2, v10

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const v2, 0xdc00

    and-int/lit16 v1, v1, 0x3ff

    or-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v3

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;I)V
    .locals 4

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-lez p1, :cond_1

    const/16 v0, 0x800

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [B

    move v1, p1

    :goto_0
    if-lez v1, :cond_1

    array-length v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {p0, v0, v3, v2}, Ljava/io/DataInput;->readFully([BII)V

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    const/16 v0, 0x200

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Ljava/io/OutputStream;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ln/n;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ln/n;->f()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ln/n;Ljava/util/Vector;)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    move v2, v5

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    aget-object v3, v0, v5

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-interface {p0, v3, v0}, Ln/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 1

    const/16 v0, 0x20

    invoke-static {p0, v0}, Ln/c;->a(Ljava/io/InputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;I)[B
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p0, v0}, Ln/c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0}, Ln/c;->a(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    invoke-static {p0}, Ln/c;->b(Ljava/io/InputStream;)V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-static {v0}, Ln/c;->a(Ljava/io/OutputStream;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p0}, Ln/c;->b(Ljava/io/InputStream;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Ln/c;->a(Ljava/lang/String;[BI)I

    move-result v0

    new-array v0, v0, [B

    invoke-static {p0, v0, v1}, Ln/c;->a(Ljava/lang/String;[BI)I

    return-object v0
.end method

.method public static a([BIII)[B
    .locals 6

    const/4 v4, 0x0

    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [B

    invoke-static {p0, p1, v0, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v3, p2, 0x1

    invoke-direct {v2, v0, v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {v1, v2}, Lac/m;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    new-array v1, p3, [B

    move v2, v4

    move v3, p3

    :goto_0
    if-lez v3, :cond_0

    :try_start_0
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    sub-int/2addr v3, v4

    add-int/2addr v2, v4

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] bytes, but only read ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1

    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-static {p0}, Ln/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    aget-byte v4, v0, v3

    const/16 v5, 0x41

    if-gt v5, v4, :cond_0

    const/16 v5, 0x5a

    if-le v4, v5, :cond_3

    :cond_0
    const/16 v5, 0x61

    if-gt v5, v4, :cond_1

    const/16 v5, 0x7a

    if-le v4, v5, :cond_3

    :cond_1
    const/16 v5, 0x30

    if-gt v5, v4, :cond_2

    const/16 v5, 0x39

    if-le v4, v5, :cond_3

    :cond_2
    const/16 v5, 0x2d

    if-eq v4, v5, :cond_3

    const/16 v5, 0x5f

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_3

    const/16 v5, 0x21

    if-eq v4, v5, :cond_3

    const/16 v5, 0x7e

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_3

    const/16 v5, 0x27

    if-eq v4, v5, :cond_3

    const/16 v5, 0x28

    if-eq v4, v5, :cond_3

    const/16 v5, 0x29

    if-ne v4, v5, :cond_4

    :cond_3
    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/16 v5, 0x20

    if-ne v4, v5, :cond_5

    const/16 v4, 0x2b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    const/16 v5, 0x25

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v5, Ln/c;->a:[C

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v5, Ln/c;->a:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/io/InputStream;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [B

    move v2, v7

    move v3, v7

    :goto_0
    if-ge v2, v0, :cond_1

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    add-int/lit8 v5, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    move v3, v5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :sswitch_0
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x20

    aput-byte v5, v1, v3

    move v3, v4

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v2, 0x3

    if-ge v4, v5, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v2, 0x3

    :try_start_1
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x2

    move v3, v4

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-static {v1, v7, v3, v0}, Ln/c;->a([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x2b -> :sswitch_0
    .end sparse-switch
.end method
