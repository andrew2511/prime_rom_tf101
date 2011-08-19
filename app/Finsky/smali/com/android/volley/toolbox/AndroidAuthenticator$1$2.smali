.class Lcom/android/volley/toolbox/AndroidAuthenticator$1$2;
.super Ljava/lang/Object;
.source "AndroidAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/AndroidAuthenticator$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/volley/toolbox/AndroidAuthenticator$1;

.field final synthetic val$afe:Lcom/android/volley/AuthFailureException;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/AndroidAuthenticator$1;Lcom/android/volley/AuthFailureException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1$2;->this$1:Lcom/android/volley/toolbox/AndroidAuthenticator$1;

    iput-object p2, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1$2;->val$afe:Lcom/android/volley/AuthFailureException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1$2;->this$1:Lcom/android/volley/toolbox/AndroidAuthenticator$1;

    iget-object v0, v0, Lcom/android/volley/toolbox/AndroidAuthenticator$1;->val$listener:Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;

    iget-object v1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1$2;->val$afe:Lcom/android/volley/AuthFailureException;

    invoke-interface {v0, v1}, Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;->onErrorReceived(Lcom/android/volley/AuthFailureException;)V

    .line 156
    return-void
.end method
