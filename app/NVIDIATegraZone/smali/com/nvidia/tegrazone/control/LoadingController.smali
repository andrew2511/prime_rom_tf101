.class public Lcom/nvidia/tegrazone/control/LoadingController;
.super Ljava/lang/Object;
.source "LoadingController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static instance:Lcom/nvidia/tegrazone/control/LoadingController;


# instance fields
.field public pbarDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/nvidia/tegrazone/control/LoadingController;->instance:Lcom/nvidia/tegrazone/control/LoadingController;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/nvidia/tegrazone/control/LoadingController;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/nvidia/tegrazone/control/LoadingController;->instance:Lcom/nvidia/tegrazone/control/LoadingController;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/nvidia/tegrazone/control/LoadingController;

    invoke-direct {v0}, Lcom/nvidia/tegrazone/control/LoadingController;-><init>()V

    sput-object v0, Lcom/nvidia/tegrazone/control/LoadingController;->instance:Lcom/nvidia/tegrazone/control/LoadingController;

    .line 24
    :cond_0
    sget-object v0, Lcom/nvidia/tegrazone/control/LoadingController;->instance:Lcom/nvidia/tegrazone/control/LoadingController;

    return-object v0
.end method


# virtual methods
.method public hideDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/control/LoadingController;->pbarDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nvidia/tegrazone/control/LoadingController;->pbarDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/nvidia/tegrazone/control/LoadingController;->pbarDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nvidia/tegrazone/control/LoadingController;->pbarDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 52
    .local v0, e:Ljava/lang/Exception;
    iput-object v2, p0, Lcom/nvidia/tegrazone/control/LoadingController;->pbarDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/control/LoadingController;->pbarDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/nvidia/tegrazone/control/LoadingController;->pbarDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nvidia/tegrazone/control/LoadingController;->pbarDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 64
    .local v0, e:Ljava/lang/Exception;
    iput-object v2, p0, Lcom/nvidia/tegrazone/control/LoadingController;->pbarDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method public showDialog(Landroid/app/Activity;)V
    .locals 5
    .parameter "a"

    .prologue
    const/4 v4, 0x1

    .line 29
    iget-object v0, p0, Lcom/nvidia/tegrazone/control/LoadingController;->pbarDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 30
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/control/LoadingController;->pbarDialog:Landroid/app/ProgressDialog;

    .line 31
    iget-object v0, p0, Lcom/nvidia/tegrazone/control/LoadingController;->pbarDialog:Landroid/app/ProgressDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/nvidia/tegrazone/control/LoadingController;->pbarDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 33
    iget-object v0, p0, Lcom/nvidia/tegrazone/control/LoadingController;->pbarDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 34
    iget-object v0, p0, Lcom/nvidia/tegrazone/control/LoadingController;->pbarDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 35
    iget-object v0, p0, Lcom/nvidia/tegrazone/control/LoadingController;->pbarDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/control/LoadingController;->pbarDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nvidia/tegrazone/control/LoadingController;->pbarDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/nvidia/tegrazone/control/LoadingController;->pbarDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 41
    :cond_1
    return-void
.end method
