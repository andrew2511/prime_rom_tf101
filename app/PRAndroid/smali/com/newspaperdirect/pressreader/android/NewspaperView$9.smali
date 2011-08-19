.class Lcom/newspaperdirect/pressreader/android/NewspaperView$9;
.super Ljava/lang/Object;
.source "NewspaperView.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInCanceledListener;


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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$9;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageZoomInCanceled()V
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$9;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$8(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$9;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$9;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$6(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$10(Lcom/newspaperdirect/pressreader/android/NewspaperView;ZLcom/newspaperdirect/pressreader/android/NewspaperViewCommon;)V

    .line 312
    :cond_0
    return-void
.end method
