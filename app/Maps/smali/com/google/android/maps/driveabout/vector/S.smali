.class public abstract Lcom/google/android/maps/driveabout/vector/S;
.super Lcom/google/android/maps/driveabout/vector/cr;


# instance fields
.field protected final a:LG/d;

.field protected final b:LG/r;

.field protected final c:Lcom/google/android/maps/driveabout/vector/bh;

.field protected final d:F

.field protected final e:F

.field protected final f:I

.field protected final g:Z

.field protected h:Z

.field private i:Z


# direct methods
.method protected constructor <init>(LG/d;Lcom/google/android/maps/driveabout/vector/bh;LG/r;FFIZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cr;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/S;->a:LG/d;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/S;->b:LG/r;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/bh;

    iput p4, p0, Lcom/google/android/maps/driveabout/vector/S;->d:F

    iput p5, p0, Lcom/google/android/maps/driveabout/vector/S;->e:F

    iput p6, p0, Lcom/google/android/maps/driveabout/vector/S;->f:I

    iput-boolean p7, p0, Lcom/google/android/maps/driveabout/vector/S;->g:Z

    return-void
.end method

.method public static a(LG/r;FIIF)F
    .locals 3

    invoke-virtual {p0}, LG/r;->f()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, p4

    return v0
.end method

.method static a(I)I
    .locals 3

    const/16 v0, 0xa0

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/vector/S;->a(II)I

    move-result v0

    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/S;->c(I)I

    move-result v1

    const/16 v2, 0xc0

    if-lt v1, v2, :cond_0

    const v1, 0x808080

    or-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const v1, 0xffffff

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method private static a(II)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x18

    mul-int/2addr v0, p1

    div-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public static a(LG/r;I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, LG/r;->e()I

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x100

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    const/4 v0, -0x1

    goto :goto_0

    :pswitch_1
    const v0, -0x3f3f40

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static b(I)I
    .locals 3

    const/16 v0, 0xff

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/vector/S;->a(II)I

    move-result v0

    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/S;->c(I)I

    move-result v1

    const/16 v2, 0xc0

    if-lt v1, v2, :cond_0

    or-int/lit8 v0, v0, 0x0

    :goto_0
    return v0

    :cond_0
    const v1, 0xffffff

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public static b(LG/r;I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/vector/S;->a(LG/r;I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/S;->a(I)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/high16 v0, -0x6000

    goto :goto_0

    :pswitch_1
    const/high16 v0, -0x8000

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static c(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    mul-int/lit8 v0, v0, 0x4d

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0x97

    add-int/2addr v0, v1

    and-int/lit16 v1, p0, 0xff

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x100

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x30d40

    return v0
.end method

.method public a(LG/ab;)Z
    .locals 2

    invoke-virtual {p1}, LG/ab;->a()LG/R;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/S;->f()LG/S;

    move-result-object v1

    invoke-virtual {v0, v1}, LG/R;->a(LG/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/S;->d()LG/z;

    move-result-object v0

    invoke-virtual {p1, v0}, LG/ab;->a(LG/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ax_()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/S;->g:Z

    return v0
.end method

.method public abstract b()F
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/cr;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/S;->i:Z

    return-void
.end method

.method public b_(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/S;->h:Z

    return-void
.end method

.method public b_(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract d()LG/z;
.end method

.method public f()LG/S;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/S;->d()LG/z;

    move-result-object v0

    invoke-virtual {v0}, LG/z;->b()LG/S;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/google/android/maps/driveabout/vector/bh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/bh;

    return-object v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/S;->d:F

    return v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/S;->e:F

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/S;->f:I

    return v0
.end method

.method public abstract k()Ljava/lang/String;
.end method

.method public final l()LG/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->a:LG/d;

    return-object v0
.end method
