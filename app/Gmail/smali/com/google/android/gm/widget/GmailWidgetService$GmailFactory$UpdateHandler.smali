.class Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;
.super Landroid/os/Handler;
.source "GmailWidgetService.java"

# interfaces
.implements Lcom/google/android/gm/provider/LabelManager$LabelResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;->this$1:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;Lcom/google/android/gm/widget/GmailWidgetService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;-><init>(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 422
    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;->this$1:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    invoke-static {v1}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->access$500(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;->this$1:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    invoke-static {v2}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->access$600(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gm/Utils;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, label:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;->this$1:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    invoke-static {v1}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->access$700(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;->this$1:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    invoke-static {v1}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->access$500(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;->this$1:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    invoke-static {v2}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->access$800(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)I

    move-result v2

    const v3, 0x7f0e007c

    invoke-virtual {v1, v2, v3}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 430
    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;->this$1:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    invoke-static {v1}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->access$500(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;->this$1:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    invoke-static {v2}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->access$600(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;->this$1:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    invoke-static {v3}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->access$700(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p0}, Lcom/google/android/gm/provider/LabelManager;->getLabelAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gm/provider/LabelManager$LabelResultCallback;)V

    .line 436
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;->this$1:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    invoke-static {v1, v0}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->access$702(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;Ljava/lang/String;)Ljava/lang/String;

    .line 434
    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;->this$1:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    invoke-static {v1}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->access$900(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)V

    goto :goto_0
.end method

.method public onLabelResult(Lcom/google/android/gm/provider/Label;)V
    .locals 4
    .parameter "label"

    .prologue
    .line 440
    if-nez p1, :cond_0

    .line 454
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;->this$1:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getNumConversations()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->access$1002(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;I)I

    .line 445
    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;->this$1:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    invoke-static {v1}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->access$1100(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)V

    .line 447
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;->this$1:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    invoke-static {v1}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->access$500(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040033

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 449
    .local v0, remoteViews:Landroid/widget/RemoteViews;
    const v1, 0x7f0e008d

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 450
    const v1, 0x7f0e008f

    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;->this$1:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    invoke-static {v2}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->access$500(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getNumUnreadConversations()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/gm/Utils;->getUnreadCountString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 452
    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;->this$1:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    invoke-static {v1}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->access$500(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$UpdateHandler;->this$1:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    invoke-static {v2}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->access$800(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_0
.end method
