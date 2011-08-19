.class Lcom/newspaperdirect/pressreader/android/NewspaperView$3;
.super Ljava/lang/Object;
.source "NewspaperView.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/NewspaperView;->initNewspaperView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/NewspaperView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageClicked(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V
    .locals 3
    .parameter "page"

    .prologue
    const/4 v2, 0x1

    .line 270
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$8(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$6(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$9(Lcom/newspaperdirect/pressreader/android/NewspaperView;ZLcom/newspaperdirect/pressreader/android/NewspaperViewCommon;)V

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$3;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$6(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$10(Lcom/newspaperdirect/pressreader/android/NewspaperView;ZLcom/newspaperdirect/pressreader/android/NewspaperViewCommon;)V

    goto :goto_0
.end method
