.class public Lcom/google/android/maps/driveabout/app/bL;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/app/Q;

.field private final b:Lcom/google/android/maps/driveabout/app/cq;

.field private c:Lcom/google/android/maps/driveabout/app/x;

.field private d:Lcom/google/android/maps/driveabout/app/eK;

.field private e:Z

.field private f:Ljava/io/File;

.field private g:Lcom/google/android/maps/driveabout/app/dK;

.field private final h:Landroid/content/DialogInterface$OnClickListener;

.field private final i:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/Q;)V
    .locals 4

    invoke-static {}, Lcom/google/android/maps/driveabout/app/bL;->b()Lcom/google/android/maps/driveabout/app/x;

    move-result-object v0

    invoke-static {}, Lcom/google/android/maps/driveabout/app/bL;->c()Lcom/google/android/maps/driveabout/app/cq;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/bL;-><init>(Lcom/google/android/maps/driveabout/app/Q;Lcom/google/android/maps/driveabout/app/x;Lcom/google/android/maps/driveabout/app/cq;Lcom/google/android/maps/driveabout/app/eK;)V

    const-wide/16 v0, 0x3a98

    const-wide/16 v2, 0x64

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/bL;->a(JJ)Lcom/google/android/maps/driveabout/app/eK;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->d:Lcom/google/android/maps/driveabout/app/eK;

    return-void
.end method

.method constructor <init>(Lcom/google/android/maps/driveabout/app/Q;Lcom/google/android/maps/driveabout/app/x;Lcom/google/android/maps/driveabout/app/cq;Lcom/google/android/maps/driveabout/app/eK;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/maps/driveabout/app/aC;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/aC;-><init>(Lcom/google/android/maps/driveabout/app/bL;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->h:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/google/android/maps/driveabout/app/aD;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/aD;-><init>(Lcom/google/android/maps/driveabout/app/bL;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->i:Landroid/content/DialogInterface$OnCancelListener;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bL;->a:Lcom/google/android/maps/driveabout/app/Q;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/bL;->c:Lcom/google/android/maps/driveabout/app/x;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/bL;->b:Lcom/google/android/maps/driveabout/app/cq;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/bL;->d:Lcom/google/android/maps/driveabout/app/eK;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->c:Lcom/google/android/maps/driveabout/app/x;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/x;->b(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->c:Lcom/google/android/maps/driveabout/app/x;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/x;->c(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->c:Lcom/google/android/maps/driveabout/app/x;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/x;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bL;Lcom/google/android/maps/driveabout/app/dK;)Lcom/google/android/maps/driveabout/app/dK;
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bL;->g:Lcom/google/android/maps/driveabout/app/dK;

    return-object p1
.end method

.method private a(JJ)Lcom/google/android/maps/driveabout/app/eK;
    .locals 6

    new-instance v0, Lcom/google/android/maps/driveabout/app/aG;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/aG;-><init>(Lcom/google/android/maps/driveabout/app/bL;JJ)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bL;)Lcom/google/android/maps/driveabout/app/eK;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->d:Lcom/google/android/maps/driveabout/app/eK;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bL;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/bL;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->c:Lcom/google/android/maps/driveabout/app/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->c:Lcom/google/android/maps/driveabout/app/x;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/x;->f()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->c:Lcom/google/android/maps/driveabout/app/x;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/x;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->c:Lcom/google/android/maps/driveabout/app/x;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/bL;)Lcom/google/android/maps/driveabout/app/dK;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->g:Lcom/google/android/maps/driveabout/app/dK;

    return-object v0
.end method

.method private static b()Lcom/google/android/maps/driveabout/app/x;
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/app/aE;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/aE;-><init>()V

    return-object v0
.end method

.method private static c()Lcom/google/android/maps/driveabout/app/cq;
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/app/aF;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/aF;-><init>()V

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->b:Lcom/google/android/maps/driveabout/app/cq;

    const/16 v1, 0x1c

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cq;->a(I)V

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/app/bL;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->a:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/Q;->c(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->g:Lcom/google/android/maps/driveabout/app/dK;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->g:Lcom/google/android/maps/driveabout/app/dK;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/dK;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->g:Lcom/google/android/maps/driveabout/app/dK;

    :cond_0
    return-void
.end method

.method a(J)V
    .locals 3

    const/high16 v2, 0x3f80

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->c:Lcom/google/android/maps/driveabout/app/x;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/x;->a()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x469c4000

    div-float/2addr v0, v1

    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    move v0, v2

    :cond_0
    const/16 v1, 0x3a98

    long-to-int v2, p1

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bL;->a:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v2, v1, v0}, Lcom/google/android/maps/driveabout/app/Q;->a(IF)V

    return-void
.end method

.method public a(Ljava/io/File;Lcom/google/android/maps/driveabout/app/dK;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bL;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A recording was already started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/app/bL;->e:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->c:Lcom/google/android/maps/driveabout/app/x;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/x;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bL;->f:Ljava/io/File;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/bL;->g:Lcom/google/android/maps/driveabout/app/dK;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->a:Lcom/google/android/maps/driveabout/app/Q;

    const/16 v1, 0x97

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bL;->h:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/bL;->i:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/Q;->a(ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->c:Lcom/google/android/maps/driveabout/app/x;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/x;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->b:Lcom/google/android/maps/driveabout/app/cq;

    const/16 v1, 0x18

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cq;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->c:Lcom/google/android/maps/driveabout/app/x;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/x;->e()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->d:Lcom/google/android/maps/driveabout/app/eK;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/eK;->a()V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->c:Lcom/google/android/maps/driveabout/app/x;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/x;->d()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->c:Lcom/google/android/maps/driveabout/app/x;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/x;->c()V

    iput-object v5, p0, Lcom/google/android/maps/driveabout/app/bL;->c:Lcom/google/android/maps/driveabout/app/x;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->a:Lcom/google/android/maps/driveabout/app/Q;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->c(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->g:Lcom/google/android/maps/driveabout/app/dK;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bL;->g:Lcom/google/android/maps/driveabout/app/dK;

    invoke-interface {v0, v4}, Lcom/google/android/maps/driveabout/app/dK;->a(Z)V

    iput-object v5, p0, Lcom/google/android/maps/driveabout/app/bL;->g:Lcom/google/android/maps/driveabout/app/dK;

    goto :goto_0
.end method
