.class Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$1;
.super Ljava/lang/Object;
.source "DeviceAuthorizationChecker.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->check()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveResult()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->access$0(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;)V

    .line 42
    return-void
.end method
