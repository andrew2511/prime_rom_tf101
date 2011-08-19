.class final Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider$1;
.super Ljava/lang/Thread;
.source "BookmarkThumbnailWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider;->refreshWidgets(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider$1;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 122
    iget-object v6, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider$1;->val$appContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    .line 123
    .local v5, wm:Landroid/appwidget/AppWidgetManager;
    iget-object v6, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider$1;->val$appContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3

    .line 124
    .local v3, ids:[I
    move-object v0, v3

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget v2, v0, v1

    .line 125
    .local v2, id:I
    iget-object v6, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider$1;->val$appContext:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService;->clearWidgetState(Landroid/content/Context;I)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    .end local v2           #id:I
    :cond_0
    iget-object v6, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider$1;->val$appContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider;->refreshWidgets(Landroid/content/Context;Z)V

    .line 128
    return-void
.end method
