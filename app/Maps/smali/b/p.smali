.class public final Lb/p;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lb/p;


# instance fields
.field private final b:[Lb/k;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/p;

    invoke-direct {v0}, Lb/p;-><init>()V

    sput-object v0, Lb/p;->a:Lb/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [Lb/k;

    iput-object v0, p0, Lb/p;->b:[Lb/k;

    iget-object v0, p0, Lb/p;->b:[Lb/k;

    sget-object v1, Lb/h;->a:Lb/h;

    aput-object v1, v0, v2

    iput v2, p0, Lb/p;->c:I

    return-void
.end method

.method private a(I)V
    .locals 4

    move v0, p1

    :goto_0
    iget v1, p0, Lb/p;->c:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lb/p;->b:[Lb/k;

    iget-object v2, p0, Lb/p;->b:[Lb/k;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lb/p;->c:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lb/p;->c:I

    return-void
.end method

.method private a(Lb/k;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lb/p;->b:[Lb/k;

    iget v1, p0, Lb/p;->c:I

    aget-object v0, v0, v1

    sget-object v1, Lb/h;->a:Lb/h;

    if-ne v0, v1, :cond_1

    sget-object v0, Lb/C;->a:Lb/C;

    if-ne p1, v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    sget-object v1, Lb/C;->a:Lb/C;

    if-ne v0, v1, :cond_3

    sget-object v0, Lb/c;->a:Lb/c;

    if-ne p1, v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    sget-object v1, Lb/c;->a:Lb/c;

    if-ne v0, v1, :cond_6

    sget-object v0, Lb/y;->a:Lb/y;

    if-eq p1, v0, :cond_4

    sget-object v0, Lb/x;->a:Lb/x;

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_0

    :cond_6
    sget-object v1, Lb/y;->a:Lb/y;

    if-ne v0, v1, :cond_8

    sget-object v0, Lb/x;->a:Lb/x;

    if-ne p1, v0, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v3

    goto :goto_0

    :cond_8
    sget-object v1, Lb/x;->a:Lb/x;

    if-ne v0, v1, :cond_a

    sget-object v0, Lb/A;->a:Lb/A;

    if-ne p1, v0, :cond_9

    move v0, v2

    goto :goto_0

    :cond_9
    move v0, v3

    goto :goto_0

    :cond_a
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a()Lb/k;
    .locals 2

    iget-object v0, p0, Lb/p;->b:[Lb/k;

    iget v1, p0, Lb/p;->c:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a(Lb/w;)V
    .locals 5

    iget-object v0, p0, Lb/p;->b:[Lb/k;

    iget v1, p0, Lb/p;->c:I

    aget-object v0, v0, v1

    invoke-static {p1}, Lb/w;->a(Lb/w;)Lb/k;

    move-result-object v1

    invoke-static {p1}, Lb/w;->b(Lb/w;)I

    move-result v2

    new-instance v3, Lah/h;

    invoke-direct {v3, v0, v1}, Lah/h;-><init>(Lb/k;Lb/k;)V

    invoke-static {v3}, LaT/d;->b(LaT/f;)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lb/p;->b:[Lb/k;

    aget-object v4, v4, v3

    if-ne v4, v1, :cond_3

    invoke-direct {p0, v3}, Lb/p;->a(I)V

    add-int/lit8 v2, v2, -0x1

    :cond_0
    iget v3, p0, Lb/p;->c:I

    if-le v2, v3, :cond_1

    invoke-virtual {v0}, Lb/k;->n()V

    :cond_1
    invoke-virtual {v0}, Lb/k;->k()V

    iput v2, p0, Lb/p;->c:I

    iget-object v0, p0, Lb/p;->b:[Lb/k;

    iget v2, p0, Lb/p;->c:I

    aput-object v1, v0, v2

    invoke-virtual {v1}, Lb/k;->j()V

    invoke-static {p1}, Lb/w;->c(Lb/w;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lb/k;->m()V

    :cond_2
    invoke-virtual {v1}, Lb/k;->x()V

    invoke-virtual {v1}, Lb/k;->h()V

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public a(Lb/k;Z)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lb/p;->b:[Lb/k;

    iget v1, p0, Lb/p;->c:I

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lb/p;->a(Lb/k;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_1
    new-instance v0, Lb/w;

    if-eqz p2, :cond_2

    iget v1, p0, Lb/p;->c:I

    move v3, v1

    :goto_1
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lb/w;-><init>(Lb/p;Lb/k;IZLb/f;)V

    invoke-virtual {p0}, Lb/p;->a()Lb/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/k;->a(Lb/w;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lb/p;->a(Lb/w;)V

    move v0, v6

    goto :goto_0

    :cond_2
    iget v1, p0, Lb/p;->c:I

    add-int/lit8 v1, v1, 0x1

    move v3, v1

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_0
.end method

.method public b()V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lb/p;->b:[Lb/k;

    iget v1, p0, Lb/p;->c:I

    aget-object v0, v0, v1

    sget-object v1, Lb/h;->a:Lb/h;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lb/p;->b:[Lb/k;

    iget v1, p0, Lb/p;->c:I

    aget-object v0, v0, v1

    sget-object v1, Lb/C;->a:Lb/C;

    if-eq v0, v1, :cond_0

    new-instance v0, Lb/w;

    sget-object v2, Lb/y;->a:Lb/y;

    const/4 v5, 0x0

    move-object v1, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lb/w;-><init>(Lb/p;Lb/k;IZLb/f;)V

    invoke-virtual {p0, v0}, Lb/p;->a(Lb/w;)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 6

    const/4 v4, 0x1

    iget v0, p0, Lb/p;->c:I

    if-lt v0, v4, :cond_1

    new-instance v0, Lb/w;

    iget-object v1, p0, Lb/p;->b:[Lb/k;

    iget v2, p0, Lb/p;->c:I

    sub-int/2addr v2, v4

    aget-object v2, v1, v2

    iget v1, p0, Lb/p;->c:I

    sub-int v3, v1, v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lb/w;-><init>(Lb/p;Lb/k;IZLb/f;)V

    invoke-virtual {p0}, Lb/p;->a()Lb/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/k;->a(Lb/w;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lb/p;->a(Lb/w;)V

    :cond_0
    move v0, v4

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
