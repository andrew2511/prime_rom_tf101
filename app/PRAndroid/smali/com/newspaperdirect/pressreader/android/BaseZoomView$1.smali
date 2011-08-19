.class Lcom/newspaperdirect/pressreader/android/BaseZoomView$1;
.super Ljava/lang/Object;
.source "BaseZoomView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/BaseZoomView;->disableOnTouchEvents(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/BaseZoomView;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/BaseZoomView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/BaseZoomView$1;->this$0:Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/BaseZoomView$1;->this$0:Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->processOnTouchEvents:Z

    .line 93
    return-void
.end method
