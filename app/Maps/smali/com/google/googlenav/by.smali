.class public Lcom/google/googlenav/by;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Long;

.field private final b:LaD/j;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/by;->a:Ljava/lang/Long;

    new-instance v0, LaD/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, LaD/j;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    iput-object v0, p0, Lcom/google/googlenav/by;->b:LaD/j;

    iput-object p2, p0, Lcom/google/googlenav/by;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()LaD/j;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/by;->b:LaD/j;

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/by;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/by;->c:Ljava/lang/String;

    return-object v0
.end method
