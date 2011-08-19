.class Li/B;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Li/av;


# direct methods
.method constructor <init>(Li/av;)V
    .locals 0

    iput-object p1, p0, Li/B;->a:Li/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Li/B;->a:Li/av;

    invoke-virtual {v0}, Li/av;->M()V

    return-void
.end method
