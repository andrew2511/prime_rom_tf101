.class Lcom/google/android/gm/provider/Gmail$LabelMap$1;
.super Ljava/lang/Object;
.source "Gmail.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/provider/Gmail$LabelMap;->init(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/provider/Gmail$LabelMap;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/Gmail$LabelMap;)V
    .locals 0
    .parameter

    .prologue
    .line 1935
    iput-object p1, p0, Lcom/google/android/gm/provider/Gmail$LabelMap$1;->this$0:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap$1;->this$0:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->access$400(Lcom/google/android/gm/provider/Gmail$LabelMap;)V

    .line 1938
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap$1;->this$0:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->access$500(Lcom/google/android/gm/provider/Gmail$LabelMap;)V

    .line 1939
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap$1;->this$0:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->notifyObservers()V

    .line 1940
    return-void
.end method
