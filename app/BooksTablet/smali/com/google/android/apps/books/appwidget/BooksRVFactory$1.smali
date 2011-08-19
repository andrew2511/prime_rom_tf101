.class Lcom/google/android/apps/books/appwidget/BooksRVFactory$1;
.super Landroid/database/ContentObserver;
.source "BooksAppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/appwidget/BooksRVFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/appwidget/BooksRVFactory;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/appwidget/BooksRVFactory;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory$1;->this$0:Lcom/google/android/apps/books/appwidget/BooksRVFactory;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfUpdate"

    .prologue
    const-string v2, "BooksAppWidget"

    .line 69
    const-string v1, "BooksAppWidget"

    const/4 v1, 0x3

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "BooksAppWidget"

    const-string v1, "onChange() triggered from provider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory$1;->this$0:Lcom/google/android/apps/books/appwidget/BooksRVFactory;

    invoke-static {v1}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->access$000(Lcom/google/android/apps/books/appwidget/BooksRVFactory;)Ljava/util/ArrayList;

    move-result-object v0

    .line 76
    .local v0, volumeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory$1;->this$0:Lcom/google/android/apps/books/appwidget/BooksRVFactory;

    invoke-static {v1}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->access$100(Lcom/google/android/apps/books/appwidget/BooksRVFactory;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory$1;->this$0:Lcom/google/android/apps/books/appwidget/BooksRVFactory;

    invoke-static {v1}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->access$300(Lcom/google/android/apps/books/appwidget/BooksRVFactory;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory$1;->this$0:Lcom/google/android/apps/books/appwidget/BooksRVFactory;

    invoke-static {v2}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->access$200(Lcom/google/android/apps/books/appwidget/BooksRVFactory;)[I

    move-result-object v2

    const v3, 0x7f0e0012

    invoke-virtual {v1, v2, v3}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 82
    :cond_1
    return-void
.end method
