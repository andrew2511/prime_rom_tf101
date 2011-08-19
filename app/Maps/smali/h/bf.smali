.class Lh/bf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/google/googlenav/prefetch/android/g;

.field final synthetic c:Lh/ek;


# direct methods
.method constructor <init>(Lh/ek;Landroid/widget/EditText;Lcom/google/googlenav/prefetch/android/g;)V
    .locals 0

    iput-object p1, p0, Lh/bf;->c:Lh/ek;

    iput-object p2, p0, Lh/bf;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lh/bf;->b:Lcom/google/googlenav/prefetch/android/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lh/bf;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lh/bf;->c:Lh/ek;

    iget-object v0, v0, Lh/ek;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x29c

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lh/bf;->b:Lcom/google/googlenav/prefetch/android/g;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/prefetch/android/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lh/bf;->c:Lh/ek;

    iget-object v0, v0, Lh/ek;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x29e

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lh/bf;->c:Lh/ek;

    invoke-static {v0}, Lh/ek;->a(Lh/ek;)V

    new-instance v0, LT/d;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    new-instance v2, Lh/dG;

    invoke-direct {v2, p0}, Lh/dG;-><init>(Lh/bf;)V

    invoke-direct {v0, v1, v2}, LT/d;-><init>(LT/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LT/d;->b()V

    goto :goto_0
.end method
