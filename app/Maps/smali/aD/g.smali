.class LaD/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Vector;

.field final synthetic b:LaD/r;


# direct methods
.method constructor <init>(LaD/r;Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, LaD/g;->b:LaD/r;

    iput-object p2, p0, LaD/g;->a:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LaD/g;->b:LaD/r;

    iget-object v1, p0, LaD/g;->a:Ljava/util/Vector;

    invoke-static {v0, v1}, LaD/r;->b(LaD/r;Ljava/util/Vector;)V

    return-void
.end method
