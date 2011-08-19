.class Lcom/newspaperdirect/pressreader/android/LocalStore$7;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnNegativeResult;


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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$7;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeResult()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$7;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$29(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    .line 324
    return-void
.end method
