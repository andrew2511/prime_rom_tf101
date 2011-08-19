.class Lm/D;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lm/g;


# direct methods
.method constructor <init>(Lm/g;)V
    .locals 0

    iput-object p1, p0, Lm/D;->a:Lm/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lm/D;->a:Lm/g;

    iget-object v0, v0, Lm/g;->b:Lm/q;

    iget-object v1, p0, Lm/D;->a:Lm/g;

    iget-object v1, v1, Lm/g;->a:Lm/I;

    invoke-static {v0, v1}, Lm/q;->a(Lm/q;Lm/I;)V

    return-void
.end method
