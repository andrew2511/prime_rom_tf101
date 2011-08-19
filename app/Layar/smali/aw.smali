.class final Law;
.super Ljava/lang/Object;

# interfaces
.implements Lav;


# instance fields
.field private final a:Lbh;

.field private final b:Lbk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbk",
            "<",
            "Lay",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Lbd;


# direct methods
.method constructor <init>(Lbh;ZLbk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbh;",
            "Z",
            "Lbk",
            "<",
            "Lay",
            "<*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Law;->a:Lbh;

    iput-boolean p2, p0, Law;->c:Z

    iput-object p3, p0, Law;->b:Lbk;

    new-instance v0, Lbd;

    invoke-direct {v0}, Lbd;-><init>()V

    iput-object v0, p0, Law;->d:Lbd;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lao;
    .locals 1

    invoke-virtual {p0, p1, p2}, Law;->b(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lao;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lao;
    .locals 7

    iget-object v0, p0, Law;->a:Lbh;

    new-instance v1, Lbi;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v2}, Lbi;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-virtual {v0, v1}, Lbh;->a(Lbi;)Lbg;

    move-result-object v6

    new-instance v0, Lax;

    iget-object v1, p0, Law;->a:Lbh;

    iget-boolean v2, p0, Law;->c:Z

    iget-object v3, p0, Law;->b:Lbk;

    iget-object v5, p0, Law;->d:Lbd;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lax;-><init>(Lbh;ZLbk;Lav;Lbd;)V

    invoke-virtual {v6, v0}, Lbg;->a(Lbg$a;)V

    invoke-virtual {v0}, Lax;->b()Lao;

    move-result-object v0

    return-object v0
.end method
