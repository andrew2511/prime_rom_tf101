.class final Lcom/google/googlenav/ui/view/android/bd;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/F;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/android/F;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bd;->a:Lcom/google/googlenav/ui/view/android/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/android/F;Lcom/google/googlenav/ui/view/android/aU;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bd;-><init>(Lcom/google/googlenav/ui/view/android/F;)V

    return-void
.end method

.method private a(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bd;->a:Lcom/google/googlenav/ui/view/android/F;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/F;->a(Lcom/google/googlenav/ui/view/android/F;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bd;->a:Lcom/google/googlenav/ui/view/android/F;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/F;->b(Lcom/google/googlenav/ui/view/android/F;)Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/MovementMethod;->onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bd;->a:Lcom/google/googlenav/ui/view/android/F;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/F;->c(Lcom/google/googlenav/ui/view/android/F;)Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/MovementMethod;->onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/bd;Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/bd;->a(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
