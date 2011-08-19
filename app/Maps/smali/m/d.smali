.class Lm/d;
.super Ljava/lang/Object;

# interfaces
.implements Lm/I;


# instance fields
.field final synthetic a:Lm/I;

.field final synthetic b:Lm/P;


# direct methods
.method constructor <init>(Lm/P;Lm/I;)V
    .locals 0

    iput-object p1, p0, Lm/d;->b:Lm/P;

    iput-object p2, p0, Lm/d;->a:Lm/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lm/p;)V
    .locals 2

    iget-object v0, p0, Lm/d;->b:Lm/P;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lm/P;->a(Lm/P;Lm/p;)Lm/p;

    iget-object v0, p0, Lm/d;->a:Lm/I;

    iget-object v1, p0, Lm/d;->b:Lm/P;

    invoke-interface {v0, v1}, Lm/I;->a(Lm/p;)V

    return-void
.end method
