.class public Lcom/google/googlenav/V;
.super Ljava/lang/Object;


# instance fields
.field private A:Z

.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Lf/C;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/googlenav/an;

.field private i:Lcom/google/googlenav/a;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Lf/A;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Lf/h;

.field private q:Z

.field private r:I

.field private s:I

.field private t:Z

.field private u:Z

.field private v:[Law/e;

.field private w:Ljava/lang/String;

.field private x:Ljava/util/Hashtable;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/V;->a:Ljava/lang/String;

    iput v4, p0, Lcom/google/googlenav/V;->b:I

    iput v1, p0, Lcom/google/googlenav/V;->c:I

    iput v3, p0, Lcom/google/googlenav/V;->d:I

    iput v3, p0, Lcom/google/googlenav/V;->e:I

    iput-object v2, p0, Lcom/google/googlenav/V;->f:Lf/C;

    const-string v0, "100"

    iput-object v0, p0, Lcom/google/googlenav/V;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/googlenav/V;->h:Lcom/google/googlenav/an;

    iput-object v2, p0, Lcom/google/googlenav/V;->i:Lcom/google/googlenav/a;

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/googlenav/V;->j:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/V;->k:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/googlenav/V;->l:Lf/A;

    iput-boolean v1, p0, Lcom/google/googlenav/V;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/V;->n:Z

    iput-boolean v1, p0, Lcom/google/googlenav/V;->o:Z

    iput-object v2, p0, Lcom/google/googlenav/V;->p:Lf/h;

    iput-boolean v1, p0, Lcom/google/googlenav/V;->q:Z

    iput v1, p0, Lcom/google/googlenav/V;->r:I

    iput v4, p0, Lcom/google/googlenav/V;->s:I

    iput-boolean v1, p0, Lcom/google/googlenav/V;->t:Z

    iput-boolean v1, p0, Lcom/google/googlenav/V;->u:Z

    iput-object v2, p0, Lcom/google/googlenav/V;->v:[Law/e;

    iput-object v2, p0, Lcom/google/googlenav/V;->w:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/googlenav/V;->x:Ljava/util/Hashtable;

    iput-boolean v1, p0, Lcom/google/googlenav/V;->y:Z

    iput-boolean v1, p0, Lcom/google/googlenav/V;->z:Z

    iput-boolean v1, p0, Lcom/google/googlenav/V;->A:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/bs;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/googlenav/bs;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/V;->a:Ljava/lang/String;

    iget v0, p1, Lcom/google/googlenav/bs;->b:I

    iput v0, p0, Lcom/google/googlenav/V;->b:I

    iget v0, p1, Lcom/google/googlenav/bs;->c:I

    iput v0, p0, Lcom/google/googlenav/V;->c:I

    iget v0, p1, Lcom/google/googlenav/bs;->d:I

    iput v0, p0, Lcom/google/googlenav/V;->d:I

    iget v0, p1, Lcom/google/googlenav/bs;->e:I

    iput v0, p0, Lcom/google/googlenav/V;->e:I

    iget-object v0, p1, Lcom/google/googlenav/bs;->f:Lf/C;

    iput-object v0, p0, Lcom/google/googlenav/V;->f:Lf/C;

    iget-object v0, p1, Lcom/google/googlenav/bs;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/V;->g:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/googlenav/bs;->h:Lcom/google/googlenav/an;

    iput-object v0, p0, Lcom/google/googlenav/V;->h:Lcom/google/googlenav/an;

    iget-object v0, p1, Lcom/google/googlenav/bs;->i:Lcom/google/googlenav/a;

    iput-object v0, p0, Lcom/google/googlenav/V;->i:Lcom/google/googlenav/a;

    iget v0, p1, Lcom/google/googlenav/bs;->j:I

    iput v0, p0, Lcom/google/googlenav/V;->j:I

    iget-object v0, p1, Lcom/google/googlenav/bs;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/V;->k:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/googlenav/bs;->l:Lf/A;

    iput-object v0, p0, Lcom/google/googlenav/V;->l:Lf/A;

    iget-boolean v0, p1, Lcom/google/googlenav/bs;->m:Z

    iput-boolean v0, p0, Lcom/google/googlenav/V;->m:Z

    iget-boolean v0, p1, Lcom/google/googlenav/bs;->n:Z

    iput-boolean v0, p0, Lcom/google/googlenav/V;->n:Z

    iget-boolean v0, p1, Lcom/google/googlenav/bs;->o:Z

    iput-boolean v0, p0, Lcom/google/googlenav/V;->o:Z

    iget-object v0, p1, Lcom/google/googlenav/bs;->p:Lf/h;

    iput-object v0, p0, Lcom/google/googlenav/V;->p:Lf/h;

    iget-boolean v0, p1, Lcom/google/googlenav/bs;->q:Z

    iput-boolean v0, p0, Lcom/google/googlenav/V;->q:Z

    iget v0, p1, Lcom/google/googlenav/bs;->r:I

    iput v0, p0, Lcom/google/googlenav/V;->r:I

    iget v0, p1, Lcom/google/googlenav/bs;->s:I

    iput v0, p0, Lcom/google/googlenav/V;->s:I

    iget-boolean v0, p1, Lcom/google/googlenav/bs;->t:Z

    iput-boolean v0, p0, Lcom/google/googlenav/V;->t:Z

    iget-boolean v0, p1, Lcom/google/googlenav/bs;->u:Z

    iput-boolean v0, p0, Lcom/google/googlenav/V;->u:Z

    iget-object v0, p1, Lcom/google/googlenav/bs;->v:[Law/e;

    iput-object v0, p0, Lcom/google/googlenav/V;->v:[Law/e;

    iget-object v0, p1, Lcom/google/googlenav/bs;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/V;->w:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/googlenav/bs;->x:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/google/googlenav/V;->x:Ljava/util/Hashtable;

    iget-boolean v0, p1, Lcom/google/googlenav/bs;->z:Z

    iput-boolean v0, p0, Lcom/google/googlenav/V;->y:Z

    iget-boolean v0, p1, Lcom/google/googlenav/bs;->y:Z

    iput-boolean v0, p0, Lcom/google/googlenav/V;->z:Z

    iget-boolean v0, p1, Lcom/google/googlenav/bs;->A:Z

    iput-boolean v0, p0, Lcom/google/googlenav/V;->A:Z

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/V;
    .locals 0

    iput p1, p0, Lcom/google/googlenav/V;->b:I

    return-object p0
.end method

.method public a(Lcom/google/googlenav/a;)Lcom/google/googlenav/V;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/V;->i:Lcom/google/googlenav/a;

    return-object p0
.end method

.method public a(Lcom/google/googlenav/an;)Lcom/google/googlenav/V;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/V;->h:Lcom/google/googlenav/an;

    return-object p0
.end method

.method public a(Lf/A;)Lcom/google/googlenav/V;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/V;->l:Lf/A;

    return-object p0
.end method

.method public a(Lf/C;)Lcom/google/googlenav/V;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/V;->f:Lf/C;

    return-object p0
.end method

.method public a(Lf/h;)Lcom/google/googlenav/V;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/V;->p:Lf/h;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/V;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/V;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Hashtable;)Lcom/google/googlenav/V;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/V;->x:Ljava/util/Hashtable;

    return-object p0
.end method

.method public a(Z)Lcom/google/googlenav/V;
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/V;->m:Z

    return-object p0
.end method

.method public a([Law/e;)Lcom/google/googlenav/V;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/V;->v:[Law/e;

    return-object p0
.end method

.method public a()Lcom/google/googlenav/bs;
    .locals 29

    new-instance v1, Lcom/google/googlenav/bs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/V;->a:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/V;->b:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/V;->c:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/V;->d:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/V;->e:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/V;->f:Lf/C;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/V;->g:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/V;->h:Lcom/google/googlenav/an;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/V;->i:Lcom/google/googlenav/a;

    move-object v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/V;->j:I

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/V;->k:Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/V;->l:Lf/A;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/V;->m:Z

    move v14, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/V;->n:Z

    move v15, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/V;->o:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/V;->p:Lf/h;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/V;->q:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/V;->r:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/V;->s:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/V;->t:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/V;->u:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/V;->v:[Law/e;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/V;->w:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/V;->x:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/V;->y:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/V;->z:Z

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/V;->A:Z

    move/from16 v28, v0

    invoke-direct/range {v1 .. v28}, Lcom/google/googlenav/bs;-><init>(Ljava/lang/String;IIIILf/C;Ljava/lang/String;Lcom/google/googlenav/an;Lcom/google/googlenav/a;ILjava/lang/String;Lf/A;ZZZLf/h;ZIIZZ[Law/e;Ljava/lang/String;Ljava/util/Hashtable;ZZZ)V

    return-object v1
.end method

.method public b(I)Lcom/google/googlenav/V;
    .locals 0

    iput p1, p0, Lcom/google/googlenav/V;->c:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/googlenav/V;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/V;->g:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/google/googlenav/V;
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/V;->n:Z

    return-object p0
.end method

.method public c(I)Lcom/google/googlenav/V;
    .locals 0

    iput p1, p0, Lcom/google/googlenav/V;->d:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/googlenav/V;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/V;->k:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/google/googlenav/V;
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/V;->o:Z

    return-object p0
.end method

.method public d(I)Lcom/google/googlenav/V;
    .locals 0

    iput p1, p0, Lcom/google/googlenav/V;->e:I

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/googlenav/V;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/V;->w:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)Lcom/google/googlenav/V;
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/V;->q:Z

    return-object p0
.end method

.method public e(I)Lcom/google/googlenav/V;
    .locals 0

    iput p1, p0, Lcom/google/googlenav/V;->j:I

    return-object p0
.end method

.method public e(Z)Lcom/google/googlenav/V;
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/V;->t:Z

    return-object p0
.end method

.method public f(I)Lcom/google/googlenav/V;
    .locals 0

    iput p1, p0, Lcom/google/googlenav/V;->s:I

    return-object p0
.end method

.method public f(Z)Lcom/google/googlenav/V;
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/V;->u:Z

    return-object p0
.end method

.method public g(Z)Lcom/google/googlenav/V;
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/V;->z:Z

    return-object p0
.end method

.method public h(Z)Lcom/google/googlenav/V;
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/V;->y:Z

    return-object p0
.end method

.method public i(Z)Lcom/google/googlenav/V;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/V;->A:Z

    return-object p0
.end method
