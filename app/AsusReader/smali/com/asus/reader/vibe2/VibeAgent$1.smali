.class Lcom/asus/reader/vibe2/VibeAgent$1;
.super Ljava/lang/Object;
.source "VibeAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/vibe2/VibeAgent;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/vibe2/VibeAgent;

.field final synthetic val$settings:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/asus/reader/vibe2/VibeAgent;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/asus/reader/vibe2/VibeAgent$1;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    iput-object p2, p0, Lcom/asus/reader/vibe2/VibeAgent$1;->val$settings:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 71
    iget-object v1, p0, Lcom/asus/reader/vibe2/VibeAgent$1;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v1}, Lcom/asus/reader/vibe2/VibeAgent;->access$000(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/vibe2/ApplicationInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/reader/vibe2/VibeAPIBase;->getClientInfo(Lcom/asus/reader/vibe2/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, url:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/asus/reader/vibe2/VibeAgent$1;->val$settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "lastlocale"

    iget-object v3, p0, Lcom/asus/reader/vibe2/VibeAgent$1;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v3}, Lcom/asus/reader/vibe2/VibeAgent;->access$000(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/vibe2/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/reader/vibe2/ApplicationInfo;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "lastregion"

    iget-object v3, p0, Lcom/asus/reader/vibe2/VibeAgent$1;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v3}, Lcom/asus/reader/vibe2/VibeAgent;->access$000(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/vibe2/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/reader/vibe2/ApplicationInfo;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    :cond_0
    return-void
.end method
