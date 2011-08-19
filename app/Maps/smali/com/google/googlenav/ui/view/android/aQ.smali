.class Lcom/google/googlenav/ui/view/android/aQ;
.super Landroid/text/method/LinkMovementMethod;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/V;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/F;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/F;Lcom/google/googlenav/ui/view/android/V;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aQ;->b:Lcom/google/googlenav/ui/view/android/F;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/aQ;->a:Lcom/google/googlenav/ui/view/android/V;

    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/LinkMovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aQ;->b:Lcom/google/googlenav/ui/view/android/F;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/F;->a:Lcom/google/googlenav/ui/view/android/V;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/view/android/V;->a(Lcom/google/googlenav/ui/view/android/V;I)V

    return v0
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aQ;->b:Lcom/google/googlenav/ui/view/android/F;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/F;->a:Lcom/google/googlenav/ui/view/android/V;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/V;->a(Lcom/google/googlenav/ui/view/android/V;I)V

    return-void
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aQ;->b:Lcom/google/googlenav/ui/view/android/F;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/F;->a:Lcom/google/googlenav/ui/view/android/V;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/view/android/V;->a(Lcom/google/googlenav/ui/view/android/V;I)V

    return v0
.end method
