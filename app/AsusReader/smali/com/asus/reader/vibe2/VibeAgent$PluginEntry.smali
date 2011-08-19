.class public Lcom/asus/reader/vibe2/VibeAgent$PluginEntry;
.super Ljava/lang/Object;
.source "VibeAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/vibe2/VibeAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PluginEntry"
.end annotation


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/asus/reader/vibe2/VibeAgent;


# direct methods
.method public constructor <init>(Lcom/asus/reader/vibe2/VibeAgent;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "intent"

    .prologue
    .line 782
    iput-object p1, p0, Lcom/asus/reader/vibe2/VibeAgent$PluginEntry;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    iput-object p3, p0, Lcom/asus/reader/vibe2/VibeAgent$PluginEntry;->mIntent:Landroid/content/Intent;

    .line 784
    iput-object p2, p0, Lcom/asus/reader/vibe2/VibeAgent$PluginEntry;->mName:Ljava/lang/String;

    .line 785
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$PluginEntry;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$PluginEntry;->mName:Ljava/lang/String;

    return-object v0
.end method
