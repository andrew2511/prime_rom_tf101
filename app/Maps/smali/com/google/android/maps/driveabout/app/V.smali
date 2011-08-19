.class public Lcom/google/android/maps/driveabout/app/V;
.super Lcom/google/android/maps/driveabout/vector/X;


# instance fields
.field private volatile a:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;LF/M;)V
    .locals 6

    invoke-virtual {p2}, LF/M;->m()LG/m;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x3

    invoke-static {p2}, Lcom/google/android/maps/driveabout/app/V;->a(LF/M;)[I

    move-result-object v4

    const v0, 0x7f090014

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/X;-><init>(LG/m;II[IF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/V;->a:Z

    return-void
.end method

.method private static a(LF/M;)[I
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, LF/M;->c()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, LF/M;->m()LG/m;

    move-result-object v0

    invoke-virtual {v0}, LG/m;->b()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {p0}, LF/M;->t()Ljava/util/Collection;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aput v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF/g;

    invoke-virtual {p0}, LF/g;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v2, v5

    :goto_1
    invoke-virtual {p0}, LF/g;->b()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :goto_2
    invoke-virtual {p0}, LF/g;->c()I

    move-result v4

    if-gt v3, v4, :cond_3

    aput v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :pswitch_0
    const/4 v2, 0x2

    goto :goto_1

    :pswitch_1
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_2
    const/4 v2, 0x4

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x5

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 1

    if-lez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    :cond_1
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/V;->b_(I)V

    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/X;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/V;->b_(I)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/V;->a:Z

    if-nez v1, :cond_0

    const/high16 v1, 0x4170

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/V;->b(Z)V

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/X;->a(Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a_(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/V;->a:Z

    return-void
.end method
