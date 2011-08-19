.class public LF/i;
.super Ljava/lang/Object;


# instance fields
.field private a:LF/M;

.field private b:LG/Q;

.field private c:D

.field private d:D

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LF/k;)V
    .locals 0

    invoke-direct {p0}, LF/i;-><init>()V

    return-void
.end method

.method static synthetic a(LF/i;D)D
    .locals 0

    iput-wide p1, p0, LF/i;->d:D

    return-wide p1
.end method

.method static synthetic a(LF/i;I)I
    .locals 0

    iput p1, p0, LF/i;->e:I

    return p1
.end method

.method static synthetic a(LF/i;LF/M;)LF/M;
    .locals 0

    iput-object p1, p0, LF/i;->a:LF/M;

    return-object p1
.end method

.method static synthetic a(LF/i;)LG/Q;
    .locals 1

    iget-object v0, p0, LF/i;->b:LG/Q;

    return-object v0
.end method

.method static synthetic a(LF/i;LG/Q;)LG/Q;
    .locals 0

    iput-object p1, p0, LF/i;->b:LG/Q;

    return-object p1
.end method

.method static synthetic b(LF/i;)D
    .locals 2

    iget-wide v0, p0, LF/i;->d:D

    return-wide v0
.end method

.method static synthetic b(LF/i;D)D
    .locals 0

    iput-wide p1, p0, LF/i;->c:D

    return-wide p1
.end method


# virtual methods
.method public a()LF/M;
    .locals 1

    iget-object v0, p0, LF/i;->a:LF/M;

    return-object v0
.end method

.method public a(D)LF/i;
    .locals 3

    new-instance v0, LF/i;

    invoke-direct {v0}, LF/i;-><init>()V

    iget-object v1, p0, LF/i;->a:LF/M;

    iput-object v1, v0, LF/i;->a:LF/M;

    iget-object v1, p0, LF/i;->b:LG/Q;

    iput-object v1, v0, LF/i;->b:LG/Q;

    iget-wide v1, p0, LF/i;->c:D

    iput-wide v1, v0, LF/i;->c:D

    iput-wide p1, v0, LF/i;->d:D

    iget v1, p0, LF/i;->e:I

    iput v1, v0, LF/i;->e:I

    return-object v0
.end method

.method public b()LG/Q;
    .locals 1

    iget-object v0, p0, LF/i;->b:LG/Q;

    return-object v0
.end method

.method public c()D
    .locals 2

    iget-wide v0, p0, LF/i;->c:D

    return-wide v0
.end method

.method public d()D
    .locals 2

    iget-wide v0, p0, LF/i;->d:D

    return-wide v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, LF/i;->e:I

    return v0
.end method
