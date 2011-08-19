.class Lcom/google/googlenav/ui/view/android/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/bj;

.field private final b:Lcom/google/googlenav/ui/android/TemplateView;

.field private final c:Lcom/google/googlenav/ui/bx;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/android/bj;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/bx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bk;->a:Lcom/google/googlenav/ui/view/android/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bk;->b:Lcom/google/googlenav/ui/android/TemplateView;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/bk;->c:Lcom/google/googlenav/ui/bx;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/android/bj;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/view/android/M;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/bk;-><init>(Lcom/google/googlenav/ui/view/android/bj;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/bx;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bk;->a:Lcom/google/googlenav/ui/view/android/bj;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/bj;->a(Lcom/google/googlenav/ui/view/android/bj;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bk;->b:Lcom/google/googlenav/ui/android/TemplateView;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bk;->a:Lcom/google/googlenav/ui/view/android/bj;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/bj;->a(Lcom/google/googlenav/ui/view/android/bj;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bk;->b:Lcom/google/googlenav/ui/android/TemplateView;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bk;->b:Lcom/google/googlenav/ui/android/TemplateView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bk;->c:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    :cond_0
    return-void
.end method
