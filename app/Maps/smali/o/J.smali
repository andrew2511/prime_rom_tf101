.class public Lo/J;
.super Lak/m;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:J

.field private final g:I

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:I

.field private final m:Ljava/lang/String;

.field private final n:Law/e;

.field private final o:Lo/cd;

.field private p:Z

.field private q:Law/e;

.field private r:Law/e;

.field private s:Ljava/util/List;

.field private t:Z


# direct methods
.method protected constructor <init>(Lo/bV;)V
    .locals 2

    invoke-direct {p0}, Lak/m;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/J;->t:Z

    invoke-static {p1}, Lo/bV;->a(Lo/bV;)I

    move-result v0

    iput v0, p0, Lo/J;->a:I

    invoke-static {p1}, Lo/bV;->b(Lo/bV;)I

    move-result v0

    iput v0, p0, Lo/J;->b:I

    invoke-static {p1}, Lo/bV;->c(Lo/bV;)I

    move-result v0

    iput v0, p0, Lo/J;->c:I

    invoke-static {p1}, Lo/bV;->d(Lo/bV;)I

    move-result v0

    iput v0, p0, Lo/J;->d:I

    invoke-static {p1}, Lo/bV;->e(Lo/bV;)I

    move-result v0

    iput v0, p0, Lo/J;->e:I

    invoke-static {p1}, Lo/bV;->f(Lo/bV;)Lo/cd;

    move-result-object v0

    iput-object v0, p0, Lo/J;->o:Lo/cd;

    invoke-static {p1}, Lo/bV;->g(Lo/bV;)J

    move-result-wide v0

    iput-wide v0, p0, Lo/J;->f:J

    invoke-static {p1}, Lo/bV;->h(Lo/bV;)I

    move-result v0

    iput v0, p0, Lo/J;->g:I

    invoke-static {p1}, Lo/bV;->i(Lo/bV;)Z

    move-result v0

    iput-boolean v0, p0, Lo/J;->h:Z

    invoke-static {p1}, Lo/bV;->j(Lo/bV;)Z

    move-result v0

    iput-boolean v0, p0, Lo/J;->i:Z

    invoke-static {p1}, Lo/bV;->k(Lo/bV;)Z

    move-result v0

    iput-boolean v0, p0, Lo/J;->j:Z

    invoke-static {p1}, Lo/bV;->l(Lo/bV;)Z

    move-result v0

    iput-boolean v0, p0, Lo/J;->k:Z

    invoke-static {p1}, Lo/bV;->m(Lo/bV;)I

    move-result v0

    iput v0, p0, Lo/J;->l:I

    invoke-static {p1}, Lo/bV;->n(Lo/bV;)Law/e;

    move-result-object v0

    iput-object v0, p0, Lo/J;->n:Law/e;

    invoke-static {p1}, Lo/bV;->o(Lo/bV;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/J;->m:Ljava/lang/String;

    return-void
.end method

.method private static a(Law/e;)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Law/e;->d(I)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Law/e;->e(I)J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GoogleNavUserEventProto[eventType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",status="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x3f

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/E;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    new-instance v1, Law/e;

    sget-object v2, LaG/b;->a:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    iget v2, p0, Lo/J;->a:I

    mul-int/lit8 v2, v2, 0xa

    iget v3, p0, Lo/J;->b:I

    mul-int/lit8 v3, v3, 0xa

    invoke-virtual {v1, v5, v2}, Law/e;->h(II)V

    invoke-virtual {v1, v6, v3}, Law/e;->h(II)V

    invoke-virtual {v0, v5, v1}, Law/e;->b(ILaw/e;)V

    iget-object v1, p0, Lo/J;->m:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    iget-object v4, p0, Lo/J;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    iget v1, p0, Lo/J;->c:I

    invoke-virtual {v0, v6, v1}, Law/e;->h(II)V

    const/4 v1, 0x3

    iget v4, p0, Lo/J;->d:I

    invoke-virtual {v0, v1, v4}, Law/e;->h(II)V

    iget v1, p0, Lo/J;->e:I

    const v4, 0x1869f

    if-eq v1, v4, :cond_1

    iget v1, p0, Lo/J;->e:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    const/16 v1, 0xe

    iget v4, p0, Lo/J;->e:I

    invoke-virtual {v0, v1, v4}, Law/e;->h(II)V

    :cond_1
    const/4 v1, 0x5

    iget v4, p0, Lo/J;->g:I

    invoke-virtual {v0, v1, v4}, Law/e;->h(II)V

    const/4 v1, 0x6

    iget-boolean v4, p0, Lo/J;->h:Z

    invoke-virtual {v0, v1, v4}, Law/e;->b(IZ)V

    const/4 v1, 0x7

    iget-boolean v4, p0, Lo/J;->i:Z

    invoke-virtual {v0, v1, v4}, Law/e;->b(IZ)V

    const/16 v1, 0x9

    iget-boolean v4, p0, Lo/J;->j:Z

    invoke-virtual {v0, v1, v4}, Law/e;->b(IZ)V

    const/16 v1, 0xb

    iget-boolean v4, p0, Lo/J;->k:Z

    invoke-virtual {v0, v1, v4}, Law/e;->b(IZ)V

    const/16 v1, 0xa

    iget v4, p0, Lo/J;->l:I

    invoke-virtual {v0, v1, v4}, Law/e;->h(II)V

    const/16 v1, 0x8

    invoke-static {v2, v3}, LH/a;->a(II)Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    const/16 v1, 0xd

    iget-boolean v2, p0, Lo/J;->i:Z

    if-eqz v2, :cond_3

    move v2, v5

    :goto_0
    invoke-virtual {v0, v1, v2}, Law/e;->b(IZ)V

    iget-object v1, p0, Lo/J;->n:Law/e;

    if-eqz v1, :cond_2

    const/16 v1, 0xc

    iget-object v2, p0, Lo/J;->n:Law/e;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    :cond_2
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lo/J;->t:Z

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    sget-object v0, Ls/E;->b:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    iput-object v0, p0, Lo/J;->r:Law/e;

    iget-object v0, p0, Lo/J;->r:Law/e;

    invoke-static {v0, v4, v3}, Law/b;->c(Law/e;II)I

    move-result v0

    iget-object v1, p0, Lo/J;->r:Law/e;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Law/e;->f(I)Law/e;

    move-result-object v1

    invoke-static {v1, v4, v3}, Law/b;->c(Law/e;II)I

    move-result v1

    packed-switch v0, :pswitch_data_0

    iput-boolean v5, p0, Lo/J;->p:Z

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/j;->a(I)V

    :goto_0
    return v4

    :pswitch_0
    iget-object v0, p0, Lo/J;->r:Law/e;

    invoke-virtual {v0, v6}, Law/e;->f(I)Law/e;

    move-result-object v0

    iput-object v0, p0, Lo/J;->q:Law/e;

    iget-object v0, p0, Lo/J;->r:Law/e;

    invoke-virtual {v0, v7}, Law/e;->i(I)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lo/J;->s:Ljava/util/List;

    move v1, v5

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lo/J;->r:Law/e;

    invoke-virtual {v2, v7, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Law/b;->h(Law/e;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x68

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lo/J;->s:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lo/J;->r:Law/e;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/googlenav/ag;->a()Lcom/google/googlenav/ag;

    move-result-object v0

    iget-object v1, p0, Lo/J;->r:Law/e;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Law/e;->f(I)Law/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ag;->a(Law/e;)V

    :cond_2
    iput-boolean v4, p0, Lo/J;->p:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public e_()Z
    .locals 1

    iget-boolean v0, p0, Lo/J;->t:Z

    return v0
.end method

.method public f_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i_()V
    .locals 6

    iget-boolean v0, p0, Lo/J;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/J;->o:Lo/cd;

    iget-object v1, p0, Lo/J;->q:Law/e;

    iget-object v2, p0, Lo/J;->s:Ljava/util/List;

    iget-object v3, p0, Lo/J;->r:Law/e;

    iget-wide v4, p0, Lo/J;->f:J

    invoke-interface/range {v0 .. v5}, Lo/cd;->a(Law/e;Ljava/util/List;Law/e;J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lo/J;->o:Lo/cd;

    iget-wide v1, p0, Lo/J;->f:J

    invoke-interface {v0, v1, v2}, Lo/cd;->a(J)V

    goto :goto_0
.end method

.method public n_()V
    .locals 3

    iget-object v0, p0, Lo/J;->o:Lo/cd;

    iget-wide v1, p0, Lo/J;->f:J

    invoke-interface {v0, v1, v2}, Lo/cd;->a(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SnapToPlaceRequest[selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/J;->a:I

    invoke-static {v1}, LR/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/J;->b:I

    invoke-static {v1}, LR/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",span="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/J;->c:I

    invoke-static {v1}, LR/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/J;->d:I

    invoke-static {v1}, LR/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",accuracyMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/J;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",gaiaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lo/J;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",maxNumResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/J;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",shouldReverseGeoCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lo/J;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isCheckinMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lo/J;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",shouldRequestHotpotStatistics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lo/J;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",shouldBePersonalized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lo/J;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",purpose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/J;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",userEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/J;->n:Law/e;

    invoke-static {v1}, Lo/J;->a(Law/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", query="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/J;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
