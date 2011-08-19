.class Lcom/google/googlenav/ui/view/android/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/ModalOverlay;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/ModalOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ap;->a:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ap;->a:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
