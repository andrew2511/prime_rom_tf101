.class Lcom/asus/filemanager/dialog/DialogInfo$1$1;
.super Ljava/lang/Object;
.source "DialogInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/filemanager/dialog/DialogInfo$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/asus/filemanager/dialog/DialogInfo$1;


# direct methods
.method constructor <init>(Lcom/asus/filemanager/dialog/DialogInfo$1;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/asus/filemanager/dialog/DialogInfo$1$1;->this$1:Lcom/asus/filemanager/dialog/DialogInfo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogInfo$1$1;->this$1:Lcom/asus/filemanager/dialog/DialogInfo$1;

    iget-object v0, v0, Lcom/asus/filemanager/dialog/DialogInfo$1;->this$0:Lcom/asus/filemanager/dialog/DialogInfo;

    invoke-static {v0}, Lcom/asus/filemanager/dialog/DialogInfo;->access$700(Lcom/asus/filemanager/dialog/DialogInfo;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 193
    return-void
.end method
