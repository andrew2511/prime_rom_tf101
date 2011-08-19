.class Lcom/asus/dictionary/Dictionary$1;
.super Landroid/webkit/WebViewClient;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/dictionary/Dictionary;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dictionary/Dictionary;


# direct methods
.method constructor <init>(Lcom/asus/dictionary/Dictionary;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/asus/dictionary/Dictionary$1;->this$0:Lcom/asus/dictionary/Dictionary;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .parameter "view"
    .parameter "url"

    .prologue
    .line 163
    const-string v3, "http://www.gstatic.com/dictionary/static/sounds/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 168
    .local v2, mp:Landroid/media/MediaPlayer;
    :try_start_0
    iget-object v3, p0, Lcom/asus/dictionary/Dictionary$1;->this$0:Lcom/asus/dictionary/Dictionary;

    invoke-static {v3}, Lcom/asus/dictionary/Dictionary;->access$000(Lcom/asus/dictionary/Dictionary;)Landroid/content/Context;

    move-result-object v3

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 169
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 170
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v2           #mp:Landroid/media/MediaPlayer;
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 171
    .restart local v2       #mp:Landroid/media/MediaPlayer;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 172
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Dictionary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pronunciation sounds playing error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #mp:Landroid/media/MediaPlayer;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, dicIntent:Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 180
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    iget-object v3, p0, Lcom/asus/dictionary/Dictionary$1;->this$0:Lcom/asus/dictionary/Dictionary;

    invoke-static {v3}, Lcom/asus/dictionary/Dictionary;->access$000(Lcom/asus/dictionary/Dictionary;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
