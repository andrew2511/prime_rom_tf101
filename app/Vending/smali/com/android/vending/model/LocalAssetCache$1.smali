.class Lcom/android/vending/model/LocalAssetCache$1;
.super Ljava/lang/Object;
.source "LocalAssetCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/model/LocalAssetCache;->invalidate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/model/LocalAssetCache;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/vending/model/LocalAssetCache;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/vending/model/LocalAssetCache$1;->this$0:Lcom/android/vending/model/LocalAssetCache;

    iput-object p2, p0, Lcom/android/vending/model/LocalAssetCache$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetCache$1;->val$packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetCache$1;->this$0:Lcom/android/vending/model/LocalAssetCache;

    invoke-static {v0}, Lcom/android/vending/model/LocalAssetCache;->access$000(Lcom/android/vending/model/LocalAssetCache;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetCache$1;->this$0:Lcom/android/vending/model/LocalAssetCache;

    iget-object v1, p0, Lcom/android/vending/model/LocalAssetCache$1;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/vending/model/LocalAssetCache;->access$100(Lcom/android/vending/model/LocalAssetCache;Ljava/lang/String;)V

    goto :goto_0
.end method
