.class public Lcom/google/googlenav/ui/bx;
.super Lcom/google/googlenav/ui/br;


# static fields
.field public static final c:Ljava/lang/Object;

.field public static final d:Ljava/lang/Object;

.field public static final e:Ljava/lang/Object;

.field public static final f:Ljava/lang/Object;

.field public static final g:Ljava/lang/Object;

.field public static final h:Ljava/lang/Object;


# instance fields
.field public final A:Ljava/lang/Object;

.field public final B:I

.field public final C:Z

.field public final D:Z

.field public E:Lf/h;

.field public final F:I

.field public G:Ljava/lang/String;

.field public final H:[Lcom/google/googlenav/ui/bx;

.field public final I:Lcom/google/googlenav/ui/bk;

.field public final J:Lcom/google/googlenav/ui/z;

.field public K:Z

.field public final L:Ljava/lang/Object;

.field public final i:[Lcom/google/googlenav/ui/aI;

.field public final j:[Lcom/google/googlenav/ui/aI;

.field public final k:I

.field public final l:I

.field public final m:Lcom/google/googlenav/ui/bi;

.field public final n:Lcom/google/googlenav/ui/bi;

.field public final o:Lcom/google/googlenav/ui/bi;

.field public final p:Lcom/google/googlenav/ui/bi;

.field public final q:I

.field public final r:I

.field public final s:LI/B;

.field public final t:Ljava/lang/String;

.field public final u:I

.field public final v:Z

.field public final w:Lcom/google/googlenav/ui/aI;

.field public final x:Lcom/google/googlenav/ui/aI;

.field public final y:Lx/U;

.field public final z:Lx/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/bx;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/bx;->d:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/bx;->e:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/bx;->f:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/bx;->g:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/bx;->h:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/bx;)V
    .locals 37

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    move-object v2, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->j:[Lcom/google/googlenav/ui/aI;

    move-object v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/googlenav/ui/bx;->k:I

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/googlenav/ui/bx;->l:I

    move v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->m:Lcom/google/googlenav/ui/bi;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->n:Lcom/google/googlenav/ui/bi;

    move-object v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->o:Lcom/google/googlenav/ui/bi;

    move-object v8, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->p:Lcom/google/googlenav/ui/bi;

    move-object v9, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/googlenav/ui/bx;->q:I

    move v10, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/googlenav/ui/bx;->r:I

    move v11, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->t:Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/googlenav/ui/bx;->B:I

    move v13, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ui/bx;->h()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ui/bx;->i()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ui/bx;->j()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ui/bx;->k()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ui/bx;->l()I

    move-result v18

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/googlenav/ui/bx;->u:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/googlenav/ui/bx;->v:Z

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->w:Lcom/google/googlenav/ui/aI;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->x:Lcom/google/googlenav/ui/aI;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->y:Lx/U;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->z:Lx/x;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->A:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/googlenav/ui/bx;->C:Z

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/googlenav/ui/bx;->D:Z

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->E:Lf/h;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/googlenav/ui/bx;->F:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->G:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->L:Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->H:[Lcom/google/googlenav/ui/bx;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->I:Lcom/google/googlenav/ui/bk;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->J:Lcom/google/googlenav/ui/z;

    move-object/from16 v34, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/googlenav/ui/bx;->K:Z

    move/from16 v35, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->s:LI/B;

    move-object/from16 v36, v0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v36}, Lcom/google/googlenav/ui/bx;-><init>([Lcom/google/googlenav/ui/aI;[Lcom/google/googlenav/ui/aI;IILcom/google/googlenav/ui/bi;Lcom/google/googlenav/ui/bi;Lcom/google/googlenav/ui/bi;Lcom/google/googlenav/ui/bi;IILjava/lang/String;IIIIIIIZLcom/google/googlenav/ui/aI;Lcom/google/googlenav/ui/aI;Lx/U;Lx/x;Ljava/lang/Object;ZZLf/h;ILjava/lang/String;Ljava/lang/Object;[Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bk;Lcom/google/googlenav/ui/z;ZLI/B;)V

    return-void
.end method

.method protected constructor <init>([Lcom/google/googlenav/ui/aI;[Lcom/google/googlenav/ui/aI;IILcom/google/googlenav/ui/bi;Lcom/google/googlenav/ui/bi;Lcom/google/googlenav/ui/bi;Lcom/google/googlenav/ui/bi;IILjava/lang/String;IIIIIIIZLcom/google/googlenav/ui/aI;Lcom/google/googlenav/ui/aI;Lx/U;Lx/x;Ljava/lang/Object;ZZLf/h;ILjava/lang/String;Ljava/lang/Object;[Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bk;Lcom/google/googlenav/ui/z;ZLI/B;)V
    .locals 8

    move-object v2, p0

    move/from16 v3, p13

    move/from16 v4, p14

    move/from16 v5, p15

    move/from16 v6, p16

    move/from16 v7, p17

    invoke-direct/range {v2 .. v7}, Lcom/google/googlenav/ui/br;-><init>(IIIII)V

    iput-object p1, p0, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    iput-object p2, p0, Lcom/google/googlenav/ui/bx;->j:[Lcom/google/googlenav/ui/aI;

    iput p3, p0, Lcom/google/googlenav/ui/bx;->k:I

    iput p4, p0, Lcom/google/googlenav/ui/bx;->l:I

    iput-object p5, p0, Lcom/google/googlenav/ui/bx;->m:Lcom/google/googlenav/ui/bi;

    iput-object p6, p0, Lcom/google/googlenav/ui/bx;->n:Lcom/google/googlenav/ui/bi;

    iput-object p7, p0, Lcom/google/googlenav/ui/bx;->o:Lcom/google/googlenav/ui/bi;

    move-object/from16 v0, p8

    move-object v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/bx;->p:Lcom/google/googlenav/ui/bi;

    move/from16 v0, p9

    move-object v1, p0

    iput v0, v1, Lcom/google/googlenav/ui/bx;->q:I

    move/from16 v0, p10

    move-object v1, p0

    iput v0, v1, Lcom/google/googlenav/ui/bx;->r:I

    move-object/from16 v0, p11

    move-object v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/bx;->t:Ljava/lang/String;

    move/from16 v0, p12

    move-object v1, p0

    iput v0, v1, Lcom/google/googlenav/ui/bx;->B:I

    move/from16 v0, p18

    move-object v1, p0

    iput v0, v1, Lcom/google/googlenav/ui/bx;->u:I

    move/from16 v0, p19

    move-object v1, p0

    iput-boolean v0, v1, Lcom/google/googlenav/ui/bx;->v:Z

    move-object/from16 v0, p20

    move-object v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/bx;->w:Lcom/google/googlenav/ui/aI;

    move-object/from16 v0, p21

    move-object v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/bx;->x:Lcom/google/googlenav/ui/aI;

    move-object/from16 v0, p22

    move-object v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/bx;->y:Lx/U;

    move-object/from16 v0, p23

    move-object v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/bx;->z:Lx/x;

    move-object/from16 v0, p24

    move-object v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/bx;->A:Ljava/lang/Object;

    move/from16 v0, p25

    move-object v1, p0

    iput-boolean v0, v1, Lcom/google/googlenav/ui/bx;->C:Z

    move/from16 v0, p26

    move-object v1, p0

    iput-boolean v0, v1, Lcom/google/googlenav/ui/bx;->D:Z

    move-object/from16 v0, p27

    move-object v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/bx;->E:Lf/h;

    move/from16 v0, p28

    move-object v1, p0

    iput v0, v1, Lcom/google/googlenav/ui/bx;->F:I

    move-object/from16 v0, p29

    move-object v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/bx;->G:Ljava/lang/String;

    move-object/from16 v0, p30

    move-object v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/bx;->L:Ljava/lang/Object;

    move-object/from16 v0, p31

    move-object v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/bx;->H:[Lcom/google/googlenav/ui/bx;

    move-object/from16 v0, p32

    move-object v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/bx;->I:Lcom/google/googlenav/ui/bk;

    move-object/from16 v0, p33

    move-object v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/bx;->J:Lcom/google/googlenav/ui/z;

    move/from16 v0, p34

    move-object v1, p0

    iput-boolean v0, v1, Lcom/google/googlenav/ui/bx;->K:Z

    move-object/from16 v0, p35

    move-object v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/bx;->s:LI/B;

    return-void
.end method


# virtual methods
.method public m()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bx;->m:Lcom/google/googlenav/ui/bi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/bx;->m:Lcom/google/googlenav/ui/bi;

    iget-object v0, v0, Lcom/google/googlenav/ui/bi;->a:Lk/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bx;->o:Lcom/google/googlenav/ui/bi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/bx;->o:Lcom/google/googlenav/ui/bi;

    iget-object v0, v0, Lcom/google/googlenav/ui/bi;->a:Lk/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/bx;->K:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/ui/bx;->w:Lcom/google/googlenav/ui/aI;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/bx;->w:Lcom/google/googlenav/ui/aI;

    iget-object v1, v1, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    if-eqz v1, :cond_1

    move v1, v4

    :goto_0
    iget-object v2, p0, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/googlenav/ui/bx;->j:[Lcom/google/googlenav/ui/aI;

    if-eqz v1, :cond_2

    move v1, v4

    :goto_1
    iget-object v2, p0, Lcom/google/googlenav/ui/bx;->j:[Lcom/google/googlenav/ui/aI;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/googlenav/ui/bx;->j:[Lcom/google/googlenav/ui/aI;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/googlenav/ui/bx;->H:[Lcom/google/googlenav/ui/bx;

    if-eqz v1, :cond_3

    move v1, v4

    :goto_2
    iget-object v2, p0, Lcom/google/googlenav/ui/bx;->H:[Lcom/google/googlenav/ui/bx;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/googlenav/ui/bx;->H:[Lcom/google/googlenav/ui/bx;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bx;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
