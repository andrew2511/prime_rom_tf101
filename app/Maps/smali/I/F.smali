.class LI/F;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LI/O;


# direct methods
.method constructor <init>(LI/O;)V
    .locals 0

    iput-object p1, p0, LI/F;->a:LI/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, LI/F;->a:LI/O;

    invoke-static {v0}, LI/O;->b(LI/O;)Lh/ay;

    move-result-object v0

    invoke-virtual {v0}, Lh/ay;->h()V

    return-void
.end method
