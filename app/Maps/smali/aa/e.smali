.class Laa/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laa/p;


# direct methods
.method constructor <init>(Laa/p;)V
    .locals 0

    iput-object p1, p0, Laa/e;->a:Laa/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Laa/e;->a:Laa/p;

    invoke-virtual {v0}, Laa/p;->c()V

    return-void
.end method
