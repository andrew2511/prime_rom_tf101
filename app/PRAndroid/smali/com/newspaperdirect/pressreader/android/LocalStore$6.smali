.class Lcom/newspaperdirect/pressreader/android/LocalStore$6;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$6;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveResult()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$6;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$6(Lcom/newspaperdirect/pressreader/android/LocalStore;)Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$6;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$28(Lcom/newspaperdirect/pressreader/android/LocalStore;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$6;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$5(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    .line 319
    :cond_1
    return-void
.end method
