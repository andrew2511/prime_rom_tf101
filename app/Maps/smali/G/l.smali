.class public LG/l;
.super Ljava/lang/Object;

# interfaces
.implements LG/d;


# instance fields
.field private a:LG/r;


# direct methods
.method public constructor <init>(LG/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG/l;->a:LG/r;

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILG/q;)LG/l;
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    :cond_0
    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, LG/l;

    invoke-static {}, LG/r;->a()LG/r;

    move-result-object v1

    invoke-direct {v0, v1}, LG/l;-><init>(LG/r;)V

    return-object v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(LG/w;Ljava/io/DataOutput;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    return-void
.end method

.method public b()LG/ac;
    .locals 1

    sget-object v0, LG/ac;->a:LG/ac;

    return-object v0
.end method

.method public h()LG/r;
    .locals 1

    iget-object v0, p0, LG/l;->a:LG/r;

    return-object v0
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m()[I
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public n()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
