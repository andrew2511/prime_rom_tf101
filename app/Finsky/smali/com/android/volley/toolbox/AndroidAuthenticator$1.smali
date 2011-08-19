.class Lcom/android/volley/toolbox/AndroidAuthenticator$1;
.super Ljava/lang/Thread;
.source "AndroidAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/AndroidAuthenticator;->getAuthTokenAsync(Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;Landroid/os/Handler;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/volley/toolbox/AndroidAuthenticator;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/AndroidAuthenticator;Ljava/lang/String;Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1;->this$0:Lcom/android/volley/toolbox/AndroidAuthenticator;

    iput-object p2, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1;->val$authTokenType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1;->val$listener:Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;

    iput-object p4, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 142
    const/4 v2, 0x0

    .line 144
    .local v2, runnable:Ljava/lang/Runnable;
    :try_start_0
    iget-object v3, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1;->this$0:Lcom/android/volley/toolbox/AndroidAuthenticator;

    iget-object v4, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1;->val$authTokenType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAuthToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, authToken:Ljava/lang/String;
    new-instance v2, Lcom/android/volley/toolbox/AndroidAuthenticator$1$1;

    .end local v2           #runnable:Ljava/lang/Runnable;
    invoke-direct {v2, p0, v1}, Lcom/android/volley/toolbox/AndroidAuthenticator$1$1;-><init>(Lcom/android/volley/toolbox/AndroidAuthenticator$1;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/volley/AuthFailureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v1           #authToken:Ljava/lang/String;
    .restart local v2       #runnable:Ljava/lang/Runnable;
    :goto_0
    iget-object v3, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    return-void

    .line 151
    .end local v2           #runnable:Ljava/lang/Runnable;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 152
    .local v0, afe:Lcom/android/volley/AuthFailureException;
    new-instance v2, Lcom/android/volley/toolbox/AndroidAuthenticator$1$2;

    invoke-direct {v2, p0, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator$1$2;-><init>(Lcom/android/volley/toolbox/AndroidAuthenticator$1;Lcom/android/volley/AuthFailureException;)V

    .restart local v2       #runnable:Ljava/lang/Runnable;
    goto :goto_0
.end method
