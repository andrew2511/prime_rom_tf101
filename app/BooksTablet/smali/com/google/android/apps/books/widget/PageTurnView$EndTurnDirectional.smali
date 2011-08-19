.class Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;
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
    name = "EndTurnDirectional"
.end annotation


# instance fields
.field private final mDirection:I

.field final synthetic this$0:Lcom/google/android/apps/books/widget/PageTurnView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView;I)V
    .locals 0
    .parameter
    .parameter "direction"

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1100
    iput p2, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;->mDirection:I

    .line 1101
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-string v1, "PageTurnView"

    .line 1105
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$100(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnRS;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1106
    const-string v0, "PageTurnView"

    const-string v0, "missing mRenderScript, exiting EndTurnDirectional early"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$302(Lcom/google/android/apps/books/widget/PageTurnView;F)F

    .line 1108
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$202(Lcom/google/android/apps/books/widget/PageTurnView;I)I

    .line 1122
    :cond_0
    :goto_0
    return-void

    .line 1111
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$200(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1113
    const-string v0, "PageTurnView"

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    const-string v0, "PageTurnView"

    const-string v0, "EndTurnDirectional.run() early exit: Not turning"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1119
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$302(Lcom/google/android/apps/books/widget/PageTurnView;F)F

    .line 1120
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;->mDirection:I

    invoke-static {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$202(Lcom/google/android/apps/books/widget/PageTurnView;I)I

    .line 1121
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$100(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnRS;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;->mDirection:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnRS;->finishOpening(I)V

    goto :goto_0
.end method
