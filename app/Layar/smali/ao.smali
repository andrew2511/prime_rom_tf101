.class public abstract Lao;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lad;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lad;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lad;-><init>(Z)V

    sput-object v0, Lao;->a:Lad;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Appendable;Lad;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final a()Z
    .locals 1

    instance-of v0, p0, Lak;

    return v0
.end method

.method public final b()Z
    .locals 1

    instance-of v0, p0, Lat;

    return v0
.end method

.method public final c()Z
    .locals 1

    instance-of v0, p0, Las;

    return v0
.end method

.method public final d()Lat;
    .locals 2

    instance-of v0, p0, Lat;

    if-eqz v0, :cond_0

    check-cast p0, Lat;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This is not a JSON Object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Lak;
    .locals 2

    instance-of v0, p0, Lak;

    if-eqz v0, :cond_0

    check-cast p0, Lak;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This is not a JSON Array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()Lau;
    .locals 2

    instance-of v0, p0, Lau;

    if-eqz v0, :cond_0

    check-cast p0, Lau;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This is not a JSON Primitive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()Las;
    .locals 2

    instance-of v0, p0, Las;

    if-eqz v0, :cond_0

    check-cast p0, Las;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This is not a JSON Null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lao;->a:Lad;

    invoke-virtual {p0, v0, v1}, Lao;->a(Ljava/lang/Appendable;Lad;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
