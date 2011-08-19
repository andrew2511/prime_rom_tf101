.class LI/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LI/C;


# direct methods
.method constructor <init>(LI/C;)V
    .locals 0

    iput-object p1, p0, LI/u;->a:LI/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, LI/u;->a:LI/C;

    invoke-static {v0}, LI/C;->a(LI/C;)Lcom/google/googlenav/ui/wizard/android/f;

    move-result-object v0

    sget-object v1, Lh/dP;->b:Lh/dP;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/android/f;->a(Lh/dP;)V

    return-void
.end method
