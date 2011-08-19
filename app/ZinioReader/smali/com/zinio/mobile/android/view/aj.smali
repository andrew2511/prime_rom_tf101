.class final Lcom/zinio/mobile/android/view/aj;
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
    .line 744
    iput-object p1, p0, Lcom/zinio/mobile/android/view/aj;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 747
    iget-object v0, p0, Lcom/zinio/mobile/android/view/aj;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->j:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/view/aj;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    if-nez v0, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/aj;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->k:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/aj;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->g()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 752
    iget-object v0, p0, Lcom/zinio/mobile/android/view/aj;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/zinio/mobile/android/view/aj;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->j:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
