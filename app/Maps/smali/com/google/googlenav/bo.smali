.class public Lcom/google/googlenav/bo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ba;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/bo;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/bo;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/googlenav/bo;->c:J

    iput-wide p5, p0, Lcom/google/googlenav/bo;->d:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/google/googlenav/bo;->d:J

    return-wide v0
.end method

.method public c()Law/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Lcom/google/googlenav/by;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/google/googlenav/bo;->c:J

    return-wide v0
.end method
