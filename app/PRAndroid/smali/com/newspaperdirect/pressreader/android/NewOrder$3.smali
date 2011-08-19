.class Lcom/newspaperdirect/pressreader/android/NewOrder$3;
.super Ljava/lang/Object;
.source "NewOrder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/NewOrder;->updateViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/NewOrder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$3;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$3;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/NewOrder;->setResult(I)V

    .line 144
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$3;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->finish()V

    .line 145
    return-void
.end method
