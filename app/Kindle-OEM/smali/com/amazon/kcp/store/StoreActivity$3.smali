.class Lcom/amazon/kcp/store/StoreActivity$3;
.super Ljava/lang/Object;
.source "StoreActivity.java"

# interfaces
.implements Lcom/amazon/kcp/store/IWebViewJSWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/StoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/StoreActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/StoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreActivity$3;->this$0:Lcom/amazon/kcp/store/StoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)V
    .locals 3
    .parameter "javascript"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity$3;->this$0:Lcom/amazon/kcp/store/StoreActivity;

    invoke-static {v0}, Lcom/amazon/kcp/store/StoreActivity;->access$200(Lcom/amazon/kcp/store/StoreActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 144
    return-void
.end method
