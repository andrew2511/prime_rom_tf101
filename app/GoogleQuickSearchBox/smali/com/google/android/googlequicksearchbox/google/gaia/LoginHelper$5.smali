.class Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$5;
.super Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$Callback;
.source "LoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->requestAccount(Landroid/app/Activity;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$Callback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

.field final synthetic val$callback:Lcom/google/android/googlequicksearchbox/util/Consumer;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$5;->this$0:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$5;->val$callback:Lcom/google/android/googlequicksearchbox/util/Consumer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$Callback;-><init>(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$1;)V

    return-void
.end method


# virtual methods
.method public handleResult(Landroid/os/Bundle;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 437
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$5;->val$callback:Lcom/google/android/googlequicksearchbox/util/Consumer;

    if-eqz v1, :cond_0

    .line 438
    if-nez p1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 440
    .local v0, name:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$5;->val$callback:Lcom/google/android/googlequicksearchbox/util/Consumer;

    invoke-interface {v1, v0}, Lcom/google/android/googlequicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    .line 442
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    return-void

    .line 438
    :cond_1
    const-string v1, "authAccount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 433
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$5;->handleResult(Landroid/os/Bundle;)V

    return-void
.end method
