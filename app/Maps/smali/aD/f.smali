.class LaD/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaD/r;


# direct methods
.method constructor <init>(LaD/r;)V
    .locals 0

    iput-object p1, p0, LaD/f;->a:LaD/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LaD/f;->a:LaD/r;

    iget-object v1, p0, LaD/f;->a:LaD/r;

    invoke-static {v1}, LaD/r;->d(LaD/r;)Ljava/util/Vector;

    move-result-object v1

    invoke-static {v0, v1}, LaD/r;->b(LaD/r;Ljava/util/Vector;)V

    return-void
.end method
