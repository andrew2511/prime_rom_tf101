.class Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$1;
.super Ljava/lang/Object;
.source "SinglePageNewspaperView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->setCurrentPage(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$1;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$1;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->processOnTouchEvents:Z

    .line 136
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$1;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$16(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)V

    .line 137
    return-void
.end method
