.class Lcom/google/android/finsky/layout/MinTimeThumbnailListener$1;
.super Ljava/lang/Object;
.source "MinTimeThumbnailListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/MinTimeThumbnailListener;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/MinTimeThumbnailListener;

.field final synthetic val$bitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/MinTimeThumbnailListener;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/finsky/layout/MinTimeThumbnailListener$1;->this$0:Lcom/google/android/finsky/layout/MinTimeThumbnailListener;

    iput-object p2, p0, Lcom/google/android/finsky/layout/MinTimeThumbnailListener$1;->val$bitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/finsky/layout/MinTimeThumbnailListener$1;->this$0:Lcom/google/android/finsky/layout/MinTimeThumbnailListener;

    iget-object v1, p0, Lcom/google/android/finsky/layout/MinTimeThumbnailListener$1;->val$bitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/MinTimeThumbnailListener;->access$001(Lcom/google/android/finsky/layout/MinTimeThumbnailListener;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    .line 39
    return-void
.end method
