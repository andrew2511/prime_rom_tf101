.class Lh/bG;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lh/H;

.field final synthetic b:Lh/dh;


# direct methods
.method constructor <init>(Lh/dh;Lh/H;)V
    .locals 0

    iput-object p1, p0, Lh/bG;->b:Lh/dh;

    iput-object p2, p0, Lh/bG;->a:Lh/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lh/bG;->a:Lh/H;

    invoke-interface {v0}, Lh/H;->a()V

    return-void
.end method
