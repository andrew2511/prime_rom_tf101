.class public Lak/h;
.super Ljava/lang/Object;


# static fields
.field private static H:I

.field private static volatile J:Lak/h;


# instance fields
.field private volatile A:I

.field private volatile B:I

.field private final C:Ljava/lang/Object;

.field private final D:Lac/p;

.field private volatile E:I

.field private F:Ljava/lang/Throwable;

.field private G:I

.field private I:I

.field protected volatile a:Ljava/lang/String;

.field protected final b:Ljava/lang/String;

.field protected final c:Ljava/lang/String;

.field protected final d:Z

.field protected e:Ljava/util/Vector;

.field protected final f:Lak/g;

.field protected final g:Ljava/lang/String;

.field protected h:J

.field protected i:Ljava/lang/String;

.field protected volatile j:Z

.field protected k:I

.field protected l:I

.field protected volatile m:Z

.field protected final n:Law/e;

.field protected o:Ln/b;

.field protected p:Lak/l;

.field private final q:Ljava/util/Vector;

.field private r:Ljava/util/Random;

.field private s:J

.field private volatile t:I

.field private volatile u:J

.field private volatile v:J

.field private volatile w:Z

.field private x:J

.field private y:J

.field private volatile z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lak/h;->H:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const-wide/high16 v4, -0x8000

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lak/h;->e:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lak/h;->q:Ljava/util/Vector;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lak/h;->r:Ljava/util/Random;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lak/h;->s:J

    iput-boolean v3, p0, Lak/h;->m:Z

    iput-wide v4, p0, Lak/h;->u:J

    iput-wide v4, p0, Lak/h;->v:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lak/h;->x:J

    iput-wide v4, p0, Lak/h;->y:J

    iput v3, p0, Lak/h;->z:I

    iput v3, p0, Lak/h;->A:I

    iput v3, p0, Lak/h;->B:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lak/h;->C:Ljava/lang/Object;

    iput v2, p0, Lak/h;->E:I

    iput v2, p0, Lak/h;->G:I

    iput v2, p0, Lak/h;->I:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    invoke-static {p1}, Lak/h;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lak/h;->a:Ljava/lang/String;

    iput-object p3, p0, Lak/h;->c:Ljava/lang/String;

    iput-object p2, p0, Lak/h;->b:Ljava/lang/String;

    iput-object p4, p0, Lak/h;->g:Ljava/lang/String;

    iput-boolean p5, p0, Lak/h;->d:Z

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->x()Ln/b;

    move-result-object v0

    iput-object v0, p0, Lak/h;->o:Ln/b;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    iput-object v0, p0, Lak/h;->D:Lac/p;

    new-instance v0, Lak/l;

    iget-object v1, p0, Lak/h;->D:Lac/p;

    invoke-direct {v0, p0, v1}, Lak/l;-><init>(Lak/h;Lac/p;)V

    iput-object v0, p0, Lak/h;->p:Lak/l;

    iput v3, p0, Lak/h;->k:I

    iput v3, p0, Lak/h;->l:I

    new-instance v0, Lak/g;

    iget-object v1, p0, Lak/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-direct {v0, p0, v1, v2, v3}, Lak/g;-><init>(Lak/h;Ljava/lang/String;Ljava/util/Vector;B)V

    iput-object v0, p0, Lak/h;->f:Lak/g;

    invoke-virtual {p0}, Lak/h;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lak/h;->h:J

    new-instance v0, Law/e;

    sget-object v1, Ls/A;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iput-object v0, p0, Lak/h;->n:Law/e;

    return-void
.end method

.method static synthetic a(Lak/h;J)J
    .locals 0

    iput-wide p1, p0, Lak/h;->u:J

    return-wide p1
.end method

