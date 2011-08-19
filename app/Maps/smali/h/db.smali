.class Lh/db;
.super Ljava/lang/Object;

# interfaces
.implements Lh/cK;


# instance fields
.field final synthetic a:Lcom/google/googlenav/g;

.field final synthetic b:Lh/eL;


# direct methods
.method constructor <init>(Lh/eL;Lcom/google/googlenav/g;)V
    .locals 0

    iput-object p1, p0, Lh/db;->b:Lh/eL;

    iput-object p2, p0, Lh/db;->a:Lcom/google/googlenav/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lh/db;->b:Lh/eL;

    iget-object v0, v0, Lh/eL;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lh/db;->a:Lcom/google/googlenav/g;

    const-string v1, ""

    invoke-interface {v0, v1, p2}, Lcom/google/googlenav/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
