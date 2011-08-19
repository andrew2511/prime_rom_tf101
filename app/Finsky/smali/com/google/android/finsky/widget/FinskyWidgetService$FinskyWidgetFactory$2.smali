.class Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory$2;
.super Ljava/lang/Object;
.source "FinskyWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->onErrorResponse(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
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
    .line 118
    iput-object p1, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory$2;->this$0:Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 121
    const-string v0, "Retrying"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory$2;->this$0:Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;

    invoke-static {v0}, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->access$200(Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;)Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeList;->retryLoadItems(Z)V

    .line 123
    return-void
.end method
