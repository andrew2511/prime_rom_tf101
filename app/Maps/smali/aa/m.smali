.class Laa/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Laa/D;


# direct methods
.method constructor <init>(Laa/D;I)V
    .locals 0

    iput-object p1, p0, Laa/m;->b:Laa/D;

    iput p2, p0, Laa/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Laa/m;->b:Laa/D;

    invoke-static {v0}, Laa/D;->b(Laa/D;)Laa/y;

    move-result-object v0

    iget v1, p0, Laa/m;->a:I

    invoke-interface {v0, v1}, Laa/y;->a(I)V

    return-void
.end method
