.class LF/J;
.super Ljava/lang/Object;


# instance fields
.field private final a:Laa/E;

.field private final b:[LF/u;

.field private final c:I

.field private final d:LF/M;

.field private final e:I

.field private final f:[LF/K;


# direct methods
.method private constructor <init>(Laa/E;LF/M;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF/J;->a:Laa/E;

    iput-object v1, p0, LF/J;->b:[LF/u;

    iput v0, p0, LF/J;->c:I

    iput-object p2, p0, LF/J;->d:LF/M;

    iput v0, p0, LF/J;->e:I

    iput-object v1, p0, LF/J;->f:[LF/K;

    return-void
.end method

.method synthetic constructor <init>(Laa/E;LF/M;LF/H;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LF/J;-><init>(Laa/E;LF/M;)V

    return-void
.end method

.method private constructor <init>(Laa/E;[LF/u;II[LF/K;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF/J;->a:Laa/E;

    iput-object p2, p0, LF/J;->b:[LF/u;

    iput p3, p0, LF/J;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, LF/J;->d:LF/M;

    iput p4, p0, LF/J;->e:I

    iput-object p5, p0, LF/J;->f:[LF/K;

    return-void
.end method

.method synthetic constructor <init>(Laa/E;[LF/u;II[LF/K;LF/H;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, LF/J;-><init>(Laa/E;[LF/u;II[LF/K;)V

    return-void
.end method

.method static synthetic a(LF/J;)Laa/E;
    .locals 1

    iget-object v0, p0, LF/J;->a:Laa/E;

    return-object v0
.end method

.method static synthetic b(LF/J;)[LF/u;
    .locals 1

    iget-object v0, p0, LF/J;->b:[LF/u;

    return-object v0
.end method

.method static synthetic c(LF/J;)I
    .locals 1

    iget v0, p0, LF/J;->c:I

    return v0
.end method

.method static synthetic d(LF/J;)I
    .locals 1

    iget v0, p0, LF/J;->e:I

    return v0
.end method

.method static synthetic e(LF/J;)[LF/K;
    .locals 1

    iget-object v0, p0, LF/J;->f:[LF/K;

    return-object v0
.end method

.method static synthetic f(LF/J;)LF/M;
    .locals 1

    iget-object v0, p0, LF/J;->d:LF/M;

    return-object v0
.end method
