.class Lcom/google/android/apps/books/appwidget/BooksRVFactory$2;
.super Ljava/lang/Object;
.source "BooksAppWidgetService.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


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
.method constructor <init>(Lcom/google/android/apps/books/appwidget/BooksRVFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory$2;->this$0:Lcom/google/android/apps/books/appwidget/BooksRVFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const-string v1, "BooksAppWidget"

    .line 91
    invoke-static {p2}, Lcom/google/android/apps/books/preference/LocalPreferences;->isAccountKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const-string v0, "BooksAppWidget"

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "BooksAppWidget"

    const-string v0, "onSharedPreferenceChanged() triggered"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory$2;->this$0:Lcom/google/android/apps/books/appwidget/BooksRVFactory;

    invoke-static {v0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->access$400(Lcom/google/android/apps/books/appwidget/BooksRVFactory;)V

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory$2;->this$0:Lcom/google/android/apps/books/appwidget/BooksRVFactory;

    invoke-static {v0}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->access$300(Lcom/google/android/apps/books/appwidget/BooksRVFactory;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory$2;->this$0:Lcom/google/android/apps/books/appwidget/BooksRVFactory;

    invoke-static {v1}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->access$200(Lcom/google/android/apps/books/appwidget/BooksRVFactory;)[I

    move-result-object v1

    const v2, 0x7f0e0012

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 104
    :cond_1
    return-void
.end method
