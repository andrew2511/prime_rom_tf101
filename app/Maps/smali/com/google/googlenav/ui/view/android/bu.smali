.class Lcom/google/googlenav/ui/view/android/bu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/HeadingView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/HeadingView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bu;->a:Lcom/google/googlenav/ui/view/android/HeadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bu;->a:Lcom/google/googlenav/ui/view/android/HeadingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/HeadingView;->setVisibility(I)V

    return-void
.end method
