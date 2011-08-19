.class public Lcom/layar/data/social/SocialAssociateTask;
.super Landroid/os/AsyncTask;
.source "SocialAssociateTask.java"

# interfaces
.implements Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;"
    }
.end annotation


# instance fields
.field private handler:Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;

.field private final mDialog:Lcom/layar/ui/SmartDialog;

.field private response:Lcom/layar/data/social/SocialAssociateResponce;

.field private social:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "handler"
    .parameter "social"

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/layar/data/social/SocialAssociateTask;->handler:Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;

    .line 19
    iput-object p3, p0, Lcom/layar/data/social/SocialAssociateTask;->social:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/layar/ui/SmartDialog$Builder;

    .line 21
    const v1, 0x7f090123

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/layar/ui/SmartDialog$Builder;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0}, Lcom/layar/ui/SmartDialog$Builder;->build()Lcom/layar/ui/SmartDialog;

    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/layar/data/social/SocialAssociateTask;->mDialog:Lcom/layar/ui/SmartDialog;

    .line 22
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/data/social/SocialAssociateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "arg0"

    .prologue
    .line 26
    invoke-static {}, Lcom/layar/App;->getSocialManager()Lcom/layar/data/social/SocialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/data/social/SocialAssociateTask;->social:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/layar/data/social/SocialManager;->associate(Ljava/lang/String;Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;)V

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleResponse(Lcom/layar/data/social/SocialAssociateResponce;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/layar/data/social/SocialAssociateTask;->response:Lcom/layar/data/social/SocialAssociateResponce;

    .line 47
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/data/social/SocialAssociateTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/layar/data/social/SocialAssociateTask;->mDialog:Lcom/layar/ui/SmartDialog;

    invoke-virtual {v0}, Lcom/layar/ui/SmartDialog;->dismiss()V

    .line 40
    iget-object v0, p0, Lcom/layar/data/social/SocialAssociateTask;->handler:Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/layar/data/social/SocialAssociateTask;->handler:Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;

    iget-object v1, p0, Lcom/layar/data/social/SocialAssociateTask;->response:Lcom/layar/data/social/SocialAssociateResponce;

    invoke-interface {v0, v1}, Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;->handleResponse(Lcom/layar/data/social/SocialAssociateResponce;)V

    .line 42
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 33
    iget-object v0, p0, Lcom/layar/data/social/SocialAssociateTask;->mDialog:Lcom/layar/ui/SmartDialog;

    invoke-virtual {v0}, Lcom/layar/ui/SmartDialog;->show()V

    .line 34
    return-void
.end method
