.class Lcom/google/googlenav/appwidget/traffic/f;
.super Lak/m;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/googlenav/appwidget/traffic/h;

.field private final c:Lu/p;

.field private final d:Lcom/google/googlenav/appwidget/traffic/l;

.field private final e:Lcom/google/googlenav/appwidget/traffic/d;

.field private final f:Lac/p;

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/googlenav/appwidget/traffic/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/appwidget/traffic/h;Lcom/google/googlenav/appwidget/traffic/d;Lu/g;Lcom/google/googlenav/appwidget/traffic/l;Lac/p;)V
    .locals 1

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/appwidget/traffic/f;->b:Lcom/google/googlenav/appwidget/traffic/h;

    new-instance v0, Lu/p;

    invoke-direct {v0, p3}, Lu/p;-><init>(Lu/n;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/f;->c:Lu/p;

    iput-object p4, p0, Lcom/google/googlenav/appwidget/traffic/f;->d:Lcom/google/googlenav/appwidget/traffic/l;

    iput-object p2, p0, Lcom/google/googlenav/appwidget/traffic/f;->e:Lcom/google/googlenav/appwidget/traffic/d;

    iput-object p5, p0, Lcom/google/googlenav/appwidget/traffic/f;->f:Lac/p;

    iget v0, p2, Lcom/google/googlenav/appwidget/traffic/d;->a:I

    iput v0, p0, Lcom/google/googlenav/appwidget/traffic/f;->g:I

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/16 v0, 0x442

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const/16 v0, 0x60

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/f;->e:Lcom/google/googlenav/appwidget/traffic/d;

    iget-object v1, v1, Lcom/google/googlenav/appwidget/traffic/d;->c:Ljava/lang/String;

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x27c

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x280

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "id"

    invoke-static {v1, p1, v0}, Lac/g;->a(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/f;->d:Lcom/google/googlenav/appwidget/traffic/l;

    invoke-virtual {v1}, Lcom/google/googlenav/appwidget/traffic/l;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const-string v2, "c"

    invoke-static {v2, v1, v0}, Lac/g;->a(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    const-string v1, "rc"

    invoke-static {v1, p2, v0}, Lac/g;->a(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x48

    const-string v2, "wr"

    invoke-static {v1, v2, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public I_()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/f;->c:Lu/p;

    invoke-virtual {v0}, Lu/p;->I_()Z

    move-result v0

    return v0
.end method

.method public X_()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/f;->c:Lu/p;

    invoke-virtual {v0}, Lu/p;->X_()V

    return-void
.end method

.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/f;->c:Lu/p;

    invoke-virtual {v0}, Lu/p;->a()I

    move-result v0

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/f;->c:Lu/p;

    invoke-virtual {v0, p1}, Lu/p;->a(Ljava/io/DataOutput;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->c:Lu/p;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lu/p;->a(Ljava/io/DataInput;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    sget-object v3, Lcom/google/googlenav/appwidget/traffic/f;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading response for widget id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->g:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->c:Lu/p;

    move-object v3, v0

    invoke-virtual {v3}, Lu/p;->y()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    sget-object v4, Lcom/google/googlenav/appwidget/traffic/f;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error updating traffic widget "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->g:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", error code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->d:Lcom/google/googlenav/appwidget/traffic/l;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->g:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/google/googlenav/appwidget/traffic/f;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/googlenav/appwidget/traffic/l;->a(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->g:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/appwidget/traffic/f;->a(II)V

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->b:Lcom/google/googlenav/appwidget/traffic/h;

    move-object v3, v0

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->b:Lcom/google/googlenav/appwidget/traffic/h;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->g:I

    move v4, v0

    invoke-interface {v3, v4}, Lcom/google/googlenav/appwidget/traffic/h;->a(I)V

    :cond_2
    const/4 v3, 0x1

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->f:Lac/p;

    move-object v3, v0

    invoke-interface {v3}, Lac/p;->a()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->c:Lu/p;

    move-object v3, v0

    invoke-virtual {v3}, Lu/p;->au()Lf/h;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->c:Lu/p;

    move-object v4, v0

    invoke-virtual {v4}, Lu/p;->av()Lf/h;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->c:Lu/p;

    move-object v4, v0

    invoke-virtual {v4}, Lu/p;->N()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->c:Lu/p;

    move-object v3, v0

    invoke-virtual {v3}, Lu/p;->M()I

    move-result v3

    int-to-long v3, v3

    move-wide v10, v3

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->c:Lu/p;

    move-object v3, v0

    invoke-virtual {v3}, Lu/p;->K()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->c:Lu/p;

    move-object v4, v0

    invoke-virtual {v4}, Lu/p;->l()I

    move-result v4

    int-to-double v5, v4

    const-wide/high16 v13, 0x4059

    mul-double/2addr v5, v13

    add-int v7, v3, v4

    int-to-double v13, v7

    div-double/2addr v5, v13

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v5, v13

    double-to-int v7, v5

    add-int v5, v3, v4

    int-to-long v5, v5

    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v5

    add-long v5, v8, v13

    sget-object v15, Lcom/google/googlenav/appwidget/traffic/f;->a:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Response was a success, total duration (in s): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    add-int/2addr v3, v4

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->d:Lcom/google/googlenav/appwidget/traffic/l;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->g:I

    move v4, v0

    invoke-virtual/range {v3 .. v11}, Lcom/google/googlenav/appwidget/traffic/l;->a(IJIJJ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->e:Lcom/google/googlenav/appwidget/traffic/d;

    move-object v3, v0

    iget-wide v3, v3, Lcom/google/googlenav/appwidget/traffic/d;->l:J

    const-wide/32 v10, 0x3a980

    add-long/2addr v3, v10

    cmp-long v3, v5, v3

    if-lez v3, :cond_3

    add-long v3, v8, v13

    const-wide/32 v5, 0x1d4c0

    add-long/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->d:Lcom/google/googlenav/appwidget/traffic/l;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->g:I

    move v6, v0

    invoke-virtual {v5, v6, v3, v4}, Lcom/google/googlenav/appwidget/traffic/l;->b(IJ)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->e:Lcom/google/googlenav/appwidget/traffic/d;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/googlenav/appwidget/traffic/d;->d:Ljava/lang/Integer;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->e:Lcom/google/googlenav/appwidget/traffic/d;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/googlenav/appwidget/traffic/d;->e:Ljava/lang/Integer;

    if-nez v3, :cond_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->d:Lcom/google/googlenav/appwidget/traffic/l;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/appwidget/traffic/f;->g:I

    move v4, v0

    invoke-virtual {v12}, Lf/h;->b()I

    move-result v5

    invoke-virtual {v12}, Lf/h;->d()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/googlenav/appwidget/traffic/l;->a(III)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v3, v12}, Lf/h;->b(Lf/h;)J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    move-wide v10, v3

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public e_()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/f;->c:Lu/p;

    invoke-virtual {v0}, Lu/p;->e_()Z

    move-result v0

    return v0
.end method

.method public f_()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/f;->c:Lu/p;

    invoke-virtual {v0}, Lu/p;->f_()Z

    move-result v0

    return v0
.end method

.method public g_()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/f;->c:Lu/p;

    invoke-virtual {v0}, Lu/p;->g_()Z

    move-result v0

    return v0
.end method

.method public h_()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/f;->c:Lu/p;

    invoke-virtual {v0}, Lu/p;->h_()Z

    move-result v0

    return v0
.end method

.method public i_()V
    .locals 0

    return-void
.end method

.method public m_()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/f;->c:Lu/p;

    invoke-virtual {v0}, Lu/p;->m_()Z

    move-result v0

    return v0
.end method
