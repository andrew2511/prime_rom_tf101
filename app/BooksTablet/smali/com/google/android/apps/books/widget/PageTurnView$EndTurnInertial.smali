.class Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;
.super Ljava/lang/Object;
.source "PageTurnView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/PageTurnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndTurnInertial"
.end annotation


# instance fields
.field private final mCanceled:Z

.field final synthetic this$0:Lcom/google/android/apps/books/widget/PageTurnView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView;Z)V
    .locals 0
    .parameter
    .parameter "canceled"

    .prologue
    .line 1067
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1068
    iput-boolean p2, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->mCanceled:Z

    .line 1069
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-string v1, "PageTurnView"

    .line 1072
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$100(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnRS;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1073
    const-string v0, "PageTurnView"

    const-string v0, "missing mRenderScript, exiting EndTurnInertial early"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$302(Lcom/google/android/apps/books/widget/PageTurnView;F)F

    .line 1075
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$202(Lcom/google/android/apps/books/widget/PageTurnView;I)I

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$200(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1080
    const-string v0, "PageTurnView"

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    const-string v0, "PageTurnView"

    const-string v0, "EndTurnInertial.run() early exit: Not turning"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1086
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$300(Lcom/google/android/apps/books/widget/PageTurnView;)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->mCanceled:Z

    if-nez v0, :cond_3

    .line 1088
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$100(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnRS;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$200(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnRS;->finishOpening(I)V

    goto :goto_0

    .line 1091
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$100(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnRS;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$200(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnRS;->finishOpening(I)V

    goto :goto_0
.end method
