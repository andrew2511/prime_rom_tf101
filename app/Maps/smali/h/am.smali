.class Lh/am;
.super Ljava/lang/Object;

# interfaces
.implements Lh/eE;


# instance fields
.field final synthetic a:Lh/dW;


# direct methods
.method constructor <init>(Lh/dW;)V
    .locals 0

    iput-object p1, p0, Lh/am;->a:Lh/dW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lh/am;->a:Lh/dW;

    invoke-static {v0}, Lh/dW;->a(Lh/dW;)Lcom/google/googlenav/bL;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    return-void
.end method
