.class Lcom/android/contacts/quickcontact/QuickContactWindow$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickContactWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactWindow;->animateCollapse(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

.field final synthetic val$whenDone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactWindow;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 963
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    iput-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$3;->val$whenDone:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 966
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$300(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 967
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$3;->val$whenDone:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 968
    return-void
.end method
