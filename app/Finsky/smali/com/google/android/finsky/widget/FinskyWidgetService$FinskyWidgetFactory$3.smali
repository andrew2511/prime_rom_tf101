.class Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory$3;
.super Ljava/lang/Object;
.source "FinskyWidgetService.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->getViewAt(I)Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;

.field final synthetic val$adjustedPosition:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory$3;->this$0:Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;

    iput p2, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory$3;->val$adjustedPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 199
    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory$3;->this$0:Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;

    invoke-static {v0}, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->access$300(Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory$3;->val$adjustedPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory$3;->this$0:Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;

    invoke-static {v0}, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;->access$400(Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory;)V

    .line 203
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/FinskyWidgetService$FinskyWidgetFactory$3;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
