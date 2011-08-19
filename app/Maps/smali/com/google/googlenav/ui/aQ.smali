.class public Lcom/google/googlenav/ui/aQ;
.super Ljava/lang/Object;


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Lcom/google/googlenav/ui/aI;

.field private E:Lcom/google/googlenav/ui/aI;

.field private F:Lx/U;

.field private G:Lx/x;

.field private H:I

.field private I:LI/B;

.field public a:Ljava/lang/Object;

.field public b:Z

.field public c:Z

.field public d:Lf/h;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Object;

.field public h:[Lcom/google/googlenav/ui/bx;

.field public i:Lcom/google/googlenav/ui/bk;

.field public j:Lcom/google/googlenav/ui/z;

.field public k:Z

.field private l:[Lcom/google/googlenav/ui/aI;

.field private m:[Lcom/google/googlenav/ui/aI;

.field private n:I

.field private o:I

.field private p:Lcom/google/googlenav/ui/bi;

.field private q:Lcom/google/googlenav/ui/bi;

.field private r:Lcom/google/googlenav/ui/bi;

.field private s:Lcom/google/googlenav/ui/bi;

.field private t:I

.field private u:I

.field private v:Ljava/lang/String;

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [Lcom/google/googlenav/ui/aI;

    iput-object v0, p0, Lcom/google/googlenav/ui/aQ;->l:[Lcom/google/googlenav/ui/aI;

    new-array v0, v2, [Lcom/google/googlenav/ui/aI;

    iput-object v0, p0, Lcom/google/googlenav/ui/aQ;->m:[Lcom/google/googlenav/ui/aI;

    iput v3, p0, Lcom/google/googlenav/ui/aQ;->n:I

    iput v3, p0, Lcom/google/googlenav/ui/aQ;->o:I

    iput-object v1, p0, Lcom/google/googlenav/ui/aQ;->p:Lcom/google/googlenav/ui/bi;

    iput-object v1, p0, Lcom/google/googlenav/ui/aQ;->q:Lcom/google/googlenav/ui/bi;

    iput-object v1, p0, Lcom/google/googlenav/ui/aQ;->r:Lcom/google/googlenav/ui/bi;

    iput-object v1, p0, Lcom/google/googlenav/ui/aQ;->s:Lcom/google/googlenav/ui/bi;

    iput v2, p0, Lcom/google/googlenav/ui/aQ;->t:I

    iput v2, p0, Lcom/google/googlenav/ui/aQ;->u:I

    iput-object v1, p0, Lcom/google/googlenav/ui/aQ;->v:Ljava/lang/String;

    iput v2, p0, Lcom/google/googlenav/ui/aQ;->w:I

    iput-boolean v4, p0, Lcom/google/googlenav/ui/aQ;->C:Z

    iput-object v1, p0, Lcom/google/googlenav/ui/aQ;->D:Lcom/google/googlenav/ui/aI;

    iput-object v1, p0, Lcom/google/googlenav/ui/aQ;->E:Lcom/google/googlenav/ui/aI;

    iput-object v1, p0, Lcom/google/googlenav/ui/aQ;->a:Ljava/lang/Object;

    iput v4, p0, Lcom/google/googlenav/ui/aQ;->H:I

    iput v3, p0, Lcom/google/googlenav/ui/aQ;->x:I

    iput v3, p0, Lcom/google/googlenav/ui/aQ;->z:I

    iput v3, p0, Lcom/google/googlenav/ui/aQ;->y:I

    iput v3, p0, Lcom/google/googlenav/ui/aQ;->A:I

    iput v3, p0, Lcom/google/googlenav/ui/aQ;->B:I

    iput-boolean v2, p0, Lcom/google/googlenav/ui/aQ;->b:Z

    iput-boolean v2, p0, Lcom/google/googlenav/ui/aQ;->c:Z

    iput-object v1, p0, Lcom/google/googlenav/ui/aQ;->d:Lf/h;

    iput v2, p0, Lcom/google/googlenav/ui/aQ;->e:I

    iput-object v1, p0, Lcom/google/googlenav/ui/aQ;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/googlenav/ui/aQ;->g:Ljava/lang/Object;

    new-array v0, v2, [Lcom/google/googlenav/ui/bx;

    iput-object v0, p0, Lcom/google/googlenav/ui/aQ;->h:[Lcom/google/googlenav/ui/bx;

    iput-object v1, p0, Lcom/google/googlenav/ui/aQ;->j:Lcom/google/googlenav/ui/z;

    iput-boolean v2, p0, Lcom/google/googlenav/ui/aQ;->k:Z

    iput-object v1, p0, Lcom/google/googlenav/ui/aQ;->I:LI/B;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput p1, p0, Lcom/google/googlenav/ui/aQ;->n:I

    return-object p0
.end method

.method public a(LI/B;)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/aQ;->I:LI/B;

    return-object p0
.end method

.method public a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array v0, v1, [Lcom/google/googlenav/ui/aI;

    iput-object v0, p0, Lcom/google/googlenav/ui/aQ;->l:[Lcom/google/googlenav/ui/aI;

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlenav/ui/aI;

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/google/googlenav/ui/aQ;->l:[Lcom/google/googlenav/ui/aI;

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/aQ;->p:Lcom/google/googlenav/ui/bi;

    return-object p0
.end method

.method public a(Lcom/google/googlenav/ui/bk;)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/aQ;->i:Lcom/google/googlenav/ui/bk;

    return-object p0
.end method

.method public a(Lcom/google/googlenav/ui/z;)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/aQ;->j:Lcom/google/googlenav/ui/z;

    return-object p0
.end method

.method public a(Lf/h;)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/aQ;->d:Lf/h;

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/aQ;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/aQ;->v:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlenav/ui/aI;

    iput-object v0, p0, Lcom/google/googlenav/ui/aQ;->l:[Lcom/google/googlenav/ui/aI;

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;)[Lcom/google/googlenav/ui/aI;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/aQ;->l:[Lcom/google/googlenav/ui/aI;

    goto :goto_0
.end method

.method public a(Lk/l;)Lcom/google/googlenav/ui/aQ;
    .locals 1

    invoke-static {p1}, Lcom/google/googlenav/ui/bi;->a(Lk/l;)Lcom/google/googlenav/ui/bi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/aQ;->p:Lcom/google/googlenav/ui/bi;

    return-object p0
.end method

.method public a(Lx/U;)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/aQ;->F:Lx/U;

    return-object p0
.end method

.method public a(Lx/x;)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/aQ;->G:Lx/x;

    return-object p0
.end method

.method public a(Z)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/ui/aQ;->C:Z

    return-object p0
.end method

.method public a([Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlenav/ui/aI;

    iput-object v0, p0, Lcom/google/googlenav/ui/aQ;->l:[Lcom/google/googlenav/ui/aI;

    :goto_0
    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/google/googlenav/ui/aQ;->l:[Lcom/google/googlenav/ui/aI;

    goto :goto_0
.end method

.method public a()Lcom/google/googlenav/ui/bx;
    .locals 37

    new-instance v1, Lcom/google/googlenav/ui/bx;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/aQ;->l:[Lcom/google/googlenav/ui/aI;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/aQ;->m:[Lcom/google/googlenav/ui/aI;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/ui/aQ;->n:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/ui/aQ;->o:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/aQ;->p:Lcom/google/googlenav/ui/bi;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/aQ;->q:Lcom/google/googlenav/ui/bi;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/aQ;->r:Lcom/google/googlenav/ui/bi;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/aQ;->s:Lcom/google/googlenav/ui/bi;

    move-object v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/ui/aQ;->t:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/ui/aQ;->u:I

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/aQ;->v:Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/ui/aQ;->H:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/ui/aQ;->x:I

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/ui/aQ;->z:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/ui/aQ;->y:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/ui/aQ;->A:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/ui/aQ;->B:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/ui/aQ;->w:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/ui/aQ;->C:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/aQ;->D:Lcom/google/googlenav/ui/aI;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/aQ;->E:Lcom/google/googlenav/ui/aI;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/aQ;->F:Lx/U;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/aQ;->G:Lx/x;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/aQ;->a:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/ui/aQ;->b:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/ui/aQ;->c:Z

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/aQ;->d:Lf/h;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/ui/aQ;->e:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/aQ;->f:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/aQ;->g:Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/aQ;->h:[Lcom/google/googlenav/ui/bx;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/aQ;->i:Lcom/google/googlenav/ui/bk;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/aQ;->j:Lcom/google/googlenav/ui/z;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/ui/aQ;->k:Z

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/aQ;->I:LI/B;

    move-object/from16 v36, v0

    invoke-direct/range {v1 .. v36}, Lcom/google/googlenav/ui/bx;-><init>([Lcom/google/googlenav/ui/aI;[Lcom/google/googlenav/ui/aI;IILcom/google/googlenav/ui/bi;Lcom/google/googlenav/ui/bi;Lcom/google/googlenav/ui/bi;Lcom/google/googlenav/ui/bi;IILjava/lang/String;IIIIIIIZLcom/google/googlenav/ui/aI;Lcom/google/googlenav/ui/aI;Lx/U;Lx/x;Ljava/lang/Object;ZZLf/h;ILjava/lang/String;Ljava/lang/Object;[Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bk;Lcom/google/googlenav/ui/z;ZLI/B;)V

    return-object v1
.end method

.method public b(I)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput p1, p0, Lcom/google/googlenav/ui/aQ;->o:I

    return-object p0
.end method

.method public b(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/aQ;->D:Lcom/google/googlenav/ui/aI;

    return-object p0
.end method

.method public b(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/aQ;->r:Lcom/google/googlenav/ui/bi;

    return-object p0
.end method

.method public b(Ljava/lang/Object;)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/aQ;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/aQ;->f:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlenav/ui/aI;

    iput-object v0, p0, Lcom/google/googlenav/ui/aQ;->m:[Lcom/google/googlenav/ui/aI;

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;)[Lcom/google/googlenav/ui/aI;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/aQ;->m:[Lcom/google/googlenav/ui/aI;

    goto :goto_0
.end method

.method public b(Lk/l;)Lcom/google/googlenav/ui/aQ;
    .locals 1

    invoke-static {p1}, Lcom/google/googlenav/ui/bi;->a(Lk/l;)Lcom/google/googlenav/ui/bi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/aQ;->r:Lcom/google/googlenav/ui/bi;

    return-object p0
.end method

.method public b(Z)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/ui/aQ;->c:Z

    return-object p0
.end method

.method public c(I)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput p1, p0, Lcom/google/googlenav/ui/aQ;->t:I

    return-object p0
.end method

.method public c(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/aQ;->E:Lcom/google/googlenav/ui/aI;

    return-object p0
.end method

.method public c(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlenav/ui/bx;

    iput-object v0, p0, Lcom/google/googlenav/ui/aQ;->h:[Lcom/google/googlenav/ui/bx;

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/ui/bx;

    iput-object v0, p0, Lcom/google/googlenav/ui/aQ;->h:[Lcom/google/googlenav/ui/bx;

    iget-object v0, p0, Lcom/google/googlenav/ui/aQ;->h:[Lcom/google/googlenav/ui/bx;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public c(Z)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/ui/aQ;->b:Z

    return-object p0
.end method

.method public d(I)Lcom/google/googlenav/ui/aQ;
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x3e

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unrecognized newLayout value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/google/googlenav/ui/aQ;->u:I

    return-object p0
.end method

.method public d(Z)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/ui/aQ;->k:Z

    return-object p0
.end method

.method public e(I)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput p1, p0, Lcom/google/googlenav/ui/aQ;->w:I

    return-object p0
.end method

.method public f(I)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput p1, p0, Lcom/google/googlenav/ui/aQ;->x:I

    return-object p0
.end method

.method public g(I)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput p1, p0, Lcom/google/googlenav/ui/aQ;->z:I

    return-object p0
.end method

.method public h(I)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput p1, p0, Lcom/google/googlenav/ui/aQ;->y:I

    return-object p0
.end method

.method public i(I)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput p1, p0, Lcom/google/googlenav/ui/aQ;->A:I

    return-object p0
.end method

.method public j(I)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput p1, p0, Lcom/google/googlenav/ui/aQ;->B:I

    return-object p0
.end method

.method public k(I)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput p1, p0, Lcom/google/googlenav/ui/aQ;->H:I

    return-object p0
.end method

.method public l(I)Lcom/google/googlenav/ui/aQ;
    .locals 0

    iput p1, p0, Lcom/google/googlenav/ui/aQ;->e:I

    return-object p0
.end method
