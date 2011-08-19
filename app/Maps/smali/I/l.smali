.class LI/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/e;

.field final synthetic b:LI/b;


# direct methods
.method constructor <init>(LI/b;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 0

    iput-object p1, p0, LI/l;->b:LI/b;

    iput-object p2, p0, LI/l;->a:Lcom/google/googlenav/ui/view/android/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, LI/l;->a:Lcom/google/googlenav/ui/view/android/e;

    const/16 v1, 0x909

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    return-void
.end method
