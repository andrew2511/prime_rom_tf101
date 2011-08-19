.class final Lcom/zinio/mobile/android/view/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/BottomToolbarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/zinio/mobile/android/view/bs;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 50
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/zinio/mobile/android/view/bs;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget v1, v1, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a:I

    if-nez v1, :cond_0

    .line 52
    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/zinio/mobile/android/view/bs;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    const/16 v2, 0x8

    iput v2, v1, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a:I

    .line 56
    iget-object v1, p0, Lcom/zinio/mobile/android/view/bs;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 57
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bs;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/bs;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget v1, v1, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 59
    :cond_0
    return-void
.end method
