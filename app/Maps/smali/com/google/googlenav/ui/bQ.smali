.class public Lcom/google/googlenav/ui/bQ;
.super Ljava/lang/Object;


# static fields
.field private static a:Lk/f;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lk/m;IIIIIZ)V
    .locals 1

    if-nez p5, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0, p1}, Lk/m;->b(I)Z

    if-eqz p6, :cond_1

    invoke-interface {p0, p2, p3, p4, p5}, Lk/m;->b(IIII)V

    :goto_1
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lk/m;->a(I)V

    goto :goto_0

    :cond_1
    invoke-interface {p0, p2, p3, p5, p4}, Lk/m;->b(IIII)V

    goto :goto_1
.end method

.method public static a(Lk/m;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/16 v9, 0x19

    const/16 v8, 0xf

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/google/googlenav/ui/bQ;->a:Lk/f;

    if-nez v0, :cond_0

    const/high16 v0, -0x1

    invoke-static {v5, v4, v0}, Lcom/google/googlenav/ah;->a(IZI)Lk/f;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/bQ;->a:Lk/f;

    :cond_0
    sget-object v0, Lcom/google/googlenav/ui/bQ;->a:Lk/f;

    invoke-interface {p0, v0}, Lk/m;->a(Lk/f;)V

    sget-object v0, Lcom/google/googlenav/ui/bQ;->a:Lk/f;

    invoke-interface {v0}, Lk/f;->a()I

    move-result v6

    array-length v0, p2

    move v1, v4

    move v2, v4

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p2, v1

    invoke-interface {p0, v3, v8, v2}, Lk/m;->a(Ljava/lang/String;II)V

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v6

    goto :goto_0

    :cond_1
    array-length v0, p3

    move v1, v4

    move v7, v2

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    invoke-interface {p0, v2, v8, v7}, Lk/m;->a(Ljava/lang/String;II)V

    add-int/lit8 v1, v1, 0x1

    add-int v2, v7, v6

    move v7, v2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->ab()I

    move-result v0

    sub-int/2addr v0, v9

    const v1, 0x7fffffff

    sget-object v2, Lcom/google/googlenav/ui/bQ;->a:Lk/f;

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lk/o;->a(IILk/f;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    sub-int v1, p1, v7

    div-int/2addr v1, v6

    sub-int/2addr v1, v5

    array-length v2, v0

    sub-int v1, v2, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v7

    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_3

    rem-int/lit8 v3, v1, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-interface {p0, v3, v4, v2}, Lk/m;->a(Ljava/lang/String;II)V

    aget-object v3, v0, v1

    invoke-interface {p0, v3, v9, v2}, Lk/m;->a(Ljava/lang/String;II)V

    add-int/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
