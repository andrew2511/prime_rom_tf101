.class public Lcom/layar/ShareSocialActivity$ShareSocialTask;
.super Landroid/os/AsyncTask;
.source "ShareSocialActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ShareSocialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ShareSocialTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;",
        "Landroid/content/DialogInterface$OnCancelListener;"
    }
.end annotation


# instance fields
.field dialog:Landroid/app/ProgressDialog;

.field errors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field success:Ljava/lang/String;

.field final synthetic this$0:Lcom/layar/ShareSocialActivity;


# direct methods
.method public constructor <init>(Lcom/layar/ShareSocialActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 628
    iput-object p1, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->this$0:Lcom/layar/ShareSocialActivity;

    .line 626
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 627
    iput-object p2, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$2(Lcom/layar/ShareSocialActivity$ShareSocialTask;)Lcom/layar/ShareSocialActivity;
    .locals 1
    .parameter

    .prologue
    .line 619
    iget-object v0, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->this$0:Lcom/layar/ShareSocialActivity;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/ShareSocialActivity$ShareSocialTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x0

    .line 647
    iget-object v6, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-static {v6}, Lcom/layar/ShareSocialActivity;->access$0(Lcom/layar/ShareSocialActivity;)Lcom/layar/adapters/SocialsAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/layar/adapters/SocialsAdapter;->getChecked()Ljava/util/ArrayList;

    move-result-object v2

    .line 649
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "email"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 650
    const-string v6, "email"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 651
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move-object v6, v8

    .line 687
    :goto_0
    return-object v6

    .line 654
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 656
    .local v5, services:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_5

    .line 658
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 662
    new-instance v0, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;

    invoke-direct {v0}, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;-><init>()V

    .line 663
    .local v0, data:Lcom/layar/data/social/SocialCommunicator$ShareSocialData;
    iget-object v6, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-static {v6}, Lcom/layar/ShareSocialActivity;->access$1(Lcom/layar/ShareSocialActivity;)Lcom/layar/data/layer/Layer20;

    move-result-object v6

    iput-object v6, v0, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->layer:Lcom/layar/data/layer/Layer20;

    .line 664
    iget-object v6, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-static {v6}, Lcom/layar/ShareSocialActivity;->access$2(Lcom/layar/ShareSocialActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 665
    .local v3, message:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 666
    iput-object v3, v0, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->message:Ljava/lang/String;

    .line 667
    :cond_3
    iget-object v6, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-static {v6}, Lcom/layar/ShareSocialActivity;->access$3(Lcom/layar/ShareSocialActivity;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 668
    iget-object v6, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-static {v6}, Lcom/layar/ShareSocialActivity;->access$4(Lcom/layar/ShareSocialActivity;)Landroid/location/Location;

    move-result-object v6

    iput-object v6, v0, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->location:Landroid/location/Location;

    .line 669
    :cond_4
    iget-object v6, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-static {v6}, Lcom/layar/ShareSocialActivity;->access$5(Lcom/layar/ShareSocialActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->locationFriendlyName:Ljava/lang/String;

    .line 670
    iget-object v6, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-static {v6}, Lcom/layar/ShareSocialActivity;->access$6(Lcom/layar/ShareSocialActivity;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->filePath:Ljava/lang/String;

    .line 671
    iget-object v6, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-static {v6}, Lcom/layar/ShareSocialActivity;->access$7(Lcom/layar/ShareSocialActivity;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->title:Ljava/lang/String;

    .line 672
    iget-object v6, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-static {v6}, Lcom/layar/ShareSocialActivity;->access$8(Lcom/layar/ShareSocialActivity;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->description:Ljava/lang/String;

    .line 673
    iget-object v6, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-static {v6}, Lcom/layar/ShareSocialActivity;->access$9(Lcom/layar/ShareSocialActivity;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->icon:Ljava/lang/String;

    .line 674
    iget-object v6, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-static {v6}, Lcom/layar/ShareSocialActivity;->access$10(Lcom/layar/ShareSocialActivity;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/layar/data/social/SocialCommunicator$ShareSocialData;->link:Ljava/lang/String;

    .line 677
    iget-object v6, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-static {v6}, Lcom/layar/ShareSocialActivity;->access$11(Lcom/layar/ShareSocialActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lcom/layar/data/social/SocialCommunicator;->shareLayerOnServices(Ljava/lang/String;Ljava/lang/String;Lcom/layar/data/social/SocialCommunicator$ShareSocialData;)Lcom/layar/data/social/ShareLayerResponse;

    move-result-object v4

    .line 678
    .local v4, response:Lcom/layar/data/social/ShareLayerResponse;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/layar/data/social/ShareLayerResponse;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 679
    iget-object v6, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->this$0:Lcom/layar/ShareSocialActivity;

    const v7, 0x7f09009b

    invoke-virtual {v6, v7}, Lcom/layar/ShareSocialActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->success:Ljava/lang/String;

    .line 686
    :goto_2
    iget-object v6, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-static {v6}, Lcom/layar/ShareSocialActivity;->access$0(Lcom/layar/ShareSocialActivity;)Lcom/layar/adapters/SocialsAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/layar/adapters/SocialsAdapter;->rememberPrefered()V

    move-object v6, v8

    .line 687
    goto/16 :goto_0

    .line 657
    .end local v0           #data:Lcom/layar/data/social/SocialCommunicator$ShareSocialData;
    .end local v3           #message:Ljava/lang/String;
    .end local v4           #response:Lcom/layar/data/social/ShareLayerResponse;
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 680
    .restart local v0       #data:Lcom/layar/data/social/SocialCommunicator$ShareSocialData;
    .restart local v3       #message:Ljava/lang/String;
    .restart local v4       #response:Lcom/layar/data/social/ShareLayerResponse;
    :cond_6
    invoke-virtual {v4}, Lcom/layar/data/social/ShareLayerResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 681
    invoke-virtual {v4}, Lcom/layar/data/social/ShareLayerResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->success:Ljava/lang/String;

    goto :goto_2

    .line 683
    :cond_7
    iget-object v6, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->this$0:Lcom/layar/ShareSocialActivity;

    const v7, 0x7f09009c

    invoke-virtual {v6, v7}, Lcom/layar/ShareSocialActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->success:Ljava/lang/String;

    goto :goto_2
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 641
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/layar/ShareSocialActivity$ShareSocialTask;->cancel(Z)Z

    .line 642
    iget-object v0, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-virtual {v0}, Lcom/layar/ShareSocialActivity;->finish()V

    .line 643
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/ShareSocialActivity$ShareSocialTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 692
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 693
    iget-object v0, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 694
    iget-object v0, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-virtual {v0}, Lcom/layar/ShareSocialActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    :goto_0
    return-void

    .line 697
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 698
    iget-object v1, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->success:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 699
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 700
    const v1, 0x7f090016

    .line 701
    new-instance v2, Lcom/layar/ShareSocialActivity$ShareSocialTask$1;

    invoke-direct {v2, p0}, Lcom/layar/ShareSocialActivity$ShareSocialTask$1;-><init>(Lcom/layar/ShareSocialActivity$ShareSocialTask;)V

    .line 700
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 706
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 632
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->dialog:Landroid/app/ProgressDialog;

    .line 633
    iget-object v0, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->this$0:Lcom/layar/ShareSocialActivity;

    invoke-virtual {v1}, Lcom/layar/ShareSocialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 634
    iget-object v0, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 635
    iget-object v0, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 636
    iget-object v0, p0, Lcom/layar/ShareSocialActivity$ShareSocialTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 637
    return-void
.end method
