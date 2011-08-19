.class Lcom/asus/cm/fumoHandler/DefaultFumoHandler$1;
.super Ljava/lang/Thread;
.source "DefaultFumoHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->executeUpdate(Ljava/lang/String;Lcom/asus/dmlib/vdm/fumo/VdmFumo;)Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;


# direct methods
.method constructor <init>(Lcom/asus/cm/fumoHandler/DefaultFumoHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler$1;->this$0:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 165
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 166
    iget-object v1, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler$1;->this$0:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler$1;->this$0:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    iget-object v3, v3, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/cm/CMService;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mPowerOffProgressDialog:Landroid/app/ProgressDialog;

    .line 167
    iget-object v1, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler$1;->this$0:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    iget-object v1, v1, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mPowerOffProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler$1;->this$0:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    iget-object v2, v2, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/cm/CMService;

    const v3, 0x7f06001a

    invoke-virtual {v2, v3}, Lcom/asus/cm/CMService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v1, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler$1;->this$0:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    iget-object v1, v1, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mPowerOffProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler$1;->this$0:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    iget-object v2, v2, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/cm/CMService;

    const v3, 0x7f06001b

    invoke-virtual {v2, v3}, Lcom/asus/cm/CMService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v1, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler$1;->this$0:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    iget-object v1, v1, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mPowerOffProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 170
    iget-object v1, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler$1;->this$0:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    iget-object v1, v1, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mPowerOffProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 171
    iget-object v1, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler$1;->this$0:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    iget-object v1, v1, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mPowerOffProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 172
    iget-object v1, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler$1;->this$0:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    iget-object v1, v1, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {v1}, Lcom/asus/cm/CMService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler$1;->this$0:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    iget-object v1, v1, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mPowerOffProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/asus/cm/fumoHandler/DefaultFumoHandler$1;->this$0:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    iget-object v1, v1, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->mPowerOffProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 177
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 178
    .local v0, l:Landroid/os/Looper;
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 179
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 180
    return-void
.end method
