.class final Lbh;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lae;

.field private final b:Lag;


# direct methods
.method public constructor <init>(Lae;Lag;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lbm;->a(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    new-instance v0, Lbf;

    invoke-direct {v0}, Lbf;-><init>()V

    :goto_0
    iput-object v0, p0, Lbh;->a:Lae;

    iput-object p2, p0, Lbh;->b:Lag;

    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method final a()Lag;
    .locals 1

    iget-object v0, p0, Lbh;->b:Lag;

    return-object v0
.end method

.method public final a(Lbi;)Lbg;
    .locals 2

    new-instance v0, Lbg;

    iget-object v1, p0, Lbh;->a:Lae;

    invoke-direct {v0, p1, v1}, Lbg;-><init>(Lbi;Lae;)V

    return-object v0
.end method
