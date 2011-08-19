.class Lh/aI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lax/c;

.field final synthetic c:Lh/eY;


# direct methods
.method constructor <init>(Lh/eY;ILax/c;)V
    .locals 0

    iput-object p1, p0, Lh/aI;->c:Lh/eY;

    iput p2, p0, Lh/aI;->a:I

    iput-object p3, p0, Lh/aI;->b:Lax/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lh/aI;->c:Lh/eY;

    iget-object v0, v0, Lh/eY;->a:Lcom/google/googlenav/bL;

    iget v1, p0, Lh/aI;->a:I

    iget-object v2, p0, Lh/aI;->b:Lax/c;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/bL;->a(ILax/c;)Z

    return-void
.end method
