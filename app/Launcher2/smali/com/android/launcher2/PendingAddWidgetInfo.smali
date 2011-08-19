.class Lcom/android/launcher2/PendingAddWidgetInfo;
.super Lcom/android/launcher2/PendingAddItemInfo;
.source "PendingAddItemInfo.java"


# instance fields
.field configurationData:Landroid/os/Parcelable;

.field mimeType:Ljava/lang/String;

.field minHeight:I

.field minWidth:I


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1
    .parameter "i"
    .parameter "dataMimeType"
    .parameter "data"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/launcher2/PendingAddItemInfo;-><init>()V

    .line 43
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher2/PendingAddWidgetInfo;->itemType:I

    .line 44
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 45
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iput v0, p0, Lcom/android/launcher2/PendingAddWidgetInfo;->minWidth:I

    .line 46
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iput v0, p0, Lcom/android/launcher2/PendingAddWidgetInfo;->minHeight:I

    .line 47
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 48
    iput-object p2, p0, Lcom/android/launcher2/PendingAddWidgetInfo;->mimeType:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/android/launcher2/PendingAddWidgetInfo;->configurationData:Landroid/os/Parcelable;

    .line 51
    :cond_0
    return-void
.end method
