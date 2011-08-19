.class Lb/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lb/c;


# direct methods
.method constructor <init>(Lb/c;)V
    .locals 0

    iput-object p1, p0, Lb/t;->a:Lb/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/t;->a:Lb/c;

    invoke-static {v0}, Lb/c;->a(Lb/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/t;->a:Lb/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lb/c;->b:Z

    iget-object v0, p0, Lb/t;->a:Lb/c;

    invoke-virtual {v0}, Lb/c;->h()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lb/t;->a:Lb/c;

    invoke-static {v0}, Lb/c;->b(Lb/c;)V

    goto :goto_0
.end method
