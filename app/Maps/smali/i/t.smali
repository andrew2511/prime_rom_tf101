.class Li/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/ui/view/android/e;

.field final synthetic c:[Lcom/google/googlenav/bu;

.field final synthetic d:Li/ah;


# direct methods
.method constructor <init>(Li/ah;ILcom/google/googlenav/ui/view/android/e;[Lcom/google/googlenav/bu;)V
    .locals 0

    iput-object p1, p0, Li/t;->d:Li/ah;

    iput p2, p0, Li/t;->a:I

    iput-object p3, p0, Li/t;->b:Lcom/google/googlenav/ui/view/android/e;

    iput-object p4, p0, Li/t;->c:[Lcom/google/googlenav/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget v0, p0, Li/t;->a:I

    iget-object v1, p0, Li/t;->d:Li/ah;

    invoke-static {v1}, Li/ah;->b(Li/ah;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Li/t;->d:Li/ah;

    invoke-static {v1}, Li/ah;->b(Li/ah;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Li/t;->b:Lcom/google/googlenav/ui/view/android/e;

    const/16 v2, 0x907

    iget-object v3, p0, Li/t;->d:Li/ah;

    invoke-static {v3}, Li/ah;->b(Li/ah;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Li/t;->b:Lcom/google/googlenav/ui/view/android/e;

    const/16 v2, 0x908

    iget-object v3, p0, Li/t;->c:[Lcom/google/googlenav/bu;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    goto :goto_1
.end method
