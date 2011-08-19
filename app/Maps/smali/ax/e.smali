.class public Lax/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/String;IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p3, :cond_0

    const v0, 0xfffe

    if-le p3, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "For compatibility to Android, menu item order must be between 0 and 65534"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lax/e;->a:Ljava/lang/String;

    iput p2, p0, Lax/e;->b:I

    iput p3, p0, Lax/e;->c:I

    iput-object p4, p0, Lax/e;->d:Ljava/lang/Object;

    iput-object p5, p0, Lax/e;->e:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;II)Lax/e;
    .locals 6

    const/4 v4, 0x0

    new-instance v0, Lax/e;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lax/e;-><init>(Ljava/lang/String;IILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;IILjava/lang/Object;Ljava/lang/Object;)Lax/e;
    .locals 6

    new-instance v0, Lax/e;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lax/e;-><init>(Ljava/lang/String;IILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a([Lax/e;[Lax/e;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_5

    aget-object v1, p0, v0

    aget-object v2, p1, v0

    if-eq v1, v2, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v4

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lax/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lax/e;->a:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lax/e;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lax/e;->c:I

    return v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lax/e;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lax/e;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lax/e;->a:Ljava/lang/String;

    return-object v0
.end method
