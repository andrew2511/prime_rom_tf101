.class Lh/dI;
.super Ljava/lang/Object;

# interfaces
.implements Lh/aZ;


# instance fields
.field final synthetic a:Lh/fM;

.field final synthetic b:Lh/eI;


# direct methods
.method constructor <init>(Lh/eI;Lh/fM;)V
    .locals 0

    iput-object p1, p0, Lh/dI;->b:Lh/eI;

    iput-object p2, p0, Lh/dI;->a:Lh/fM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lh/dI;->a:Lh/fM;

    invoke-interface {v0}, Lh/fM;->b()V

    return-void
.end method

.method public a(Law/e;)V
    .locals 1

    iget-object v0, p0, Lh/dI;->a:Lh/fM;

    invoke-interface {v0}, Lh/fM;->a()V

    return-void
.end method
