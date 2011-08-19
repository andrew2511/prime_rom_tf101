.class Lcom/google/googlenav/ui/android/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/aB;

.field final synthetic b:Li/x;

.field final synthetic c:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Lcom/google/googlenav/aB;Li/x;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/z;->c:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/z;->a:Lcom/google/googlenav/aB;

    iput-object p3, p0, Lcom/google/googlenav/ui/android/z;->b:Li/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/16 v0, 0x54

    const-string v1, "ts"

    const-string v2, "n"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/android/z;->a:Lcom/google/googlenav/aB;

    invoke-virtual {v0}, Lcom/google/googlenav/aB;->f()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/googlenav/bF;

    const-string v1, "s"

    iget-object v2, p0, Lcom/google/googlenav/ui/android/z;->a:Lcom/google/googlenav/aB;

    invoke-virtual {v2}, Lcom/google/googlenav/aB;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/android/z;->a:Lcom/google/googlenav/aB;

    invoke-virtual {v3}, Lcom/google/googlenav/aB;->f()Lf/h;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/android/z;->a:Lcom/google/googlenav/aB;

    invoke-virtual {v4}, Lcom/google/googlenav/aB;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/bF;-><init>(Ljava/lang/String;Ljava/lang/String;Lf/h;Ljava/lang/String;)V

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bF;->a(B)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/z;->b:Li/x;

    const/16 v2, 0x3fa

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Li/x;->a(IILjava/lang/Object;)Z

    :cond_0
    return-void
.end method
