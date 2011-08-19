.class Lcom/google/googlenav/appwidget/gohome/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/gohome/c;->a:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/c;->a:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    const v1, 0x7f0f008d

    invoke-virtual {v0, v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/c;->a:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->e(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/c;->a:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->b(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
