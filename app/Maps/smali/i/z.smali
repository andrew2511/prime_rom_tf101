.class Li/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Li/al;


# direct methods
.method constructor <init>(Li/al;)V
    .locals 0

    iput-object p1, p0, Li/z;->a:Li/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Li/z;->a:Li/al;

    iget-object v0, v0, Li/al;->c:Li/aD;

    invoke-interface {v0}, Li/aD;->a()V

    return-void
.end method
