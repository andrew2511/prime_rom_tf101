.class Lcom/newspaperdirect/pressreader/android/LocalStore$9;
.super Ljava/lang/Thread;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;->ReloadAllNewspapers()V
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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$9;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    .line 422
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 424
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 425
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$9;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$9;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$6(Lcom/newspaperdirect/pressreader/android/LocalStore;)Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getNewspapers(J)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$32(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;)V

    .line 426
    return-void
.end method
