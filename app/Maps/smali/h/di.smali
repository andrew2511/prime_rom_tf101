.class public Lh/di;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Z

.field d:Lf/h;

.field e:I

.field f:Ljava/lang/String;

.field g:Lh/cD;

.field h:I

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:B

.field l:Z

.field m:Z

.field n:Law/e;

.field o:Law/e;

.field p:Ljava/util/List;

.field q:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lh/di;->b:I

    iput-boolean v1, p0, Lh/di;->c:Z

    const v0, 0x1869f

    iput v0, p0, Lh/di;->e:I

    iput v1, p0, Lh/di;->h:I

    return-void
.end method


# virtual methods
.method public a(B)Lh/di;
    .locals 0

    iput-byte p1, p0, Lh/di;->k:B

    return-object p0
.end method

.method public a(I)Lh/di;
    .locals 0

    iput p1, p0, Lh/di;->b:I

    return-object p0
.end method

.method public a(Law/e;)Lh/di;
    .locals 0

    iput-object p1, p0, Lh/di;->n:Law/e;

    return-object p0
.end method

.method public a(Lf/h;)Lh/di;
    .locals 0

    iput-object p1, p0, Lh/di;->d:Lf/h;

    return-object p0
.end method

.method public a(Lh/cD;)Lh/di;
    .locals 0

    iput-object p1, p0, Lh/di;->g:Lh/cD;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lh/di;
    .locals 0

    iput-object p1, p0, Lh/di;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lh/di;
    .locals 0

    iput-object p1, p0, Lh/di;->p:Ljava/util/List;

    return-object p0
.end method

.method public a(Z)Lh/di;
    .locals 0

    iput-boolean p1, p0, Lh/di;->c:Z

    return-object p0
.end method

.method a()V
    .locals 2

    iget-object v0, p0, Lh/di;->g:Lh/cD;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No callback provided to LocationSelectionWizard."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lh/di;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sourceOption provided to LocationSelectionWizard."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public b(I)Lh/di;
    .locals 0

    iput p1, p0, Lh/di;->e:I

    return-object p0
.end method

.method public b(Law/e;)Lh/di;
    .locals 0

    iput-object p1, p0, Lh/di;->o:Law/e;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lh/di;
    .locals 0

    iput-object p1, p0, Lh/di;->f:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lh/di;
    .locals 0

    iput-boolean p1, p0, Lh/di;->l:Z

    return-object p0
.end method

.method b()Z
    .locals 1

    iget-object v0, p0, Lh/di;->o:Law/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/di;->p:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)Lh/di;
    .locals 0

    iput p1, p0, Lh/di;->h:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lh/di;
    .locals 0

    iput-object p1, p0, Lh/di;->i:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lh/di;
    .locals 0

    iput-boolean p1, p0, Lh/di;->m:Z

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lh/di;
    .locals 0

    iput-object p1, p0, Lh/di;->j:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)Lh/di;
    .locals 0

    iput-boolean p1, p0, Lh/di;->q:Z

    return-object p0
.end method
