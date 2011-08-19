.class Lcom/newspaperdirect/pressreader/android/NewOrder$8;
.super Ljava/lang/Object;
.source "NewOrder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/NewOrder;->updateTable(Landroid/widget/TableLayout;Ljava/util/Calendar;)V
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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$8;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$8;->this$0:Lcom/newspaperdirect/pressreader/android/NewOrder;

    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-static {v0, p1}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$10(Lcom/newspaperdirect/pressreader/android/NewOrder;Landroid/widget/Button;)V

    .line 339
    return-void
.end method
