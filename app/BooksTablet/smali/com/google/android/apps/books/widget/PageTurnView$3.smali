.class Lcom/google/android/apps/books/widget/PageTurnView$3;
.super Ljava/lang/Object;
.source "PageTurnView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/widget/PageTurnView;->serviceQueue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/widget/PageTurnView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView;)V
    .locals 0
    .parameter

    .prologue
    .line 949
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView$3;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$3;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$800(Lcom/google/android/apps/books/widget/PageTurnView;)V

    .line 953
    return-void
.end method
