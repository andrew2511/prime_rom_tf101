.class public abstract Lac/l;
.super Ljava/lang/Object;

# interfaces
.implements Lac/h;


# static fields
.field private static final e:Ljava/util/Hashtable;


# instance fields
.field protected final a:I

.field protected final b:Ljava/util/Vector;

.field private final c:Ljava/lang/String;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lac/l;->e:Ljava/util/Hashtable;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lac/l;->b:Ljava/util/Vector;

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxSize < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MRUMemory_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lac/l;->c:Ljava/lang/String;

    iput p2, p0, Lac/l;->a:I

    invoke-static {p0}, Lac/i;->a(Lac/h;)V

    sget-object v0, Lac/l;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static a(Ljava/lang/String;)Lac/l;
    .locals 1

    sget-object v0, Lac/l;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lac/l;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lac/l;->d:Z

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    iget-object v1, p0, Lac/l;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ln/a;->a(Ljava/lang/String;[B)Z

    iget-object v0, p0, Lac/l;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method protected abstract a(Ljava/io/DataInputStream;)V
.end method

.method protected abstract a(Ljava/io/DataOutputStream;)V
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lac/l;->d:Z

    iget-object v0, p0, Lac/l;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public b()I
    .locals 1

    invoke-virtual {p0}, Lac/l;->c()V

    iget-object v0, p0, Lac/l;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method protected c()V
    .locals 1

    iget-boolean v0, p0, Lac/l;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lac/l;->d()V

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lac/l;->d:Z

    :try_start_0
    iget-object v0, p0, Lac/l;->c:Ljava/lang/String;

    invoke-static {v0}, Lac/i;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    check-cast v0, Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lac/l;->a(Ljava/io/DataInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MEMORY"

    invoke-static {v1, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lac/l;->a()V

    goto :goto_0
.end method

.method protected e()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Lac/l;->a(Ljava/io/DataOutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->g()Ln/a;

    move-result-object v1

    iget-object v2, p0, Lac/l;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ln/a;->a(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MEMORY"

    invoke-static {v1, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
