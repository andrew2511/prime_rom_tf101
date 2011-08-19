.class Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;
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
    name = "StartTurn"
.end annotation


# instance fields
.field mDirection:I

.field final synthetic this$0:Lcom/google/android/apps/books/widget/PageTurnView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView;I)V
    .locals 0
    .parameter
    .parameter "direction"

    .prologue
    .line 980
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 981
    iput p2, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->mDirection:I

    .line 982
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const-string v7, "PageTurnView"

    const-string v6, " anchor="

    .line 987
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$500(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move v0, v2

    .line 990
    .local v0, anchorSlot:I
    :goto_0
    iget v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->mDirection:I

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1800(Lcom/google/android/apps/books/widget/PageTurnView;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 991
    const-string v2, "PageTurnView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1800(Lcom/google/android/apps/books/widget/PageTurnView;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " anchor="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1600(Lcom/google/android/apps/books/widget/PageTurnView;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    move v1, v2

    .line 993
    .local v1, leftOffset:I
    :goto_1
    sub-int v2, v0, v1

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1800(Lcom/google/android/apps/books/widget/PageTurnView;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v2, v3, :cond_3

    .line 1014
    .end local v1           #leftOffset:I
    :cond_0
    :goto_2
    return-void

    .line 987
    .end local v0           #anchorSlot:I
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$600(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v2

    move v0, v2

    goto :goto_0

    .restart local v0       #anchorSlot:I
    :cond_2
    move v1, v5

    .line 992
    goto :goto_1

    .line 999
    :cond_3
    iget v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->mDirection:I

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2000(Lcom/google/android/apps/books/widget/PageTurnView;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1000
    const-string v2, "PageTurnView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2000(Lcom/google/android/apps/books/widget/PageTurnView;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " anchor="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2000(Lcom/google/android/apps/books/widget/PageTurnView;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 1007
    :cond_4
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->mDirection:I

    invoke-static {v2, v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$202(Lcom/google/android/apps/books/widget/PageTurnView;I)I

    .line 1008
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$302(Lcom/google/android/apps/books/widget/PageTurnView;F)F

    .line 1011
    iget v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->mDirection:I

    if-ne v2, v4, :cond_0

    .line 1012
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2400(Lcom/google/android/apps/books/widget/PageTurnView;)V

    goto :goto_2
.end method
