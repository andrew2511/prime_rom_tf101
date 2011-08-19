.class Lh/dG;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lh/bf;


# direct methods
.method constructor <init>(Lh/bf;)V
    .locals 0

    iput-object p1, p0, Lh/dG;->a:Lh/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lh/dG;->a:Lh/bf;

    iget-object v0, v0, Lh/bf;->c:Lh/ek;

    invoke-static {v0}, Lh/ek;->b(Lh/ek;)LE/i;

    move-result-object v0

    invoke-interface {v0}, LE/i;->f()V

    return-void
.end method
