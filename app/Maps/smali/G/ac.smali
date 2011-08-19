.class public LG/ac;
.super Ljava/lang/Object;


# static fields
.field public static final a:LG/ac;


# instance fields
.field private final b:J

.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v1, 0x0

    new-instance v0, LG/ac;

    invoke-direct {v0, v1, v2, v1, v2}, LG/ac;-><init>(JJ)V

    sput-object v0, LG/ac;->a:LG/ac;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, LG/ac;->b:J

    iput-wide p3, p0, LG/ac;->c:J

    return-void
.end method

.method public static a(Ljava/io/DataInput;)LG/ac;
    .locals 5

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    new-instance v4, LG/ac;

    invoke-direct {v4, v0, v1, v2, v3}, LG/ac;-><init>(JJ)V

    return-object v4
.end method


# virtual methods
.method public a(Ljava/io/DataOutput;)V
    .locals 2

    iget-wide v0, p0, LG/ac;->b:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    iget-wide v0, p0, LG/ac;->c:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    instance-of v0, p1, LG/ac;

    if-eqz v0, :cond_1

    check-cast p1, LG/ac;

    iget-wide v0, p1, LG/ac;->b:J

    iget-wide v2, p0, LG/ac;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, LG/ac;->c:J

    iget-wide v2, p0, LG/ac;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    const/16 v4, 0x20

    iget-wide v0, p0, LG/ac;->b:J

    iget-wide v2, p0, LG/ac;->b:J

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, LG/ac;->c:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, LG/ac;->c:J

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
