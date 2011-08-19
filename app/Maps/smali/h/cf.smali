.class Lh/cf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lh/fJ;


# direct methods
.method constructor <init>(Lh/fJ;)V
    .locals 0

    iput-object p1, p0, Lh/cf;->a:Lh/fJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lh/cf;->a:Lh/fJ;

    invoke-static {v0}, Lh/fJ;->a(Lh/fJ;)Lh/R;

    move-result-object v0

    iget-object v1, p0, Lh/cf;->a:Lh/fJ;

    invoke-static {v1}, Lh/fJ;->b(Lh/fJ;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lh/R;->b(Ljava/lang/String;)V

    return-void
.end method
