.class LI/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LI/s;


# direct methods
.method constructor <init>(LI/s;)V
    .locals 0

    iput-object p1, p0, LI/z;->a:LI/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LI/z;->a:LI/s;

    iget-object v0, v0, LI/s;->a:LI/x;

    invoke-virtual {v0}, LI/x;->f()Z

    return-void
.end method
