.class Landroid/widget/AdapterViewAnimator$1$1;
.super Ljava/lang/Object;
.source "AdapterViewAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AdapterViewAnimator$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/AdapterViewAnimator$1;


# direct methods
.method constructor <init>(Landroid/widget/AdapterViewAnimator$1;)V
    .registers 2
    .parameter

    .prologue
    .line 617
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator$1$1;->this$1:Landroid/widget/AdapterViewAnimator$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 619
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$1$1;->this$1:Landroid/widget/AdapterViewAnimator$1;

    iget-object v0, v0, Landroid/widget/AdapterViewAnimator$1;->this$0:Landroid/widget/AdapterViewAnimator;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$1$1;->this$1:Landroid/widget/AdapterViewAnimator$1;

    iget-object v1, v1, Landroid/widget/AdapterViewAnimator$1;->val$v:Landroid/view/View;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/AdapterViewAnimator;->performItemClick(Landroid/view/View;IJ)Z

    .line 620
    return-void
.end method
