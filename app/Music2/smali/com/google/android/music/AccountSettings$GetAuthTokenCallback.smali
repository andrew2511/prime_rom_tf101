.class public Lcom/google/android/music/AccountSettings$GetAuthTokenCallback;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AccountSettings;
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
.field private mAccountPref:Lcom/google/android/music/AccountPreference;

.field final synthetic this$0:Lcom/google/android/music/AccountSettings;


# direct methods
.method public constructor <init>(Lcom/google/android/music/AccountSettings;Lcom/google/android/music/AccountPreference;)V
    .locals 0
    .parameter
    .parameter "accountPref"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/music/AccountSettings$GetAuthTokenCallback;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p2, p0, Lcom/google/android/music/AccountSettings$GetAuthTokenCallback;->mAccountPref:Lcom/google/android/music/AccountPreference;

    .line 126
    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 8
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
    const v7, 0x7f0c0004

    const v6, 0x7f0c0003

    .line 129
    if-eqz p1, :cond_0

    .line 130
    const/4 v2, 0x0

    .line 132
    .local v2, success:Z
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 133
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 134
    iget-object v3, p0, Lcom/google/android/music/AccountSettings$GetAuthTokenCallback;->this$0:Lcom/google/android/music/AccountSettings;

    const v4, 0x7f0c0003

    const v5, 0x7f0c0004

    invoke-static {v3, v4, v5}, Lcom/google/android/music/AccountSettings;->access$100(Lcom/google/android/music/AccountSettings;II)V

    .line 154
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #success:Z
    :cond_0
    :goto_0
    return-void

    .line 137
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v2       #success:Z
    :cond_1
    const/4 v2, 0x1

    .line 138
    iget-object v3, p0, Lcom/google/android/music/AccountSettings$GetAuthTokenCallback;->this$0:Lcom/google/android/music/AccountSettings;

    iget-object v4, p0, Lcom/google/android/music/AccountSettings$GetAuthTokenCallback;->mAccountPref:Lcom/google/android/music/AccountPreference;

    invoke-static {v3, v4}, Lcom/google/android/music/AccountSettings;->access$200(Lcom/google/android/music/AccountSettings;Lcom/google/android/music/AccountPreference;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 140
    .end local v0           #bundle:Landroid/os/Bundle;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 141
    .local v1, e:Landroid/accounts/OperationCanceledException;
    const-string v3, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResult failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 144
    .local v1, e:Landroid/accounts/AuthenticatorException;
    const-string v3, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResult failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v3, p0, Lcom/google/android/music/AccountSettings$GetAuthTokenCallback;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-static {v3, v6, v7}, Lcom/google/android/music/AccountSettings;->access$100(Lcom/google/android/music/AccountSettings;II)V

    goto :goto_0

    .line 147
    .end local v1           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 148
    .local v1, e:Ljava/io/IOException;
    const-string v3, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResult failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v3, p0, Lcom/google/android/music/AccountSettings$GetAuthTokenCallback;->this$0:Lcom/google/android/music/AccountSettings;

    const v4, 0x7f0c0001

    const v5, 0x7f0c0002

    invoke-static {v3, v4, v5}, Lcom/google/android/music/AccountSettings;->access$100(Lcom/google/android/music/AccountSettings;II)V

    goto :goto_0
.end method
