.class public Lcom/google/googlenav/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/bf;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:[Lcom/google/googlenav/bj;

.field private static final c:[Lcom/google/googlenav/H;


# instance fields
.field private A:Lcom/google/googlenav/bH;

.field private B:Lcom/google/googlenav/bH;

.field private C:[Lcom/google/googlenav/bu;

.field private D:Ljava/lang/Boolean;

.field private E:Ljava/util/ArrayList;

.field private final d:Law/e;

.field private e:Ljava/util/List;

.field private f:Lf/N;

.field private g:Lf/N;

.field private h:Ljava/lang/String;

.field private i:B

.field private j:I

.field private k:Z

.field private l:Ljava/util/Map;

.field private m:Lcom/google/googlenav/aG;

.field private n:Z

.field private o:[Lcom/google/googlenav/c;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Ljava/util/Vector;

.field private s:Lcom/google/googlenav/ay;

.field private t:Ljava/lang/String;

.field private u:J

.field private v:Lac/w;

.field private final w:Ljava/util/List;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/c;->a:Ljava/lang/Object;

    new-array v0, v1, [Lcom/google/googlenav/bj;

    sput-object v0, Lcom/google/googlenav/c;->b:[Lcom/google/googlenav/bj;

    new-array v0, v1, [Lcom/google/googlenav/H;

    sput-object v0, Lcom/google/googlenav/c;->c:[Lcom/google/googlenav/H;

    return-void
.end method

.method public constructor <init>(Law/e;)V
    .locals 6

    const/16 v5, 0xe

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/c;->h:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/googlenav/c;->k:Z

    iput-object v1, p0, Lcom/google/googlenav/c;->l:Ljava/util/Map;

    iput-boolean v3, p0, Lcom/google/googlenav/c;->n:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/c;->r:Ljava/util/Vector;

    iput-object v1, p0, Lcom/google/googlenav/c;->s:Lcom/google/googlenav/ay;

    iput-object v1, p0, Lcom/google/googlenav/c;->t:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/c;->w:Ljava/util/List;

    iput-boolean v2, p0, Lcom/google/googlenav/c;->x:Z

    iput-boolean v2, p0, Lcom/google/googlenav/c;->y:Z

    iput-boolean v2, p0, Lcom/google/googlenav/c;->z:Z

    iput-object v1, p0, Lcom/google/googlenav/c;->D:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/c;->u:J

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/c;->b(Law/e;)Lf/N;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/c;->f:Lf/N;

    invoke-static {p1, v4}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/c;->h:Ljava/lang/String;

    invoke-virtual {p1, v3}, Law/e;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/c;->j:I

    const/16 v0, 0x90

    invoke-static {p1, v0}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/c;->p:Ljava/lang/String;

    const/16 v0, 0x8d

    invoke-static {p1, v0}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->c(Law/e;)V

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Law/e;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    iput-byte v2, p0, Lcom/google/googlenav/c;->i:B

    :goto_0
    iget-byte v0, p0, Lcom/google/googlenav/c;->i:B

    if-eq v0, v5, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/c;->bI()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/c;->bk()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/c;->q:I

    new-instance v0, Lcom/google/googlenav/bH;

    invoke-direct {v0}, Lcom/google/googlenav/bH;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/c;->A:Lcom/google/googlenav/bH;

    new-instance v0, Lcom/google/googlenav/bH;

    invoke-direct {v0}, Lcom/google/googlenav/bH;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/c;->B:Lcom/google/googlenav/bH;

    const/16 v0, 0xa9

    invoke-static {p1, v0}, Law/b;->d(Law/e;I)[Law/e;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/c;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/c;->e:Ljava/util/List;

    return-void

    :cond_1
    iget v0, p0, Lcom/google/googlenav/c;->j:I

    packed-switch v0, :pswitch_data_0

    iput-byte v3, p0, Lcom/google/googlenav/c;->i:B

    goto :goto_0

    :pswitch_0
    const/16 v0, 0xc

    iput-byte v0, p0, Lcom/google/googlenav/c;->i:B

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xa

    iput-byte v0, p0, Lcom/google/googlenav/c;->i:B

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/google/googlenav/c;->f(Law/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xf

    iput-byte v0, p0, Lcom/google/googlenav/c;->i:B

    goto :goto_0

    :cond_2
    iput-byte v3, p0, Lcom/google/googlenav/c;->i:B

    goto :goto_0

    :pswitch_3
    iput-byte v4, p0, Lcom/google/googlenav/c;->i:B

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xb

    iput-byte v0, p0, Lcom/google/googlenav/c;->i:B

    goto :goto_0

    :pswitch_5
    iput-byte v5, p0, Lcom/google/googlenav/c;->i:B

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected constructor <init>(Lf/N;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/googlenav/c;-><init>(Lf/N;Ljava/lang/String;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lf/N;Ljava/lang/String;B)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/c;-><init>(Lf/N;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    return-void
.end method

.method protected constructor <init>(Lf/N;Ljava/lang/String;ILjava/util/List;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/c;->h:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/googlenav/c;->k:Z

    iput-object v2, p0, Lcom/google/googlenav/c;->l:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/c;->n:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/c;->r:Ljava/util/Vector;

    iput-object v2, p0, Lcom/google/googlenav/c;->s:Lcom/google/googlenav/ay;

    iput-object v2, p0, Lcom/google/googlenav/c;->t:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/c;->w:Ljava/util/List;

    iput-boolean v1, p0, Lcom/google/googlenav/c;->x:Z

    iput-boolean v1, p0, Lcom/google/googlenav/c;->y:Z

    iput-boolean v1, p0, Lcom/google/googlenav/c;->z:Z

    iput-object v2, p0, Lcom/google/googlenav/c;->D:Ljava/lang/Boolean;

    invoke-static {p4}, Lcom/google/googlenav/c;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/c;->e:Ljava/util/List;

    iput-object p1, p0, Lcom/google/googlenav/c;->f:Lf/N;

    iput-object p2, p0, Lcom/google/googlenav/c;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/googlenav/c;->d:Law/e;

    iput-byte v1, p0, Lcom/google/googlenav/c;->i:B

    iput p3, p0, Lcom/google/googlenav/c;->j:I

    return-void
.end method

.method public constructor <init>(Lf/N;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 12

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v11}, Lcom/google/googlenav/c;-><init>(Lf/N;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Lf/N;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/c;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/c;->k:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/c;->l:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/c;->n:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/c;->r:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/c;->s:Lcom/google/googlenav/ay;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/c;->t:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/c;->w:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/c;->x:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/c;->y:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/c;->z:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/c;->D:Ljava/lang/Boolean;

    new-instance v0, Law/e;

    sget-object v1, Ls/p;->t:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iput-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-direct {p0, p2}, Lcom/google/googlenav/c;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/c;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/googlenav/c;->c(Lf/N;)V

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/4 v1, 0x4

    invoke-direct {p0, p3}, Lcom/google/googlenav/c;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/4 v1, 0x4

    invoke-direct {p0, p4}, Lcom/google/googlenav/c;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0xb

    invoke-direct {p0, p5}, Lcom/google/googlenav/c;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    iput-byte p6, p0, Lcom/google/googlenav/c;->i:B

    invoke-static {p7}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Law/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p7}, Law/e;->b(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Law/e;->a(ILaw/e;)V

    :cond_0
    invoke-static {p8}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p8}, Law/e;->b(ILjava/lang/String;)V

    :cond_1
    invoke-static {p9}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p9}, Law/e;->b(ILjava/lang/String;)V

    :cond_2
    packed-switch p6, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/c;->j:I

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlenav/c;->j:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x16

    if-eqz p6, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v1, v2}, Law/e;->b(IZ)V

    const-wide/16 v0, -0x1

    cmp-long v0, p10, v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, p10, p11}, Law/e;->a(IJ)V

    :cond_3
    new-instance v0, Lcom/google/googlenav/bH;

    invoke-direct {v0}, Lcom/google/googlenav/bH;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/c;->A:Lcom/google/googlenav/bH;

    new-instance v0, Lcom/google/googlenav/bH;

    invoke-direct {v0}, Lcom/google/googlenav/bH;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/c;->B:Lcom/google/googlenav/bH;

    invoke-static {}, Lj/v;->a()Lj/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/c;->e:Ljava/util/List;

    return-void

    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/c;->j:I

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/c;->j:I

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/c;->j:I

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/c;->j:I

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x7b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Law/e;->b(IZ)V

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/googlenav/c;->j:I

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlenav/c;->j:I

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/googlenav/c;->j:I

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Lf/N;)Law/e;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Law/e;

    sget-object v1, Ls/P;->d:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    :try_start_0
    invoke-interface {p0}, Lf/N;->ap_()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    check-cast p0, Lf/h;

    invoke-static {p0}, Lf/I;->b(Lf/h;)Law/e;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Law/e;->b(ILaw/e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PROTO"

    invoke-static {v2, v1}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    const/4 v2, 0x4

    :try_start_1
    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    check-cast p0, Lf/h;

    invoke-static {p0}, Lf/I;->a(Lf/h;)Law/e;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Law/e;->b(ILaw/e;)V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    check-cast p0, Lf/A;

    invoke-virtual {p0}, Lf/A;->j()Law/e;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Law/e;->b(ILaw/e;)V

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    check-cast p0, Lf/S;

    invoke-virtual {p0}, Lf/S;->j()Law/e;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Law/e;->b(ILaw/e;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Law/e;)Law/e;
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/c;->b(Ljava/lang/String;Law/e;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p2, v1, v0}, Law/e;->e(II)Law/e;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Law/e;)Lcom/google/googlenav/c;
    .locals 1

    new-instance v0, Lcom/google/googlenav/c;

    invoke-direct {v0, p0}, Lcom/google/googlenav/c;-><init>(Law/e;)V

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;)Lcom/google/googlenav/c;
    .locals 2

    new-instance v0, Law/e;

    sget-object v1, Ls/p;->t:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {v0, p0, v1}, Law/e;->a(Ljava/io/InputStream;I)I

    invoke-static {v0}, Lcom/google/googlenav/c;->a(Law/e;)Lcom/google/googlenav/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/aE;)[Lcom/google/googlenav/bu;
    .locals 11

    const/4 v1, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x1

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/aE;->a()Law/e;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v9}, Law/e;->i(I)I

    move-result v1

    new-array v2, v1, [Lcom/google/googlenav/bu;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v9, v3}, Law/e;->e(II)Law/e;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Law/e;->f(I)Law/e;

    move-result-object v5

    invoke-static {v4, v10}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v9}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v10, v9}, Law/b;->b(Law/e;II)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/google/googlenav/bu;

    invoke-direct {v8, v7, v4, v6, v5}, Lcom/google/googlenav/bu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Law/e;)I
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x3

    if-eqz p2, :cond_0

    invoke-virtual {p2, v2}, Law/e;->i(I)I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v3

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2, v2}, Law/e;->i(I)I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p2, v2, v0}, Law/e;->e(II)Law/e;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/o;->a(Law/e;)Lcom/google/googlenav/o;

    move-result-object v1

    iget-object v1, v1, Lcom/google/googlenav/o;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method public static b(Law/e;)Lf/N;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Law/e;->d(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported Geometry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "PROTO"

    invoke-static {v1, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lf/I;->a(Law/e;)Lf/h;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lf/I;->b(Law/e;)Lf/h;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lf/A;->a(Law/e;)Lf/A;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lf/S;->b(Law/e;)Lf/S;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lf/I;->e(Law/e;)Lf/h;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .locals 3

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lj/v;->a()Lj/v;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lj/X;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Law/e;

    if-eqz p0, :cond_3

    invoke-static {p0}, LG/Z;->a(Law/e;)LG/Z;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private bI()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/googlenav/c;->ae()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->w()Lk/i;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lk/i;->a([BII)Lk/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->Y()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/google/googlenav/aG;->b(Lk/l;)Lcom/google/googlenav/aG;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/c;->m:Lcom/google/googlenav/aG;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/google/googlenav/aG;->c(Lk/l;)Lcom/google/googlenav/aG;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/c;->m:Lcom/google/googlenav/aG;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PROTO"

    invoke-static {v1, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private bJ()[Lcom/google/googlenav/bj;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x97

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/googlenav/c;->b:[Lcom/google/googlenav/bj;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v7}, Law/e;->i(I)I

    move-result v1

    new-array v2, v1, [Lcom/google/googlenav/bj;

    move v3, v8

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v7, v3}, Law/e;->e(II)Law/e;

    move-result-object v4

    invoke-virtual {v4, v7}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v9}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v6, "http://www.google.com/streetview"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v9

    :goto_2
    new-instance v6, Lcom/google/googlenav/bj;

    invoke-direct {v6, v5, v4, v10, v10}, Lcom/google/googlenav/bj;-><init>(Ljava/lang/String;I[BLcom/google/googlenav/aD;)V

    aput-object v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    move v4, v8

    goto :goto_2
.end method

.method private bK()Lcom/google/googlenav/bj;
    .locals 5

    invoke-direct {p0}, Lcom/google/googlenav/c;->bJ()[Lcom/google/googlenav/bj;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/google/googlenav/bj;->b()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/googlenav/bj;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private bL()Law/e;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x46

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    const/16 v1, 0xa8

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    return-object v0
.end method

.method private bM()Law/e;
    .locals 4

    const/16 v3, 0x5e

    const/16 v1, 0x5a

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Law/e;->f(I)Law/e;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method private bN()Law/e;
    .locals 3

    const/4 v1, 0x0

    const/16 v2, 0x5a

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-virtual {v0, v2}, Law/e;->h(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Law/e;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget-object v1, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-virtual {v1, v2, v0}, Law/e;->b(ILaw/e;)V

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v0

    goto :goto_0
.end method

.method private bO()Law/e;
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x5e

    invoke-direct {p0}, Lcom/google/googlenav/c;->bN()Law/e;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v2}, Law/e;->h(I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Law/e;

    invoke-direct {v1, v3}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v0, v2, v1}, Law/e;->b(ILaw/e;)V

    :cond_1
    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v0

    goto :goto_0
.end method

.method private bP()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bo()Law/e;

    move-result-object v0

    invoke-virtual {v0, v6}, Law/e;->i(I)I

    move-result v1

    move v2, v5

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v6, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v5}, Law/e;->h(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static d(I)Ljava/lang/String;
    .locals 4

    if-gtz p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, p0

    :goto_1
    const/4 v3, 0x5

    if-ge v1, v3, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x2ee

    if-lt v2, v3, :cond_1

    sget-char v3, Lcom/google/googlenav/ui/aV;->p:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit16 v2, v2, -0x3e8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/16 v3, 0xfa

    if-lt v2, v3, :cond_2

    sget-char v3, Lcom/google/googlenav/ui/aV;->q:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    sget-char v3, Lcom/google/googlenav/ui/aV;->r:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static f(Law/e;)Z
    .locals 1

    const/16 v0, 0x7b

    invoke-static {p0, v0}, Law/b;->h(Law/e;I)Z

    move-result v0

    return v0
.end method

.method private h(I)Law/e;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/aE;->a()Law/e;

    move-result-object v0

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".google."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    const-string v0, "/gmf/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

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

.method private i(I)I
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-gez p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public A()Z
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x24

    invoke-direct {p0, v0}, Lcom/google/googlenav/c;->h(I)Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Law/e;->i(I)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public B()Ljava/util/Vector;
    .locals 7

    const/4 v6, 0x1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/16 v1, 0x24

    invoke-direct {p0, v1}, Lcom/google/googlenav/c;->h(I)Law/e;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v1, v6}, Law/e;->i(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v6, v3}, Law/e;->e(II)Law/e;

    move-result-object v4

    new-instance v5, Lcom/google/googlenav/aq;

    invoke-direct {v5, v4}, Lcom/google/googlenav/aq;-><init>(Law/e;)V

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public C()Ljava/util/Vector;
    .locals 6

    const/4 v5, 0x1

    const/16 v0, 0x33

    invoke-direct {p0, v0}, Lcom/google/googlenav/c;->h(I)Law/e;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v5}, Law/e;->i(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v5, v3}, Law/e;->f(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public D()Lcom/google/googlenav/B;
    .locals 4

    const/4 v2, 0x0

    const/16 v1, 0x97

    const/16 v3, 0x9

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v3}, Law/e;->h(I)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v3}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/br;->a(JLaw/e;)Lcom/google/googlenav/B;

    move-result-object v0

    goto :goto_0
.end method

.method public E()I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x76

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Law/b;->e(Law/e;I)I

    move-result v0

    return v0
.end method

.method public F()B
    .locals 1

    iget-byte v0, p0, Lcom/google/googlenav/c;->i:B

    return v0
.end method

.method public G()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public H()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/c;->n:Z

    return v0
.end method

.method public I()J
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x77

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Law/b;->a(Law/e;IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public J()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/c;->I()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/googlenav/ai;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public K()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x94

    invoke-static {v0, v1}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public L()Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/googlenav/c;->j:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public M()Z
    .locals 1

    iget v0, p0, Lcom/google/googlenav/c;->j:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public N()Z
    .locals 2

    iget v0, p0, Lcom/google/googlenav/c;->j:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public O()Z
    .locals 2

    iget v0, p0, Lcom/google/googlenav/c;->j:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public P()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public R()Z
    .locals 2

    iget-byte v0, p0, Lcom/google/googlenav/c;->i:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public S()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/c;->k:Z

    return-void
.end method

.method public T()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/c;->k:Z

    return v0
.end method

.method public U()Z
    .locals 3

    const/4 v2, 0x1

    iget-byte v0, p0, Lcom/google/googlenav/c;->i:B

    if-eq v0, v2, :cond_0

    iget-byte v0, p0, Lcom/google/googlenav/c;->i:B

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lcom/google/googlenav/c;->i:B

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public V()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public W()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public X()Z
    .locals 2

    iget v0, p0, Lcom/google/googlenav/c;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Y()Z
    .locals 2

    iget v0, p0, Lcom/google/googlenav/c;->j:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Z()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->Y()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->X()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs a([I)I
    .locals 6

    const/4 v5, -0x1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->al()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget v4, p1, v3

    if-ne v4, v1, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v0, v5

    goto :goto_0
.end method

.method public a()Law/e;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->g:Lf/N;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/c;->g:Lf/N;

    invoke-static {v0}, Lcom/google/googlenav/c;->a(Lf/N;)Law/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(B)V
    .locals 0

    iput-byte p1, p0, Lcom/google/googlenav/c;->i:B

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/google/googlenav/c;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/c;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x90

    iget-object v2, p0, Lcom/google/googlenav/c;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bo()Law/e;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/c;->a(Ljava/lang/String;Law/e;)Law/e;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Law/e;

    sget-object v2, Ls/y;->c:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v1, v4, p1}, Law/e;->b(ILjava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Law/e;->b(ILjava/lang/String;)V

    invoke-virtual {v1, v3, v3}, Law/e;->h(II)V

    invoke-virtual {v0, v4, v1}, Law/e;->a(ILaw/e;)V

    iget-object v0, p0, Lcom/google/googlenav/c;->r:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-direct {p0, p2}, Lcom/google/googlenav/c;->i(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 4

    const/16 v3, 0xa9

    if-nez p1, :cond_1

    invoke-static {}, Lj/v;->a()Lj/v;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/googlenav/c;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/google/googlenav/c;->d:Law/e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Law/e;->b(ILaw/e;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/Z;

    iget-object v2, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-virtual {v0}, LG/Z;->c()Law/e;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Law/e;->a(ILaw/e;)V

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/c;->n:Z

    return-void
.end method

.method public a([Lcom/google/googlenav/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/c;->o:[Lcom/google/googlenav/c;

    return-void
.end method

.method public a(I)[Lcom/google/googlenav/H;
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x3

    if-ltz p1, :cond_0

    if-le p1, v3, :cond_1

    :cond_0
    const-string v0, "unknown type"

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/googlenav/c;->c:[Lcom/google/googlenav/H;

    :goto_0
    return-object v0

    :cond_1
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/googlenav/c;->c:[Lcom/google/googlenav/H;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/googlenav/aE;->a()Law/e;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/googlenav/c;->c:[Lcom/google/googlenav/H;

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/google/googlenav/H;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v7

    :goto_1
    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/google/googlenav/c;->c:[Lcom/google/googlenav/H;

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v7}, Law/e;->i(I)I

    move-result v1

    invoke-static {p1}, Lcom/google/googlenav/H;->b(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, v4

    :goto_2
    new-array v3, v1, [Lcom/google/googlenav/H;

    move v4, v2

    :goto_3
    add-int v5, v2, v1

    if-ge v4, v5, :cond_7

    sub-int v5, v4, v2

    invoke-virtual {v0, v7, v4}, Law/e;->e(II)Law/e;

    move-result-object v6

    invoke-static {v6}, Lcom/google/googlenav/H;->a(Law/e;)Lcom/google/googlenav/H;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    sub-int/2addr v1, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v3

    goto :goto_2

    :cond_7
    move-object v0, v3

    goto :goto_0
.end method

.method public aA()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aD()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aB()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/c;->bL()Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aC()LaO/d;
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aB()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/c;->bL()Law/e;

    move-result-object v0

    new-instance v1, LaO/d;

    invoke-direct {v1, v0}, LaO/d;-><init>(Law/e;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public aD()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x46

    const/16 v2, 0xa7

    invoke-static {v0, v1, v2}, Law/b;->b(Law/e;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public aE()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x46

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-static {v0, v1}, Law/b;->h(Law/e;I)Z

    move-result v0

    return v0
.end method

.method public aF()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x46

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    const/16 v1, 0xa5

    invoke-static {v0, v1}, Law/b;->h(Law/e;I)Z

    move-result v0

    return v0
.end method

.method public aG()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x5b

    const/16 v1, 0x5a

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Law/e;->i(I)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v5, v3}, Law/e;->f(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    sub-int v4, v2, v4

    if-eq v3, v4, :cond_0

    const-string v4, " > "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public aH()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x5a

    const/16 v2, 0x5c

    invoke-static {v0, v1, v2}, Law/b;->b(Law/e;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aI()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x5a

    const/16 v2, 0x5d

    invoke-static {v0, v1, v2}, Law/b;->b(Law/e;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aJ()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x5a

    const/16 v2, 0x5f

    invoke-static {v0, v1, v2}, Law/b;->b(Law/e;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aK()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/google/googlenav/c;->bM()Law/e;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aL()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/google/googlenav/c;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, LR/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, LR/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public aM()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/google/googlenav/c;->bM()Law/e;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aN()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/google/googlenav/c;->bM()Law/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aO()I
    .locals 2

    invoke-direct {p0}, Lcom/google/googlenav/c;->bM()Law/e;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Law/b;->e(Law/e;I)I

    move-result v0

    return v0
.end method

.method public aP()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aQ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aM()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/c;->as()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public aQ()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aM()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, LR/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".youtube."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

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

.method public aR()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aS()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aS()I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x97

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->i(I)I

    move-result v0

    goto :goto_0
.end method

.method public aT()I
    .locals 6

    const/4 v5, 0x3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x97

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v1, v2

    :goto_1
    invoke-virtual {v0, v5}, Law/e;->i(I)I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v0, v5, v1}, Law/e;->e(II)Law/e;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v3, v4}, Law/b;->e(Law/e;I)I

    move-result v3

    if-lez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public aU()Ljava/lang/String;
    .locals 5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aS()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-char v2, Lcom/google/googlenav/ui/aV;->bc:C

    invoke-static {v2}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v3, :cond_1

    const/16 v0, 0x286

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v2, 0x285

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, LR/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public aV()Lcom/google/googlenav/ay;
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/c;->s:Lcom/google/googlenav/ay;

    if-nez v0, :cond_0

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/googlenav/ay;

    invoke-virtual {v0}, Lcom/google/googlenav/aE;->a()Law/e;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/googlenav/c;->u:J

    invoke-direct {v1, v0, v2, v3}, Lcom/google/googlenav/ay;-><init>(Law/e;J)V

    iput-object v1, p0, Lcom/google/googlenav/c;->s:Lcom/google/googlenav/ay;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/c;->s:Lcom/google/googlenav/ay;

    return-object v0
.end method

.method public aW()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->t:Ljava/lang/String;

    if-nez v0, :cond_0

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/c;->t:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/c;->t:Ljava/lang/String;

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/aE;->a()Law/e;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/c;->t:Ljava/lang/String;

    goto :goto_0
.end method

.method public aX()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->i()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/c;->aH()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public aY()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/c;->m:Lcom/google/googlenav/aG;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aZ()Lcom/google/googlenav/aG;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/c;->m:Lcom/google/googlenav/aG;

    return-object v0
.end method

.method public aa()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/c;->h:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/c;->h:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlenav/c;->Z()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aX()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/googlenav/c;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lac/m;->H()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_3
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public ab()[Law/e;
    .locals 5

    const/16 v4, 0x9d

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-virtual {v0, v4}, Law/e;->i(I)I

    move-result v0

    new-array v1, v0, [Law/e;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-virtual {v3, v4, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public ac()I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->m:Lcom/google/googlenav/aG;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/c;->m:Lcom/google/googlenav/aG;

    invoke-virtual {v0}, Lcom/google/googlenav/aG;->f()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/googlenav/c;->i:B

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aV;->c(B)I

    move-result v0

    goto :goto_0
.end method

.method public ad()I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->m:Lcom/google/googlenav/aG;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/c;->m:Lcom/google/googlenav/aG;

    invoke-virtual {v0}, Lcom/google/googlenav/aG;->e()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/googlenav/c;->i:B

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aV;->d(B)I

    move-result v0

    goto :goto_0
.end method

.method public ae()[B
    .locals 4

    invoke-virtual {p0}, Lcom/google/googlenav/c;->at()[Lcom/google/googlenav/bj;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/google/googlenav/bj;->b()I

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/google/googlenav/bj;->b()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/googlenav/bj;->c()[B

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public af()Lcom/google/googlenav/bH;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/c;->A:Lcom/google/googlenav/bH;

    return-object v0
.end method

.method public ag()Lcom/google/googlenav/bH;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/c;->B:Lcom/google/googlenav/bH;

    return-object v0
.end method

.method public ah()Law/e;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x97

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    return-object v0
.end method

.method public ai()Lcom/google/googlenav/aB;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->ah()Law/e;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/googlenav/aB;

    invoke-direct {v1, v0}, Lcom/google/googlenav/aB;-><init>(Law/e;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public aj()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->D:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->ak()Lcom/google/googlenav/bj;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/googlenav/bj;->a(Lcom/google/googlenav/bj;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/c;->D:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/c;->D:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ak()Lcom/google/googlenav/bj;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/googlenav/aE;->a()Law/e;

    move-result-object v0

    invoke-static {v0, v2}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1, v2}, Law/b;->b(Law/e;II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/googlenav/c;->D:Ljava/lang/Boolean;

    new-instance v1, Lcom/google/googlenav/bj;

    invoke-direct {v1, v0, v2, v3, v3}, Lcom/google/googlenav/bj;-><init>(Ljava/lang/String;I[BLcom/google/googlenav/aD;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/googlenav/c;->D:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/google/googlenav/c;->bK()Lcom/google/googlenav/bj;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    goto :goto_0
.end method

.method public al()Ljava/util/ArrayList;
    .locals 6

    const/16 v5, 0x9e

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/c;->E:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-virtual {v0, v5}, Law/e;->i(I)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/googlenav/c;->E:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-virtual {v2, v5, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/c;->E:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Law/e;->d(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/c;->E:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public am()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->an()Ljava/util/Hashtable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    goto :goto_0
.end method

.method public an()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/c;->v:Lac/w;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/c;->v:Lac/w;

    invoke-interface {v0}, Lac/w;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Hashtable;

    move-object v0, p0

    goto :goto_0
.end method

.method public ao()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public ap()LA/c;
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    if-eqz v0, :cond_0

    new-instance v0, LA/c;

    const-string v2, "proto"

    iget-object v3, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-virtual {v3}, Law/e;->e()I

    move-result v3

    invoke-direct {v0, v2, v3}, LA/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/c;->m:Lcom/google/googlenav/aG;

    if-eqz v0, :cond_1

    new-instance v0, LA/c;

    const-string v2, "image"

    iget-object v3, p0, Lcom/google/googlenav/c;->m:Lcom/google/googlenav/aG;

    invoke-virtual {v3}, Lcom/google/googlenav/aG;->g()I

    move-result v3

    invoke-direct {v0, v2, v3}, LA/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/c;->o:[Lcom/google/googlenav/c;

    if-eqz v0, :cond_3

    move v0, v5

    move v2, v5

    :goto_0
    iget-object v3, p0, Lcom/google/googlenav/c;->o:[Lcom/google/googlenav/c;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/google/googlenav/c;->o:[Lcom/google/googlenav/c;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/googlenav/c;->ap()LA/c;

    move-result-object v3

    iget v3, v3, LA/c;->b:I

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, LA/c;

    const-string v3, "rbl results"

    invoke-direct {v0, v3, v2}, LA/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/googlenav/c;->an()Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    move v3, v5

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/google/googlenav/c;->a:Ljava/lang/Object;

    if-eq v0, v4, :cond_4

    check-cast v0, Lcom/google/googlenav/aE;

    invoke-virtual {v0}, Lcom/google/googlenav/aE;->b()I

    move-result v0

    add-int/2addr v0, v3

    move v3, v0

    goto :goto_1

    :cond_5
    new-instance v0, LA/c;

    const-string v2, "place page stories - soft ref"

    invoke-direct {v0, v2, v3}, LA/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/c;->p:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/c;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v5

    :goto_2
    iget-object v2, p0, Lcom/google/googlenav/c;->t:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/googlenav/c;->t:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    :cond_7
    iget-object v2, p0, Lcom/google/googlenav/c;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    new-instance v2, LA/c;

    const-string v3, "Placemark"

    invoke-direct {v2, v3, v0, v1}, LA/c;-><init>(Ljava/lang/String;ILjava/util/Vector;)V

    return-object v2

    :cond_8
    move v0, v5

    goto :goto_2
.end method

.method public aq()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x17

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ar()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x18

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public as()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x12

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-virtual {v0, v2}, Law/e;->i(I)I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Law/e;->e(II)Law/e;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public at()[Lcom/google/googlenav/bj;
    .locals 5

    const/16 v4, 0x64

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/googlenav/c;->b:[Lcom/google/googlenav/bj;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-virtual {v0, v4}, Law/e;->i(I)I

    move-result v0

    new-array v1, v0, [Lcom/google/googlenav/bj;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-virtual {v3, v4, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/bj;->a(Law/e;)Lcom/google/googlenav/bj;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public au()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x46

    const/16 v2, 0x47

    invoke-static {v0, v1, v2}, Law/b;->b(Law/e;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public av()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x46

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8c

    invoke-static {v0, v1}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aw()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x46

    const/16 v2, 0x48

    invoke-static {v0, v1, v2}, Law/b;->b(Law/e;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ax()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x46

    const/16 v2, 0x49

    invoke-static {v0, v1, v2}, Law/b;->b(Law/e;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ay()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x46

    const/16 v2, 0x73

    invoke-static {v0, v1, v2}, Law/b;->b(Law/e;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public az()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x46

    const/16 v2, 0x74

    invoke-static {v0, v1, v2}, Law/b;->b(Law/e;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/google/googlenav/aE;
    .locals 10

    const/16 v9, 0x9e

    const/4 v5, 0x0

    const/4 v8, 0x1

    iget-object v1, p0, Lcom/google/googlenav/c;->d:Law/e;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1}, LA/u;->a(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v1, p0, Lcom/google/googlenav/c;->v:Lac/w;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/c;->v:Lac/w;

    invoke-interface {v1}, Lac/w;->a()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    invoke-static {v1}, Lac/x;->a(Ljava/lang/Object;)Lac/w;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/c;->v:Lac/w;

    move v1, v8

    :goto_1
    invoke-virtual {p0}, Lcom/google/googlenav/c;->an()Ljava/util/Hashtable;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-virtual {v4, v9}, Law/e;->i(I)I

    move-result v4

    :goto_2
    if-ge v5, v4, :cond_5

    iget-object v6, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-virtual {v6, v9, v5}, Law/e;->e(II)Law/e;

    move-result-object v6

    invoke-virtual {v6, v8}, Law/e;->d(I)I

    move-result v7

    if-ne v7, p1, :cond_3

    invoke-static {v6}, Lcom/google/googlenav/aE;->a(Law/e;)Lcom/google/googlenav/aE;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_4

    move-object v1, v6

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/googlenav/c;->an()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/c;->a:Ljava/lang/Object;

    if-eq v1, v3, :cond_6

    move-object v0, v1

    check-cast v0, Lcom/google/googlenav/aE;

    move-object p0, v0

    move-object v1, p0

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v6, v8}, Law/e;->d(I)I

    move-result v6

    invoke-static {v6}, LA/u;->a(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/google/googlenav/c;->a:Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/aE;

    move-object v1, p0

    goto :goto_0

    :cond_6
    move v1, v5

    goto :goto_1
.end method

.method public b(Z)Ljava/lang/String;
    .locals 5

    const/16 v1, 0x76

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Law/e;->h(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v3}, Law/e;->d(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/c;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/googlenav/c;->E()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-ne v0, v3, :cond_6

    const/16 v0, 0x36d

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/16 v2, 0x36c

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, LR/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public b(Lf/N;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/c;->g:Lf/N;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/4 v1, 0x4

    invoke-direct {p0, p1}, Lcom/google/googlenav/c;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->a(ILjava/lang/String;)V

    return-void
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->c()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bA()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/c;->w:Ljava/util/List;

    return-object v0
.end method

.method public bB()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/c;->x:Z

    return v0
.end method

.method public bC()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/c;->y:Z

    return v0
.end method

.method public bD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/c;->z:Z

    return v0
.end method

.method public bE()I
    .locals 9

    const/4 v8, 0x6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->D()Lcom/google/googlenav/B;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/B;->a()Lcom/google/googlenav/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bk;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/googlenav/B;->b()Lcom/google/googlenav/bk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/bk;->a()I

    move-result v2

    if-gt v2, v1, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlenav/c;->aS()I

    move-result v3

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_3

    invoke-virtual {p0, v4}, Lcom/google/googlenav/c;->c(I)Law/e;

    move-result-object v6

    invoke-virtual {v6, v8}, Law/e;->h(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6, v8}, Law/e;->d(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/googlenav/B;->a(I)Lcom/google/googlenav/bk;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlenav/bk;->a()I

    move-result v6

    if-lt v2, v6, :cond_2

    if-ge v1, v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move v0, v5

    goto :goto_0
.end method

.method public bF()Ljava/util/Vector;
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/aE;->a()Law/e;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v6}, Law/e;->i(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v6, v3}, Law/e;->e(II)Law/e;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public bG()Ljava/lang/String;
    .locals 2

    const/16 v1, 0x8d

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    const/16 v1, 0x8e

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bH()Ljava/util/Vector;
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/aE;->a()Law/e;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v6}, Law/e;->i(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v6, v3}, Law/e;->e(II)Law/e;

    move-result-object v4

    invoke-static {v4, v6}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public ba()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/google/googlenav/d;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bb()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public bc()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-static {v0}, Lcom/google/googlenav/c;->f(Law/e;)Z

    move-result v0

    return v0
.end method

.method public bd()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x7e

    invoke-static {v0, v1}, Law/b;->h(Law/e;I)Z

    move-result v0

    return v0
.end method

.method public be()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x95

    invoke-static {v0, v1}, Law/b;->h(Law/e;I)Z

    move-result v0

    return v0
.end method

.method public bf()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x98

    invoke-static {v0, v1}, Law/b;->h(Law/e;I)Z

    move-result v0

    return v0
.end method

.method public bg()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bh()Z
    .locals 5

    const/4 v4, 0x0

    iget-byte v0, p0, Lcom/google/googlenav/c;->i:B

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x8d

    const/16 v2, 0x8f

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Law/b;->a(Law/e;III)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method public bi()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x96

    invoke-static {v0, v1}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bj()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bk()I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x99

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Law/b;->e(Law/e;I)I

    move-result v0

    return v0
.end method

.method public bl()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/c;->r:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public bm()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bo()Law/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bn()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    return v0
.end method

.method public bo()Law/e;
    .locals 3

    const/16 v2, 0x99

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Law/e;

    sget-object v1, Ls/y;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget-object v1, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-virtual {v1, v2, v0}, Law/e;->b(ILaw/e;)V

    goto :goto_0
.end method

.method public bp()[Lcom/google/googlenav/o;
    .locals 6

    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bo()Law/e;

    move-result-object v0

    invoke-virtual {v0, v5}, Law/e;->i(I)I

    move-result v1

    new-array v2, v1, [Lcom/google/googlenav/o;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v5, v3}, Law/e;->e(II)Law/e;

    move-result-object v4

    invoke-static {v4}, Lcom/google/googlenav/o;->a(Law/e;)Lcom/google/googlenav/o;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public bq()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bv()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->e(I)V

    invoke-direct {p0}, Lcom/google/googlenav/c;->bP()V

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bo()Law/e;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    return-void
.end method

.method public br()[I
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bo()Law/e;

    move-result-object v0

    invoke-virtual {v0, v7}, Law/e;->i(I)I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    move v3, v6

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v7, v3}, Law/e;->e(II)Law/e;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v4, v5}, Law/b;->e(Law/e;I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_1
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_1
    aget v4, v2, v6

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v6

    goto :goto_1

    :pswitch_2
    const/4 v4, 0x1

    aget v5, v2, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v2, v4

    goto :goto_1

    :cond_0
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bs()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bu()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bt()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bk()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bu()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/c;->q:I

    return v0
.end method

.method public bv()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/c;->q:I

    return-void
.end method

.method public bw()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bx()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x46

    const/16 v2, 0x9b

    invoke-static {v0, v1, v2}, Law/b;->b(Law/e;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public by()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/googlenav/c;->ay()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "www."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x4

    :cond_0
    const-string v2, "/"

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bz()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x9f

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/c;->o:[Lcom/google/googlenav/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/c;->o:[Lcom/google/googlenav/c;

    array-length v0, v0

    goto :goto_0
.end method

.method public c(I)Law/e;
    .locals 3

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x97

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    if-ltz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Law/e;->i(I)I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0, v2, p1}, Law/e;->e(II)Law/e;

    move-result-object v0

    goto :goto_0
.end method

.method c(Law/e;)V
    .locals 8

    const/16 v7, 0x92

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, v7}, Law/e;->i(I)I

    move-result v0

    if-lez v0, :cond_0

    new-array v1, v0, [Lcom/google/googlenav/c;

    iput-object v1, p0, Lcom/google/googlenav/c;->o:[Lcom/google/googlenav/c;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v7, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/c;

    iget-object v4, p0, Lcom/google/googlenav/c;->f:Lf/N;

    const/4 v5, 0x2

    invoke-static {v2, v5}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/google/googlenav/c;-><init>(Lf/N;Ljava/lang/String;B)V

    const/16 v4, 0x90

    invoke-static {v2, v4}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/google/googlenav/c;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/c;->o:[Lcom/google/googlenav/c;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public c(Lf/N;)V
    .locals 3

    iput-object p1, p0, Lcom/google/googlenav/c;->f:Lf/N;

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/4 v1, 0x3

    invoke-static {p1}, Lcom/google/googlenav/c;->a(Lf/N;)Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/google/googlenav/c;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/c;->x:Z

    return-void
.end method

.method public d(Law/e;)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x9e

    invoke-virtual {v0, v1, p1}, Law/e;->a(ILaw/e;)V

    invoke-virtual {p0}, Lcom/google/googlenav/c;->an()Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Law/e;->d(I)I

    move-result v1

    invoke-static {v1}, LA/u;->a(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/c;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Law/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Law/e;->b(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Law/e;->a(ILaw/e;)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/c;->y:Z

    return-void
.end method

.method public d()[Lcom/google/googlenav/c;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/c;->o:[Lcom/google/googlenav/c;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/c;->p:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bo()Law/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Law/e;->h(II)V

    iget-object v1, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v2, 0x99

    invoke-virtual {v1, v2, v0}, Law/e;->b(ILaw/e;)V

    return-void
.end method

.method public e(Law/e;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p1}, Law/e;->b(ILaw/e;)V

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/c;->bO()Law/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/c;->z:Z

    return-void
.end method

.method public f()Law/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    return-object v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/google/googlenav/c;->q:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/c;->bO()Law/e;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public g()Lf/N;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/c;->f:Lf/N;

    return-object v0
.end method

.method public g(I)V
    .locals 2

    invoke-static {p1}, LA/u;->a(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/c;->w:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/c;->w:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public g(Law/e;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x99

    invoke-virtual {v0, v1, p1}, Law/e;->b(ILaw/e;)V

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bk()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->f(I)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/c;->bO()Law/e;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public h()Lf/h;
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->g()Lf/N;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lf/N;->g()Lf/h;

    move-result-object v0

    goto :goto_0
.end method

.method public i(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/c;->a(Ljava/lang/String;Law/e;)Law/e;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Law/b;->e(Law/e;I)I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/af;->a(IILaw/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/af;->a(IILaw/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bo()Law/e;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/c;->b(Ljava/lang/String;Law/e;)I

    move-result v1

    if-gez v1, :cond_0

    const-string v2, "unknown aspect label"

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "label: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Law/e;->g(II)V

    iget-object v0, p0, Lcom/google/googlenav/c;->r:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlenav/c;->d:Law/e;

    invoke-static {v0, v1}, Lcom/google/googlenav/af;->a(ILaw/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/c;->r:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x97

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bo()Law/e;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/c;->b(Ljava/lang/String;Law/e;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bo()Law/e;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x9f

    invoke-virtual {v0, v1, p1}, Law/e;->b(ILjava/lang/String;)V

    return-void
.end method

.method public o()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aK()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/c;->d:Law/e;

    const/16 v1, 0x76

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    invoke-static {v0, v2}, Law/b;->e(Law/e;I)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Lcom/google/googlenav/H;
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/aE;->a()Law/e;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/H;->a(Law/e;)Lcom/google/googlenav/H;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/googlenav/H;->a()[Lcom/google/googlenav/U;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/googlenav/H;->a()[Lcom/google/googlenav/U;

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_0

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public s()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->r()Lcom/google/googlenav/H;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/googlenav/H;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public t()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/aE;->a()Law/e;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/googlenav/c;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/googlenav/c;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/googlenav/c;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()[Lcom/google/googlenav/bu;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/c;->C:[Lcom/google/googlenav/bu;

    if-nez v0, :cond_0

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/c;->a(Lcom/google/googlenav/aE;)[Lcom/google/googlenav/bu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/c;->C:[Lcom/google/googlenav/bu;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/c;->C:[Lcom/google/googlenav/bu;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x33a

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/google/googlenav/aE;->a()Law/e;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Law/e;->f(I)Law/e;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public w()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/aE;->a()Law/e;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public x()Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->a(I)[Lcom/google/googlenav/H;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->a(I)[Lcom/google/googlenav/H;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public y()Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/c;->a(I)[Lcom/google/googlenav/H;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->a(I)[Lcom/google/googlenav/H;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public z()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/googlenav/c;->a(I)[Lcom/google/googlenav/H;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->a(I)[Lcom/google/googlenav/H;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
