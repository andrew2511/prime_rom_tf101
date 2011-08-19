.class Lh/cP;
.super Ljava/lang/Object;

# interfaces
.implements Lo/bE;


# instance fields
.field final synthetic a:Lh/cA;


# direct methods
.method constructor <init>(Lh/cA;)V
    .locals 0

    iput-object p1, p0, Lh/cP;->a:Lh/cA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lh/cP;->a:Lh/cA;

    if-eqz p1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-static {v0, v1}, Lh/cA;->a(Lh/cA;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lh/cP;->a:Lh/cA;

    invoke-virtual {v0}, Lh/cA;->i()V

    return-void

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method
