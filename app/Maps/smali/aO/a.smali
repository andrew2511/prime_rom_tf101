.class public LaO/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lj/ao;

.field private static final b:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lj/C;

    invoke-direct {v0}, Lj/C;-><init>()V

    const-string v1, "Web"

    const-string v2, "gmm-google"

    invoke-virtual {v0, v1, v2}, Lj/C;->a(Ljava/lang/Object;Ljava/lang/Object;)Lj/C;

    move-result-object v0

    const-string v1, "gmm-android-google"

    const-string v2, "gmm-google"

    invoke-virtual {v0, v1, v2}, Lj/C;->a(Ljava/lang/Object;Ljava/lang/Object;)Lj/C;

    move-result-object v0

    const-string v1, "gmm-android-verizon"

    const-string v2, "gmm-android-verizon"

    invoke-virtual {v0, v1, v2}, Lj/C;->a(Ljava/lang/Object;Ljava/lang/Object;)Lj/C;

    move-result-object v0

    const-string v1, "gmm-android-tmobile-us"

    const-string v2, "gmm-android-tmobile-us"

    invoke-virtual {v0, v1, v2}, Lj/C;->a(Ljava/lang/Object;Ljava/lang/Object;)Lj/C;

    move-result-object v0

    const-string v1, "gmm-android-sprint-us"

    const-string v2, "gmm-android-sprint-us"

    invoke-virtual {v0, v1, v2}, Lj/C;->a(Ljava/lang/Object;Ljava/lang/Object;)Lj/C;

    move-result-object v0

    const-string v1, "gmm-android-sonyericsson"

    const-string v2, "gmm-google"

    invoke-virtual {v0, v1, v2}, Lj/C;->a(Ljava/lang/Object;Ljava/lang/Object;)Lj/C;

    move-result-object v0

    const-string v1, "gmm-android-motorola"

    const-string v2, "gmm-google"

    invoke-virtual {v0, v1, v2}, Lj/C;->a(Ljava/lang/Object;Ljava/lang/Object;)Lj/C;

    move-result-object v0

    invoke-virtual {v0}, Lj/C;->a()Lj/ao;

    move-result-object v0

    sput-object v0, LaO/a;->a:Lj/ao;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-long v2, v2

    xor-long/2addr v0, v2

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2, v0, v1}, Ljava/util/Random;-><init>(J)V

    sput-object v2, LaO/a;->b:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()Z
    .locals 1

    invoke-static {}, LaO/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, LaO/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OPT_OUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, LaO/a;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LaO/a;->c(Ljava/lang/String;)V

    invoke-static {}, LaO/a;->c()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    sget-object v0, LaO/a;->a:Lj/ao;

    invoke-static {}, Lac/m;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj/ao;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ca-mb-app-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, LaO/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LaO/a;->g()Ljava/lang/String;

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-static {}, LaO/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lak/h;->g(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()V
    .locals 2

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-static {}, LaO/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lak/h;->g(Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "ContentAdCookie"

    invoke-static {p0}, LaO/a;->d(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ln/a;->a(Ljava/lang/String;[B)Z

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    invoke-static {}, LaO/a;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPT_OUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private static d(Ljava/lang/String;)[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-interface {v1, p0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->ai()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/adprefs?ck="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LaO/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "ContentAdCookie"

    invoke-interface {v0, v1}, Ln/a;->b_(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, LaO/a;->g()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {v0}, LaO/a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ContentAds"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, LaO/a;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static g()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMM_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, LaO/a;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LaO/a;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method private static h()J
    .locals 2

    sget-object v0, LaO/a;->b:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method
