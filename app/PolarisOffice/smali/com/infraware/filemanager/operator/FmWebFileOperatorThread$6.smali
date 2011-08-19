.class Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$6;
.super Ljava/lang/Object;
.source "FmWebFileOperatorThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$6;->this$0:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$6;->this$0:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;

    iget-object v0, v0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_oWebEventListener:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$IWebEventListener;

    invoke-interface {v0}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$IWebEventListener;->onInitLogin()V

    .line 356
    return-void
.end method
