.class Lcom/android/launcher2/AllApps3D$AAMessage;
.super Landroid/renderscript/RenderScript$RSMessageHandler;
.source "AllApps3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AllApps3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AAMessage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AllApps3D;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AllApps3D;)V
    .locals 0
    .parameter

    .prologue
    .line 904
    iput-object p1, p0, Lcom/android/launcher2/AllApps3D$AAMessage;->this$0:Lcom/android/launcher2/AllApps3D;

    invoke-direct {p0}, Landroid/renderscript/RenderScript$RSMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x4780

    .line 906
    invoke-static {}, Lcom/android/launcher2/AllApps3D;->access$1000()Lcom/android/launcher2/AllApps3D$RolloRS;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/AllApps3D$AAMessage;->mData:[I

    aget v3, v3, v6

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-static {v2, v3}, Lcom/android/launcher2/AllApps3D$RolloRS;->access$302(Lcom/android/launcher2/AllApps3D$RolloRS;F)F

    .line 907
    iget-object v2, p0, Lcom/android/launcher2/AllApps3D$AAMessage;->this$0:Lcom/android/launcher2/AllApps3D;

    iget-object v3, p0, Lcom/android/launcher2/AllApps3D$AAMessage;->mData:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-static {v2, v3}, Lcom/android/launcher2/AllApps3D;->access$1102(Lcom/android/launcher2/AllApps3D;F)F

    .line 909
    iget-object v2, p0, Lcom/android/launcher2/AllApps3D$AAMessage;->this$0:Lcom/android/launcher2/AllApps3D;

    invoke-virtual {v2}, Lcom/android/launcher2/AllApps3D;->isVisible()Z

    move-result v0

    .line 910
    .local v0, lastVisible:Z
    iget-object v2, p0, Lcom/android/launcher2/AllApps3D$AAMessage;->this$0:Lcom/android/launcher2/AllApps3D;

    iget-object v3, p0, Lcom/android/launcher2/AllApps3D$AAMessage;->mData:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-static {v2, v3}, Lcom/android/launcher2/AllApps3D;->access$1202(Lcom/android/launcher2/AllApps3D;F)F

    .line 912
    iget-object v2, p0, Lcom/android/launcher2/AllApps3D$AAMessage;->this$0:Lcom/android/launcher2/AllApps3D;

    invoke-virtual {v2}, Lcom/android/launcher2/AllApps3D;->isVisible()Z

    move-result v1

    .line 913
    .local v1, visible:Z
    if-eq v1, v0, :cond_0

    .line 914
    iget-object v2, p0, Lcom/android/launcher2/AllApps3D$AAMessage;->this$0:Lcom/android/launcher2/AllApps3D;

    new-instance v3, Lcom/android/launcher2/AllApps3D$AAMessage$1;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher2/AllApps3D$AAMessage$1;-><init>(Lcom/android/launcher2/AllApps3D$AAMessage;Z)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AllApps3D;->post(Ljava/lang/Runnable;)Z

    .line 925
    :cond_0
    invoke-static {v6}, Lcom/android/launcher2/AllApps3D;->access$1502(Z)Z

    .line 926
    return-void
.end method
