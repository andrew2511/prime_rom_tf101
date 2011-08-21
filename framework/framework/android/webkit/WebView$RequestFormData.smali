.class Landroid/webkit/WebView$RequestFormData;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestFormData"
.end annotation


# instance fields
.field private mAutoComplete:Z

.field private mAutoFillable:Z

.field private mName:Ljava/lang/String;

.field private mUpdateMessage:Landroid/os/Message;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;ZZ)V
    .registers 7
    .parameter
    .parameter "name"
    .parameter "url"
    .parameter "msg"
    .parameter "autoFillable"
    .parameter "autoComplete"

    .prologue
    .line 4496
    iput-object p1, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4497
    iput-object p2, p0, Landroid/webkit/WebView$RequestFormData;->mName:Ljava/lang/String;

    .line 4498
    iput-object p3, p0, Landroid/webkit/WebView$RequestFormData;->mUrl:Ljava/lang/String;

    .line 4499
    iput-object p4, p0, Landroid/webkit/WebView$RequestFormData;->mUpdateMessage:Landroid/os/Message;

    .line 4500
    iput-boolean p5, p0, Landroid/webkit/WebView$RequestFormData;->mAutoFillable:Z

    .line 4501
    iput-boolean p6, p0, Landroid/webkit/WebView$RequestFormData;->mAutoComplete:Z

    .line 4502
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 4505
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4507
    .local v1, pastEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v3, p0, Landroid/webkit/WebView$RequestFormData;->mAutoFillable:Z

    if-eqz v3, :cond_56

    .line 4511
    iget-object v3, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 4512
    .local v2, settings:Landroid/webkit/WebSettings;
    if-eqz v2, :cond_86

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getAutoFillProfile()Landroid/webkit/WebSettings$AutoFillProfile;

    move-result-object v3

    if-eqz v3, :cond_86

    .line 4513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10402dd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v4}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore$AutoFillData;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebViewCore$AutoFillData;->getPreviewString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4517
    iget-object v3, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v3}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebTextView;->setAutoFillProfileIsSet(Z)V

    .line 4527
    .end local v2           #settings:Landroid/webkit/WebSettings;
    :cond_56
    :goto_56
    iget-boolean v3, p0, Landroid/webkit/WebView$RequestFormData;->mAutoComplete:Z

    if-eqz v3, :cond_6b

    .line 4528
    iget-object v3, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;
    invoke-static {v3}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/WebView$RequestFormData;->mUrl:Ljava/lang/String;

    iget-object v5, p0, Landroid/webkit/WebView$RequestFormData;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebViewDatabase;->getFormData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4531
    :cond_6b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_85

    .line 4532
    new-instance v0, Landroid/webkit/WebTextView$AutoCompleteAdapter;

    iget-object v3, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/webkit/WebView;->access$1300(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Landroid/webkit/WebTextView$AutoCompleteAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 4534
    .local v0, adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    iget-object v3, p0, Landroid/webkit/WebView$RequestFormData;->mUpdateMessage:Landroid/os/Message;

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4535
    iget-object v3, p0, Landroid/webkit/WebView$RequestFormData;->mUpdateMessage:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 4537
    .end local v0           #adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    :cond_85
    return-void

    .line 4521
    .restart local v2       #settings:Landroid/webkit/WebSettings;
    :cond_86
    iget-object v3, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10402de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4523
    iget-object v3, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v3}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebTextView;->setAutoFillProfileIsSet(Z)V

    goto :goto_56
.end method
