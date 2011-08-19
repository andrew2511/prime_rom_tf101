.class Lcom/amazon/android/widget/SearchViewWrapper$3;
.super Ljava/lang/Object;
.source "SearchViewWrapper.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/widget/SearchViewWrapper;->setOnCloseListener(Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/widget/SearchViewWrapper;

.field final synthetic val$listener:Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;


# direct methods
.method constructor <init>(Lcom/amazon/android/widget/SearchViewWrapper;Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/amazon/android/widget/SearchViewWrapper$3;->this$0:Lcom/amazon/android/widget/SearchViewWrapper;

    iput-object p2, p0, Lcom/amazon/android/widget/SearchViewWrapper$3;->val$listener:Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper$3;->val$listener:Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;

    invoke-interface {v0}, Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;->onClose()Z

    move-result v0

    return v0
.end method
