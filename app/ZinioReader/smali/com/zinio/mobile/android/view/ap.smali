.class final Lcom/zinio/mobile/android/view/ap;
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
    .line 143
    iput-object p1, p0, Lcom/zinio/mobile/android/view/ap;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    .line 145
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ap;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/zinio/mobile/android/view/ap;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->W()Z

    move-result v1

    .line 149
    iget-object v2, p0, Lcom/zinio/mobile/android/view/ap;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v2, p0, Lcom/zinio/mobile/android/view/ap;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-static {v2}, Lcom/zinio/mobile/android/d/a;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/zinio/mobile/android/view/ap;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/zinio/mobile/android/view/ap;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v2

    iget-object v3, p0, Lcom/zinio/mobile/android/view/ap;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v3, v3, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v3}, Lcom/zinio/mobile/android/a/a/j;->r()I

    move-result v3

    sub-int/2addr v3, v5

    if-ge v2, v3, :cond_2

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/zinio/mobile/android/view/ap;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 155
    :cond_2
    iget-object v2, p0, Lcom/zinio/mobile/android/view/ap;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v2, p0, Lcom/zinio/mobile/android/view/ap;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v2, p0, Lcom/zinio/mobile/android/view/ap;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-static {v2}, Lcom/zinio/mobile/android/d/a;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/zinio/mobile/android/view/ap;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v2

    iget-object v3, p0, Lcom/zinio/mobile/android/view/ap;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v3, v3, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v3}, Lcom/zinio/mobile/android/a/a/j;->r()I

    move-result v3

    sub-int/2addr v3, v5

    if-lt v2, v3, :cond_4

    :cond_3
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ap;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v1

    if-lez v1, :cond_5

    .line 161
    :cond_4
    iget-object v1, p0, Lcom/zinio/mobile/android/view/ap;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ap;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    return-void
.end method
