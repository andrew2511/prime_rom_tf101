.class LI/E;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LI/O;


# direct methods
.method constructor <init>(LI/O;)V
    .locals 0

    iput-object p1, p0, LI/E;->a:LI/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, LI/E;->a:LI/O;

    invoke-static {v0}, LI/O;->a(LI/O;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LI/E;->a:LI/O;

    invoke-static {v0}, LI/O;->b(LI/O;)Lh/ay;

    move-result-object v0

    iget-object v1, p0, LI/E;->a:LI/O;

    invoke-static {v1}, LI/O;->a(LI/O;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/ay;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
