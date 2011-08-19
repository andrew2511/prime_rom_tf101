.class Lcom/google/googlenav/prefetch/android/a;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

.field private b:Lcom/google/googlenav/prefetch/android/m;

.field private c:I

.field private final d:I

.field private e:LE/c;

.field private f:LE/d;

.field private g:J


# direct methods
.method public constructor <init>(Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/m;ILE/c;LE/d;J)V
    .locals 1

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/a;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/prefetch/android/a;->b:Lcom/google/googlenav/prefetch/android/m;

    iput p3, p0, Lcom/google/googlenav/prefetch/android/a;->c:I

    invoke-virtual {p2}, Lcom/google/googlenav/prefetch/android/m;->b()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/prefetch/android/a;->d:I

    iput-object p4, p0, Lcom/google/googlenav/prefetch/android/a;->e:LE/c;

    iput-object p5, p0, Lcom/google/googlenav/prefetch/android/a;->f:LE/d;

    iput-wide p6, p0, Lcom/google/googlenav/prefetch/android/a;->g:J

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/prefetch/android/m;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/a;->b:Lcom/google/googlenav/prefetch/android/m;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/prefetch/android/a;->c:I

    return v0
.end method

.method public c()V
    .locals 2

    iget v0, p0, Lcom/google/googlenav/prefetch/android/a;->c:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/prefetch/android/a;->c:I

    return-void
.end method

.method public d()LE/c;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/a;->e:LE/c;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/prefetch/android/a;->d:I

    return v0
.end method

.method public f()LE/d;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/a;->f:LE/d;

    return-object v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/google/googlenav/prefetch/android/a;->g:J

    return-wide v0
.end method
