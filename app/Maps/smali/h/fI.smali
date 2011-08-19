.class Lh/fI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lh/v;


# direct methods
.method constructor <init>(Lh/v;)V
    .locals 0

    iput-object p1, p0, Lh/fI;->a:Lh/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lh/fI;->a:Lh/v;

    iget-object v0, v0, Lh/v;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/fI;->a:Lh/v;

    iget-object v0, v0, Lh/v;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->f()V

    :cond_0
    return-void
.end method
