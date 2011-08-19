.class public Lcom/google/android/music/tutorial/TutorialAccountActivity$GetAuthTokenCallback;
.super Ljava/lang/Object;
.source "TutorialAccountActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/tutorial/TutorialAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetAuthTokenCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field final synthetic this$0:Lcom/google/android/music/tutorial/TutorialAccountActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/music/tutorial/TutorialAccountActivity;Landroid/accounts/Account;)V
    .locals 0
    .parameter
    .parameter "account"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity$GetAuthTokenCallback;->this$0:Lcom/google/android/music/tutorial/TutorialAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p2, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity$GetAuthTokenCallback;->mAccount:Landroid/accounts/Account;

    .line 150
    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const v6, 0x7f0c0004

    const v5, 0x7f0c0003

    .line 153
    if-eqz p1, :cond_0

    .line 155
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 156
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 157
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity$GetAuthTokenCallback;->this$0:Lcom/google/android/music/tutorial/TutorialAccountActivity;

    iget-object v3, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity$GetAuthTokenCallback;->mAccount:Landroid/accounts/Account;

    invoke-static {v2, v3}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->access$000(Lcom/google/android/music/tutorial/TutorialAccountActivity;Landroid/accounts/Account;)V

    .line 179
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 159
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity$GetAuthTokenCallback;->this$0:Lcom/google/android/music/tutorial/TutorialAccountActivity;

    const v3, 0x7f0c0003

    const v4, 0x7f0c0004

    invoke-static {v2, v3, v4}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->access$100(Lcom/google/android/music/tutorial/TutorialAccountActivity;II)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 165
    .end local v0           #bundle:Landroid/os/Bundle;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 166
    .local v1, e:Landroid/accounts/OperationCanceledException;
    const-string v2, "tutorial"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResult failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 169
    .local v1, e:Landroid/accounts/AuthenticatorException;
    const-string v2, "tutorial"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResult failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity$GetAuthTokenCallback;->this$0:Lcom/google/android/music/tutorial/TutorialAccountActivity;

    invoke-static {v2, v5, v6}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->access$100(Lcom/google/android/music/tutorial/TutorialAccountActivity;II)V

    goto :goto_0

    .line 172
    .end local v1           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 173
    .local v1, e:Ljava/io/IOException;
    const-string v2, "tutorial"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResult failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity$GetAuthTokenCallback;->this$0:Lcom/google/android/music/tutorial/TutorialAccountActivity;

    const v3, 0x7f0c0001

    const v4, 0x7f0c0002

    invoke-static {v2, v3, v4}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->access$100(Lcom/google/android/music/tutorial/TutorialAccountActivity;II)V

    goto :goto_0
.end method
