.class Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage$1;
.super Ljava/lang/Object;
.source "PageTurnView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->onUpdatePosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage$1;->this$1:Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage$1;->this$1:Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;

    iget-object v0, v0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$800(Lcom/google/android/apps/books/widget/PageTurnView;)V

    .line 419
    return-void
.end method
