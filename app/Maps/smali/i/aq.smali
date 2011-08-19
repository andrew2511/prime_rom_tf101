.class Li/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lo/cf;


# instance fields
.field final synthetic a:Li/C;


# direct methods
.method constructor <init>(Li/C;)V
    .locals 0

    iput-object p1, p0, Li/aq;->a:Li/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Li/aq;->a:Li/C;

    invoke-static {v2}, Li/C;->a(Li/C;)Lc/s;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lc/s;->a(Ljava/lang/Boolean;Z)V

    return-void

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method
