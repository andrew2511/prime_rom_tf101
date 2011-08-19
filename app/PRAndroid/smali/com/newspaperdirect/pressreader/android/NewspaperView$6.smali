.class Lcom/newspaperdirect/pressreader/android/NewspaperView$6;
.super Ljava/lang/Object;
.source "NewspaperView.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageDoubleClickedListener;


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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$6;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageDoubleClicked(Lcom/newspaperdirect/pressreader/android/core/layout/Page;FF)V
    .locals 1
    .parameter "page"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$6;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0, p1, p2, p3}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$13(Lcom/newspaperdirect/pressreader/android/NewspaperView;Lcom/newspaperdirect/pressreader/android/core/layout/Page;FF)V

    .line 288
    return-void
.end method
