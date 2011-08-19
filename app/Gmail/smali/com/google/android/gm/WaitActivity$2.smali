.class Lcom/google/android/gm/WaitActivity$2;
.super Landroid/database/DataSetObserver;
.source "WaitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/WaitActivity;->waitForLabels(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/WaitActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/WaitActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/android/gm/WaitActivity$2;->this$0:Lcom/google/android/gm/WaitActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/gm/WaitActivity$2;->this$0:Lcom/google/android/gm/WaitActivity;

    iget-object v1, p0, Lcom/google/android/gm/WaitActivity$2;->this$0:Lcom/google/android/gm/WaitActivity;

    invoke-static {v1}, Lcom/google/android/gm/WaitActivity;->access$100(Lcom/google/android/gm/WaitActivity;)Lcom/google/android/gm/provider/LabelList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/WaitActivity;->access$200(Lcom/google/android/gm/WaitActivity;Lcom/google/android/gm/provider/LabelList;Z)V

    .line 284
    return-void
.end method
