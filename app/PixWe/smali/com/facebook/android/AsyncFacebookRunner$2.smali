.class Lcom/facebook/android/AsyncFacebookRunner$2;
.super Ljava/lang/Thread;
.source "AsyncFacebookRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/android/AsyncFacebookRunner;

.field private final synthetic val$graphPath:Ljava/lang/String;

.field private final synthetic val$httpMethod:Ljava/lang/String;

.field private final synthetic val$listener:Lcom/facebook/android/AsyncFacebookRunner$RequestListener;

.field private final synthetic val$parameters:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/facebook/android/AsyncFacebookRunner;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/android/AsyncFacebookRunner$2;->this$0:Lcom/facebook/android/AsyncFacebookRunner;

    iput-object p2, p0, Lcom/facebook/android/AsyncFacebookRunner$2;->val$graphPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/android/AsyncFacebookRunner$2;->val$parameters:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/facebook/android/AsyncFacebookRunner$2;->val$httpMethod:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/android/AsyncFacebookRunner$2;->val$listener:Lcom/facebook/android/AsyncFacebookRunner$RequestListener;

    .line 205
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 208
    :try_start_0
    iget-object v2, p0, Lcom/facebook/android/AsyncFacebookRunner$2;->this$0:Lcom/facebook/android/AsyncFacebookRunner;

    iget-object v2, v2, Lcom/facebook/android/AsyncFacebookRunner;->fb:Lcom/facebook/android/Facebook;

    iget-object v3, p0, Lcom/facebook/android/AsyncFacebookRunner$2;->val$graphPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/android/AsyncFacebookRunner$2;->val$parameters:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/facebook/android/AsyncFacebookRunner$2;->val$httpMethod:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/facebook/android/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, resp:Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/android/AsyncFacebookRunner$2;->val$listener:Lcom/facebook/android/AsyncFacebookRunner$RequestListener;

    invoke-interface {v2, v1}, Lcom/facebook/android/AsyncFacebookRunner$RequestListener;->onComplete(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 217
    .end local v1           #resp:Ljava/lang/String;
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 211
    .local v0, e:Ljava/io/FileNotFoundException;
    iget-object v2, p0, Lcom/facebook/android/AsyncFacebookRunner$2;->val$listener:Lcom/facebook/android/AsyncFacebookRunner$RequestListener;

    invoke-interface {v2, v0}, Lcom/facebook/android/AsyncFacebookRunner$RequestListener;->onFileNotFoundException(Ljava/io/FileNotFoundException;)V

    goto :goto_0

    .line 212
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 213
    .local v0, e:Ljava/net/MalformedURLException;
    iget-object v2, p0, Lcom/facebook/android/AsyncFacebookRunner$2;->val$listener:Lcom/facebook/android/AsyncFacebookRunner$RequestListener;

    invoke-interface {v2, v0}, Lcom/facebook/android/AsyncFacebookRunner$RequestListener;->onMalformedURLException(Ljava/net/MalformedURLException;)V

    goto :goto_0

    .line 214
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 215
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/facebook/android/AsyncFacebookRunner$2;->val$listener:Lcom/facebook/android/AsyncFacebookRunner$RequestListener;

    invoke-interface {v2, v0}, Lcom/facebook/android/AsyncFacebookRunner$RequestListener;->onIOException(Ljava/io/IOException;)V

    goto :goto_0
.end method
