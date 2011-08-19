.class Lh/ax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/bz;


# instance fields
.field final synthetic a:Lh/cv;


# direct methods
.method constructor <init>(Lh/cv;)V
    .locals 0

    iput-object p1, p0, Lh/ax;->a:Lh/cv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lh/ax;->a:Lh/cv;

    invoke-static {v0}, Lh/cv;->a(Lh/cv;)Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x2ed

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    return-void
.end method
