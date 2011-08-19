.class Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory$1;
.super Landroid/os/Handler;
.source "FinskyWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory$1;->this$0:Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory$1;->this$0:Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;

    invoke-static {v0}, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->access$100(Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory$1;->this$0:Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;

    invoke-static {v1}, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->access$000(Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;)I

    move-result v1

    const v2, 0x7f0900b7

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 72
    return-void
.end method
