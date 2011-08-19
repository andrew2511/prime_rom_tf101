.class Lcom/google/googlenav/ui/view/android/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/bs;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/at;->a:Lcom/google/googlenav/ui/view/android/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/at;->a:Lcom/google/googlenav/ui/view/android/bs;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/bs;->c(Lcom/google/googlenav/ui/view/android/bs;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/at;->a:Lcom/google/googlenav/ui/view/android/bs;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/bs;->d(Lcom/google/googlenav/ui/view/android/bs;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
