.class LQ/a;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:F

.field private c:F


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, LQ/a;->a:J

    return-void
.end method

.method synthetic constructor <init>(LQ/b;)V
    .locals 0

    invoke-direct {p0}, LQ/a;-><init>()V

    return-void
.end method

.method private a(JFF)Z
    .locals 6

    const/4 v5, 0x1

    const/high16 v4, 0x3f80

    iget-wide v0, p0, LQ/a;->a:J

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    move v0, v5

    :goto_0
    if-eqz v0, :cond_0

    iput-wide p1, p0, LQ/a;->a:J

    iput p3, p0, LQ/a;->b:F

    iput p4, p0, LQ/a;->c:F

    :cond_0
    return v0

    :cond_1
    iget-wide v0, p0, LQ/a;->a:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x32

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget v0, p0, LQ/a;->b:F

    sub-float v0, p3, v0

    invoke-static {v0}, LA/h;->b(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_2

    iget v0, p0, LQ/a;->c:F

    sub-float v0, p4, v0

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_0
.end method

.method static synthetic a(LQ/a;JFF)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, LQ/a;->a(JFF)Z

    move-result v0

    return v0
.end method
