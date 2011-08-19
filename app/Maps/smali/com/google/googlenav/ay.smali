.class public Lcom/google/googlenav/ay;
.super Ljava/lang/Object;


# static fields
.field protected static final a:Lcom/google/googlenav/ui/av;

.field protected static final b:Lcom/google/googlenav/ui/av;


# instance fields
.field private c:Z

.field private d:Lcom/google/googlenav/ax;

.field private e:Lcom/google/googlenav/v;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    sput-object v0, Lcom/google/googlenav/ay;->a:Lcom/google/googlenav/ui/av;

    sget-object v0, Lcom/google/googlenav/ui/av;->bg:Lcom/google/googlenav/ui/av;

    sput-object v0, Lcom/google/googlenav/ay;->b:Lcom/google/googlenav/ui/av;

    return-void
.end method

.method public constructor <init>(Law/e;J)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/googlenav/ay;->c:Z

    invoke-static {p1, v0}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ax;

    invoke-direct {v1, v0}, Lcom/google/googlenav/ax;-><init>(Law/e;)V

    iput-object v1, p0, Lcom/google/googlenav/ay;->d:Lcom/google/googlenav/ax;

    iget-object v0, p0, Lcom/google/googlenav/ay;->d:Lcom/google/googlenav/ax;

    invoke-virtual {v0, p2, p3}, Lcom/google/googlenav/ax;->a(J)Lcom/google/googlenav/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ay;->e:Lcom/google/googlenav/v;

    iget-object v0, p0, Lcom/google/googlenav/ay;->e:Lcom/google/googlenav/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ay;->e:Lcom/google/googlenav/v;

    invoke-virtual {v0}, Lcom/google/googlenav/v;->c()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    add-long/2addr v0, p2

    :goto_0
    iput-wide v0, p0, Lcom/google/googlenav/ay;->f:J

    return-void

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private a(JLjava/lang/String;ZI)Ljava/util/Vector;
    .locals 7

    const/16 v6, 0x2ae

    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ay;->c(J)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/googlenav/ay;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    int-to-long v0, p5

    mul-long/2addr v0, v4

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    if-eqz p4, :cond_0

    const/16 v0, 0x2aa

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ay;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x2a9

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ay;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    goto :goto_0

    :cond_1
    int-to-long v0, p5

    mul-long/2addr v0, v4

    add-long/2addr v0, p1

    invoke-static {p1, p2, v0, v1}, Lcom/google/googlenav/ay;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p4, :cond_3

    int-to-long v0, p5

    mul-long/2addr v0, v4

    const-wide/32 v2, 0x3dcc500

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/16 v0, 0x2ad

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ay;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ay;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v0, 0x2ac

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ay;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_5

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ay;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v0, 0x2ab

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ay;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Vector;
    .locals 3

    sget-object v0, Lcom/google/googlenav/ay;->a:Lcom/google/googlenav/ui/av;

    sget-object v1, Lcom/google/googlenav/ay;->b:Lcom/google/googlenav/ui/av;

    invoke-static {p0, v0, v1}, Lcom/google/googlenav/ui/i;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;)Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const-string v1, ""

    sget-object v2, Lcom/google/googlenav/ay;->a:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected static a(JJ)Z
    .locals 4

    const/4 v3, 0x5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(J)Ljava/util/Vector;
    .locals 6

    iget-object v0, p0, Lcom/google/googlenav/ay;->e:Lcom/google/googlenav/v;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ay;->e:Lcom/google/googlenav/v;

    invoke-virtual {v0}, Lcom/google/googlenav/v;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/googlenav/ay;->e:Lcom/google/googlenav/v;

    invoke-virtual {v0}, Lcom/google/googlenav/v;->b()Z

    move-result v4

    iget-object v0, p0, Lcom/google/googlenav/ay;->e:Lcom/google/googlenav/v;

    invoke-virtual {v0}, Lcom/google/googlenav/v;->c()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ay;->a(JLjava/lang/String;ZI)Ljava/util/Vector;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ay;->c:Z

    return v0
.end method

.method public b(J)Lcom/google/googlenav/aX;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ay;->e:Lcom/google/googlenav/v;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ay;->c(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ay;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ay;->e:Lcom/google/googlenav/v;

    invoke-virtual {v0}, Lcom/google/googlenav/v;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/googlenav/aX;

    const/16 v1, 0x2a4

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->bh:Lcom/google/googlenav/ui/av;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/aX;-><init>(Ljava/lang/String;Lcom/google/googlenav/ui/av;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/googlenav/aX;

    const/16 v1, 0xba

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->bi:Lcom/google/googlenav/ui/av;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/aX;-><init>(Ljava/lang/String;Lcom/google/googlenav/ui/av;)V

    goto :goto_0
.end method

.method public c(J)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ay;->e:Lcom/google/googlenav/v;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlenav/ay;->f:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public d(J)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ay;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/googlenav/ay;->c:Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
