.class Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction$1;
.super Ljava/lang/Thread;
.source "InitializeMarketAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;->displayResults()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$latestClientUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction$1;->this$1:Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;

    iput-object p2, p0, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction$1;->val$latestClientUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction$1;->val$latestClientUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/vending/InitializeMarketAction;->startSelfUpdateDownload(Landroid/content/Context;Ljava/lang/String;)V

    .line 236
    return-void
.end method
