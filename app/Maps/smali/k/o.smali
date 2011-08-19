.class public Lk/o;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lk/j;

.field public static final b:Lk/c;

.field private static c:Lac/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lk/o;->a:Lk/j;

    sput-object v0, Lk/o;->b:Lk/c;

    new-instance v0, Lac/s;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lac/s;-><init>(I)V

    sput-object v0, Lk/o;->c:Lac/s;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;C)I
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, p1}, LaZ/a;->a(CC)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_1
    if-lt v0, v3, :cond_2

    sub-int v1, v0, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v1, v2}, LaZ/a;->a(CC)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;I)I
    .locals 2

    const-string v0, " \u2003"

    invoke-static {p0, v0, p1}, Lk/o;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3

    const/4 v2, -0x1

    move v0, p2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Lk/f;I)I
    .locals 4

    const/4 v3, 0x0

    if-gtz p2, :cond_1

    move v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, p0}, Lk/f;->a(Ljava/lang/String;)I

    move-result v1

    if-le v1, p2, :cond_0

    mul-int/lit8 v2, p2, 0x2

    if-le v1, v2, :cond_5

    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_6

    invoke-interface {p1, p0, v3, v1}, Lk/f;->a(Ljava/lang/String;II)I

    move-result v2

    if-ge v2, p2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-ne v2, p2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    :cond_5
    if-lez v0, :cond_0

    invoke-interface {p1, p0, v3, v0}, Lk/f;->a(Ljava/lang/String;II)I

    move-result v1

    if-gt v1, p2, :cond_4

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, " "

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lk/o;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    sub-int v2, v0, v2

    move v5, v2

    move v2, v0

    move v0, v5

    :goto_1
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lk/f;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-interface {p1, p0}, Lk/f;->a(Ljava/lang/String;)I

    move-result v0

    if-gt v0, p2, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lk/o;->b(Ljava/lang/String;Lk/f;ILjava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lk/m;Lk/f;Ljava/lang/String;IIII[ILk/j;Lk/c;)V
    .locals 5

    const/4 v0, 0x0

    invoke-interface {p1}, Lk/f;->a()I

    move-result v1

    invoke-static {}, Lac/m;->K()Z

    move-result v2

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lk/m;->a(Lk/f;)V

    :cond_0
    invoke-static {p2, p3, p4}, Lk/o;->a(Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p2

    if-eqz v2, :cond_1

    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    div-int/lit8 v2, p3, 0x2

    if-ge p4, v2, :cond_1

    sub-int v2, p3, p4

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v3, p2, p4

    aget-object v4, p2, v2

    aput-object v4, p2, p4

    aput-object v3, p2, v2

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    move p4, v0

    move-object v0, p1

    move p1, p3

    move p3, v1

    :goto_1
    array-length v1, p2

    if-ge p1, v1, :cond_7

    aget-object v1, p2, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_4

    if-eqz p0, :cond_2

    aget-object v1, p2, p1

    add-int v2, p5, p4

    invoke-interface {v0, p0, v1, v2, p6}, Lk/f;->a(Lk/m;Ljava/lang/String;II)V

    :cond_2
    aget-object v1, p2, p1

    invoke-interface {v0, v1}, Lk/f;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr p4, v1

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    aget-object v1, p2, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xff00

    if-lt v1, v2, :cond_5

    const v2, 0xff00

    sub-int/2addr v1, v2

    int-to-char v1, v1

    if-eqz p9, :cond_3

    invoke-interface {p9, v1}, Lk/c;->a(C)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p9, v1}, Lk/c;->b(C)Lk/f;

    move-result-object v0

    invoke-interface {v0}, Lk/f;->a()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    if-eqz p0, :cond_3

    invoke-interface {p0, v0}, Lk/m;->a(Lk/f;)V

    goto :goto_2

    :cond_5
    if-eqz p8, :cond_3

    invoke-interface {p8, v1}, Lk/j;->a(C)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p8, v1}, Lk/j;->b(C)I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result p3

    if-eqz p0, :cond_6

    invoke-interface {p8, v1}, Lk/j;->d(C)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v2, p6

    :goto_3
    add-int v3, p5, p4

    invoke-static {p6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface {p8, v1, p0, v3, v2}, Lk/j;->a(CLk/m;II)Z

    :cond_6
    invoke-interface {p8, v1}, Lk/j;->c(C)I

    move-result v1

    add-int/2addr p4, v1

    goto :goto_2

    :pswitch_0
    sub-int v2, p3, v2

    add-int/2addr v2, p6

    goto :goto_3

    :pswitch_1
    sub-int v2, p3, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p6

    goto :goto_3

    :pswitch_2
    invoke-interface {v0}, Lk/f;->c()I

    move-result v3

    sub-int v2, v3, v2

    add-int/2addr v2, p6

    goto :goto_3

    :cond_7
    if-eqz p7, :cond_8

    const/4 p0, 0x0

    aput p4, p7, p0

    const/4 p0, 0x1

    aput p3, p7, p0

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lk/m;Lk/f;Ljava/lang/String;II[ILk/j;Lk/c;)V
    .locals 10

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lk/o;->a(Lk/m;Lk/f;Ljava/lang/String;IIII[ILk/j;Lk/c;)V

    return-void
.end method

.method private static a(C)Z
    .locals 2

    const-string v0, " \u2003"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lk/m;IIII)Z
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p0}, Lk/m;->c()I

    move-result v0

    add-int v1, p2, p4

    if-ge v0, v1, :cond_1

    invoke-interface {p0}, Lk/m;->e()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_1

    invoke-interface {p0}, Lk/m;->b()I

    move-result v0

    add-int v1, p1, p3

    if-ge v0, v1, :cond_0

    invoke-interface {p0}, Lk/m;->d()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static a(Lk/f;Ljava/lang/String;Lk/j;Lk/c;)[I
    .locals 12

    const v11, 0xff00

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [I

    invoke-interface {p0}, Lk/f;->a()I

    move-result v2

    move v3, v2

    move v4, v9

    move-object v5, p0

    move v2, v9

    :goto_0
    if-ge v2, v0, :cond_5

    add-int/lit8 v6, v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_0

    invoke-interface {v5, v7}, Lk/f;->a(C)I

    move-result v7

    aput v7, v1, v6

    aget v6, v1, v6

    add-int/2addr v4, v6

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v7, v2, 0x1

    if-lt v7, v0, :cond_1

    aput v9, v1, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v11, :cond_3

    if-eqz p3, :cond_2

    sub-int v5, v7, v11

    int-to-char v5, v5

    invoke-interface {p3, v5}, Lk/c;->b(C)Lk/f;

    move-result-object v5

    invoke-interface {v5}, Lk/f;->a()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_2
    aput v9, v1, v6

    :goto_2
    aget v7, v1, v6

    add-int/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    aput v9, v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2, v7}, Lk/j;->c(C)I

    move-result v8

    aput v8, v1, v6

    invoke-interface {p2, v7}, Lk/j;->b(C)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v2, 0x2

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lk/f;->a(Ljava/lang/String;)I

    move-result v7

    aput v7, v1, v6

    goto :goto_2

    :cond_5
    aput v4, v1, v9

    aput v3, v1, v10

    return-object v1
.end method

.method public static a(IILk/f;Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 9

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p3, p0, p1

    :cond_0
    return-object p0

    :cond_1
    if-lez p4, :cond_4

    invoke-static {p3}, Lk/o;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lk/f;->a(Ljava/lang/String;)I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-interface {p2, v2}, Lk/f;->a(C)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p2, p3}, Lk/f;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v7, ""

    sub-int v0, p0, p4

    if-le v0, v1, :cond_7

    sub-int v2, p0, p4

    const/4 v3, 0x1

    sget-object v4, Lk/o;->a:Lk/j;

    sget-object v5, Lk/o;->b:Lk/c;

    const/4 v6, 0x1

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v6}, Lk/o;->a(Lk/f;Ljava/lang/String;IILk/j;Lk/c;Z)[Ljava/lang/String;

    move-result-object p4

    array-length v0, p4

    if-lez v0, :cond_7

    const/4 v0, 0x0

    aget-object p4, p4, v0

    :goto_2
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p3, v0}, Lk/o;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string p3, "\n"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    const v3, 0x7fffffff

    sget-object v4, Lk/o;->a:Lk/j;

    sget-object v5, Lk/o;->b:Lk/c;

    const/4 v6, 0x1

    move-object v0, p2

    move v2, p0

    invoke-static/range {v0 .. v6}, Lk/o;->a(Lk/f;Ljava/lang/String;IILk/j;Lk/c;Z)[Ljava/lang/String;

    move-result-object p3

    :goto_3
    array-length v0, p3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    const/4 p4, 0x0

    const/4 v1, 0x1

    array-length v2, p3

    invoke-static {p3, p4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v0

    :goto_4
    array-length p4, p3

    if-le p4, p1, :cond_5

    new-array p4, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sub-int v2, p1, v2

    invoke-static {p3, v0, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    sub-int v1, p1, v1

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object p3, p3, p1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    const-string v0, "..."

    invoke-static {p3, p2, p0, v0}, Lk/o;->a(Ljava/lang/String;Lk/f;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p4, p1

    move-object p0, p4

    :goto_5
    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :goto_6
    array-length p2, p0

    if-ge p1, p2, :cond_0

    aget-object p2, p0, p1

    invoke-static {p2}, Lk/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_4
    const/4 v3, -0x1

    sget-object v4, Lk/o;->a:Lk/j;

    sget-object v5, Lk/o;->b:Lk/c;

    const/4 v6, 0x1

    move-object v0, p2

    move-object v1, p3

    move v2, p0

    invoke-static/range {v0 .. v6}, Lk/o;->a(Lk/f;Ljava/lang/String;IILk/j;Lk/c;Z)[Ljava/lang/String;

    move-result-object p3

    goto :goto_4

    :cond_5
    move-object p0, p3

    goto :goto_5

    :cond_6
    move-object p3, v2

    goto :goto_3

    :cond_7
    move-object p4, v7

    goto/16 :goto_2
.end method

.method public static a(Ljava/lang/String;II)[Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    add-int v0, p1, p2

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    move v3, v2

    move v2, p1

    :goto_0
    if-ltz v3, :cond_1

    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v3, 0x1

    if-ge v2, v0, :cond_0

    add-int/lit8 v2, v3, 0x2

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v3, 0x2

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_0

    :cond_1
    if-ge v2, v0, :cond_2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v0, v3, :cond_3

    move-object v0, p0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0

    :cond_3
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Lk/f;Ljava/lang/String;IILk/j;Lk/c;Z)[Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_1
    if-lez p3, :cond_2

    :goto_1
    invoke-static {p0, p1, p4, p5}, Lk/o;->a(Lk/f;Ljava/lang/String;Lk/j;Lk/c;)[I

    move-result-object p0

    if-nez p6, :cond_3

    const/4 p4, 0x0

    aget p4, p0, p4

    if-gt p4, p2, :cond_3

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p1, p0, p2

    goto :goto_0

    :cond_2
    const p3, 0x7fffffff

    goto :goto_1

    :cond_3
    new-instance p4, Ljava/util/Vector;

    invoke-direct {p4}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p5

    invoke-static {p1}, Lk/o;->c(Ljava/lang/String;)I

    move-result v0

    if-nez p6, :cond_4

    if-ltz v0, :cond_b

    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result v1

    if-gt v1, p3, :cond_b

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x2

    move v7, v2

    move v2, v1

    move v1, v7

    :goto_2
    array-length v3, p0

    if-ge v1, v3, :cond_b

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v7, v3

    move v3, v1

    move v1, v7

    :goto_3
    array-length v5, p0

    if-ge v3, v5, :cond_12

    aget v5, p0, v3

    add-int/2addr v5, v1

    if-le v5, p2, :cond_6

    if-eqz p6, :cond_5

    const/4 v5, 0x2

    sub-int v5, v3, v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_6

    :cond_5
    const/4 v5, 0x2

    sub-int v5, v3, v5

    if-ne v5, v2, :cond_12

    :cond_6
    if-eqz p6, :cond_7

    const/4 v5, 0x2

    sub-int v5, v3, v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_7

    const/4 v1, 0x1

    add-int/lit8 v3, v3, 0x1

    :goto_4
    const/4 v4, 0x2

    sub-int v4, v3, v4

    if-eqz v1, :cond_8

    if-le v4, v2, :cond_8

    const/4 v5, 0x1

    sub-int v5, v4, v5

    :goto_5
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :goto_6
    if-ge v4, p5, :cond_9

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lk/o;->a(C)Z

    move-result v6

    if-eqz v6, :cond_9

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v5, v3, 0x1

    aget v3, p0, v3

    add-int/2addr v1, v3

    move v3, v5

    goto :goto_3

    :cond_8
    move v5, v4

    goto :goto_5

    :cond_9
    if-nez v1, :cond_11

    const/4 v1, 0x2

    sub-int v1, v3, v1

    if-ne v4, v1, :cond_11

    array-length v1, p0

    if-ge v3, v1, :cond_11

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v5, v1}, Lk/o;->a(Ljava/lang/String;C)I

    move-result v1

    if-ltz v1, :cond_11

    add-int/2addr v1, v2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    move v2, v1

    move-object v1, v7

    :goto_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lk/o;->a(C)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_a
    invoke-virtual {p4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v2, 0x2

    goto/16 :goto_2

    :cond_b
    if-nez p6, :cond_10

    if-ltz v0, :cond_c

    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result p6

    if-le p6, p3, :cond_10

    :cond_c
    const/4 p3, 0x0

    const/4 p6, 0x2

    invoke-virtual {p4}, Ljava/util/Vector;->removeAllElements()V

    move v7, p6

    move p6, p3

    move p3, v7

    :goto_8
    array-length v0, p0

    if-ge p3, v0, :cond_10

    const/4 v0, 0x0

    move v7, v0

    move v0, p3

    move p3, v7

    :goto_9
    array-length v1, p0

    if-ge v0, v1, :cond_e

    aget v1, p0, v0

    add-int/2addr v1, p3

    if-le v1, p2, :cond_d

    const/4 v1, 0x2

    sub-int v1, v0, v1

    if-ne v1, p6, :cond_e

    :cond_d
    add-int/lit8 v1, v0, 0x1

    aget v0, p0, v0

    add-int/2addr p3, v0

    move v0, v1

    goto :goto_9

    :cond_e
    const/4 p3, 0x2

    sub-int p3, v0, p3

    invoke-virtual {p1, p6, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p6

    :goto_a
    if-ge p3, p5, :cond_f

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lk/o;->a(C)Z

    move-result v0

    if-eqz v0, :cond_f

    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    :cond_f
    invoke-virtual {p4, p6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 p6, p3, 0x2

    move v7, p6

    move p6, p3

    move p3, v7

    goto :goto_8

    :cond_10
    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {p4, p0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    move-object v1, v5

    move v2, v4

    goto/16 :goto_7

    :cond_12
    move v1, v4

    goto/16 :goto_4
.end method

.method private static b(Ljava/lang/String;)I
    .locals 3

    const/4 v2, -0x1

    const-string v0, " \u2003"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lk/o;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, " \u2003"

    invoke-static {p0, v1, v0}, Lk/o;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3

    const/4 v2, -0x1

    move v0, p2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;Lk/f;ILjava/lang/String;)I
    .locals 2

    invoke-interface {p1, p3}, Lk/f;->a(Ljava/lang/String;)I

    move-result v0

    sub-int v0, p2, v0

    invoke-static {p0, p1, v0}, Lk/o;->a(Ljava/lang/String;Lk/f;I)I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, LR/a;->a(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x1

    move v0, v3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    sub-int v1, v0, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v1, v2}, LaZ/a;->a(CC)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
