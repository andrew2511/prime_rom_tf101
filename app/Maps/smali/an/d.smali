.class public Lan/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:F

.field private final b:Ljava/util/ArrayList;

.field private final c:I

.field private final d:I

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Bitmap;

.field private final g:LU/c;

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(FIILandroid/graphics/Bitmap;LU/c;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v2, 0x32

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lan/d;->h:I

    iput v0, p0, Lan/d;->i:I

    const/16 v0, 0x1e

    iput v0, p0, Lan/d;->j:I

    iput p1, p0, Lan/d;->a:F

    iput-object p4, p0, Lan/d;->f:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lan/d;->g:LU/c;

    iput p2, p0, Lan/d;->c:I

    iput p3, p0, Lan/d;->d:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lan/d;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lan/d;->e:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lan/d;->e:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lan/d;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lan/d;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lan/d;->i:I

    iput v0, p0, Lan/d;->h:I

    iget-object v0, p0, Lan/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lan/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan/a;

    invoke-virtual {v0}, Lan/a;->a()V

    iget v0, p0, Lan/d;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lan/d;->h:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(LU/c;)V
    .locals 10

    const/4 v9, 0x0

    iput v9, p0, Lan/d;->h:I

    iput v9, p0, Lan/d;->i:I

    sget-object v0, Lan/c;->a:Lan/c;

    invoke-virtual {v0}, Lan/c;->a()I

    move-result v0

    iget-object v1, p0, Lan/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v6, v0, v1

    if-lez v6, :cond_0

    move v7, v9

    :goto_0
    if-ge v7, v6, :cond_2

    iget-object v8, p0, Lan/d;->b:Ljava/util/ArrayList;

    new-instance v0, Lan/a;

    iget v1, p0, Lan/d;->c:I

    iget v2, p0, Lan/d;->d:I

    iget-object v3, p0, Lan/d;->e:Landroid/graphics/Paint;

    iget-object v4, p0, Lan/d;->f:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lan/d;->g:LU/c;

    invoke-direct/range {v0 .. v5}, Lan/a;-><init>(IILandroid/graphics/Paint;Landroid/graphics/Bitmap;LU/c;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    if-gez v6, :cond_2

    move v0, v9

    :goto_1
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lan/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget v1, p0, Lan/d;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lan/d;->h:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lan/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lan/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v9

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan/a;

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lan/d;->h:I

    if-le v2, v4, :cond_3

    invoke-virtual {v0, p1}, Lan/a;->a(LU/c;)V

    :goto_3
    move v2, v3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lan/a;->a()V

    goto :goto_3

    :cond_4
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lan/d;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lan/d;->i:I

    iget v1, p0, Lan/d;->j:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lan/d;->h:I

    if-lez v0, :cond_2

    move v0, v2

    :goto_0
    iget v1, p0, Lan/d;->h:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lan/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lan/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v2, p0, Lan/d;->h:I

    :cond_2
    iget-object v0, p0, Lan/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lan/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lan/a;

    invoke-virtual {p0, p1, p2}, Lan/a;->a(Landroid/graphics/Canvas;Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lan/d;->a:F

    return v0
.end method
