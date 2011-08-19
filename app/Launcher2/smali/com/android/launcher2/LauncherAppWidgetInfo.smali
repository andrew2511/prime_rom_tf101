.class Lcom/android/launcher2/LauncherAppWidgetInfo;
.super Lcom/android/launcher2/ItemInfo;
.source "LauncherAppWidgetInfo.java"


# instance fields
.field appWidgetId:I

.field hostView:Landroid/appwidget/AppWidgetHostView;

.field minHeight:I

.field minWidth:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "appWidgetId"

    .prologue
    const/4 v0, -0x1

    .line 64
    invoke-direct {p0}, Lcom/android/launcher2/ItemInfo;-><init>()V

    .line 37
    iput v0, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    .line 42
    iput v0, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->minWidth:I

    .line 43
    iput v0, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->minHeight:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 65
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->itemType:I

    .line 66
    iput p1, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    .line 67
    return-void
.end method


# virtual methods
.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/android/launcher2/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 72
    const-string v0, "appWidgetId"

    iget v1, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppWidget(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/android/launcher2/ItemInfo;->unbind()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 84
    return-void
.end method
