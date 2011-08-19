.class Lcom/google/googlenav/ui/view/android/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/bs;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/av;->a:Lcom/google/googlenav/ui/view/android/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/av;->a:Lcom/google/googlenav/ui/view/android/bs;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/bs;->a(Lcom/google/googlenav/ui/view/android/bs;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    return-void
.end method
