.class Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$GmailFactoryContentObserver;
.super Landroid/database/ContentObserver;
.source "GmailWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GmailFactoryContentObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$GmailFactoryContentObserver;->this$1:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    .line 72
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 73
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 77
    const-string v0, "Gmail"

    const-string v1, "notifying AppWidgetManager of widget change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$GmailFactoryContentObserver;->this$1:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    invoke-static {v0}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->access$000(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)V

    .line 79
    return-void
.end method
