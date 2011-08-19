.class Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$AddListener;
.super Ljava/lang/Object;
.source "AWSBrowserAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddListener"
.end annotation


# instance fields
.field private holder:Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;

.field final synthetic this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;


# direct methods
.method public constructor <init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter "holder"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$AddListener;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p2, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$AddListener;->holder:Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 130
    const-string v4, "1"

    iget-object v5, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$AddListener;->holder:Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;

    iget-object v5, v5, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;->kind:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 131
    .local v3, isFolder:Z
    new-instance v2, Lnet/yostore/aws/api/helper/SetMarkHelper;

    iget-object v4, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$AddListener;->holder:Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;

    iget-object v4, v4, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;->fid:Ljava/lang/String;

    iget-object v5, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$AddListener;->holder:Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;

    iget-boolean v5, v5, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;->isStarred:Z

    if-eqz v5, :cond_0

    const-string v5, ""

    :goto_0
    invoke-direct {v2, v4, v3, v5}, Lnet/yostore/aws/api/helper/SetMarkHelper;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 132
    .local v2, helper:Lnet/yostore/aws/api/helper/SetMarkHelper;
    new-instance v0, Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v0}, Lnet/yostore/aws/api/ApiConfig;-><init>()V

    .line 133
    .local v0, apicfg:Lnet/yostore/aws/api/ApiConfig;
    iget-object v4, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$AddListener;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;

    invoke-static {v4}, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;->access$3(Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 134
    iget-object v4, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$AddListener;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;

    invoke-static {v4}, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;->access$4(Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    .line 137
    :try_start_0
    invoke-virtual {v2, v0}, Lnet/yostore/aws/api/helper/SetMarkHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_1
    return-void

    .line 131
    .end local v0           #apicfg:Lnet/yostore/aws/api/ApiConfig;
    .end local v2           #helper:Lnet/yostore/aws/api/helper/SetMarkHelper;
    :cond_0
    const-string v5, "1"

    goto :goto_0

    .line 148
    .restart local v0       #apicfg:Lnet/yostore/aws/api/ApiConfig;
    .restart local v2       #helper:Lnet/yostore/aws/api/helper/SetMarkHelper;
    :catch_0
    move-exception v1

    .line 149
    .local v1, e:Lnet/yostore/aws/api/exception/APIException;
    iget-object v4, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$AddListener;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;

    invoke-virtual {v4}, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "fail..."

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 150
    const-string v4, "BrowserAdapter"

    invoke-virtual {v1}, Lnet/yostore/aws/api/exception/APIException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
