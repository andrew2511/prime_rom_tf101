.class public Lc/a;
.super Lcom/google/googlenav/ui/aH;


# instance fields
.field private final a:Ljava/lang/Long;

.field private final b:I

.field private final c:Z

.field private d:Lk/l;


# direct methods
.method public constructor <init>(JI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lc/a;-><init>(JIZ)V

    return-void
.end method

.method public constructor <init>(JIZ)V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/aH;-><init>()V

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lc/a;->a:Ljava/lang/Long;

    iput p3, p0, Lc/a;->b:I

    iput-boolean p4, p0, Lc/a;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lc/a;-><init>(Ljava/lang/Long;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc/a;-><init>(Ljava/lang/Long;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/aH;-><init>()V

    iput-object p1, p0, Lc/a;->a:Ljava/lang/Long;

    iput p2, p0, Lc/a;->b:I

    iput-boolean p3, p0, Lc/a;->c:Z

    return-void
.end method

.method static synthetic a(Lc/a;)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lc/a;->a:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic a(Lc/a;Lk/l;)Lk/l;
    .locals 0

    iput-object p1, p0, Lc/a;->d:Lk/l;

    return-object p1
.end method

.method static synthetic b(Lc/a;)Z
    .locals 1

    iget-boolean v0, p0, Lc/a;->c:Z

    return v0
.end method

.method static synthetic c(Lc/a;)Lk/l;
    .locals 1

    iget-object v0, p0, Lc/a;->d:Lk/l;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lc/a;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lc/a;->b:I

    return v0
.end method
