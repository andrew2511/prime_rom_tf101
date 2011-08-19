.class public Lcom/google/googlenav/z;
.super Lak/m;

# interfaces
.implements Lak/k;
.implements Lcom/google/googlenav/j;


# static fields
.field private static final U:[I

.field public static a:Z

.field private static b:Z

.field private static c:I

.field private static final z:LA/p;


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Z

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Lcom/google/googlenav/layer/s;

.field private J:Lcom/google/googlenav/layer/d;

.field private K:Z

.field private L:[I

.field private final M:Ljava/util/HashSet;

.field private N:Z

.field private O:[Lcom/google/googlenav/c;

.field private P:I

.field private Q:Lcom/google/googlenav/a;

.field private R:J

.field private S:[Ljava/lang/String;

.field private T:I

.field private V:[Lcom/google/googlenav/aN;

.field private W:Z

.field private X:Law/e;

.field private Y:I

.field private d:[Lcom/google/googlenav/c;

.field private e:[I

.field private f:Lcom/google/googlenav/bs;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Law/e;

.field private o:I

.field private p:Z

.field private q:Lf/C;

.field private r:Lf/h;

.field private s:I

.field private t:I

.field private volatile u:Z

.field private v:I

.field private w:Ljava/lang/String;

.field private x:I

.field private y:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/z;->a:Z

    sput-boolean v0, Lcom/google/googlenav/z;->b:Z

    const/4 v0, -0x1

    sput v0, Lcom/google/googlenav/z;->c:I

    new-instance v0, LA/p;

    const-string v1, "search"

    const-string v2, "s"

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, LA/p;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/z;->z:LA/p;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/googlenav/z;->U:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lak/m;-><init>()V

    new-array v0, v2, [Lcom/google/googlenav/c;

    iput-object v0, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/z;->e:[I

    new-instance v0, Lcom/google/googlenav/V;

    invoke-direct {v0}, Lcom/google/googlenav/V;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iput-boolean v2, p0, Lcom/google/googlenav/z;->m:Z

    iput v3, p0, Lcom/google/googlenav/z;->o:I

    iput-boolean v2, p0, Lcom/google/googlenav/z;->p:Z

    iput-boolean v2, p0, Lcom/google/googlenav/z;->u:Z

    iput v3, p0, Lcom/google/googlenav/z;->x:I

    iput-byte v2, p0, Lcom/google/googlenav/z;->y:B

    iput-boolean v2, p0, Lcom/google/googlenav/z;->F:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/z;->G:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/z;->H:Ljava/lang/String;

    sget-object v0, Lcom/google/googlenav/layer/s;->a:Lcom/google/googlenav/layer/s;

    iput-object v0, p0, Lcom/google/googlenav/z;->I:Lcom/google/googlenav/layer/s;

    iput-boolean v2, p0, Lcom/google/googlenav/z;->K:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/z;->M:Ljava/util/HashSet;

    iput-boolean v2, p0, Lcom/google/googlenav/z;->N:Z

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/googlenav/z;->R:J

    iput v3, p0, Lcom/google/googlenav/z;->T:I

    iput-boolean v2, p0, Lcom/google/googlenav/z;->W:Z

    iput v3, p0, Lcom/google/googlenav/z;->Y:I

    iput v2, p0, Lcom/google/googlenav/z;->A:I

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/bs;Lf/Y;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lak/m;-><init>()V

    new-array v0, v2, [Lcom/google/googlenav/c;

    iput-object v0, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/z;->e:[I

    new-instance v0, Lcom/google/googlenav/V;

    invoke-direct {v0}, Lcom/google/googlenav/V;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iput-boolean v2, p0, Lcom/google/googlenav/z;->m:Z

    iput v3, p0, Lcom/google/googlenav/z;->o:I

    iput-boolean v2, p0, Lcom/google/googlenav/z;->p:Z

    iput-boolean v2, p0, Lcom/google/googlenav/z;->u:Z

    iput v3, p0, Lcom/google/googlenav/z;->x:I

    iput-byte v2, p0, Lcom/google/googlenav/z;->y:B

    iput-boolean v2, p0, Lcom/google/googlenav/z;->F:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/z;->G:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/z;->H:Ljava/lang/String;

    sget-object v0, Lcom/google/googlenav/layer/s;->a:Lcom/google/googlenav/layer/s;

    iput-object v0, p0, Lcom/google/googlenav/z;->I:Lcom/google/googlenav/layer/s;

    iput-boolean v2, p0, Lcom/google/googlenav/z;->K:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/z;->M:Ljava/util/HashSet;

    iput-boolean v2, p0, Lcom/google/googlenav/z;->N:Z

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/googlenav/z;->R:J

    iput v3, p0, Lcom/google/googlenav/z;->T:I

    iput-boolean v2, p0, Lcom/google/googlenav/z;->W:Z

    iput v3, p0, Lcom/google/googlenav/z;->Y:I

    sget-object v0, Lcom/google/googlenav/z;->z:LA/p;

    invoke-virtual {v0}, LA/p;->a()V

    iput-object p1, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iget v0, p1, Lcom/google/googlenav/bs;->r:I

    iput v0, p0, Lcom/google/googlenav/z;->A:I

    iget-object v0, p1, Lcom/google/googlenav/bs;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/z;->g:Ljava/lang/String;

    iget v0, p1, Lcom/google/googlenav/bs;->b:I

    iput v0, p0, Lcom/google/googlenav/z;->h:I

    iget-object v0, p1, Lcom/google/googlenav/bs;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/z;->i:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/googlenav/bs;->f:Lf/C;

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lf/Y;->h()Lf/C;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/googlenav/z;->q:Lf/C;

    if-eqz p2, :cond_5

    iget v0, p1, Lcom/google/googlenav/bs;->d:I

    if-ne v0, v3, :cond_3

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->f()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/z;->q:Lf/C;

    invoke-virtual {p2, v0, v1}, Lf/Y;->a(ILf/C;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/googlenav/z;->s:I

    iget v0, p1, Lcom/google/googlenav/bs;->e:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/z;->q:Lf/C;

    invoke-virtual {p2, v0}, Lf/Y;->b(Lf/C;)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/google/googlenav/z;->t:I

    :goto_3
    iget-object v0, p1, Lcom/google/googlenav/bs;->i:Lcom/google/googlenav/a;

    iput-object v0, p0, Lcom/google/googlenav/z;->Q:Lcom/google/googlenav/a;

    iget-boolean v0, p1, Lcom/google/googlenav/bs;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/z;->g:Ljava/lang/String;

    const-string v1, " loc:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_1

    :cond_0
    iget-boolean v0, p1, Lcom/google/googlenav/bs;->o:Z

    iput-boolean v0, p0, Lcom/google/googlenav/z;->N:Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p1, Lcom/google/googlenav/bs;->f:Lf/C;

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/google/googlenav/bs;->d:I

    goto :goto_1

    :cond_4
    iget v0, p1, Lcom/google/googlenav/bs;->e:I

    goto :goto_2

    :cond_5
    iput v2, p0, Lcom/google/googlenav/z;->s:I

    iput v2, p0, Lcom/google/googlenav/z;->t:I

    goto :goto_3
.end method

.method private constructor <init>(Lcom/google/googlenav/z;ILcom/google/googlenav/a;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lak/m;-><init>()V

    new-array v0, v2, [Lcom/google/googlenav/c;

    iput-object v0, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/z;->e:[I

    new-instance v0, Lcom/google/googlenav/V;

    invoke-direct {v0}, Lcom/google/googlenav/V;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iput-boolean v2, p0, Lcom/google/googlenav/z;->m:Z

    iput v3, p0, Lcom/google/googlenav/z;->o:I

    iput-boolean v2, p0, Lcom/google/googlenav/z;->p:Z

    iput-boolean v2, p0, Lcom/google/googlenav/z;->u:Z

    iput v3, p0, Lcom/google/googlenav/z;->x:I

    iput-byte v2, p0, Lcom/google/googlenav/z;->y:B

    iput-boolean v2, p0, Lcom/google/googlenav/z;->F:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/z;->G:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/z;->H:Ljava/lang/String;

    sget-object v0, Lcom/google/googlenav/layer/s;->a:Lcom/google/googlenav/layer/s;

    iput-object v0, p0, Lcom/google/googlenav/z;->I:Lcom/google/googlenav/layer/s;

    iput-boolean v2, p0, Lcom/google/googlenav/z;->K:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/z;->M:Ljava/util/HashSet;

    iput-boolean v2, p0, Lcom/google/googlenav/z;->N:Z

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/googlenav/z;->R:J

    iput v3, p0, Lcom/google/googlenav/z;->T:I

    iput-boolean v2, p0, Lcom/google/googlenav/z;->W:Z

    iput v3, p0, Lcom/google/googlenav/z;->Y:I

    sget-object v0, Lcom/google/googlenav/z;->z:LA/p;

    invoke-virtual {v0}, LA/p;->a()V

    iget-object v0, p1, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iput-object v0, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iput p2, p0, Lcom/google/googlenav/z;->A:I

    iget-object v0, p1, Lcom/google/googlenav/z;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/z;->g:Ljava/lang/String;

    iget v0, p1, Lcom/google/googlenav/z;->h:I

    iput v0, p0, Lcom/google/googlenav/z;->h:I

    iget-object v0, p1, Lcom/google/googlenav/z;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/z;->i:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/googlenav/z;->G:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/z;->G:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/googlenav/z;->H:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/z;->H:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/googlenav/z;->q:Lf/C;

    iput-object v0, p0, Lcom/google/googlenav/z;->q:Lf/C;

    iget v0, p1, Lcom/google/googlenav/z;->t:I

    iput v0, p0, Lcom/google/googlenav/z;->t:I

    iget v0, p1, Lcom/google/googlenav/z;->s:I

    iput v0, p0, Lcom/google/googlenav/z;->s:I

    iput-object p3, p0, Lcom/google/googlenav/z;->Q:Lcom/google/googlenav/a;

    iget-boolean v0, p1, Lcom/google/googlenav/z;->N:Z

    iput-boolean v0, p0, Lcom/google/googlenav/z;->N:Z

    iget-boolean v0, p1, Lcom/google/googlenav/z;->p:Z

    iput-boolean v0, p0, Lcom/google/googlenav/z;->p:Z

    iget-object v0, p1, Lcom/google/googlenav/z;->B:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/z;->B:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/googlenav/z;->I:Lcom/google/googlenav/layer/s;

    iput-object v0, p0, Lcom/google/googlenav/z;->I:Lcom/google/googlenav/layer/s;

    iget-boolean v0, p1, Lcom/google/googlenav/z;->m:Z

    iput-boolean v0, p0, Lcom/google/googlenav/z;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/z;->K:Z

    return-void
.end method

.method public constructor <init>([Lcom/google/googlenav/c;Lf/C;II)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lak/m;-><init>()V

    new-array v0, v2, [Lcom/google/googlenav/c;

    iput-object v0, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/z;->e:[I

    new-instance v0, Lcom/google/googlenav/V;

    invoke-direct {v0}, Lcom/google/googlenav/V;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iput-boolean v2, p0, Lcom/google/googlenav/z;->m:Z

    iput v3, p0, Lcom/google/googlenav/z;->o:I

    iput-boolean v2, p0, Lcom/google/googlenav/z;->p:Z

    iput-boolean v2, p0, Lcom/google/googlenav/z;->u:Z

    iput v3, p0, Lcom/google/googlenav/z;->x:I

    iput-byte v2, p0, Lcom/google/googlenav/z;->y:B

    iput-boolean v2, p0, Lcom/google/googlenav/z;->F:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/z;->G:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/z;->H:Ljava/lang/String;

    sget-object v0, Lcom/google/googlenav/layer/s;->a:Lcom/google/googlenav/layer/s;

    iput-object v0, p0, Lcom/google/googlenav/z;->I:Lcom/google/googlenav/layer/s;

    iput-boolean v2, p0, Lcom/google/googlenav/z;->K:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/z;->M:Ljava/util/HashSet;

    iput-boolean v2, p0, Lcom/google/googlenav/z;->N:Z

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/googlenav/z;->R:J

    iput v3, p0, Lcom/google/googlenav/z;->T:I

    iput-boolean v2, p0, Lcom/google/googlenav/z;->W:Z

    iput v3, p0, Lcom/google/googlenav/z;->Y:I

    iput v2, p0, Lcom/google/googlenav/z;->A:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/z;->g:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlenav/z;->h:I

    iput-object p2, p0, Lcom/google/googlenav/z;->q:Lf/C;

    iput p3, p0, Lcom/google/googlenav/z;->s:I

    iput p4, p0, Lcom/google/googlenav/z;->t:I

    iput-object p1, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    invoke-direct {p0}, Lcom/google/googlenav/z;->aK()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/googlenav/z;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez p0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " loc:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, LR/a;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lac/m;->L()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v1, " loc:"

    goto :goto_0

    :cond_2
    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private aF()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iget-object v0, v0, Lcom/google/googlenav/bs;->x:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iget-object v0, v0, Lcom/google/googlenav/bs;->x:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aG()[I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    array-length v0, v0

    new-array v0, v0, [I

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/googlenav/c;->O()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    aput v3, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v2, 0x1

    aput v2, v0, v1

    move v2, v3

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private aH()V
    .locals 5

    iget-object v0, p0, Lcom/google/googlenav/z;->M:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/googlenav/c;->F()B

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/z;->M:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->I()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/googlenav/ai;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private aI()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    array-length v0, v0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/googlenav/z;->e:[I

    move v1, v6

    :goto_0
    if-ge v1, v0, :cond_3

    move v2, v6

    move v3, v1

    :goto_1
    if-gt v2, v1, :cond_2

    iget-object v4, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    iget-object v5, p0, Lcom/google/googlenav/z;->e:[I

    aget v5, v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v4

    iget-object v5, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v5

    if-eq v2, v1, :cond_0

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lf/h;->b()I

    move-result v4

    invoke-virtual {v5}, Lf/h;->b()I

    move-result v5

    if-ge v4, v5, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/google/googlenav/z;->e:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/google/googlenav/z;->e:[I

    aput v3, v5, v2

    move v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private aJ()Law/e;
    .locals 6

    invoke-virtual {p0}, Lcom/google/googlenav/z;->aa()Law/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/z;->b(Law/e;)Law/e;

    move-result-object v0

    new-instance v1, Law/e;

    sget-object v2, Ls/T;->a:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Law/e;->b(ILaw/e;)V

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/googlenav/z;->q:Lf/C;

    invoke-virtual {v2}, Lf/C;->a()Lf/h;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/z;->s:I

    iget v4, p0, Lcom/google/googlenav/z;->t:I

    iget-object v5, p0, Lcom/google/googlenav/z;->q:Lf/C;

    invoke-virtual {v5}, Lf/C;->b()Lf/l;

    move-result-object v5

    invoke-virtual {v5}, Lf/l;->a()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lf/I;->a(Lf/h;III)Law/e;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Law/e;->b(ILaw/e;)V

    const/4 v0, 0x3

    iget v2, p0, Lcom/google/googlenav/z;->h:I

    invoke-virtual {v1, v0, v2}, Law/e;->h(II)V

    iget-object v0, p0, Lcom/google/googlenav/z;->i:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/googlenav/z;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method private aK()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/z;->T:I

    invoke-virtual {p0}, Lcom/google/googlenav/z;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/z;->aI()V

    invoke-direct {p0}, Lcom/google/googlenav/z;->aG()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/z;->L:[I

    invoke-direct {p0}, Lcom/google/googlenav/z;->aH()V

    :cond_0
    return-void
.end method

.method public static b(Ljava/io/DataInput;)Lcom/google/googlenav/z;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x1

    sget-object v0, Ls/T;->a:Law/f;

    invoke-static {v0, p0}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/z;

    invoke-direct {v1}, Lcom/google/googlenav/z;-><init>()V

    invoke-virtual {v0, v3}, Law/e;->f(I)Law/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/z;->a(Law/e;)Z

    const/4 v2, 0x3

    invoke-static {v0, v2, v5}, Law/b;->c(Law/e;II)I

    move-result v2

    iput v2, v1, Lcom/google/googlenav/z;->h:I

    iput-boolean v3, v1, Lcom/google/googlenav/z;->m:Z

    invoke-virtual {v0, v4}, Law/e;->h(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v4}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/googlenav/z;->i:Ljava/lang/String;

    :cond_0
    iput-boolean v3, v1, Lcom/google/googlenav/z;->u:Z

    invoke-virtual {v0, v5}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v3}, Law/e;->f(I)Law/e;

    move-result-object v2

    new-instance v3, Lf/C;

    invoke-static {v2}, Lf/I;->a(Law/e;)Lf/h;

    move-result-object v2

    invoke-virtual {v0, v4}, Law/e;->d(I)I

    move-result v0

    invoke-static {v0}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v3, v2, v0, v4}, Lf/C;-><init>(Lf/h;Lf/l;I)V

    iput-object v3, v1, Lcom/google/googlenav/z;->q:Lf/C;

    return-object v1
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Law/e;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/z;->g:Ljava/lang/String;

    :cond_0
    const/16 v0, 0xe

    invoke-static {p1, v0}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/z;->G:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-static {p1, v0}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/z;->H:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/z;->X:Law/e;

    iget-object v0, p0, Lcom/google/googlenav/z;->X:Law/e;

    invoke-virtual {v0, v4}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lf/I;->a(Law/e;)Lf/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/z;->r:Lf/h;

    iget-object v0, p0, Lcom/google/googlenav/z;->X:Law/e;

    invoke-virtual {v0, v5}, Law/e;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/z;->s:I

    iget-object v0, p0, Lcom/google/googlenav/z;->X:Law/e;

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/z;->t:I

    const/16 v0, 0x9

    invoke-static {p1, v0}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    iput-boolean v3, p0, Lcom/google/googlenav/z;->p:Z

    if-eqz v0, :cond_2

    iput-boolean v4, p0, Lcom/google/googlenav/z;->p:Z

    invoke-static {v0, v5}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/z;->B:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/z;->C:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlenav/z;->g:Ljava/lang/String;

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/z;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/googlenav/z;->D:Ljava/lang/String;

    :cond_1
    const/16 v1, 0x8

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/z;->E:Ljava/lang/String;

    :cond_2
    const/16 v0, 0xb

    invoke-static {p1, v0, v3}, Law/b;->c(Law/e;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/z;->A:I

    const/16 v0, 0xd

    invoke-static {p1, v0, v2}, Law/b;->c(Law/e;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/z;->o:I

    invoke-direct {p0, p1}, Lcom/google/googlenav/z;->d(Law/e;)V

    sget v0, Lcom/google/googlenav/z;->c:I

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/google/googlenav/z;->ah()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/googlenav/z;->A:I

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/googlenav/z;->c_()I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/z;->o:I

    if-ge v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/google/googlenav/z;->c_()I

    move-result v0

    sput v0, Lcom/google/googlenav/z;->c:I

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/googlenav/z;->e(Law/e;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/z;->f(Law/e;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/z;->g(Law/e;)V

    return-void
.end method

.method private d(Law/e;)V
    .locals 6

    const/16 v0, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1, v0}, Law/e;->i(I)I

    move-result v0

    new-array v1, v0, [Lcom/google/googlenav/c;

    iput-object v1, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_2

    const/16 v2, 0x8

    :try_start_0
    invoke-virtual {p1, v2, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/c;->a(Law/e;)Lcom/google/googlenav/c;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/googlenav/c;->c(Z)V

    iget-object v3, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iget-boolean v3, v3, Lcom/google/googlenav/bs;->A:Z

    invoke-virtual {v2, v3}, Lcom/google/googlenav/c;->d(Z)V

    invoke-virtual {v2}, Lcom/google/googlenav/c;->Y()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/googlenav/z;->D:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/googlenav/c;->d(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/googlenav/z;->B:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/googlenav/c;->e(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/googlenav/c;->aK()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/googlenav/z;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/googlenav/c;->f(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Lcom/google/googlenav/c;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/googlenav/z;->E:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/googlenav/c;->g(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    aput-object v2, v3, v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lac/i;->b()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    :cond_2
    sget-object v1, LD/c;->a:LD/c;

    invoke-virtual {v1}, LD/c;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    if-le v0, v5, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/google/googlenav/c;->O()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    iget-object v2, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    iget-object v1, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    aput-object v0, v1, v4

    :cond_3
    invoke-direct {p0}, Lcom/google/googlenav/z;->aK()V

    return-void
.end method

.method private e(Law/e;)V
    .locals 5

    const/16 v4, 0x10

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Law/e;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/z;->l:Z

    :cond_0
    const/4 v0, 0x6

    invoke-static {p1, v0}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/z;->k:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/z;->j:Ljava/lang/String;

    invoke-virtual {p1, v4}, Law/e;->i(I)I

    move-result v0

    new-array v1, v0, [Lcom/google/googlenav/c;

    iput-object v1, p0, Lcom/google/googlenav/z;->O:[Lcom/google/googlenav/c;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v4, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/c;->a(Law/e;)Lcom/google/googlenav/c;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/z;->O:[Lcom/google/googlenav/c;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private f(Law/e;)V
    .locals 5

    const/16 v4, 0x11

    invoke-virtual {p1, v4}, Law/e;->i(I)I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/googlenav/z;->S:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/z;->S:[Ljava/lang/String;

    invoke-virtual {p1, v4, v1}, Law/e;->f(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private g(Law/e;)V
    .locals 12

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Law/e;->i(I)I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/aN;

    iput-object v0, p0, Lcom/google/googlenav/z;->V:[Lcom/google/googlenav/aN;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/z;->V:[Lcom/google/googlenav/aN;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const/16 v1, 0x12

    invoke-virtual {p1, v1, v0}, Law/e;->e(II)Law/e;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Law/b;->g(Law/e;I)J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x2

    invoke-static {v1, v3}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Law/e;->i(I)I

    move-result v4

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5, v4}, Ljava/util/Vector;-><init>(I)V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_0

    const/4 v7, 0x3

    invoke-virtual {v1, v7, v6}, Law/e;->e(II)Law/e;

    move-result-object v7

    new-instance v8, Lcom/google/googlenav/n;

    const/4 v9, 0x1

    invoke-static {v7, v9}, Law/b;->e(Law/e;I)I

    move-result v9

    const/4 v10, 0x2

    invoke-static {v7, v10}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-static {v7, v11}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v9, v10, v7}, Lcom/google/googlenav/n;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/z;->V:[Lcom/google/googlenav/aN;

    new-instance v4, Lcom/google/googlenav/aN;

    invoke-direct {v4, v2, v3, v5}, Lcom/google/googlenav/aN;-><init>(ILjava/lang/String;Ljava/util/Vector;)V

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private h(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->e:[I

    aget v0, v0, p1

    return v0
.end method

.method private h(Law/e;)V
    .locals 5

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/googlenav/layer/s;

    invoke-virtual {p1, v3}, Law/e;->f(I)Law/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/layer/s;-><init>(Law/e;)V

    iput-object v0, p0, Lcom/google/googlenav/z;->I:Lcom/google/googlenav/layer/s;

    :goto_0
    invoke-virtual {p1, v2}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/layer/d;

    invoke-virtual {v0, v3}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/googlenav/layer/s;

    invoke-direct {v4, v1}, Lcom/google/googlenav/layer/s;-><init>(Law/e;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-direct {v2, v3, v4, v0}, Lcom/google/googlenav/layer/d;-><init>(Ljava/lang/String;Lcom/google/googlenav/layer/s;I)V

    iput-object v2, p0, Lcom/google/googlenav/z;->J:Lcom/google/googlenav/layer/d;

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/googlenav/layer/s;->a:Lcom/google/googlenav/layer/s;

    iput-object v0, p0, Lcom/google/googlenav/z;->I:Lcom/google/googlenav/layer/s;

    goto :goto_0
.end method

.method private i(Law/e;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v1}, Law/e;->a(ILaw/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/z;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/z;->k:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->k:Ljava/lang/String;

    return-object v0
.end method

.method public C()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->O:[Lcom/google/googlenav/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/z;->O:[Lcom/google/googlenav/c;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public D()[Lcom/google/googlenav/c;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->O:[Lcom/google/googlenav/c;

    return-object v0
.end method

.method public E()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/z;->P:I

    return v0
.end method

.method public F()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/z;->l:Z

    return v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->G:Ljava/lang/String;

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->H:Ljava/lang/String;

    return-object v0
.end method

.method public I()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/z;->m:Z

    return v0
.end method

.method public J()Lf/h;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->r:Lf/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/z;->q:Lf/C;

    invoke-virtual {v0}, Lf/C;->a()Lf/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/z;->r:Lf/h;

    goto :goto_0
.end method

.method public K()Lf/A;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iget-object v0, v0, Lcom/google/googlenav/bs;->l:Lf/A;

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->B:Ljava/lang/String;

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->C:Ljava/lang/String;

    return-object v0
.end method

.method public N()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/z;->s:I

    return v0
.end method

.method public O()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/z;->t:I

    return v0
.end method

.method public P()Lf/C;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->q:Lf/C;

    return-object v0
.end method

.method public Q()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iget v0, v0, Lcom/google/googlenav/bs;->c:I

    return v0
.end method

.method public R()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iget-object v0, v0, Lcom/google/googlenav/bs;->g:Ljava/lang/String;

    return-object v0
.end method

.method public S()I
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/googlenav/z;->T:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/googlenav/z;->T:I

    :goto_0
    return v0

    :cond_0
    iput v2, p0, Lcom/google/googlenav/z;->T:I

    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/googlenav/c;->r()Lcom/google/googlenav/H;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/googlenav/z;->T:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlenav/z;->T:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/google/googlenav/z;->T:I

    goto :goto_0
.end method

.method public T()Lcom/google/googlenav/layer/d;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->J:Lcom/google/googlenav/layer/d;

    return-object v0
.end method

.method public U()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public V()Lcom/google/googlenav/layer/s;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->I:Lcom/google/googlenav/layer/s;

    return-object v0
.end method

.method public W()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/z;->c_()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/bf;->F()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public X()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/z;->c_()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/c;

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bh()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public X_()V
    .locals 1

    invoke-super {p0}, Lak/m;->X_()V

    iget-object v0, p0, Lcom/google/googlenav/z;->Q:Lcom/google/googlenav/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/z;->Q:Lcom/google/googlenav/a;

    invoke-interface {v0, p0}, Lcom/google/googlenav/a;->b(Lcom/google/googlenav/z;)V

    :cond_0
    return-void
.end method

.method public Y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/z;->K:Z

    if-eqz v0, :cond_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/googlenav/z;->K:Z

    return v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->D:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/z;->D:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/googlenav/c;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/z;->E:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/z;->E:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/z;->D:Ljava/lang/String;

    goto :goto_0
.end method

.method public a()I
    .locals 1

    const/16 v0, 0x2e

    return v0
.end method

.method public a(ILcom/google/googlenav/a;)Lcom/google/googlenav/z;
    .locals 1

    new-instance v0, Lcom/google/googlenav/z;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/z;-><init>(Lcom/google/googlenav/z;ILcom/google/googlenav/a;)V

    return-object v0
.end method

.method public a(B)V
    .locals 0

    iput-byte p1, p0, Lcom/google/googlenav/z;->y:B

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/google/googlenav/z;->v:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/googlenav/z;->R:J

    return-void
.end method

.method public a(Lcom/google/googlenav/c;)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/z;->M:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/google/googlenav/c;->I()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/googlenav/ai;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/google/googlenav/z;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/z;->c_()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/googlenav/z;->c_()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/googlenav/c;

    move v1, v4

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlenav/z;->c_()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    aget-object v2, v2, v1

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_1
    invoke-virtual {p1}, Lcom/google/googlenav/z;->c_()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/google/googlenav/z;->av()[Lcom/google/googlenav/c;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2, v4}, Lcom/google/googlenav/c;->a(B)V

    invoke-virtual {v2}, Lcom/google/googlenav/c;->S()V

    iget-object v3, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iget-boolean v3, v3, Lcom/google/googlenav/bs;->A:Z

    invoke-virtual {v2, v3}, Lcom/google/googlenav/c;->d(Z)V

    invoke-virtual {p0}, Lcom/google/googlenav/z;->c_()I

    move-result v3

    add-int/2addr v3, v1

    aput-object v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    invoke-direct {p0}, Lcom/google/googlenav/z;->aK()V

    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 11

    const/16 v10, 0x10

    const/4 v6, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    new-instance v2, Law/e;

    sget-object v0, Ls/p;->a:Law/f;

    invoke-direct {v2, v0}, Law/e;-><init>(Law/f;)V

    iget-object v0, p0, Lcom/google/googlenav/z;->g:Ljava/lang/String;

    invoke-virtual {v2, v6, v0}, Law/e;->b(ILjava/lang/String;)V

    iget v0, p0, Lcom/google/googlenav/z;->h:I

    invoke-virtual {v2, v7, v0}, Law/e;->h(II)V

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/googlenav/z;->A:I

    invoke-virtual {v2, v0, v1}, Law/e;->h(II)V

    const/4 v0, 0x5

    const/16 v1, 0xa

    invoke-virtual {v2, v0, v1}, Law/e;->h(II)V

    iget-object v0, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iget-boolean v0, v0, Lcom/google/googlenav/bs;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/z;->q:Lf/C;

    invoke-virtual {v0}, Lf/C;->a()Lf/h;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/z;->s:I

    iget v3, p0, Lcom/google/googlenav/z;->t:I

    iget-object v4, p0, Lcom/google/googlenav/z;->q:Lf/C;

    invoke-virtual {v4}, Lf/C;->b()Lf/l;

    move-result-object v4

    invoke-virtual {v4}, Lf/l;->a()I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lf/I;->a(Lf/h;III)Law/e;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Law/e;->b(ILaw/e;)V

    :cond_0
    sget-boolean v0, Lcom/google/googlenav/z;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    invoke-virtual {v2, v0, v7}, Law/e;->b(IZ)V

    const/16 v0, 0x12

    invoke-virtual {v2, v0, v7}, Law/e;->b(IZ)V

    const/16 v0, 0x2e

    invoke-virtual {v2, v0, v7}, Law/e;->b(IZ)V

    const/16 v0, 0x33

    invoke-virtual {v2, v0, v7}, Law/e;->b(IZ)V

    const/16 v0, 0x34

    invoke-virtual {v2, v0, v7}, Law/e;->b(IZ)V

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v2, v0, v7}, Law/e;->b(IZ)V

    const/16 v0, 0x11

    invoke-virtual {v2, v0, v7}, Law/e;->b(IZ)V

    const/16 v0, 0x24

    invoke-virtual {v2, v0, v7}, Law/e;->b(IZ)V

    const/4 v0, 0x6

    invoke-virtual {v2, v0, v8}, Law/e;->b(IZ)V

    invoke-static {}, Lcom/google/googlenav/d;->T()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x13

    invoke-virtual {v2, v0, v7}, Law/e;->b(IZ)V

    :cond_2
    const/16 v0, 0x14

    invoke-virtual {v2, v0, v8}, Law/e;->b(IZ)V

    const/16 v0, 0x18

    invoke-virtual {v2, v0, v8}, Law/e;->b(IZ)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->af()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xe

    invoke-virtual {v2, v0, v7}, Law/e;->b(IZ)V

    :cond_3
    iget v0, p0, Lcom/google/googlenav/z;->h:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    invoke-static {}, Lcom/google/googlenav/ui/aV;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Law/e;

    sget-object v1, Ls/n;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/16 v1, 0xa

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aV;->ad()I

    move-result v4

    mul-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v0, v7, v4}, Law/e;->h(II)V

    invoke-virtual {v3, v8}, Lcom/google/googlenav/ui/aV;->a(Z)I

    move-result v3

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v3, v1

    invoke-virtual {v0, v6, v1}, Law/e;->h(II)V

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v8}, Law/e;->b(IZ)V

    invoke-virtual {v0, v10, v8}, Law/e;->a(II)V

    invoke-virtual {v0, v10, v6}, Law/e;->a(II)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    long-to-int v1, v3

    div-int/lit16 v1, v1, 0x400

    div-int/lit8 v1, v1, 0x3

    const/16 v3, 0xc8

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v9, v1}, Law/e;->h(II)V

    const/16 v1, 0xc

    invoke-virtual {v2, v1, v0}, Law/e;->b(ILaw/e;)V

    :cond_4
    invoke-virtual {p0}, Lcom/google/googlenav/z;->Q()I

    move-result v0

    invoke-virtual {v2, v10, v0}, Law/e;->h(II)V

    const/16 v0, 0x1a

    invoke-virtual {v2, v0, v7}, Law/e;->b(IZ)V

    const/16 v0, 0x12

    invoke-virtual {v2, v0, v7}, Law/e;->b(IZ)V

    const/16 v0, 0x16

    const/16 v1, 0x100

    invoke-virtual {v2, v0, v1}, Law/e;->h(II)V

    const/16 v0, 0x19

    invoke-virtual {v2, v0, v7}, Law/e;->b(IZ)V

    const/16 v0, 0x20

    invoke-virtual {v2, v0, v8}, Law/e;->b(IZ)V

    const/16 v0, 0x21

    invoke-virtual {v2, v0, v7}, Law/e;->b(IZ)V

    invoke-virtual {p0}, Lcom/google/googlenav/z;->aC()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x32

    invoke-virtual {v2, v0, v7}, Law/e;->b(IZ)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/googlenav/z;->K()Lf/A;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v0, Law/e;

    sget-object v1, Ls/P;->d:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v0, v7, v6}, Law/e;->h(II)V

    invoke-virtual {v0, v9}, Law/e;->a(I)Law/e;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/googlenav/z;->K()Lf/A;

    move-result-object v4

    invoke-virtual {v4}, Lf/A;->h()[Lf/h;

    move-result-object v4

    invoke-static {v4}, Lf/A;->a([Lf/h;)[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Law/e;->b(I[B)V

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v7}, Law/e;->h(II)V

    invoke-virtual {v0, v9, v1}, Law/e;->b(ILaw/e;)V

    const/16 v1, 0x1b

    invoke-virtual {v2, v1, v0}, Law/e;->a(ILaw/e;)V

    :cond_6
    const/16 v0, 0x17

    invoke-virtual {v2, v0, v8}, Law/e;->b(IZ)V

    invoke-virtual {p0}, Lcom/google/googlenav/z;->at()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v0, Law/e;

    sget-object v1, Ls/P;->h:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    invoke-virtual {p0}, Lcom/google/googlenav/z;->at()Lf/h;

    move-result-object v1

    invoke-virtual {v1}, Lf/h;->f()Law/e;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Law/e;->b(ILaw/e;)V

    const/16 v1, 0x1c

    invoke-virtual {v2, v1, v0}, Law/e;->a(ILaw/e;)V

    :cond_7
    const/16 v0, 0x1e

    iget-boolean v1, p0, Lcom/google/googlenav/z;->N:Z

    invoke-virtual {v2, v0, v1}, Law/e;->b(IZ)V

    invoke-virtual {p0}, Lcom/google/googlenav/z;->an()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x1f

    invoke-virtual {v2, v0, v7}, Law/e;->b(IZ)V

    new-instance v0, Law/e;

    sget-object v1, Ls/C;->c:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    invoke-virtual {p0}, Lcom/google/googlenav/z;->ao()I

    move-result v1

    invoke-virtual {v0, v7, v1}, Law/e;->h(II)V

    const/16 v1, 0x23

    invoke-virtual {v2, v1, v0}, Law/e;->b(ILaw/e;)V

    :cond_8
    const/16 v0, 0x2f

    invoke-virtual {v2, v0, v7}, Law/e;->b(IZ)V

    iget-object v0, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iget-boolean v0, v0, Lcom/google/googlenav/bs;->z:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x31

    invoke-virtual {v2, v0, v7}, Law/e;->b(IZ)V

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iget-boolean v0, v0, Lcom/google/googlenav/bs;->t:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iget-boolean v0, v0, Lcom/google/googlenav/bs;->u:Z

    if-eqz v0, :cond_d

    :cond_a
    new-instance v0, Law/e;

    sget-object v1, Ls/N;->ag:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget-object v1, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iget-boolean v1, v1, Lcom/google/googlenav/bs;->t:Z

    if-eqz v1, :cond_b

    invoke-virtual {v0, v7, v7}, Law/e;->b(IZ)V

    :cond_b
    iget-object v1, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iget-boolean v1, v1, Lcom/google/googlenav/bs;->u:Z

    if-eqz v1, :cond_c

    invoke-virtual {v0, v6, v7}, Law/e;->b(IZ)V

    :cond_c
    const/16 v1, 0x25

    invoke-virtual {v2, v1, v0}, Law/e;->b(ILaw/e;)V

    :cond_d
    const/16 v0, 0x26

    invoke-virtual {v2, v0, v7}, Law/e;->b(IZ)V

    iget-object v0, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iget-object v0, v0, Lcom/google/googlenav/bs;->v:[Law/e;

    if-eqz v0, :cond_e

    move v0, v8

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iget-object v1, v1, Lcom/google/googlenav/bs;->v:[Law/e;

    array-length v1, v1

    if-ge v0, v1, :cond_e

    const/16 v1, 0x27

    iget-object v3, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iget-object v3, v3, Lcom/google/googlenav/bs;->v:[Law/e;

    aget-object v3, v3, v0

    invoke-virtual {v2, v1, v3}, Law/e;->a(ILaw/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_e
    invoke-virtual {p0}, Lcom/google/googlenav/z;->a()I

    move-result v0

    invoke-static {v0, v2, v7}, Lcom/google/googlenav/aW;->a(ILaw/e;Z)V

    const/16 v0, 0x2b

    invoke-virtual {v2, v0, v7}, Law/e;->b(IZ)V

    const/16 v0, 0x35

    invoke-virtual {v2, v0, v7}, Law/e;->b(IZ)V

    const/16 v0, 0x36

    invoke-virtual {v2, v0, v7}, Law/e;->b(IZ)V

    sget-boolean v0, Lcom/google/googlenav/z;->b:Z

    if-eqz v0, :cond_12

    move v0, v8

    :goto_1
    sget-object v1, Lcom/google/googlenav/z;->U:[I

    array-length v1, v1

    if-ge v0, v1, :cond_10

    sget-object v1, Lcom/google/googlenav/z;->U:[I

    aget v1, v1, v0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_f

    new-instance v1, Law/e;

    sget-object v3, Ls/p;->c:Law/f;

    invoke-direct {v1, v3}, Law/e;-><init>(Law/f;)V

    sget-object v3, Lcom/google/googlenav/z;->U:[I

    aget v3, v3, v0

    invoke-virtual {v1, v7, v3}, Law/e;->h(II)V

    const/16 v3, 0x2c

    invoke-virtual {v2, v3, v1}, Law/e;->a(ILaw/e;)V

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    invoke-virtual {p0}, Lcom/google/googlenav/z;->az()Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-lez v1, :cond_12

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aN;

    new-instance v4, Law/e;

    sget-object v1, Ls/p;->c:Law/f;

    invoke-direct {v4, v1}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v0}, Lcom/google/googlenav/aN;->a()I

    move-result v1

    invoke-virtual {v4, v7, v1}, Law/e;->h(II)V

    invoke-virtual {v0}, Lcom/google/googlenav/aN;->c()Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_11

    move v5, v8

    :goto_3
    invoke-virtual {v0}, Lcom/google/googlenav/aN;->c()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v5, v1, :cond_11

    new-instance v6, Law/e;

    sget-object v1, Ls/p;->d:Law/f;

    invoke-direct {v6, v1}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v0}, Lcom/google/googlenav/aN;->c()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/n;

    invoke-virtual {v1}, Lcom/google/googlenav/n;->a()I

    move-result v1

    invoke-virtual {v6, v7, v1}, Law/e;->h(II)V

    invoke-virtual {v0}, Lcom/google/googlenav/aN;->c()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/n;

    invoke-virtual {v1}, Lcom/google/googlenav/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v9, v1}, Law/e;->b(ILjava/lang/String;)V

    invoke-virtual {v4, v9, v6}, Law/e;->a(ILaw/e;)V

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_3

    :cond_11
    const/16 v0, 0x2d

    invoke-virtual {v2, v0, v4}, Law/e;->a(ILaw/e;)V

    goto :goto_2

    :cond_12
    const/16 v0, 0x2a

    invoke-virtual {p0}, Lcom/google/googlenav/z;->y()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/google/googlenav/z;->Y()Z

    move-result v1

    if-nez v1, :cond_13

    move v1, v7

    :goto_4
    invoke-virtual {v2, v0, v1}, Law/e;->b(IZ)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v2, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void

    :cond_13
    move v1, v8

    goto :goto_4
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/z;->m:Z

    return-void
.end method

.method public a([Lcom/google/googlenav/c;)V
    .locals 5

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/googlenav/z;->c_()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v3

    move v2, v3

    :goto_2
    array-length v3, p1

    if-ge v1, v3, :cond_3

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/google/googlenav/c;->aE()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v2, v4

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/googlenav/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/c;

    iput-object v0, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    invoke-direct {p0}, Lcom/google/googlenav/z;->aK()V

    goto :goto_0
.end method

.method public a(Law/e;)Z
    .locals 6

    const/16 v5, 0x194

    const/16 v4, 0x13

    const/4 v3, 0x1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/z;->a(J)V

    invoke-virtual {p1, v3}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v3}, Law/e;->d(I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/z;->v:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/z;->w:Ljava/lang/String;

    iget v1, p0, Lcom/google/googlenav/z;->v:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iput-boolean v3, p0, Lcom/google/googlenav/z;->u:Z

    sget-object v1, Lcom/google/googlenav/z;->z:LA/p;

    invoke-virtual {v1}, LA/p;->b()V

    iget-object v1, p0, Lcom/google/googlenav/z;->Q:Lcom/google/googlenav/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/z;->Q:Lcom/google/googlenav/a;

    invoke-virtual {p0}, Lcom/google/googlenav/z;->r()Z

    move-result v2

    invoke-interface {v1, p0, v2}, Lcom/google/googlenav/a;->a(Lcom/google/googlenav/z;Z)V

    :cond_1
    invoke-virtual {v0, v4}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/google/googlenav/ag;->a()Lcom/google/googlenav/ag;

    move-result-object v1

    invoke-virtual {v0, v4}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ag;->a(Law/e;)V

    :cond_2
    return v3

    :pswitch_1
    const-string v1, ""

    iput-object v1, p0, Lcom/google/googlenav/z;->w:Ljava/lang/String;

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/google/googlenav/z;->c(Law/e;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/z;->h(Law/e;)V

    invoke-virtual {p0}, Lcom/google/googlenav/z;->U()Z

    move-result v1

    if-nez v1, :cond_3

    iput v3, p0, Lcom/google/googlenav/z;->v:I

    const/16 v1, 0x441

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/z;->w:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/googlenav/z;->Q()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v1

    if-nez v1, :cond_0

    iput v3, p0, Lcom/google/googlenav/z;->v:I

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/z;->w:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v0}, Lcom/google/googlenav/z;->e(Law/e;)V

    invoke-virtual {p0}, Lcom/google/googlenav/z;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/z;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/z;->w:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Law/e;->f(I)Law/e;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/z;->n:Law/e;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 1

    sget-object v0, Ls/d;->a:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/z;->a(Law/e;)Z

    move-result v0

    return v0
.end method

.method public aA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iget-object v0, v0, Lcom/google/googlenav/bs;->w:Ljava/lang/String;

    return-object v0
.end method

.method public aB()Law/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->X:Law/e;

    return-object v0
.end method

.method public aC()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/z;->W:Z

    return v0
.end method

.method public aa()Law/e;
    .locals 12

    const/4 v5, 0x7

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v1, Law/e;

    sget-object v0, Ls/p;->b:Law/f;

    invoke-direct {v1, v0}, Law/e;-><init>(Law/f;)V

    iget v0, p0, Lcom/google/googlenav/z;->v:I

    invoke-virtual {v1, v8, v0}, Law/e;->h(II)V

    iget-object v0, p0, Lcom/google/googlenav/z;->w:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/z;->w:Ljava/lang/String;

    invoke-virtual {v1, v10, v0}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/z;->g:Ljava/lang/String;

    invoke-virtual {v1, v11, v0}, Law/e;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/z;->G:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xe

    iget-object v2, p0, Lcom/google/googlenav/z;->G:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/z;->H:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0xf

    iget-object v2, p0, Lcom/google/googlenav/z;->H:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/z;->k:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/googlenav/z;->k:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_3
    const/4 v0, 0x5

    invoke-virtual {v1, v0, v9}, Law/e;->b(IZ)V

    invoke-virtual {p0}, Lcom/google/googlenav/z;->J()Lf/h;

    move-result-object v0

    iget v2, p0, Lcom/google/googlenav/z;->s:I

    iget v3, p0, Lcom/google/googlenav/z;->t:I

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4}, Lf/I;->a(Lf/h;III)Law/e;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Law/e;->b(ILaw/e;)V

    const/16 v0, 0xb

    iget v2, p0, Lcom/google/googlenav/z;->A:I

    invoke-virtual {v1, v0, v2}, Law/e;->h(II)V

    invoke-direct {p0, v1}, Lcom/google/googlenav/z;->i(Law/e;)V

    new-instance v0, Law/e;

    sget-object v2, Ls/p;->e:Law/f;

    invoke-direct {v0, v2}, Law/e;-><init>(Law/f;)V

    iget-object v2, p0, Lcom/google/googlenav/z;->B:Ljava/lang/String;

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/google/googlenav/z;->B:Ljava/lang/String;

    invoke-virtual {v0, v10, v2}, Law/e;->b(ILjava/lang/String;)V

    move v2, v8

    :goto_0
    iget-object v3, p0, Lcom/google/googlenav/z;->C:Ljava/lang/String;

    invoke-static {v3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v2, p0, Lcom/google/googlenav/z;->C:Ljava/lang/String;

    invoke-virtual {v0, v5, v2}, Law/e;->b(ILjava/lang/String;)V

    move v2, v8

    :cond_4
    invoke-virtual {p0}, Lcom/google/googlenav/z;->Z()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Law/e;->b(ILjava/lang/String;)V

    move v2, v8

    :cond_5
    if-eqz v2, :cond_6

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Law/e;->b(ILaw/e;)V

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/z;->I:Lcom/google/googlenav/layer/s;

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    invoke-virtual {v1, v0, v8}, Law/e;->h(II)V

    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/z;->S:[Ljava/lang/String;

    if-eqz v0, :cond_8

    move v0, v9

    :goto_1
    iget-object v2, p0, Lcom/google/googlenav/z;->S:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/googlenav/z;->S:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Law/e;->a(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/z;->V:[Lcom/google/googlenav/aN;

    if-eqz v0, :cond_a

    move v2, v9

    :goto_2
    iget-object v0, p0, Lcom/google/googlenav/z;->V:[Lcom/google/googlenav/aN;

    array-length v0, v0

    if-ge v2, v0, :cond_a

    iget-object v0, p0, Lcom/google/googlenav/z;->V:[Lcom/google/googlenav/aN;

    aget-object v3, v0, v2

    new-instance v4, Law/e;

    sget-object v0, Ls/p;->c:Law/f;

    invoke-direct {v4, v0}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v3}, Lcom/google/googlenav/aN;->a()I

    move-result v0

    invoke-virtual {v4, v8, v0}, Law/e;->h(II)V

    invoke-virtual {v3}, Lcom/google/googlenav/aN;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v10, v0}, Law/e;->b(ILjava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/googlenav/aN;->c()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_9

    move v5, v9

    :goto_3
    invoke-virtual {v3}, Lcom/google/googlenav/aN;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v5, v0, :cond_9

    new-instance v6, Law/e;

    sget-object v0, Ls/p;->d:Law/f;

    invoke-direct {v6, v0}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v3}, Lcom/google/googlenav/aN;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/n;

    invoke-virtual {v0}, Lcom/google/googlenav/n;->a()I

    move-result v7

    invoke-virtual {v6, v8, v7}, Law/e;->h(II)V

    invoke-virtual {v0}, Lcom/google/googlenav/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Law/e;->b(ILjava/lang/String;)V

    invoke-virtual {v4, v11, v6}, Law/e;->a(ILaw/e;)V

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    :cond_9
    const/16 v0, 0x12

    invoke-virtual {v1, v0, v4}, Law/e;->a(ILaw/e;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_a
    return-object v1

    :cond_b
    move v2, v9

    goto/16 :goto_0
.end method

.method public ab()[Lcom/google/googlenav/ui/aU;
    .locals 6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/z;->K()Lf/A;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/z;->K()Lf/A;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    move v4, v1

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    array-length v1, v1

    if-ge v4, v1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/google/googlenav/c;->g()Lf/N;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_2
    invoke-interface {v2}, Lf/N;->ap_()I

    move-result v1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_3

    const/4 v5, 0x3

    if-ne v1, v5, :cond_4

    :cond_3
    move-object v0, v2

    check-cast v0, Lcom/google/googlenav/ui/aU;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/googlenav/ui/aU;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast v2, Lcom/google/googlenav/ui/aU;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/googlenav/ui/aU;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/googlenav/ui/aU;

    move-object v1, p0

    goto :goto_1
.end method

.method public ac()I
    .locals 2

    iget v0, p0, Lcom/google/googlenav/z;->A:I

    invoke-virtual {p0}, Lcom/google/googlenav/z;->af()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method public ad()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/z;->A:I

    return v0
.end method

.method public ae()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/z;->o:I

    return v0
.end method

.method public af()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/z;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/googlenav/z;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/google/googlenav/z;->c:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public ag()I
    .locals 3

    invoke-virtual {p0}, Lcom/google/googlenav/z;->c_()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/z;->af()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    invoke-virtual {p0}, Lcom/google/googlenav/z;->ae()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/z;->ae()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/z;->ad()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/googlenav/z;->c_()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlenav/z;->af()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public ah()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/z;->p:Z

    return v0
.end method

.method public ai()I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/googlenav/c;->O()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public aj()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlenav/c;->O()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public ak()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlenav/c;->P()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public al()Z
    .locals 2

    iget v0, p0, Lcom/google/googlenav/z;->h:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public am()Z
    .locals 2

    iget v0, p0, Lcom/google/googlenav/z;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/z;->ah()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public an()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iget-boolean v0, v0, Lcom/google/googlenav/bs;->q:Z

    return v0
.end method

.method public ao()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iget v0, v0, Lcom/google/googlenav/bs;->s:I

    return v0
.end method

.method public ap()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iget-boolean v0, v0, Lcom/google/googlenav/bs;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/z;->C()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/z;->A()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/z;->aF()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aq()J
    .locals 2

    iget-wide v0, p0, Lcom/google/googlenav/z;->R:J

    return-wide v0
.end method

.method public ar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/z;->F:Z

    return v0
.end method

.method public as()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/z;->N:Z

    return v0
.end method

.method public at()Lf/h;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iget-object v0, v0, Lcom/google/googlenav/bs;->p:Lf/h;

    return-object v0
.end method

.method public au()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lac/m;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/z;->g:Ljava/lang/String;

    invoke-static {v1}, Ln/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public av()[Lcom/google/googlenav/c;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    return-object v0
.end method

.method public aw()V
    .locals 4

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    array-length v0, v0

    if-le v0, v3, :cond_1

    new-array v0, v3, [Lcom/google/googlenav/c;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    aget-object v2, v2, v1

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    invoke-direct {p0}, Lcom/google/googlenav/z;->aK()V

    :cond_1
    return-void
.end method

.method public ax()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->S:[Ljava/lang/String;

    return-object v0
.end method

.method public ay()[Lcom/google/googlenav/aN;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->V:[Lcom/google/googlenav/aN;

    return-object v0
.end method

.method public az()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iget-object v0, v0, Lcom/google/googlenav/bs;->x:Ljava/util/Hashtable;

    return-object v0
.end method

.method public b(Law/e;)Law/e;
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/d;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Law/e;->b(ILaw/e;)V

    iget-object v1, p0, Lcom/google/googlenav/z;->I:Lcom/google/googlenav/layer/s;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/z;->I:Lcom/google/googlenav/layer/s;

    invoke-virtual {v2}, Lcom/google/googlenav/layer/s;->o()Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    :cond_0
    return-object v0
.end method

.method public b()Lcom/google/googlenav/bf;
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/z;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/z;->c()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/z;->Y:I

    iget v0, p0, Lcom/google/googlenav/z;->x:I

    if-eq p1, v0, :cond_0

    iget-byte v0, p0, Lcom/google/googlenav/z;->y:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x5

    const-string v1, "1"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_0
    :goto_0
    iput p1, p0, Lcom/google/googlenav/z;->x:I

    if-gez p1, :cond_3

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/google/googlenav/z;->y:B

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-byte v0, p0, Lcom/google/googlenav/z;->y:B

    if-ne v0, v3, :cond_0

    const/16 v0, 0x12

    const-string v1, "1"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    iget-byte v0, p0, Lcom/google/googlenav/z;->y:B

    if-nez v0, :cond_1

    iput-byte v3, p0, Lcom/google/googlenav/z;->y:B

    goto :goto_1
.end method

.method public b(Ljava/io/DataOutput;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/z;->aJ()Law/e;

    move-result-object v0

    invoke-static {p1, v0}, Law/b;->a(Ljava/io/DataOutput;Law/e;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/z;->F:Z

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/z;->x:I

    return v0
.end method

.method public c(I)Lcom/google/googlenav/bf;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/z;->W:Z

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->M:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c_()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->d:[Lcom/google/googlenav/c;

    array-length v0, v0

    return v0
.end method

.method public d(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/googlenav/z;->h(I)I

    move-result v0

    return v0
.end method

.method public d_()B
    .locals 1

    iget-byte v0, p0, Lcom/google/googlenav/z;->y:B

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/google/googlenav/z;->P:I

    return-void
.end method

.method public f(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/z;->L:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/z;->L:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public g(I)Lcom/google/googlenav/aN;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/z;->V:[Lcom/google/googlenav/aN;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/z;->V:[Lcom/google/googlenav/aN;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/z;->V:[Lcom/google/googlenav/aN;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/googlenav/aN;->a()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/z;->V:[Lcom/google/googlenav/aN;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public h_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/z;->Y:I

    return v0
.end method

.method public final i_()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->Q:Lcom/google/googlenav/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/z;->Q:Lcom/google/googlenav/a;

    invoke-interface {v0, p0}, Lcom/google/googlenav/a;->a(Lcom/google/googlenav/z;)V

    :cond_0
    return-void
.end method

.method public j()Lcom/google/googlenav/an;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iget-object v0, v0, Lcom/google/googlenav/bs;->h:Lcom/google/googlenav/an;

    return-object v0
.end method

.method public l()Lcom/google/googlenav/a;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->Q:Lcom/google/googlenav/a;

    return-object v0
.end method

.method public m()Lcom/google/googlenav/bs;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    return-object v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->w:Ljava/lang/String;

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

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->w:Ljava/lang/String;

    return-object v0
.end method

.method public p()Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/googlenav/z;->v:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Z
    .locals 2

    iget v0, p0, Lcom/google/googlenav/z;->v:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Z
    .locals 2

    iget v0, p0, Lcom/google/googlenav/z;->v:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Z
    .locals 2

    iget v0, p0, Lcom/google/googlenav/z;->v:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Law/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->n:Law/e;

    return-object v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/z;->h:I

    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->G:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/z;->g:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/z;->G:Ljava/lang/String;

    goto :goto_0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->g:Ljava/lang/String;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/z;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/googlenav/z;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3a7

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/z;->i:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3a8

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/z;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/z;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/googlenav/z;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/z;->f:Lcom/google/googlenav/bs;

    iget-boolean v0, v0, Lcom/google/googlenav/bs;->y:Z

    goto :goto_0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/z;->j:Ljava/lang/String;

    return-object v0
.end method
