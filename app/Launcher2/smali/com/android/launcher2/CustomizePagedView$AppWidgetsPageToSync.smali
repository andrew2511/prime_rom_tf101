.class Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;
.super Ljava/lang/Object;
.source "CustomizePagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CustomizePagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppWidgetsPageToSync"
.end annotation


# instance fields
.field public mAppWidgetBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public mAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "layout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1015
    .local p2, appWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1016
    iput-object p1, p0, Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;->mLayout:Landroid/widget/LinearLayout;

    .line 1017
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;->mAppWidgets:Ljava/util/ArrayList;

    .line 1018
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;->mAppWidgetBitmaps:Ljava/util/ArrayList;

    .line 1019
    return-void
.end method
