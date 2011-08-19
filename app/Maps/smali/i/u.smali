.class Li/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/e;

.field final synthetic b:Li/ah;


# direct methods
.method constructor <init>(Li/ah;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 0

    iput-object p1, p0, Li/u;->b:Li/ah;

    iput-object p2, p0, Li/u;->a:Lcom/google/googlenav/ui/view/android/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Li/u;->a:Lcom/google/googlenav/ui/view/android/e;

    const/16 v1, 0x907

    const/4 v2, -0x1

    iget-object v3, p0, Li/u;->b:Li/ah;

    invoke-static {v3}, Li/ah;->b(Li/ah;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    return-void
.end method
