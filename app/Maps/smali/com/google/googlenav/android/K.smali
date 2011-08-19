.class Lcom/google/googlenav/android/K;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/an;

.field final synthetic b:Lcom/google/googlenav/android/w;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/w;Lcom/google/googlenav/ui/android/an;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/android/K;->b:Lcom/google/googlenav/android/w;

    iput-object p2, p0, Lcom/google/googlenav/android/K;->a:Lcom/google/googlenav/ui/android/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/android/K;->a:Lcom/google/googlenav/ui/android/an;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/an;->c()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
