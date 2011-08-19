.class public Lcom/google/googlenav/android/u;
.super Landroid/net/UrlQuerySanitizer;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/net/UrlQuerySanitizer;-><init>()V

    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/google/googlenav/android/u;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/net/UrlQuerySanitizer;-><init>(Ljava/lang/String;)V

    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/google/googlenav/android/u;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(B)C
    .locals 1

    and-int/lit16 v0, p0, 0xff

    int-to-char v0, v0

    return v0
.end method

.method private static a(C)I
    .locals 4

    const/16 v3, 0x61

    const/16 v2, 0x41

    const/16 v1, 0x30

    if-lt p0, v1, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    sub-int v0, p0, v1

    :goto_0
    return v0

    :cond_0
    if-lt p0, v2, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    sub-int v0, p0, v2

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_1
    if-lt p0, v3, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    sub-int v0, p0, v3

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "utf-8"

    invoke-static {p0, v0}, Lcom/google/googlenav/android/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-byte v4, v0, v3

    invoke-static {v4}, Lcom/google/googlenav/android/u;->a(B)C

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_0

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v5, 0x25

    if-ne v4, v5, :cond_1

    add-int/lit8 v5, v3, 0x2

    if-ge v5, v1, :cond_1

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v0, v5

    invoke-static {v5}, Lcom/google/googlenav/android/u;->a(B)C

    move-result v5

    invoke-static {v5}, Lcom/google/googlenav/android/u;->a(C)I

    move-result v5

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, v0, v6

    invoke-static {v6}, Lcom/google/googlenav/android/u;->a(B)C

    move-result v6

    invoke-static {v6}, Lcom/google/googlenav/android/u;->a(C)I

    move-result v6

    if-ltz v5, :cond_1

    if-ltz v6, :cond_1

    mul-int/lit8 v4, v5, 0x10

    add-int/2addr v4, v6

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lag/e;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v0, p0

    :goto_2
    return-object v0

    :cond_2
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "utf-8"

    invoke-static {p1, v0}, Lcom/google/googlenav/android/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
