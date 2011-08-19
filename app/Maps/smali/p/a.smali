.class public Lp/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lp/a;->g:J

    return-void
.end method

.method static synthetic a(Lp/a;)J
    .locals 2

    iget-wide v0, p0, Lp/a;->g:J

    return-wide v0
.end method

.method static synthetic b(Lp/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lp/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lp/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lp/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lp/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lp/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lp/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lp/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lp/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lp/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lp/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lp/a;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lp/a;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lp/a;->c:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lp/a;->d:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lp/a;->e:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lp/a;->f:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
