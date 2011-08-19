.class Lcom/android/launcher2/AllApps3D$AAMessage$1;
.super Ljava/lang/Object;
.source "AllApps3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AllApps3D$AAMessage;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/AllApps3D$AAMessage;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/AllApps3D$AAMessage;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 914
    iput-object p1, p0, Lcom/android/launcher2/AllApps3D$AAMessage$1;->this$1:Lcom/android/launcher2/AllApps3D$AAMessage;

    iput-boolean p2, p0, Lcom/android/launcher2/AllApps3D$AAMessage$1;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 916
    iget-boolean v0, p0, Lcom/android/launcher2/AllApps3D$AAMessage$1;->val$visible:Z

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D$AAMessage$1;->this$1:Lcom/android/launcher2/AllApps3D$AAMessage;

    iget-object v0, v0, Lcom/android/launcher2/AllApps3D$AAMessage;->this$0:Lcom/android/launcher2/AllApps3D;

    invoke-static {v0}, Lcom/android/launcher2/AllApps3D;->access$1300(Lcom/android/launcher2/AllApps3D;)V

    .line 921
    :goto_0
    return-void

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D$AAMessage$1;->this$1:Lcom/android/launcher2/AllApps3D$AAMessage;

    iget-object v0, v0, Lcom/android/launcher2/AllApps3D$AAMessage;->this$0:Lcom/android/launcher2/AllApps3D;

    invoke-static {v0}, Lcom/android/launcher2/AllApps3D;->access$1400(Lcom/android/launcher2/AllApps3D;)V

    goto :goto_0
.end method
