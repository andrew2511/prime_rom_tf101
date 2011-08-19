.class public Lq/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private c:LU/c;

.field private d:Landroid/graphics/Paint;

.field private e:I

.field private f:I

.field private g:I

.field private h:F

.field private i:LU/a;

.field private j:LU/c;

.field private k:I

.field private l:I

.field private m:Landroid/graphics/Paint;

.field private n:I

.field private o:Landroid/graphics/Paint;

.field private p:LU/c;

.field private q:LU/c;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Z

.field private v:[Landroid/graphics/Bitmap;

.field private w:I

.field private x:I

.field private y:Z

.field private z:LU/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;IFLandroid/graphics/Bitmap;)V
    .locals 10

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    const/16 v7, 0x78

    const/16 v6, 0xff

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LU/c;

    invoke-direct {v0, v5, v5}, LU/c;-><init>(II)V

    iput-object v0, p0, Lq/a;->c:LU/c;

    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lq/a;->e:I

    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lq/a;->f:I

    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lq/a;->g:I

    const/high16 v0, 0x3f00

    iput v0, p0, Lq/a;->h:F

    const/16 v0, 0x18

    iput v0, p0, Lq/a;->n:I

    iput-boolean v5, p0, Lq/a;->t:Z

    iput-boolean v5, p0, Lq/a;->u:Z

    iput v5, p0, Lq/a;->w:I

    iput v5, p0, Lq/a;->x:I

    iput-boolean v5, p0, Lq/a;->y:Z

    iput-object p1, p0, Lq/a;->a:Landroid/content/Context;

    iput p2, p0, Lq/a;->b:I

    iget-object v0, p0, Lq/a;->c:LU/c;

    iput p3, v0, LU/c;->b:F

    const/16 v0, 0x10

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lq/a;->v:[Landroid/graphics/Bitmap;

    move v0, v5

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    move v1, v5

    :goto_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, v1

    mul-int/lit8 v3, v1, 0x78

    mul-int/lit8 v4, v0, 0x78

    invoke-static {p4, v3, v4, v7, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lq/a;->v:[Landroid/graphics/Bitmap;

    aput-object v3, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v7, p0, Lq/a;->k:I

    iput v7, p0, Lq/a;->l:I

    new-instance v0, LU/c;

    iget v1, p0, Lq/a;->k:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lq/a;->l:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, LU/c;-><init>(II)V

    iput-object v0, p0, Lq/a;->j:LU/c;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lq/a;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lq/a;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lq/a;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lq/a;->m:Landroid/graphics/Paint;

    iget-object v0, p0, Lq/a;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lq/a;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lq/a;->o:Landroid/graphics/Paint;

    iget-object v0, p0, Lq/a;->o:Landroid/graphics/Paint;

    iget v1, p0, Lq/a;->n:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lq/a;->o:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lq/a;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v0, LU/c;

    iget-object v1, p0, Lq/a;->j:LU/c;

    iget v1, v1, LU/c;->a:F

    iget-object v2, p0, Lq/a;->j:LU/c;

    iget v2, v2, LU/c;->b:F

    iget-object v3, p0, Lq/a;->o:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v3

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/high16 v3, 0x4040

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, LU/c;-><init>(FF)V

    iput-object v0, p0, Lq/a;->p:LU/c;

    new-instance v0, LU/c;

    iget-object v1, p0, Lq/a;->p:LU/c;

    iget v1, v1, LU/c;->a:F

    iget-object v2, p0, Lq/a;->p:LU/c;

    iget v2, v2, LU/c;->b:F

    iget-object v3, p0, Lq/a;->o:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v3

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, LU/c;-><init>(FF)V

    iput-object v0, p0, Lq/a;->q:LU/c;

    new-instance v0, LU/a;

    invoke-direct {v0}, LU/a;-><init>()V

    iput-object v0, p0, Lq/a;->i:LU/a;

    iget-object v0, p0, Lq/a;->i:LU/a;

    invoke-virtual {v0, v8}, LU/a;->a(F)V

    iget-object v0, p0, Lq/a;->i:LU/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, LU/a;->a(I)V

    iget-object v0, p0, Lq/a;->i:LU/a;

    invoke-virtual {v0, v8}, LU/a;->b(F)V

    new-instance v0, LU/a;

    invoke-direct {v0}, LU/a;-><init>()V

    iput-object v0, p0, Lq/a;->z:LU/a;

    iget-object v0, p0, Lq/a;->z:LU/a;

    invoke-virtual {v0, v9}, LU/a;->a(F)V

    iget-object v0, p0, Lq/a;->z:LU/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, LU/a;->a(I)V

    iget-object v0, p0, Lq/a;->z:LU/a;

    invoke-virtual {v0, v9}, LU/a;->b(F)V

    invoke-direct {p0}, Lq/a;->d()V

    return-void
.end method

.method private c()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.apps.genie.geniewidget/.activities.NewsActivity"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "com.google.android.apps.genie.weather"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lq/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private d()V
    .locals 8

    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v0, 0x8c

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lq/a;->e:I

    const/16 v0, 0x64

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lq/a;->f:I

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lq/a;->g:I

    new-array v5, v3, [I

    iget v0, p0, Lq/a;->e:I

    aput v0, v5, v2

    const/4 v0, 0x1

    iget v2, p0, Lq/a;->f:I

    aput v2, v5, v0

    const/4 v0, 0x2

    iget v2, p0, Lq/a;->g:I

    aput v2, v5, v0

    new-array v6, v3, [F

    fill-array-data v6, :array_0

    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x4348

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lq/a;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lq/a;->d:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private e()Z
    .locals 1

    iget-object v0, p0, Lq/a;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq/a;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lq/a;->t:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lq/a;->t:Z

    iput-boolean v1, p0, Lq/a;->u:Z

    iget-object v0, p0, Lq/a;->i:LU/a;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, LU/a;->b(F)V

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 1

    iput p1, p0, Lq/a;->h:F

    const v0, 0x3dcccccd

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lq/a;->t:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lq/a;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lq/a;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lq/a;->b()V

    goto :goto_0
.end method

.method public a(II)V
    .locals 3

    invoke-direct {p0}, Lq/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lq/a;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    int-to-float v0, p2

    iget-object v1, p0, Lq/a;->c:LU/c;

    iget v1, v1, LU/c;->b:F

    iget v2, p0, Lq/a;->l:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-direct {p0}, Lq/a;->c()V

    goto :goto_0
.end method

.method public a(LX/b;)V
    .locals 4

    const/16 v3, 0xf

    const/4 v2, 0x1

    sget-object v0, Lq/b;->a:[I

    invoke-virtual {p1}, LX/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget v0, p0, Lq/a;->x:I

    iget v1, p0, Lq/a;->w:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lq/a;->z:LU/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LU/a;->b(F)V

    iput-boolean v2, p0, Lq/a;->y:Z

    :cond_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lq/a;->w:I

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xd

    iput v0, p0, Lq/a;->w:I

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xa

    iput v0, p0, Lq/a;->w:I

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x7

    iput v0, p0, Lq/a;->w:I

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x5

    iput v0, p0, Lq/a;->w:I

    goto :goto_0

    :pswitch_5
    iput v3, p0, Lq/a;->w:I

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x6

    iput v0, p0, Lq/a;->w:I

    goto :goto_0

    :pswitch_7
    iput v3, p0, Lq/a;->w:I

    goto :goto_0

    :pswitch_8
    iput v2, p0, Lq/a;->w:I

    goto :goto_0

    :pswitch_9
    const/16 v0, 0xb

    iput v0, p0, Lq/a;->w:I

    goto :goto_0

    :pswitch_a
    iput v2, p0, Lq/a;->w:I

    goto :goto_0

    :pswitch_b
    const/16 v0, 0xe

    iput v0, p0, Lq/a;->w:I

    goto :goto_0

    :pswitch_c
    const/4 v0, 0x3

    iput v0, p0, Lq/a;->w:I

    goto :goto_0

    :pswitch_d
    const/16 v0, 0xc

    iput v0, p0, Lq/a;->w:I

    goto :goto_0

    :pswitch_e
    const/16 v0, 0x9

    iput v0, p0, Lq/a;->w:I

    goto :goto_0

    :pswitch_f
    const/4 v0, 0x4

    iput v0, p0, Lq/a;->w:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 10

    const/16 v9, 0xff

    const/high16 v8, 0x3f80

    const/high16 v7, 0x437f

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lq/a;->u:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lq/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lq/a;->i:LU/a;

    invoke-virtual {v0}, LU/a;->a()V

    iget-object v0, p0, Lq/a;->z:LU/a;

    invoke-virtual {v0}, LU/a;->a()V

    iget-object v0, p0, Lq/a;->m:Landroid/graphics/Paint;

    iget-object v2, p0, Lq/a;->z:LU/a;

    invoke-virtual {v2}, LU/a;->b()F

    move-result v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v0, p0, Lq/a;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq/a;->z:LU/a;

    invoke-virtual {v0}, LU/a;->b()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lq/a;->w:I

    iput v0, p0, Lq/a;->x:I

    iget-object v0, p0, Lq/a;->z:LU/a;

    invoke-virtual {v0, v8}, LU/a;->b(F)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lq/a;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lq/a;->i:LU/a;

    invoke-virtual {v2}, LU/a;->b()F

    move-result v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lq/a;->b:I

    int-to-float v3, v0

    const/high16 v4, 0x4348

    iget-object v5, p0, Lq/a;->d:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lq/a;->c:LU/c;

    iget v0, v0, LU/c;->a:F

    iget-object v2, p0, Lq/a;->c:LU/c;

    iget v2, v2, LU/c;->b:F

    iget-object v3, p0, Lq/a;->i:LU/a;

    invoke-virtual {v3}, LU/a;->b()F

    move-result v3

    sub-float v3, v8, v3

    const/high16 v4, 0x41f0

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x4240

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lq/a;->k:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lq/a;->l:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lq/a;->i:LU/a;

    invoke-virtual {v0}, LU/a;->b()F

    move-result v0

    iget-object v2, p0, Lq/a;->i:LU/a;

    invoke-virtual {v2}, LU/a;->b()F

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lq/a;->z:LU/a;

    invoke-virtual {v0}, LU/a;->b()F

    move-result v0

    iget-object v2, p0, Lq/a;->z:LU/a;

    invoke-virtual {v2}, LU/a;->b()F

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lq/a;->v:[Landroid/graphics/Bitmap;

    iget v2, p0, Lq/a;->x:I

    aget-object v0, v0, v2

    iget v2, p0, Lq/a;->k:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lq/a;->l:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lq/a;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lq/a;->o:Landroid/graphics/Paint;

    iget-object v2, p0, Lq/a;->i:LU/a;

    invoke-virtual {v2}, LU/a;->b()F

    move-result v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lq/a;->r:Ljava/lang/String;

    iget-object v2, p0, Lq/a;->p:LU/c;

    iget v2, v2, LU/c;->a:F

    iget-object v3, p0, Lq/a;->p:LU/c;

    iget v3, v3, LU/c;->b:F

    const/high16 v4, 0x4000

    add-float/2addr v3, v4

    iget-object v4, p0, Lq/a;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lq/a;->s:Ljava/lang/String;

    iget-object v2, p0, Lq/a;->q:LU/c;

    iget v2, v2, LU/c;->a:F

    iget-object v3, p0, Lq/a;->q:LU/c;

    iget v3, v3, LU/c;->b:F

    const/high16 v4, 0x4000

    add-float/2addr v3, v4

    iget-object v4, p0, Lq/a;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lq/a;->o:Landroid/graphics/Paint;

    iget-object v2, p0, Lq/a;->i:LU/a;

    invoke-virtual {v2}, LU/a;->b()F

    move-result v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-virtual {v0, v2, v9, v9, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lq/a;->r:Ljava/lang/String;

    iget-object v2, p0, Lq/a;->p:LU/c;

    iget v2, v2, LU/c;->a:F

    iget-object v3, p0, Lq/a;->p:LU/c;

    iget v3, v3, LU/c;->b:F

    iget-object v4, p0, Lq/a;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lq/a;->s:Ljava/lang/String;

    iget-object v2, p0, Lq/a;->q:LU/c;

    iget v2, v2, LU/c;->a:F

    iget-object v3, p0, Lq/a;->q:LU/c;

    iget v3, v3, LU/c;->b:F

    iget-object v4, p0, Lq/a;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    iget-boolean v0, p0, Lq/a;->t:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lq/a;->i:LU/a;

    invoke-virtual {v0}, LU/a;->b()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iput-boolean v6, p0, Lq/a;->u:Z

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lq/a;->z:LU/a;

    invoke-virtual {v0}, LU/a;->b()F

    move-result v0

    cmpl-float v0, v0, v8

    if-nez v0, :cond_0

    iget v0, p0, Lq/a;->x:I

    iget v2, p0, Lq/a;->w:I

    if-ne v0, v2, :cond_0

    iput-boolean v6, p0, Lq/a;->y:Z

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq/a;->r:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .locals 2

    iget-boolean v0, p0, Lq/a;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq/a;->t:Z

    iget-object v0, p0, Lq/a;->i:LU/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LU/a;->b(F)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq/a;->s:Ljava/lang/String;

    return-void
.end method
