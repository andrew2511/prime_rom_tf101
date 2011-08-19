.class public Lcom/google/android/finsky/widget/FinskyWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "FinskyWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2
    .parameter "intent"

    .prologue
    .line 41
    new-instance v0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/FinskyWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
