.class Ll/M;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ll/c;

.field final synthetic b:Ll/x;


# direct methods
.method constructor <init>(Ll/x;Ll/c;)V
    .locals 0

    iput-object p1, p0, Ll/M;->b:Ll/x;

    iput-object p2, p0, Ll/M;->a:Ll/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ll/M;->b:Ll/x;

    invoke-static {v0}, Ll/x;->f(Ll/x;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/v;

    iget-object v2, p0, Ll/M;->a:Ll/c;

    invoke-interface {v0, v2}, Ll/v;->a(Ll/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method
