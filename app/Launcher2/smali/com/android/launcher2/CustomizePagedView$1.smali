.class Lcom/android/launcher2/CustomizePagedView$1;
.super Ljava/lang/Object;
.source "CustomizePagedView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CustomizePagedView;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/appwidget/AppWidgetProviderInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CustomizePagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CustomizePagedView;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/launcher2/CustomizePagedView$1;->this$0:Lcom/android/launcher2/CustomizePagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/appwidget/AppWidgetProviderInfo;Landroid/appwidget/AppWidgetProviderInfo;)I
    .locals 2
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 378
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 375
    check-cast p1, Landroid/appwidget/AppWidgetProviderInfo;

    .end local p1
    check-cast p2, Landroid/appwidget/AppWidgetProviderInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/CustomizePagedView$1;->compare(Landroid/appwidget/AppWidgetProviderInfo;Landroid/appwidget/AppWidgetProviderInfo;)I

    move-result v0

    return v0
.end method
