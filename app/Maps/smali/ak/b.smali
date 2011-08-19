.class public final Lak/b;
.super Ljava/lang/Object;

# interfaces
.implements Lac/f;


# instance fields
.field private final a:Lak/h;


# direct methods
.method private constructor <init>(Lak/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lak/b;->a:Lak/h;

    return-void
.end method

.method synthetic constructor <init>(Lak/h;Lak/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lak/b;-><init>(Lak/h;)V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/Object;[B)Ljava/lang/Object;
    .locals 8

    const/4 v7, 0x0

    if-eqz p3, :cond_0

    array-length v0, p3

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    new-instance v0, Lak/a;

    const/16 v1, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p3

    move v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lak/a;-><init>(I[BZZZLjava/lang/Object;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    :cond_0
    move-object v0, v7

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v7

    goto :goto_0
.end method

.method public a(ZLjava/lang/String;Ljava/lang/Throwable;Lac/j;)V
    .locals 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, " Q=Y"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "5080011"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {p4, p3}, Lac/j;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lak/b;->a:Lak/h;

    const/16 v2, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lak/h;->a(I[BZZ)V

    return-void

    :cond_0
    :try_start_1
    const-string v2, " Q=N"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
