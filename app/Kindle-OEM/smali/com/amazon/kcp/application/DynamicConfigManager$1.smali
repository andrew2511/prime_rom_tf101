.class Lcom/amazon/kcp/application/DynamicConfigManager$1;
.super Ljava/lang/Object;
.source "DynamicConfigManager.java"

# interfaces
.implements Lcom/amazon/kcp/application/ISecureStorage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/DynamicConfigManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/DynamicConfigManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/DynamicConfigManager;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/amazon/kcp/application/DynamicConfigManager$1;->this$0:Lcom/amazon/kcp/application/DynamicConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 72
    invoke-static {}, Lcom/amazon/kcp/application/DynamicConfigManager;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public removeItemWithKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method
