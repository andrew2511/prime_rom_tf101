.class Lcom/asus/reader/ReaderWebView$2;
.super Ljava/lang/Object;
.source "ReaderWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/ReaderWebView;->processShouldDonwloadedAcsm(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/ReaderWebView;

.field final synthetic val$downloadcover:Ljava/lang/String;

.field final synthetic val$downloadfilename:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/asus/reader/ReaderWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/asus/reader/ReaderWebView$2;->this$0:Lcom/asus/reader/ReaderWebView;

    iput-object p2, p0, Lcom/asus/reader/ReaderWebView$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/asus/reader/ReaderWebView$2;->val$downloadfilename:Ljava/lang/String;

    iput-object p4, p0, Lcom/asus/reader/ReaderWebView$2;->val$downloadcover:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 152
    iget-object v0, p0, Lcom/asus/reader/ReaderWebView$2;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lcom/asus/reader/ReaderWebView$2;->val$downloadfilename:Ljava/lang/String;

    const-string v2, "download from ReaderWebView ( in processShouldDonwloadedAcsm ) "

    const-string v3, "application/vnd.adobe.adept+xml"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/asus/reader/ReaderWebView$2;->val$downloadcover:Ljava/lang/String;

    iget-object v6, p0, Lcom/asus/reader/ReaderWebView$2;->this$0:Lcom/asus/reader/ReaderWebView;

    invoke-virtual {v6}, Lcom/asus/reader/ReaderWebView;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/util/Downloader;->downloadFromWeb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/asus/reader/ReaderWebView$2;->this$0:Lcom/asus/reader/ReaderWebView;

    iget-object v1, p0, Lcom/asus/reader/ReaderWebView$2;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/asus/reader/ReaderWebView;->access$402(Lcom/asus/reader/ReaderWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    sget-object v0, Lcom/asus/reader/book/ReaderDatabaseUtil;->sBookSourceMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/asus/reader/ReaderWebView$2;->this$0:Lcom/asus/reader/ReaderWebView;

    invoke-static {v1}, Lcom/asus/reader/ReaderWebView;->access$400(Lcom/asus/reader/ReaderWebView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/ReaderWebView$2;->this$0:Lcom/asus/reader/ReaderWebView;

    invoke-static {v2}, Lcom/asus/reader/ReaderWebView;->access$500(Lcom/asus/reader/ReaderWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method
