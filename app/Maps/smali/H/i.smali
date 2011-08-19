.class final LH/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LH/f;

.field final synthetic b:Lf/h;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:Z

.field final synthetic h:LH/m;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Lf/h;

.field final synthetic k:Z

.field final synthetic l:Ljava/lang/String;


# direct methods
.method constructor <init>(LH/f;Lf/h;IILjava/lang/String;IZLH/m;Ljava/lang/String;Lf/h;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, LH/i;->a:LH/f;

    iput-object p2, p0, LH/i;->b:Lf/h;

    iput p3, p0, LH/i;->c:I

    iput p4, p0, LH/i;->d:I

    iput-object p5, p0, LH/i;->e:Ljava/lang/String;

    iput p6, p0, LH/i;->f:I

    iput-boolean p7, p0, LH/i;->g:Z

    iput-object p8, p0, LH/i;->h:LH/m;

    iput-object p9, p0, LH/i;->i:Ljava/lang/String;

    iput-object p10, p0, LH/i;->j:Lf/h;

    iput-boolean p11, p0, LH/i;->k:Z

    iput-object p12, p0, LH/i;->l:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    invoke-static {}, LaW/a;->d()LaW/a;

    move-result-object v5

    invoke-static {}, LaR/d;->c()LaR/d;

    move-result-object v6

    invoke-virtual {v5}, LaW/a;->f()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v6}, LaR/d;->f()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, LH/i;->a:LH/f;

    move-object v1, v0

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, LH/a;

    move-object/from16 v0, p0

    iget-object v0, v0, LH/i;->b:Lf/h;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, LH/i;->c:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, LH/i;->d:I

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LH/i;->a:LH/f;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LH/i;->e:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p0

    iget v0, v0, LH/i;->f:I

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, LH/i;->g:Z

    move v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LH/i;->h:LH/m;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LH/i;->i:Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LH/i;->j:Lf/h;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, LH/i;->k:Z

    move v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LH/i;->l:Ljava/lang/String;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-direct/range {v1 .. v16}, LH/a;-><init>(Lf/h;IILaW/a;LaR/d;LH/f;Ljava/lang/String;IZLH/m;Ljava/lang/String;Lf/h;ZLjava/lang/String;LH/i;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lak/h;->c(Lak/d;)V

    :cond_1
    return-void
.end method
