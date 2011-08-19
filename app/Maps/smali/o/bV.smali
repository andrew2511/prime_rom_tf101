.class public Lo/bV;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Law/e;

.field private o:Lo/cd;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lo/bV;->c:I

    iput v2, p0, Lo/bV;->d:I

    const v0, 0x1869f

    iput v0, p0, Lo/bV;->e:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo/bV;->f:J

    const/16 v0, 0xa

    iput v0, p0, Lo/bV;->g:I

    iput-boolean v2, p0, Lo/bV;->h:Z

    const/4 v0, 0x0

    iput v0, p0, Lo/bV;->l:I

    return-void
.end method

.method static synthetic a(Lo/bV;)I
    .locals 1

    iget v0, p0, Lo/bV;->a:I

    return v0
.end method

.method static synthetic b(Lo/bV;)I
    .locals 1

    iget v0, p0, Lo/bV;->b:I

    return v0
.end method

.method static synthetic c(Lo/bV;)I
    .locals 1

    iget v0, p0, Lo/bV;->c:I

    return v0
.end method

.method static synthetic d(Lo/bV;)I
    .locals 1

    iget v0, p0, Lo/bV;->d:I

    return v0
.end method

.method static synthetic e(Lo/bV;)I
    .locals 1

    iget v0, p0, Lo/bV;->e:I

    return v0
.end method

.method static synthetic f(Lo/bV;)Lo/cd;
    .locals 1

    iget-object v0, p0, Lo/bV;->o:Lo/cd;

    return-object v0
.end method

.method static synthetic g(Lo/bV;)J
    .locals 2

    iget-wide v0, p0, Lo/bV;->f:J

    return-wide v0
.end method

.method static synthetic h(Lo/bV;)I
    .locals 1

    iget v0, p0, Lo/bV;->g:I

    return v0
.end method

.method static synthetic i(Lo/bV;)Z
    .locals 1

    iget-boolean v0, p0, Lo/bV;->h:Z

    return v0
.end method

.method static synthetic j(Lo/bV;)Z
    .locals 1

    iget-boolean v0, p0, Lo/bV;->i:Z

    return v0
.end method

.method static synthetic k(Lo/bV;)Z
    .locals 1

    iget-boolean v0, p0, Lo/bV;->j:Z

    return v0
.end method

.method static synthetic l(Lo/bV;)Z
    .locals 1

    iget-boolean v0, p0, Lo/bV;->k:Z

    return v0
.end method

.method static synthetic m(Lo/bV;)I
    .locals 1

    iget v0, p0, Lo/bV;->l:I

    return v0
.end method

.method static synthetic n(Lo/bV;)Law/e;
    .locals 1

    iget-object v0, p0, Lo/bV;->n:Law/e;

    return-object v0
.end method

.method static synthetic o(Lo/bV;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/bV;->m:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lo/J;
    .locals 1

    new-instance v0, Lo/J;

    invoke-direct {v0, p0}, Lo/J;-><init>(Lo/bV;)V

    return-object v0
.end method

.method public a(I)Lo/bV;
    .locals 0

    iput p1, p0, Lo/bV;->a:I

    return-object p0
.end method

.method public a(Law/e;)Lo/bV;
    .locals 0

    iput-object p1, p0, Lo/bV;->n:Law/e;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lo/bV;
    .locals 0

    iput-object p1, p0, Lo/bV;->m:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lo/cd;)Lo/bV;
    .locals 0

    iput-object p1, p0, Lo/bV;->o:Lo/cd;

    return-object p0
.end method

.method public a(Z)Lo/bV;
    .locals 0

    iput-boolean p1, p0, Lo/bV;->h:Z

    return-object p0
.end method

.method public b(I)Lo/bV;
    .locals 0

    iput p1, p0, Lo/bV;->b:I

    return-object p0
.end method

.method public b(Z)Lo/bV;
    .locals 0

    iput-boolean p1, p0, Lo/bV;->i:Z

    return-object p0
.end method

.method public c(I)Lo/bV;
    .locals 0

    iput p1, p0, Lo/bV;->c:I

    return-object p0
.end method

.method public c(Z)Lo/bV;
    .locals 0

    iput-boolean p1, p0, Lo/bV;->j:Z

    return-object p0
.end method

.method public d(I)Lo/bV;
    .locals 0

    iput p1, p0, Lo/bV;->d:I

    return-object p0
.end method

.method public d(Z)Lo/bV;
    .locals 0

    iput-boolean p1, p0, Lo/bV;->k:Z

    return-object p0
.end method

.method public e(I)Lo/bV;
    .locals 0

    iput p1, p0, Lo/bV;->e:I

    return-object p0
.end method

.method public f(I)Lo/bV;
    .locals 0

    iput p1, p0, Lo/bV;->g:I

    return-object p0
.end method

.method public g(I)Lo/bV;
    .locals 0

    iput p1, p0, Lo/bV;->l:I

    return-object p0
.end method