.method public static a()Lak/h;
    .locals 1

    sget-object v0, Lak/h;->J:Lak/h;

    return-object v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lak/h;
    .locals 7

    const-class v6, Lak/h;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lak/h;->J:Lak/h;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to create multiple DataRequestDispatchers"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_0
    :try_start_1
    invoke-static {p0}, Lak/h;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lak/h;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lak/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lak/h;->J:Lak/h;

    new-instance v0, Lak/b;

    sget-object v1, Lak/h;->J:Lak/h;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lak/b;-><init>(Lak/h;Lak/o;)V

    invoke-static {v0}, Lac/g;->a(Lac/f;)V

    sget-object v0, Lak/h;->J:Lak/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return-object v0
.end method

.method static synthetic a(Lak/h;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lak/h;->C:Ljava/lang/Object;

    return-object v0
.end method

.method private a(ILjava/lang/Throwable;)V
    .locals 5

    const-wide/16 v3, 0x7d0

    const/4 v0, 0x0

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {}, Lac/d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    iget-object v1, p0, Lak/h;->o:Ln/b;

    invoke-interface {v1}, Ln/b;->j()V

    iput-object p2, p0, Lak/h;->F:Ljava/lang/Throwable;

    iput p1, p0, Lak/h;->G:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    iget-wide v1, p0, Lak/h;->x:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lak/h;->w:Z

    if-eqz v1, :cond_4

    :cond_1
    invoke-direct {p0}, Lak/h;->y()V

    iput p1, p0, Lak/h;->G:I

    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Lak/h;->x:J

    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lak/h;->a(I)V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    iget-wide v1, p0, Lak/h;->x:J

    iget-wide v3, p0, Lak/h;->s:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    iget-wide v1, p0, Lak/h;->x:J

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lak/h;->x:J

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :try_start_2
    iget-boolean v1, p0, Lak/h;->w:Z

    if-nez v1, :cond_7

    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Lak/h;->x:J

    iget-wide v1, p0, Lak/h;->y:J

    const-wide/high16 v3, -0x8000

    cmp-long v1, v1, v3

    if-nez v1, :cond_6

    iget-object v1, p0, Lak/h;->D:Lac/p;

    invoke-interface {v1}, Lac/p;->b()J

    move-result-wide v1

    iput-wide v1, p0, Lak/h;->y:J

    goto :goto_0

    :cond_6
    iget-wide v1, p0, Lak/h;->y:J

    const-wide/16 v3, 0x3a98

    add-long/2addr v1, v3

    iget-object v3, p0, Lak/h;->D:Lac/p;

    invoke-interface {v3}, Lac/p;->b()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    iget-wide v1, p0, Lak/h;->x:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_8

    const-wide/16 v1, 0x7d0

    iput-wide v1, p0, Lak/h;->x:J

    :goto_1
    iget-wide v1, p0, Lak/h;->x:J

    iget-wide v3, p0, Lak/h;->s:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-wide v1, p0, Lak/h;->s:J

    iput-wide v1, p0, Lak/h;->x:J

    goto :goto_0

    :cond_8
    iget-wide v1, p0, Lak/h;->x:J

    const-wide/16 v3, 0x5

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x4

    div-long/2addr v1, v3

    iput-wide v1, p0, Lak/h;->x:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic a(Lak/h;ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lak/h;->a(ILjava/lang/Throwable;)V

    return-void
.end method

.method protected static a(Ljava/util/Vector;)Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lak/d;

    invoke-interface {v0}, Lak/d;->f_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method static synthetic b(Lak/h;)I
    .locals 2

    iget v0, p0, Lak/h;->z:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lak/h;->z:I

    return v0
.end method

.method static synthetic b(Lak/h;J)J
    .locals 0

    iput-wide p1, p0, Lak/h;->v:J

    return-wide p1
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lak/h;->J:Lak/h;

    return-void
.end method

.method static b(J)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {v1, p0, p1}, Ljava/io/DataOutput;->writeLong(J)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->g()Ln/a;

    move-result-object v1

    const-string v2, "SessionID"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ln/a;->a(Ljava/lang/String;[B)Z

    invoke-interface {v1}, Ln/a;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private b(Ljava/util/Vector;Lak/g;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x3e

    invoke-virtual {p2, v0}, Lak/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lak/h;->n:Law/e;

    invoke-virtual {v1}, Law/e;->a()Law/e;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {v1, v2, v0}, Law/e;->a(ILaw/e;)V

    move-object v0, v1

    :goto_0
    new-instance v1, Lak/j;

    invoke-direct {v1, v0}, Lak/j;-><init>(Law/e;)V

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lak/d;

    instance-of v0, p0, Lak/j;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lak/h;->n:Law/e;

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_1
.end method

.method protected static b(Ljava/util/Vector;)Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lak/d;

    invoke-interface {v0}, Lak/d;->g_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method static synthetic c(Lak/h;)I
    .locals 2

    iget v0, p0, Lak/h;->A:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lak/h;->A:I

    return v0
.end method

.method static synthetic d(Lak/h;)I
    .locals 2

    iget v0, p0, Lak/h;->B:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lak/h;->B:I

    return v0
.end method

.method private d(Lak/d;)V
    .locals 3

    iget-boolean v0, p0, Lak/h;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lak/h;->a(IZLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lak/h;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lak/h;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lak/g;

    invoke-interface {p1}, Lak/d;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lak/g;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Lak/g;->a(Lak/d;)V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lak/h;->f:Lak/g;

    invoke-virtual {v0, p1}, Lak/g;->a(Lak/d;)V

    goto :goto_1
.end method

.method static synthetic e(Lak/h;)Lac/p;
    .locals 1

    iget-object v0, p0, Lak/h;->D:Lac/p;

    return-object v0
.end method

.method static synthetic f(Lak/h;)V
    .locals 0

    invoke-direct {p0}, Lak/h;->y()V

    return-void
.end method

.method static synthetic g(Lak/h;)I
    .locals 2

    iget v0, p0, Lak/h;->z:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lak/h;->z:I

    return v0
.end method

.method static synthetic h(Lak/h;)I
    .locals 2

    iget v0, p0, Lak/h;->A:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lak/h;->A:I

    return v0
.end method

.method static synthetic i(Lak/h;)I
    .locals 2

    iget v0, p0, Lak/h;->B:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lak/h;->B:I

    return v0
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "http:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method static synthetic j(Lak/h;)I
    .locals 1

    iget v0, p0, Lak/h;->G:I

    return v0
.end method

.method static synthetic k(Lak/h;)J
    .locals 2

    iget-wide v0, p0, Lak/h;->x:J

    return-wide v0
.end method

.method static synthetic l(Lak/h;)Ljava/util/Random;
    .locals 1

    iget-object v0, p0, Lak/h;->r:Ljava/util/Random;

    return-object v0
.end method

.method private static x()J
    .locals 3

    const-string v0, "SessionID"

    invoke-static {v0}, Lac/i;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/io/DataInput;->readLong()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "SessionID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ln/a;->a(Ljava/lang/String;[B)Z

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized y()V
    .locals 2

    monitor-enter p0

    const-wide/high16 v0, -0x8000

    :try_start_0
    iput-wide v0, p0, Lak/h;->y:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lak/h;->w:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lak/h;->x:J

    const/4 v0, -0x1

    iput v0, p0, Lak/h;->G:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected final a(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lak/h;->w:Z

    if-nez v1, :cond_0

    const-string v0, "DRD: in Error Mode"

    invoke-static {v0}, Lac/g;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lak/h;->w:Z

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lak/h;->y:J

    move v0, v2

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lak/h;->o:Ln/b;

    invoke-interface {v1}, Ln/b;->i()Z

    move-result v1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lak/h;->a(IZLjava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected a(IZLjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lak/h;->i()[Lak/c;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-interface {v2, p1, p2, p3}, Lak/c;->a(IZLjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(I[BZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lak/h;->a(I[BZZZ)V

    return-void
.end method

.method public final a(I[BZZZ)V
    .locals 7

    new-instance v0, Lak/a;

    const/4 v6, 0x0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lak/a;-><init>(I[BZZZLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method public declared-synchronized a(J)V
    .locals 2

    const-wide/16 v0, 0x7d0

    monitor-enter p0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 v0, 0x7d0

    :try_start_0
    iput-wide v0, p0, Lak/h;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-wide p1, p0, Lak/h;->s:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lak/c;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lak/h;->q:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lak/h;->q:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lak/d;)V
    .locals 3

    invoke-virtual {p0}, Lak/h;->i()[Lak/c;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-interface {v2, p1}, Lak/c;->a(Lak/d;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(Ljava/io/DataInput;Lak/d;Lak/g;)V
    .locals 4

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    invoke-interface {p2}, Lak/d;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " != "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lak/d;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-interface {p2, p1}, Lak/d;->a(Ljava/io/DataInput;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_1

    invoke-interface {p2}, Lak/d;->I_()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lak/h;->a(Lak/d;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p3, Lak/g;->d:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Lak/h;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lak/h;->a:Ljava/lang/String;

    iget-object v0, p0, Lak/h;->f:Lak/g;

    iget-object v1, p0, Lak/h;->a:Ljava/lang/String;

    iput-object v1, v0, Lak/g;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected a(Ljava/util/Vector;Lak/g;)V
    .locals 19

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lak/h;->p:Lak/l;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lak/l;->a(Ljava/lang/Object;)V

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual/range {p0 .. p1}, Lak/h;->c(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lak/h;->a(Ljava/util/Vector;Ljava/io/OutputStream;Lak/g;)V

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v4, "DRD"

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "("

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v7, Lak/h;->H:I

    add-int/lit8 v13, v7, 0x1

    sput v13, Lak/h;->H:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "): "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    move v7, v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v7, v4, :cond_1

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lak/d;

    invoke-interface {v4}, Lak/d;->a()I

    move-result v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v13, 0x1

    sub-int/2addr v4, v13

    if-eq v7, v4, :cond_0

    const-string v4, "|"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lak/h;->D:Lac/p;

    move-object v6, v0

    invoke-interface {v6}, Lac/p;->b()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lak/h;->o:Ln/b;

    move-object v13, v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v0, v0, Lak/g;->a:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x1

    invoke-interface {v13, v11, v14}, Ln/b;->a(Ljava/lang/String;Z)Ln/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    :try_start_1
    const-string v5, "Content-Type"

    const-string v13, "application/binary"

    invoke-interface {v11, v5, v13}, Ln/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Length"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v5, v13}, Ln/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11}, Ln/n;->a()Ljava/io/DataOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v13

    :try_start_2
    invoke-virtual {v13, v4}, Ljava/io/DataOutputStream;->write([B)V

    move-object/from16 v0, p0

    iget v0, v0, Lak/h;->k:I

    move v5, v0

    array-length v4, v4

    add-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lak/h;->k:I

    invoke-interface {v11}, Ln/n;->b()Ljava/io/DataInputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v14

    :try_start_3
    invoke-interface {v11}, Ln/n;->d()I

    move-result v4

    invoke-interface {v11}, Ln/n;->e()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lak/h;->D:Lac/p;

    move-object v8, v0

    invoke-interface {v8}, Lac/p;->b()J

    move-result-wide v8

    sub-long v15, v8, v6

    const-string v8, ", "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v8, 0x3e8

    cmp-long v8, v15, v8

    if-gez v8, :cond_5

    const-string v8, "<1s"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v8, 0x1f5

    if-ne v4, v8, :cond_9

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lak/h;->a(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lac/g;->b(Ljava/lang/String;)V

    if-eqz v14, :cond_2

    :try_start_4
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_2
    :goto_2
    if-eqz v13, :cond_3

    if-nez v10, :cond_3

    :try_start_5
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_3
    :goto_3
    if-eqz v11, :cond_4

    :try_start_6
    invoke-interface {v11}, Ln/n;->f()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    :cond_4
    :goto_4
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    const/4 v5, 0x0

    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_1f

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lak/d;

    invoke-interface/range {p2 .. p2}, Lak/d;->m_()Z

    move-result v6

    if-nez v6, :cond_21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lak/h;->b(Lak/d;)V

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    const-wide/16 v8, 0x3e8

    :try_start_7
    div-long v8, v15, v8

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    move-object v5, v14

    move-object v6, v13

    move-object v7, v11

    :goto_7
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lac/g;->b(Ljava/lang/String;)V

    if-eqz v5, :cond_6

    :try_start_8
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_6
    :goto_8
    if-eqz v6, :cond_7

    if-nez v10, :cond_7

    :try_start_9
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_7
    :goto_9
    if-eqz v7, :cond_8

    :try_start_a
    invoke-interface {v7}, Ln/n;->f()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_8
    :goto_a
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    const/4 v6, 0x0

    :goto_b
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v6, v7, :cond_1e

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lak/d;

    invoke-interface/range {p2 .. p2}, Lak/d;->m_()Z

    move-result v7

    if-nez v7, :cond_20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lak/h;->b(Lak/d;)V

    :goto_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_9
    const/16 v8, 0xc8

    if-eq v4, v8, :cond_e

    :try_start_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad Response Code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lac/g;->b(Ljava/lang/String;)V

    const/16 v5, 0x1f4

    if-ne v4, v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Server 500 for request types: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_d
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v6, v7, :cond_b

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lak/d;

    invoke-interface/range {p2 .. p2}, Lak/d;->aD()V

    invoke-interface/range {p2 .. p2}, Lak/d;->a()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-eq v6, v7, :cond_a

    const/16 v7, 0x2c

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lak/h;->d:Z

    move v6, v0

    if-eqz v6, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lak/h;->o:Ln/b;

    move-object v6, v0

    invoke-interface {v6}, Ln/b;->i()Z

    move-result v6

    const/4 v7, 0x7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move v1, v7

    move v2, v6

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lak/h;->a(IZLjava/lang/String;)V

    :cond_c
    new-instance v5, Lak/q;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Serverside failure (HTTP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lak/q;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_d
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad HTTP response code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_e
    const-string v4, "application/binary"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad HTTP content type: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lac/g;->b(Ljava/lang/String;)V

    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad HTTP content type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_f
    invoke-interface {v11}, Ln/n;->c()J

    move-result-wide v4

    move-wide v0, v4

    long-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lak/h;->l:I

    move v4, v0

    add-int v4, v4, v17

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lak/h;->l:I

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    const/16 v5, 0x17

    if-eq v4, v5, :cond_13

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lak/h;->a(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lac/g;->b(Ljava/lang/String;)V

    if-eqz v14, :cond_10

    :try_start_c
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_10
    :goto_e
    if-eqz v13, :cond_11

    if-nez v10, :cond_11

    :try_start_d
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    :cond_11
    :goto_f
    if-eqz v11, :cond_12

    :try_start_e
    invoke-interface {v11}, Ln/n;->f()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    :cond_12
    :goto_10
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    const/4 v5, 0x0

    :goto_11
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_22

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lak/d;

    invoke-interface/range {p2 .. p2}, Lak/d;->m_()Z

    move-result v6

    if-nez v6, :cond_23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lak/h;->b(Lak/d;)V

    :goto_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_13
    const/4 v4, 0x0

    move v5, v4

    :goto_13
    :try_start_f
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v5, v4, :cond_18

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lak/d;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v4

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lak/h;->a(Ljava/io/DataInput;Lak/d;Lak/g;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_1

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_13

    :catch_0
    move-exception v6

    :try_start_11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Lak/d;->a()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lac/g;->b(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lak/h;->d:Z

    move v7, v0

    if-eqz v7, :cond_14

    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException processing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4}, Lak/d;->a()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :cond_14
    instance-of v7, v6, Ljava/io/EOFException;

    if-eqz v7, :cond_15

    invoke-interface {v4}, Lak/d;->aD()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lak/h;->d:Z

    move v7, v0

    if-eqz v7, :cond_15

    invoke-interface {v4}, Lak/d;->a()I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No server support for data request: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lak/h;->o:Ln/b;

    move-object v7, v0

    invoke-interface {v7}, Ln/b;->i()Z

    move-result v7

    const/4 v8, 0x7

    move-object/from16 v0, p0

    move v1, v8

    move v2, v7

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lak/h;->a(IZLjava/lang/String;)V

    :cond_15
    const/4 v4, 0x0

    :goto_14
    if-ge v4, v5, :cond_16

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_16
    throw v6

    :catch_1
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RuntimeException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lak/d;->a()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lac/g;->b(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lak/h;->d:Z

    move v6, v0

    if-eqz v6, :cond_17

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RuntimeException processing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Lak/d;->a()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_17
    throw v5

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lak/h;->D:Lac/p;

    move-object v4, v0

    invoke-interface {v4}, Lac/p;->b()J

    move-result-wide v4

    sub-long/2addr v4, v6

    long-to-int v9, v4

    const/16 v4, 0x16

    const-string v5, "fb"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5, v8}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    const/16 v4, 0x16

    const-string v5, "lb"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5, v8}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lak/h;->p:Lak/l;

    move-object v4, v0

    long-to-int v8, v15

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lak/l;->a(Ljava/lang/Object;JII)V

    const/16 v4, 0x2000

    move/from16 v0, v17

    move v1, v4

    if-lt v0, v1, :cond_19

    int-to-long v4, v9

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gtz v4, :cond_19

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move v4, v0

    div-int/2addr v4, v9

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lak/h;->E:I

    :cond_19
    const-string v4, ", "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3e8

    move/from16 v0, v17

    move v1, v4

    if-ge v0, v1, :cond_1d

    const-string v4, "<1kb"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_15
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->removeAllElements()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lac/g;->b(Ljava/lang/String;)V

    if-eqz v14, :cond_1a

    :try_start_12
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    :cond_1a
    :goto_16
    if-eqz v13, :cond_1b

    if-nez v10, :cond_1b

    :try_start_13
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    :cond_1b
    :goto_17
    if-eqz v11, :cond_1c

    :try_start_14
    invoke-interface {v11}, Ln/n;->f()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    :cond_1c
    :goto_18
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    const/4 v5, 0x0

    :goto_19
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_24

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lak/d;

    invoke-interface/range {p2 .. p2}, Lak/d;->m_()Z

    move-result v6

    if-nez v6, :cond_25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lak/h;->b(Lak/d;)V

    :goto_1a
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_1d
    :try_start_15
    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x3e8

    move v4, v0

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "kb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_15

    :cond_1e
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->removeAllElements()V

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    throw v4

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->removeAllElements()V

    :goto_1b
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    return-void

    :catch_2
    move-exception v5

    goto/16 :goto_8

    :catch_3
    move-exception v5

    goto/16 :goto_9

    :catch_4
    move-exception v5

    goto/16 :goto_a

    :cond_20
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :catch_5
    move-exception v4

    goto/16 :goto_2

    :catch_6
    move-exception v4

    goto/16 :goto_3

    :catch_7
    move-exception v4

    goto/16 :goto_4

    :cond_21
    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :catch_8
    move-exception v4

    goto/16 :goto_e

    :catch_9
    move-exception v4

    goto/16 :goto_f

    :catch_a
    move-exception v4

    goto/16 :goto_10

    :cond_22
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->removeAllElements()V

    goto :goto_1b

    :cond_23
    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12

    :catch_b
    move-exception v4

    goto/16 :goto_16

    :catch_c
    move-exception v4

    goto/16 :goto_17

    :catch_d
    move-exception v4

    goto/16 :goto_18

    :cond_24
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->removeAllElements()V

    goto :goto_1b

    :cond_25
    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :catchall_1
    move-exception v4

    move-object v6, v8

    move-object v7, v5

    move-object v5, v9

    goto/16 :goto_7

    :catchall_2
    move-exception v4

    move-object v5, v9

    move-object v6, v8

    move-object v7, v11

    goto/16 :goto_7

    :catchall_3
    move-exception v4

    move-object v5, v9

    move-object v6, v13

    move-object v7, v11

    goto/16 :goto_7
.end method

.method public a(Ljava/util/Vector;Ljava/io/OutputStream;Lak/g;)V
    .locals 4

    const/16 v3, 0x17

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1, p3}, Lak/h;->b(Ljava/util/Vector;Lak/g;)V

    iget-byte v1, p3, Lak/g;->c:B

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-wide v1, p0, Lak/h;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-static {}, Lac/m;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lak/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lak/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lak/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lak/d;

    invoke-interface {p0}, Lak/d;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-interface {p0, v0}, Lak/d;->a(Ljava/io/DataOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-byte v1, p3, Lak/g;->c:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-wide v1, p0, Lak/h;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lak/h;->n:Law/e;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Law/e;->b(IZ)V

    return-void
.end method

.method public a([I)V
    .locals 4

    const/16 v3, 0x17

    iget-object v0, p0, Lak/h;->n:Law/e;

    invoke-virtual {v0, v3}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lak/h;->n:Law/e;

    invoke-virtual {v0, v3}, Law/e;->i(I)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lak/h;->n:Law/e;

    invoke-virtual {v1, v3, v0}, Law/e;->g(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lak/h;->n:Law/e;

    aget v2, p1, v0

    invoke-virtual {v1, v3, v2}, Law/e;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 2

    iget v0, p0, Lak/h;->I:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lak/h;->I:I

    iget-object v0, p0, Lak/h;->n:Law/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Law/e;->h(II)V

    :cond_0
    return-void
.end method

.method public declared-synchronized b(Lak/c;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lak/h;->q:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected b(Lak/d;)V
    .locals 3

    invoke-virtual {p0}, Lak/h;->i()[Lak/c;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-interface {v2, p1}, Lak/c;->b(Lak/d;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lak/h;->n:Law/e;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p1}, Law/e;->b(ILjava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lak/h;->n:Law/e;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1, p1}, Law/e;->b(IZ)V

    return-void
.end method

.method public b([I)V
    .locals 4

    const/16 v3, 0x1a

    iget-object v0, p0, Lak/h;->n:Law/e;

    invoke-virtual {v0, v3}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lak/h;->n:Law/e;

    invoke-virtual {v0, v3}, Law/e;->i(I)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lak/h;->n:Law/e;

    invoke-virtual {v1, v3, v0}, Law/e;->g(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lak/h;->n:Law/e;

    aget v2, p1, v0

    invoke-virtual {v1, v3, v2}, Law/e;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lak/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected c(Ljava/util/Vector;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?"

    iget-object v2, p0, Lak/h;->i:Ljava/lang/String;

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lak/h;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    :cond_0
    const/4 v2, 0x0

    move v5, v2

    move-object v2, v1

    move v1, v5

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lak/d;

    instance-of v3, p0, Lak/k;

    if-eqz v3, :cond_1

    check-cast p0, Lak/k;

    invoke-interface {p0}, Lak/k;->au()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_3
    return-object v0
.end method

.method public c(I)V
    .locals 3

    const/16 v0, 0xc8

    if-le p1, v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    iget-object v1, p0, Lak/h;->n:Law/e;

    const/16 v2, 0x16

    invoke-virtual {v1, v2, v0}, Law/e;->h(II)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(Lak/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lak/h;->d(Lak/d;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lak/h;->n:Law/e;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Law/e;->b(ILjava/lang/String;)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    iget-object v0, p0, Lak/h;->n:Law/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Law/e;->b(IZ)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lak/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 2

    iget-object v0, p0, Lak/h;->n:Law/e;

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1}, Law/e;->h(II)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lak/h;->n:Law/e;

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Law/e;->b(ILjava/lang/String;)V

    return-void
.end method

.method public d(Z)V
    .locals 2

    iget-object v0, p0, Lak/h;->n:Law/e;

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p1}, Law/e;->b(IZ)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lak/h;->n:Law/e;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Law/e;->b(ILjava/lang/String;)V

    return-void
.end method

.method public e(Z)V
    .locals 2

    iget-object v0, p0, Lak/h;->n:Law/e;

    const/16 v1, 0x21

    invoke-virtual {v0, v1, p1}, Law/e;->b(IZ)V

    return-void
.end method

.method public declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lak/h;->t:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lak/h;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lak/h;->t:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lak/h;->n:Law/e;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p1}, Law/e;->b(ILjava/lang/String;)V

    return-void
.end method

.method public f(Z)V
    .locals 2

    iget-object v0, p0, Lak/h;->n:Law/e;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p1}, Law/e;->b(IZ)V

    return-void
.end method

.method public g()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lak/h;->t:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lak/h;->t:I

    invoke-virtual {p0}, Lak/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lak/h;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lak/h;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lak/g;

    invoke-virtual {v0}, Lak/g;->c()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iget-object v0, p0, Lak/h;->f:Lak/g;

    invoke-virtual {v0}, Lak/g;->c()V

    iget-object v0, p0, Lak/h;->p:Lak/l;

    invoke-virtual {v0}, Lak/l;->a()V

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lak/h;->n:Law/e;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1, p1}, Law/e;->b(ILjava/lang/String;)V

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lak/h;->j:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lak/h;->s()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lak/h;->t()V

    goto :goto_0
.end method

.method protected h()J
    .locals 4

    invoke-static {}, Lak/h;->x()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v2, Lak/n;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lak/n;-><init>(Lak/h;Lak/o;)V

    invoke-direct {p0, v2}, Lak/h;->d(Lak/d;)V

    :cond_0
    return-wide v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lak/h;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lak/h;->o:Ln/b;

    invoke-interface {v0}, Ln/b;->i()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lak/h;->p:Lak/l;

    invoke-virtual {v0, p1}, Lak/l;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected declared-synchronized i()[Lak/c;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lak/h;->q:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lak/c;

    iget-object v1, p0, Lak/h;->q:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lak/h;->z:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lak/h;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lak/h;->m:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lak/h;->z:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lak/h;->o:Ln/b;

    invoke-interface {v0}, Ln/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lak/h;->z:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public m()J
    .locals 2

    iget-wide v0, p0, Lak/h;->u:J

    return-wide v0
.end method

.method public n()J
    .locals 2

    iget-wide v0, p0, Lak/h;->v:J

    return-wide v0
.end method

.method public o()Z
    .locals 4

    iget-wide v0, p0, Lak/h;->v:J

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()I
    .locals 1

    iget v0, p0, Lak/h;->k:I

    return v0
.end method

.method public final q()I
    .locals 1

    iget v0, p0, Lak/h;->l:I

    return v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lak/h;->E:I

    return v0
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lak/h;->m:Z

    return-void
.end method

.method public t()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lak/h;->m:Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lak/h;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lak/h;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lak/g;

    invoke-virtual {v0}, Lak/g;->d()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lak/h;->f:Lak/g;

    invoke-virtual {v0}, Lak/g;->d()V

    return-void
.end method

.method public u()J
    .locals 2

    iget-wide v0, p0, Lak/h;->h:J

    return-wide v0
.end method

.method public v()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lak/h;->n:Law/e;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lak/h;->F:Ljava/lang/Throwable;

    return-object v0
.end method
