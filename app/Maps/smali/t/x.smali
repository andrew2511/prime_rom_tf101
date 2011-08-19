.class public Lt/x;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lac/p;

.field private final b:Lt/ad;

.field private final c:I

.field private final d:J


# direct methods
.method public constructor <init>(Lac/p;IJLt/ad;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/x;->a:Lac/p;

    iput-object p5, p0, Lt/x;->b:Lt/ad;

    iput p2, p0, Lt/x;->c:I

    iput-wide p3, p0, Lt/x;->d:J

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v0, p0, Lt/x;->c:I

    iget-object v1, p0, Lt/x;->b:Lt/ad;

    invoke-interface {v1}, Lt/ad;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lt/x;->b:Lt/ad;

    invoke-interface {v0}, Lt/ad;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lt/x;->a:Lac/p;

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lt/x;->d:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    iget-wide v4, p0, Lt/x;->d:J

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_3

    move v0, v6

    goto :goto_0

    :cond_3
    move v0, v7

    goto :goto_0
.end method
