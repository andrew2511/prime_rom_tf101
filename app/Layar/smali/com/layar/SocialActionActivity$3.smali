.class Lcom/layar/SocialActionActivity$3;
.super Ljava/lang/Object;
.source "SocialActionActivity.java"

# interfaces
.implements Lcom/layar/data/user/UserManager$LoginHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/SocialActionActivity;->getUserSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/SocialActionActivity;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/layar/SocialActionActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/SocialActionActivity$3;->this$0:Lcom/layar/SocialActionActivity;

    iput-object p2, p0, Lcom/layar/SocialActionActivity$3;->val$dialog:Landroid/app/ProgressDialog;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/SocialActionActivity$3;)Lcom/layar/SocialActionActivity;
    .locals 1
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcom/layar/SocialActionActivity$3;->this$0:Lcom/layar/SocialActionActivity;

    return-object v0
.end method


# virtual methods
.method public handleResponse(Lcom/layar/data/user/LoginResponse;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/layar/SocialActionActivity$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 264
    iget-object v0, p0, Lcom/layar/SocialActionActivity$3;->this$0:Lcom/layar/SocialActionActivity;

    invoke-static {v0}, Lcom/layar/SocialActionActivity;->access$6(Lcom/layar/SocialActionActivity;)Lcom/layar/ActivityHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/layar/ActivityHelper;->handleResponse(Lcom/layar/data/Response;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-virtual {p1}, Lcom/layar/data/user/LoginResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/layar/SocialActionActivity$3;->this$0:Lcom/layar/SocialActionActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 269
    iget-object v1, p0, Lcom/layar/SocialActionActivity$3;->this$0:Lcom/layar/SocialActionActivity;

    const v2, 0x7f090139

    invoke-virtual {v1, v2}, Lcom/layar/SocialActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 270
    const-string v2, "%socialname%"

    iget-object v3, p0, Lcom/layar/SocialActionActivity$3;->this$0:Lcom/layar/SocialActionActivity;

    iget-object v4, p0, Lcom/layar/SocialActionActivity$3;->this$0:Lcom/layar/SocialActionActivity;

    invoke-static {v4}, Lcom/layar/SocialActionActivity;->access$0(Lcom/layar/SocialActionActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/layar/data/social/SocialTypes;->getSocialName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 269
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 271
    const v1, 0x7f090016

    new-instance v2, Lcom/layar/SocialActionActivity$3$1;

    invoke-direct {v2, p0}, Lcom/layar/SocialActionActivity$3$1;-><init>(Lcom/layar/SocialActionActivity$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/layar/SocialActionActivity$3;->this$0:Lcom/layar/SocialActionActivity;

    .line 284
    iget-object v1, p0, Lcom/layar/SocialActionActivity$3;->this$0:Lcom/layar/SocialActionActivity;

    const v2, 0x7f09013a

    invoke-virtual {v1, v2}, Lcom/layar/SocialActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 285
    const-string v2, "%socialname%"

    iget-object v3, p0, Lcom/layar/SocialActionActivity$3;->this$0:Lcom/layar/SocialActionActivity;

    iget-object v4, p0, Lcom/layar/SocialActionActivity$3;->this$0:Lcom/layar/SocialActionActivity;

    invoke-static {v4}, Lcom/layar/SocialActionActivity;->access$0(Lcom/layar/SocialActionActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/layar/data/social/SocialTypes;->getSocialName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 284
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 286
    new-instance v2, Lcom/layar/SocialActionActivity$3$2;

    invoke-direct {v2, p0}, Lcom/layar/SocialActionActivity$3$2;-><init>(Lcom/layar/SocialActionActivity$3;)V

    .line 283
    invoke-static {v0, v1, v2}, Lcom/layar/util/Util;->showAlert(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
