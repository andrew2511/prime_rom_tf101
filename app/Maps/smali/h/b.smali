.class Lh/b;
.super Ljava/lang/Object;

# interfaces
.implements Lab/b;


# instance fields
.field private final a:Lo/aN;

.field private final b:Lh/bi;


# direct methods
.method public constructor <init>(Lo/aN;Lh/bi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/b;->a:Lo/aN;

    iput-object p2, p0, Lh/b;->b:Lh/bi;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/google/googlenav/az;->z()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lh/b;->a:Lo/aN;

    invoke-virtual {v0, p1}, Lo/aN;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lh/b;->b:Lh/bi;

    invoke-virtual {v0}, Lh/bi;->d()V

    :cond_2
    return-void
.end method
