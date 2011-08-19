.class Lcom/android/volley/toolbox/AndroidAuthenticator$1$1;
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

.field final synthetic val$authToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/AndroidAuthenticator$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1$1;->this$1:Lcom/android/volley/toolbox/AndroidAuthenticator$1;

    iput-object p2, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1$1;->val$authToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1$1;->this$1:Lcom/android/volley/toolbox/AndroidAuthenticator$1;

    iget-object v0, v0, Lcom/android/volley/toolbox/AndroidAuthenticator$1;->val$listener:Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;

    iget-object v1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1$1;->val$authToken:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;->onAuthTokenReceived(Ljava/lang/String;)V

    .line 149
    return-void
.end method
