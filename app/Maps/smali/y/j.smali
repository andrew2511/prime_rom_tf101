.class public abstract Ly/j;
.super Ly/l;

# interfaces
.implements Lp/n;


# static fields
.field private static c:Lag/g;


# instance fields
.field protected a:Lp/j;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ly/j;

    invoke-static {v0}, Lag/g;->a(Ljava/lang/Class;)Lag/g;

    move-result-object v0

    sput-object v0, Ly/j;->c:Lag/g;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ly/l;-><init>()V

    invoke-virtual {p0, p1}, Ly/j;->c(I)V

    iput p2, p0, Ly/j;->b:I

    return-void
.end method

.method public constructor <init>(Lp/j;)V
    .locals 3

    invoke-direct {p0}, Ly/l;-><init>()V

    iput-object p1, p0, Ly/j;->a:Lp/j;

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p0, v1}, Ly/j;->c(I)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ly/j;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Ly/j;->c:Lag/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ly/j;->y()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ly/j;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lag/g;->b(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ly/j;->c:Lag/g;

    const-string v2, "Response() - IOException when reading block payload"

    invoke-virtual {v1, v2, v0}, Lag/g;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Ly/j;->b:I

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Ly/j;->a:Lp/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ly/j;->a:Lp/j;

    invoke-virtual {v0}, Lp/j;->b()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public abstract e()I
.end method

.method public abstract f()Ljava/io/InputStream;
.end method
