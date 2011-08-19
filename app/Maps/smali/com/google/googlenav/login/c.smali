.class Lcom/google/googlenav/login/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/login/j;


# direct methods
.method constructor <init>(Lcom/google/googlenav/login/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/login/c;->a:Lcom/google/googlenav/login/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/login/c;->a:Lcom/google/googlenav/login/j;

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->q()V

    return-void
.end method
