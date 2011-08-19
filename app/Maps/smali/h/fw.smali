.class Lh/fw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lh/fJ;


# direct methods
.method constructor <init>(Lh/fJ;)V
    .locals 0

    iput-object p1, p0, Lh/fw;->a:Lh/fJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lh/fw;->a:Lh/fJ;

    invoke-static {v0}, Lh/fJ;->c(Lh/fJ;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-ge p3, v0, :cond_0

    iget-object v0, p0, Lh/fw;->a:Lh/fJ;

    invoke-static {v0}, Lh/fJ;->a(Lh/fJ;)Lh/R;

    move-result-object v1

    iget-object v0, p0, Lh/fw;->a:Lh/fJ;

    invoke-static {v0}, Lh/fJ;->c(Lh/fJ;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/h;

    invoke-interface {v1, v0}, Lh/R;->a(Lcom/google/googlenav/h;)V

    iget-object v0, p0, Lh/fw;->a:Lh/fJ;

    invoke-static {v0}, Lh/fJ;->d(Lh/fJ;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lh/fw;->a:Lh/fJ;

    invoke-static {v1}, Lh/fJ;->b(Lh/fJ;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method
