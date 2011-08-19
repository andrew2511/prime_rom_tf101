.class Lcom/google/googlenav/ui/view/android/aR;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/V;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/V;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aR;->a:Lcom/google/googlenav/ui/view/android/V;

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
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aR;->a:Lcom/google/googlenav/ui/view/android/V;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/V;->e(Lcom/google/googlenav/ui/view/android/V;)V

    return-void
.end method
