.class Lcom/google/android/gm/provider/Label$1$1;
.super Ljava/lang/Object;
.source "Label.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/provider/Label$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gm/provider/Label$1;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/Label$1;)V
    .locals 0
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/google/android/gm/provider/Label$1$1;->this$1:Lcom/google/android/gm/provider/Label$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/android/gm/provider/Label$1$1;->this$1:Lcom/google/android/gm/provider/Label$1;

    iget-object v0, v0, Lcom/google/android/gm/provider/Label$1;->this$0:Lcom/google/android/gm/provider/Label;

    invoke-static {v0}, Lcom/google/android/gm/provider/Label;->access$300(Lcom/google/android/gm/provider/Label;)V

    .line 604
    return-void
.end method
