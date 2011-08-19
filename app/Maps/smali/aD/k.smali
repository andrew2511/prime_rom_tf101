.class LaD/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaD/l;


# direct methods
.method constructor <init>(LaD/l;)V
    .locals 0

    iput-object p1, p0, LaD/k;->a:LaD/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LaD/k;->a:LaD/l;

    iget-object v0, v0, LaD/l;->b:LaD/n;

    invoke-interface {v0}, LaD/n;->ar_()V

    return-void
.end method
