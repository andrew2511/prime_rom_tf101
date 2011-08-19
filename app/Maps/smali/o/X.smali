.class public abstract Lo/X;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final a:Lh/eY;

.field protected final b:LaU/a;

.field protected final c:Lo/aN;

.field private final d:Z


# direct methods
.method public constructor <init>(Lh/eY;LaU/a;Lo/aN;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/X;->a:Lh/eY;

    iput-object p2, p0, Lo/X;->b:LaU/a;

    iput-object p3, p0, Lo/X;->c:Lo/aN;

    iput-boolean p4, p0, Lo/X;->d:Z

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public run()V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/X;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/X;->c:Lo/aN;

    invoke-virtual {v0}, Lo/aN;->s()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lo/X;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/X;->c:Lo/aN;

    invoke-static {v0}, Lo/aN;->b(Lo/aN;)V

    goto :goto_0
.end method
