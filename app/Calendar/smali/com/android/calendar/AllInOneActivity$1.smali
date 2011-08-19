.class Lcom/android/calendar/AllInOneActivity$1;
.super Ljava/lang/Object;
.source "AllInOneActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AllInOneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AllInOneActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/calendar/AllInOneActivity$1;->this$0:Lcom/android/calendar/AllInOneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 126
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity$1;->this$0:Lcom/android/calendar/AllInOneActivity;

    invoke-static {v1}, Lcom/android/calendar/AllInOneActivity;->access$000(Lcom/android/calendar/AllInOneActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 131
    .local v0, visibility:I
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity$1;->this$0:Lcom/android/calendar/AllInOneActivity;

    invoke-static {v1}, Lcom/android/calendar/AllInOneActivity;->access$100(Lcom/android/calendar/AllInOneActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity$1;->this$0:Lcom/android/calendar/AllInOneActivity;

    invoke-static {v1}, Lcom/android/calendar/AllInOneActivity;->access$200(Lcom/android/calendar/AllInOneActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity$1;->this$0:Lcom/android/calendar/AllInOneActivity;

    invoke-static {v1}, Lcom/android/calendar/AllInOneActivity;->access$300(Lcom/android/calendar/AllInOneActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 134
    return-void

    .line 130
    .end local v0           #visibility:I
    :cond_0
    const/16 v1, 0x8

    move v0, v1

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 138
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 142
    return-void
.end method
