.class Lcom/newspaperdirect/pressreader/android/DeviceAuthorization$2;
.super Ljava/lang/Object;
.source "DeviceAuthorization.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnNegativeResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/DeviceAuthorization;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/DeviceAuthorization;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/DeviceAuthorization;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/DeviceAuthorization$2;->this$0:Lcom/newspaperdirect/pressreader/android/DeviceAuthorization;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeResult()V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/DeviceAuthorization$2;->this$0:Lcom/newspaperdirect/pressreader/android/DeviceAuthorization;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/DeviceAuthorization;->setResult(I)V

    .line 23
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/DeviceAuthorization$2;->this$0:Lcom/newspaperdirect/pressreader/android/DeviceAuthorization;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/DeviceAuthorization;->finish()V

    .line 24
    return-void
.end method
