.class Lcom/google/googlenav/ui/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/google/googlenav/ui/aD;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aD;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/c;->c:Lcom/google/googlenav/ui/aD;

    iput p2, p0, Lcom/google/googlenav/ui/c;->a:I

    iput p3, p0, Lcom/google/googlenav/ui/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/google/googlenav/ui/c;->a:I

    iget v1, p0, Lcom/google/googlenav/ui/c;->b:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/google/googlenav/ui/c;->a:I

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/googlenav/ui/c;->c:Lcom/google/googlenav/ui/aD;

    iget-object v1, v1, Lcom/google/googlenav/ui/aD;->b:Lcom/google/googlenav/ui/at;

    invoke-static {v1}, Lcom/google/googlenav/ui/at;->a(Lcom/google/googlenav/ui/at;)Lcom/google/googlenav/ui/aT;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lh/eY;->a(II)V

    return-void
.end method
