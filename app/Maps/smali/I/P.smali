.class LI/P;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LI/G;


# direct methods
.method constructor <init>(LI/G;)V
    .locals 0

    iput-object p1, p0, LI/P;->a:LI/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, LI/P;->a:LI/G;

    invoke-static {v0}, LI/G;->a(LI/G;)Lcom/google/googlenav/ui/wizard/android/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/android/f;->h()V

    return-void
.end method
