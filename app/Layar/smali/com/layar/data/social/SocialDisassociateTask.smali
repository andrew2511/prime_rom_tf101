.class public Lcom/layar/data/social/SocialDisassociateTask;
.super Landroid/os/AsyncTask;
.source "SocialDisassociateTask.java"

# interfaces
.implements Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;"
    }
.end annotation


# instance fields
.field private handler:Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;

.field private final mDialog:Lcom/layar/ui/SmartDialog;

.field private response:Lcom/layar/data/Response;

.field private social:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "handler"
    .parameter "social"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/layar/data/social/SocialDisassociateTask;->handler:Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;

    .line 20
    iput-object p3, p0, Lcom/layar/data/social/SocialDisassociateTask;->social:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/layar/ui/SmartDialog$Builder;

    .line 22
    const v1, 0x7f090126

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 23
    const-string v2, "%type%"

    invoke-static {p1, p3}, Lcom/layar/data/social/SocialTypes;->getSocialName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/layar/ui/SmartDialog$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/layar/ui/SmartDialog$Builder;->build()Lcom/layar/ui/SmartDialog;

    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/layar/data/social/SocialDisassociateTask;->mDialog:Lcom/layar/ui/SmartDialog;

    .line 25
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/data/social/SocialDisassociateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 29
    invoke-static {}, Lcom/layar/App;->getSocialManager()Lcom/layar/data/social/SocialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/data/social/SocialDisassociateTask;->social:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/layar/data/social/SocialManager;->unAssociate(Ljava/lang/String;Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;)V

    .line 30
    invoke-static {}, Lcom/layar/App;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/data/social/SocialDisassociateTask;->social:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/layar/data/user/UserManager;->setConnectedToSocialNetwork(Ljava/lang/String;Z)V

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleResponse(Lcom/layar/data/Response;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/layar/data/social/SocialDisassociateTask;->response:Lcom/layar/data/Response;

    .line 50
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/data/social/SocialDisassociateTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/layar/data/social/SocialDisassociateTask;->mDialog:Lcom/layar/ui/SmartDialog;

    invoke-virtual {v0}, Lcom/layar/ui/SmartDialog;->dismiss()V

    .line 44
    iget-object v0, p0, Lcom/layar/data/social/SocialDisassociateTask;->handler:Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;

    iget-object v1, p0, Lcom/layar/data/social/SocialDisassociateTask;->response:Lcom/layar/data/Response;

    invoke-interface {v0, v1}, Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;->handleResponse(Lcom/layar/data/Response;)V

    .line 45
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 37
    iget-object v0, p0, Lcom/layar/data/social/SocialDisassociateTask;->mDialog:Lcom/layar/ui/SmartDialog;

    invoke-virtual {v0}, Lcom/layar/ui/SmartDialog;->show()V

    .line 38
    return-void
.end method
