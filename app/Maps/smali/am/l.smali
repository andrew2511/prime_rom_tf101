.class Lam/l;
.super Ljava/lang/Object;

# interfaces
.implements Lu/t;


# instance fields
.field final synthetic a:Lam/g;


# direct methods
.method constructor <init>(Lam/g;)V
    .locals 0

    iput-object p1, p0, Lam/l;->a:Lam/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lam/l;->a:Lam/g;

    iget-object v0, v0, Lam/g;->c:Lam/k;

    iget-object v1, p0, Lam/l;->a:Lam/g;

    iget-object v1, v1, Lam/g;->d:LG/Q;

    invoke-virtual {v0, v1}, Lam/k;->a(LG/Q;)V

    return-void
.end method
