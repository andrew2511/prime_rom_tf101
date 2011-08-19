.class final Lcom/zinio/mobile/android/view/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/zinio/mobile/android/view/as;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/zinio/mobile/android/view/as;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget v0, v0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->c:I

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/zinio/mobile/android/view/as;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/j;->c(Z)V

    .line 113
    iget-object v0, p0, Lcom/zinio/mobile/android/view/as;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/zinio/mobile/android/view/as;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    const/16 v2, 0x8

    iput v2, v1, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->c:I

    .line 117
    iget-object v1, p0, Lcom/zinio/mobile/android/view/as;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 118
    iget-object v1, p0, Lcom/zinio/mobile/android/view/as;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->e:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/as;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget v2, v2, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->c:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcom/zinio/mobile/android/view/as;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 120
    iget-object v1, p0, Lcom/zinio/mobile/android/view/as;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/as;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget v2, v2, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->c:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 122
    iget-object v1, p0, Lcom/zinio/mobile/android/view/as;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->i()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/zinio/mobile/android/view/as;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 124
    iget-object v0, p0, Lcom/zinio/mobile/android/view/as;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/as;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget v1, v1, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 127
    :cond_0
    return-void
.end method
