.class Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;
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
    name = "UpdateTurn"
.end annotation


# instance fields
.field private mNewFraction:F

.field final synthetic this$0:Lcom/google/android/apps/books/widget/PageTurnView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView;F)V
    .locals 0
    .parameter
    .parameter "fraction"

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    iput p2, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->mNewFraction:F

    .line 1022
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    const-string v1, "PageTurnView"

    .line 1026
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$100(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnRS;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1027
    const-string v0, "PageTurnView"

    const-string v0, "missing mRenderScript, ignoring UpdateTurn"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$500(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1031
    const-string v0, "PageTurnView"

    const-string v0, "missing mAnchorPosition, ignoring UpdateTurn"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1034
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$200(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1036
    const-string v0, "PageTurnView"

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    const-string v0, "PageTurnView"

    const-string v0, "UpdateTurn.run() early exit: Not turning"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1043
    :cond_3
    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->mNewFraction:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    move v0, v2

    :goto_1
    iput v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->mNewFraction:F

    .line 1044
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->mNewFraction:F

    invoke-static {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$302(Lcom/google/android/apps/books/widget/PageTurnView;F)F

    .line 1046
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$200(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 1048
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$100(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnRS;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$600(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v1

    iget v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->mNewFraction:F

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$200(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/books/widget/PageTurnRS;->setTurnState(IFIZ)V

    goto :goto_0

    .line 1043
    :cond_4
    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->mNewFraction:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->mNewFraction:F

    goto :goto_1

    .line 1051
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$200(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1600(Lcom/google/android/apps/books/widget/PageTurnView;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1055
    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->mNewFraction:F

    const v1, 0x3ecccccd

    add-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->mNewFraction:F

    .line 1058
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$100(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnRS;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$600(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v1

    iget v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->mNewFraction:F

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$200(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/books/widget/PageTurnRS;->setTurnState(IFIZ)V

    goto/16 :goto_0
.end method
